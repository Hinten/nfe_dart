# NF-e Dart — Standalone Package

> Nota Fiscal Eletrônica (NF-e) para Dart/Flutter  
> Geração, envio e impressão de NF-e sem dependências privadas.

---

## Visão Geral

Este repositório contém um conjunto de packages Dart puros para trabalhar com
**NF-e (Nota Fiscal Eletrônica)** — o documento fiscal eletrônico obrigatório
no Brasil (SEFAZ/Receita Federal).

### Pacotes incluídos

| Package | Descrição |
|---------|-----------|
| [`xml_schema_validator`](./xml_schema_validator/) | Parser e tipagem para esquemas XSD (XML Schema Definition) |
| [`xml_schema_builder`](./xml_schema_builder/) | Gerador de código Dart a partir de arquivos `.xsd` (build_runner) |
| [`soap_client`](./soap_client/) | Cliente SOAP nativo Dart com suporte a mTLS e certificados A1 |
| [`nfe_client`](./nfe_client/) | Cliente NF-e v4.0 completo: schemas, assinatura XML, comunicação SEFAZ |
| [`danfe_nfe`](./danfe_nfe/) | Gerador de PDF para DANFE (A4 retrato, A4 paisagem, simplificado 10×15) |

---

## Fluxo principal

```
1. Gerar o XML da NF-e  →  nfe_client (schemas/nfe4.dart)
2. Assinar digitalmente  →  nfe_client (encryptDecrypt.dart + xml_crypto)
3. Enviar ao SEFAZ       →  nfe_client (client.dart — NFeV4.enviNFe)
4. Consultar recibo      →  nfe_client (NFeV4.consReciNFe)
5. Imprimir DANFE        →  danfe_nfe  (generateDanfeFromProcNFe)
```

Operações complementares suportadas:
- **Cancelamento** — `NFeV4.envEventoCancNFe`
- **Carta de Correção (CC-e)** — `NFeV4.envCCe`
- **Inutilização de numeração** — `NFeV4.inutNFe` / `inutilizarNumeracao()`
- **Contingência EPEC** — `NFeV4.envEPEC` (DP-e)
- **Contingência SVC-AN / SVC-RS** — configurável via `tpEmis`

---

## Início rápido

### 1. Dependências no seu `pubspec.yaml`

```yaml
dependencies:
  nfe_client:
    path: ../nfe_client   # ajuste o caminho
  danfe_nfe:
    path: ../danfe_nfe
```

### 2. Enviar uma NF-e

```dart
import 'package:nfe_client/nfe_client.dart';

// Carregue o XML já assinado da sua NF-e
final envXml = '...'; // XML gerado a partir dos schemas

// Crie o cliente para o estado do emitente
final client = NFeV4.fromUF(
  UFS.SP,
  tpAmb: '2',           // '1' = produção, '2' = homologação
  privateKey: pemKey,   // conteúdo PEM da chave privada
  certificate: x509Cert,
);

try {
  final retorno = await client.enviNFe(envXml);
  print('cStat: ${retorno.infRec?.nRec}');
} finally {
  client.dispose();
}
```

### 3. Gerar o DANFE

```dart
import 'package:danfe_nfe/danfe_nfe.dart';

// procNFeXml é o XML de retorno do SEFAZ (procNFe)
final pdf = await generateDanfeFromProcNFe(
  [procNFeXml],
  retrato: true,
  logo: logoBytes, // Uint8List? — opcional
);

final bytes = await pdf.save();
// Salve ou exiba o PDF
```

---

## Arquitetura dos Packages

```
xml_schema_validator          (puro — sem dependências locais)
       │
       ▼
xml_schema_builder            (ferramenta de geração de código em build-time)
       │
       ▼
soap_client                   (cliente SOAP com mTLS para Dart nativo)
       │
       ▼
nfe_client                    (cliente NF-e + 70+ schemas gerados do XSD oficial)
       │
       ▼
danfe_nfe                     (geração de PDF do DANFE)
```

