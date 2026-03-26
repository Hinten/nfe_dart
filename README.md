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
| [`xml_schema_validator`](./packages/xml_schema_validator/) | Parser e tipagem para esquemas XSD (XML Schema Definition) |
| [`xml_schema_builder`](./packages/xml_schema_builder/) | Gerador de código Dart a partir de arquivos `.xsd` (build_runner) |
| [`soap_client`](./packages/soap_client/) | Cliente SOAP nativo Dart com suporte a mTLS e certificados A1 |
| [`nfe_client`](./packages/nfe_client/) | Cliente NF-e v4.0 completo: schemas, assinatura XML, comunicação SEFAZ |
| [`danfe_nfe`](./packages/danfe_nfe/) | Gerador de PDF para DANFE (A4 retrato, A4 paisagem, simplificado 10×15) |

### Aplicação de exemplo

O diretório [`exemplo_completo/`](./exemplo_completo/) contém um app Dart CLI
que demonstra o **ciclo de vida completo** de uma NF-e:
montagem → assinatura → envio ao SEFAZ → consulta do recibo → geração do DANFE.

---

## Fluxo principal

```
1. Montar o infNFe         →  nfe_client (schemas/nfe4.dart — infNFeComplexType_TNFe.fromJson)
2. Assinar digitalmente    →  nfe_client (signature.dart — singXML)
3. Enviar ao SEFAZ         →  nfe_client (client.dart — NFeV4.enviNFe)
4. Consultar recibo        →  nfe_client (NFeV4.consReciNFe)
5. Montar procNFe          →  nfe_client (procNFe.dart — makeXmlNFeProc)
6. Imprimir DANFE          →  danfe_nfe  (generateDanfeFromProcNFe)
```

Operações complementares suportadas:
- **Consultar situação** — `NFeV4.consSitNFe`
- **Cancelamento** — `NFeV4.envEventoCancNFeFromChNFe`
- **Carta de Correção (CC-e)** — `NFeV4.envCCeFromChNFe`
- **Inutilização de numeração** — `inutilizarNumeracao()`
- **Consulta cadastro** — `NFeV4.consCad`
- **Status do serviço** — `NFeV4.consStatServ`
- **Distribuição DFe** — `NFeV4.distDFeInt`
- **Contingência EPEC** — `NFeV4.envEPEC`
- **Contingência SVC-AN / SVC-RS** — configurável via `tpEmis`

---

## Início rápido

### 1. Dependências no `pubspec.yaml`

```yaml
dependencies:
  nfe_client:
    path: packages/nfe_client   # ajuste o caminho relativo
  danfe_nfe:
    path: packages/danfe_nfe
```

### 2. Montar e assinar o XML da NF-e

```dart
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;

// 1. Construir o infNFe a partir do schema tipado
final infNFe = infNFeComplexType_TNFe.fromJson({
  'Id': 'NFe35260311222333000181550010000000011000000019',
  'versao': '4.00',
  'ide': {
    'cUF': '35',        // SP
    'cNF': '00000001',
    'natOp': 'VENDA DE MERCADORIA',
    'mod': '55',
    'serie': '1',
    'nNF': '1',
    'dhEmi': formatarDataNFe(DateTime.now().toUtc()),
    'tpNF': '1',        // 1=Saída
    'idDest': '1',
    'cMunFG': '3550308',
    'tpImp': '1',
    'tpEmis': '1',
    'cDV': '9',
    'tpAmb': '2',       // 2=Homologação
    'finNFe': '1',
    'indFinal': '0',
    'indPres': '1',
    'procEmi': '3',
    'verProc': '1.0',
  },
  'emit': {
    'CNPJ': '11222333000181',
    'xNome': 'EMPRESA EXEMPLO LTDA',
    'enderEmit': {
      'xLgr': 'RUA DAS FLORES',
      'nro': '100',
      'xBairro': 'CENTRO',
      'cMun': '3550308',
      'xMun': 'SAO PAULO',
      'UF': 'SP',
      'CEP': '01310100',
      'cPais': '1058',
      'xPais': 'BRASIL',
    },
    'IE': '111111111111',
    'CRT': '1',
  },
  // ... dest, det, total, transp, pag
});

// 2. Envolver em <NFe> sem assinatura
final nfeElement = xml.XmlElement(
  xml.XmlName('NFe'),
  [xml.XmlAttribute(xml.XmlName('xmlns'), NFeV4.xmlns)],
  [xml.XmlDocumentFragment.parse(infNFe.toXml(name: 'infNFe'))],
);
final xmlNaoAssinado = '<?xml version="1.0" encoding="UTF-8"?>'
    '${nfeElement.toXmlString()}';

// 3. Assinar digitalmente (RSA-SHA1 / xmldsig)
final xmlAssinado = singXML(
  doc: xmlNaoAssinado,
  xmlElementName: 'infNFe',   // referência que será assinada
  privateKeyRsa: pemRsaKey,   // chave privada do certificado A1
  x509Cert: x509Pem,          // certificado X.509 do emitente
);
```