---

## `nfe_client` — Destaques

### Schemas gerados automaticamente

Os arquivos `lib/src/schemas/*.dart` são **gerados** a partir dos XSDs oficiais
disponibilizados pelo SEFAZ em `schemas/`. O processo usa `xml_schema_builder`
(um `build_runner` generator).

Para regenerar após atualizar os XSDs:
```bash
cd nfe_client
dart run build_runner build --delete-conflicting-outputs
```

### Certificado Digital (A1/PFX)

```dart
final cert = CertificadoDigital(
  pemKey: encryptedPem,           // chave PEM criptografada
  rsaKey: encryptedRsa,           // chave RSA criptografada
  x509Certificate: encryptedX509, // certificado X.509 criptografado
  encryptionKey: myBase64Key,     // chave de descriptografia (AES-256-CBC)
  validade: DateTime(2026, 1, 1),
);

// Obter material descriptografado:
final pem = cert.pem;
final x509 = cert.x509;
```

> **Nota de segurança:** O módulo `encryptDecrypt.dart` usa AES-CBC com IV fixo
> por compatibilidade com dados legados. Para novos projetos, gere um IV
> aleatório por operação de criptografia e armazene-o junto ao ciphertext.

### Estados dos envios (`EstadoEnviNFeMsg`)

```
iniciado → aguardando_envio → respondido → concluido
                          ↘ aguardando_epec → aguardando_envio_pos_epec → respondido → concluido
                          ↘ error
```

---

## `danfe_nfe` — Formatos suportados

| Função | Formato | Tamanho |
|--------|---------|---------|
| `gerenerateDanfeA4Retrato` | A4 retrato | 210×297mm |
| `gerenerateDanfeA4Paisagem` | A4 paisagem | 297×210mm |
| `gerenerateDanfeSimplificadoEtiqueta10x15` | Etiqueta simplificada | 100×150mm |
| `generateCartaDeCorrecao` | Carta de Correção | A4 |

---

## `xml_schema_validator` + `xml_schema_builder`

Essas duas packages implementam um pipeline de geração de código:

1. Você escreve um `typedef` anotado com `@FromSchema`:
   ```dart
   @FromSchema('schemas/nfe_v4.00.xsd')
   typedef NFeSchema = _NFeSchema;
   ```

2. O `build_runner` chama `xml_schema_builder` que:
   - Faz o parse do XSD com `xml_schema_validator`
   - Gera a classe Dart equivalente no arquivo `.xsd.g.dart`

3. A classe gerada inclui `fromXml()`, `toXml()`, `fromJson()`, `toJson()`.

---

## Dependências externas (pub.dev)

| Package | Versão | Uso |
|---------|--------|-----|
| `xml` | ^6.3.0 | Parsing/geração de XML |
| `http` | ^1.1.0 | Requisições SOAP ao SEFAZ |
| `crypto` | ^3.0.2 | Hash (SHA-1, SHA-256) |
| `encrypt` | ^5.0.3 | AES-CBC para certificados |
| `xml_crypto` | ^3.2.0 | Assinatura digital XML (xmldsig) |
| `ninja` | ^3.0.8 | RSA/PKCS#8 |
| `ninja_pem` | ^2.0.0 | Leitura de chaves PEM |
| `json_annotation` | ^4.5.0 | Serialização JSON |
| `pdf` | ^3.8.4 | Geração de PDF (DANFE) |
| `barcode` | ^2.2.3 | Código de barras no DANFE |
| `intl` | any | Formatação de datas/números |

---

## Público-alvo

- Devs brasileiros em fintech / e-commerce que precisam emitir NF-e
- Empresas de software fiscal (ERP, PDV)
- Qualquer sistema que precise integrar com o SEFAZ

---

## Licença

MIT — veja `LICENSE` para detalhes.