### 3. Enviar ao SEFAZ (homologação)

```dart
import 'package:nfe_client/nfe_client.dart';

// Criar o cliente NF-e para SP em homologação
final client = NFeV4.fromUF(
  UFS.SP,
  tpAmb: '2',              // '2' = homologação; '1' = produção
  privateKey: pemRsaKey,   // chave privada PEM
  certificate: x509Pem,    // certificado X.509 PEM
);

try {
  // Montar lote síncrono (indSinc = 1)
  final nfeSchema = NFe4Schema.fromXml(xmlAssinado);
  final enviNFe = EnviNFeSchema.unsafe(
    xmlns: NFeV4.xmlns,
    idLote: '1',
    indSinc: indSincEnum.v_1,
    NFe: [nfeSchema],
    versao: '4.00',
  );

  // Enviar
  final retorno = await client.enviNFe(
    '<?xml version="1.0" encoding="UTF-8"?>'
    '${enviNFe.toXml(xmlns: NFeV4.xmlns)}',
  );

  print('cStat : ${retorno.cStat}');
  print('nRec  : ${retorno.infRec?.nRec}');

  // Consultar recibo (aguardar alguns segundos para processamento)
  await Future.delayed(const Duration(seconds: 3));
  final consRec = await client.consReciNFe(retorno.infRec!.nRec);
  final prot = consRec.protNFe!.first;

  if (prot.infProt.cStat == '100') {
    print('NF-e AUTORIZADA — protocolo: ${prot.infProt.nProt}');
  }
} finally {
  client.dispose();
}
```

### 4. Montar o procNFe e gerar o DANFE

```dart
import 'package:nfe_client/nfe_client.dart';
import 'package:danfe_nfe/danfe_nfe.dart';

// Monta o XML procNFe (NF-e autorizada + protocolo)
final procNFeXml = makeXmlNFeProc(nfeSchema, prot);

// Gera o DANFE em PDF (A4 retrato)
final pdf = await generateDanfeFromProcNFe(
  [procNFeXml],
  retrato: true,
  logo: logoBytes, // Uint8List? — opcional
);
final bytes = await pdf.save();
await File('danfe.pdf').writeAsBytes(bytes);
```

### 5. Consultar situação da NF-e

```dart
final situacao = await client.consSitNFe(chNFe44Digitos);
print('cStat: ${situacao.cStat} — ${situacao.xMotivo}');
// 100 = Autorizado, 101 = Cancelado, 110 = Uso Denegado
```

### 6. Cancelar uma NF-e

```dart
// Cancelamento automático: consulta protocolo e monta o evento
final retCanc = await client.envEventoCancNFeFromChNFe(
  chNFe,
  cnpj: '11222333000181',
  xJust: 'Cancelamento por erro no preenchimento dos dados',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
print('cStat do evento: ${retCanc.retEvento?.first.infEvento.cStat}');
```

### 7. Emitir Carta de Correção (CC-e)

```dart
final retCCe = await client.envCCeFromChNFe(
  chNFe,
  xCorrecao: 'Correcao do campo xProd do item 1: produto correto é XYZ',
  xCondUso:  'A Carta de Correcao e disciplinada pelo paragrafo '
             '1o-A do art. 7o do Convenio S/N de 15 de dezembro de '
             '1970 e pode ser utilizada para regularizacao de erro '
             'ocorrido na emissao de documento fiscal...',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
```

### 8. Inutilizar numeração

```dart
import 'package:nfe_client/nfe_client.dart';

final resultado = await inutilizarNumeracao(
  instance: InutNumeracao(
    inicio: 10,
    fim: 15,
    serie: 1,
    xJust: 'Numeracao inutilizada por salto acidental na sequencia',
  ),
  certificadoDigital: meuCertificado,
  configuracaoNFe: NFeConfig(
    numeracao_atual: 1,
    serie: 1,
    ambiente: AmbienteNFE.homologacao,
  ),
  uf: UFS.SP,
  cnpj: '11222333000181',
);
```

### 9. Sanitizar texto para inserção no XML

```dart
import 'package:nfe_client/nfe_client.dart';

// Sempre sanitize strings antes de inserir no XML da NF-e
final nome = removerCharRestrito('João & Maria "Comércio" Ltda. <MATRIZ>');
// → 'João &amp; Maria &quot;Comércio&quot; Ltda. &lt;MATRIZ&gt;'

// Para campos que não aceitam acentos (ex: xNome no SEFAZ antigo):
final nomeSemAcento = removerCharRestrito(removerAcentos('João Müller'));
// → 'Joao Muller'
```

---

## Aplicação de Exemplo

O diretório `exemplo_completo/` contém um CLI Dart completo. Para executar:

```bash
cd exemplo_completo
dart pub get
dart run lib/main.dart
```

Sem certificado configurado, o app roda em **modo offline** e gera apenas o
XML não-assinado em `output/nfe.xml`. Para o fluxo completo, preencha as
constantes `_privateKeyRsa` e `_x509Certificate` no `lib/main.dart` com os
dados do seu certificado A1.

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
disponibilizados pelo SEFAZ em `packages/nfe_client/schemas/`. O processo usa
`xml_schema_builder` (um `build_runner` generator).

Para regenerar após atualizar os XSDs:
```bash
cd packages/nfe_client
dart run build_runner build --delete-conflicting-outputs
```

### Certificado Digital (A1/PFX)

```dart
import 'package:nfe_client/nfe_client.dart';

// Armazenar com criptografia AES-CBC
final cert = CertificadoDigital(
  pemKey: encryptedPem,           // chave PEM criptografada (base64)
  rsaKey: encryptedRsa,           // chave RSA criptografada (base64)
  x509Certificate: encryptedX509, // certificado X.509 criptografado (base64)
  encryptionKey: myBase64Key,     // chave AES-256 em base64
  validade: DateTime(2026, 1, 1),
);

// Verificar validade
if (!cert.isValid) throw Exception('Certificado vencido ou inválido');

// Obter material descriptografado (lazy — descriptografa na primeira chamada)
final pemDecrypted = cert.pem;   // chave privada PEM em texto claro
final x509Decrypted = cert.x509; // certificado PEM em texto claro
final rsaDecrypted = cert.rsa;   // chave RSA PEM em texto claro
```

> **Nota de segurança:** O módulo `encryptDecrypt.dart` usa AES-CBC com IV fixo
> por compatibilidade com dados legados. Para novos projetos, gere um IV
> aleatório por operação de criptografia e armazene-o junto ao ciphertext.

### Seleção de endpoint por UF

```dart
// Produção — UF São Paulo
final clientProd = NFeV4.fromUF(UFS.SP, tpAmb: '1',
  privateKey: pemKey, certificate: x509Cert);

// Homologação — UF Minas Gerais
final clientHom  = NFeV4.fromUF(UFS.MG, tpAmb: '2',
  privateKey: pemKey, certificate: x509Cert);

// Contingência EPEC
final clientEpec = NFeV4.fromUF(UFS.SP, tpAmb: '1', tpEmis: 4,
  privateKey: pemKey, certificate: x509Cert);

// Contingência SVC-AN
final clientSvcAn = NFeV4.fromUF(UFS.SP, tpAmb: '1', tpEmis: 6,
  privateKey: pemKey, certificate: x509Cert);
```

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

```dart
import 'package:danfe_nfe/danfe_nfe.dart';

// A4 Retrato (padrão)
final pdf = await generateDanfeFromProcNFe([procNFeXml], retrato: true);

// A4 Paisagem
final pdf = await generateDanfeFromProcNFe([procNFeXml], paisagem: true);

// Etiqueta 10×15 cm
final pdf = await generateDanfeFromProcNFe([procNFeXml], simplificado: true);

// Múltiplas NF-e em um único PDF
final pdf = await generateDanfeFromProcNFe(
  [procNFe1Xml, procNFe2Xml, procNFe3Xml],
  retrato: true,
  logo: logoBytes,    // Uint8List? — logotipo da empresa (opcional)
  cancelado: {1: true}, // marcar páginas como cancelado por índice
);

final bytes = await pdf.save();
await File('danfe.pdf').writeAsBytes(bytes);

// Carta de Correção Eletrônica (CC-e)
final pdfCce = await generateCartaDeCorrecao(
  procNFe: procNFeSchema,
  envCCe: envCCeSchema,
  retEnvCCe: retEnvCCeSchema,
  retrato: true,
);
```

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

```dart
// Ler a partir de XML
final nfe = NFe4Schema.fromXml(xmlString);

// Ler a partir de JSON
final nfe = NFe4Schema.fromJson(jsonMap);

// Serializar para XML
final xmlStr = nfe.toXml(xmlns: 'http://www.portalfiscal.inf.br/nfe');

// Serializar para JSON
final jsonMap = nfe.toJson();
```

---

## `soap_client` — Destaques

```dart
import 'package:soap_client/soap_client.dart';

// Criar cliente com certificado mTLS (para SEFAZ)
final client = SoapClient.nfe(
  privateKey: utf8.encode(pemKey),
  certificate: utf8.encode(x509Cert),
);

// Auto-descoberta do WSDL e envio
final manager = await client.autoDiscover(wsdlUrl);
final response = await manager.services.first.request(
  body: xmlBody,
  header: xmlHeader,
);
```

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
| `diacritic` | ^0.1.3 | Remoção de acentos |

---

## Executando os testes

```bash
# nfe_client (inclui testes de sanitização de string)
cd packages/nfe_client
dart pub get && dart test

# xml_schema_validator
cd packages/xml_schema_validator
dart pub get && dart test

# danfe_nfe (requer arquivos XML de fixture em test/)
cd packages/danfe_nfe
dart pub get && dart test
```

---

## Público-alvo

- Devs brasileiros em fintech / e-commerce que precisam emitir NF-e
- Empresas de software fiscal (ERP, PDV)
- Qualquer sistema que precise integrar com o SEFAZ

---

## Licença

MIT — veja `LICENSE` para detalhes.

