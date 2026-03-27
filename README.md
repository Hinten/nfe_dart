# NF-e Dart — Standalone Package

> 🇧🇷 [Português](#portuguese) &nbsp;|&nbsp; 🇺🇸 [English](#english)

---

<a name="portuguese"></a>

## 🇧🇷 Português

> Nota Fiscal Eletrônica (NF-e) para Dart/Flutter  
> Geração, envio e impressão de NF-e sem dependências privadas.

### Visão Geral

Este repositório contém um conjunto de packages Dart puros para trabalhar com
**NF-e (Nota Fiscal Eletrônica)** — o documento fiscal eletrônico obrigatório
no Brasil (SEFAZ/Receita Federal).

#### Pacotes incluídos

| Package | Descrição |
|---------|-----------|
| [`xml_schema_validator`](./packages/xml_schema_validator/) | Parser e tipagem para esquemas XSD (XML Schema Definition) |
| [`xml_schema_builder`](./packages/xml_schema_builder/) | Gerador de código Dart a partir de arquivos `.xsd` (build_runner) |
| [`soap_client`](./packages/soap_client/) | Cliente SOAP nativo Dart com suporte a mTLS e certificados A1 |
| [`nfe_client`](./packages/nfe_client/) | Cliente NF-e v4.0 completo: schemas, assinatura XML, comunicação SEFAZ |
| [`danfe_nfe`](./packages/danfe_nfe/) | Gerador de PDF para DANFE (A4 retrato, A4 paisagem, simplificado 10×15) |

#### Aplicação de exemplo

O diretório [`example/`](./example/) contém um app Dart CLI que demonstra o
**ciclo de vida completo** de uma NF-e:
montagem → assinatura → envio ao SEFAZ → consulta do recibo → geração do DANFE.

### Fluxo principal

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

### Início rápido

#### 1. Dependências no `pubspec.yaml`

```yaml
dependencies:
  nfe_client:
    path: packages/nfe_client   # ajuste o caminho relativo
  danfe_nfe:
    path: packages/danfe_nfe
```

#### 2. Montar e assinar o XML da NF-e

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

#### 3. Enviar ao SEFAZ (homologação)

```dart
import 'package:nfe_client/nfe_client.dart';

final client = NFeV4.fromUF(
  UFS.SP,
  tpAmb: '2',              // '2' = homologação; '1' = produção
  privateKey: pemRsaKey,
  certificate: x509Pem,
);

try {
  final nfeSchema = NFe4Schema.fromXml(xmlAssinado);
  final enviNFe = EnviNFeSchema.unsafe(
    xmlns: NFeV4.xmlns,
    idLote: '1',
    indSinc: indSincEnum.v_1,
    NFe: [nfeSchema],
    versao: '4.00',
  );
  final retorno = await client.enviNFe(
    '<?xml version="1.0" encoding="UTF-8"?>'
    '${enviNFe.toXml(xmlns: NFeV4.xmlns)}',
  );
  print('cStat : ${retorno.cStat}');
  print('nRec  : ${retorno.infRec?.nRec}');

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

#### 4. Montar o procNFe e gerar o DANFE

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

#### 5. Consultar situação da NF-e

```dart
final situacao = await client.consSitNFe(chNFe44Digitos);
print('cStat: ${situacao.cStat} — ${situacao.xMotivo}');
// 100 = Autorizado, 101 = Cancelado, 110 = Uso Denegado
```

#### 6. Cancelar uma NF-e

```dart
final retCanc = await client.envEventoCancNFeFromChNFe(
  chNFe,
  cnpj: '11222333000181',
  xJust: 'Cancelamento por erro no preenchimento dos dados',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
print('cStat do evento: ${retCanc.retEvento?.first.infEvento.cStat}');
```

#### 7. Emitir Carta de Correção (CC-e)

```dart
final retCCe = await client.envCCeFromChNFe(
  chNFe,
  xCorrecao: 'Correcao do campo xProd do item 1: produto correto e XYZ',
  xCondUso: 'A Carta de Correcao e disciplinada pelo paragrafo 1o-A '
            'do art. 7o do Convenio S/N de 15 de dezembro de 1970...',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
```

#### 8. Inutilizar numeração

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

#### 9. Sanitizar texto para inserção no XML

```dart
import 'package:nfe_client/nfe_client.dart';

// Sempre sanitize strings antes de inserir no XML da NF-e
final nome = removerCharRestrito('João & Maria "Comércio" Ltda. <MATRIZ>');
// → 'João &amp; Maria &quot;Comércio&quot; Ltda. &lt;MATRIZ&gt;'

// Para campos que não aceitam acentos (ex: xNome no SEFAZ antigo):
final nomeSemAcento = removerCharRestrito(removerAcentos('João Müller'));
// → 'Joao Muller'
```

### Aplicação de Exemplo

O diretório `example/` contém um CLI Dart completo. Para executar:

```bash
cd example
dart pub get
dart run lib/main.dart
```

Sem certificado configurado, o app roda em **modo offline** e gera apenas o
XML não-assinado em `output/nfe.xml`. Para o fluxo completo, preencha as
constantes `_privateKeyRsa` e `_x509Certificate` no `lib/main.dart` com os
dados do seu certificado A1.

### Arquitetura dos Packages

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

### `nfe_client` — Destaques

#### Schemas gerados automaticamente

Os arquivos `lib/src/schemas/*.dart` são **gerados** a partir dos XSDs oficiais
em `packages/nfe_client/schemas/`. Para regenerar:

```bash
cd packages/nfe_client
dart run build_runner build --delete-conflicting-outputs
```

#### Certificado Digital (A1/PFX)

```dart
import 'package:nfe_client/nfe_client.dart';

final cert = CertificadoDigital(
  pemKey: encryptedPem,           // chave PEM criptografada (base64)
  rsaKey: encryptedRsa,           // chave RSA criptografada (base64)
  x509Certificate: encryptedX509, // certificado X.509 criptografado (base64)
  encryptionKey: myBase64Key,     // chave AES-256 em base64
  validade: DateTime(2026, 1, 1),
);

if (!cert.isValid) throw Exception('Certificado vencido ou inválido');
final pemDecrypted = cert.pem;   // chave privada PEM em texto claro
final x509Decrypted = cert.x509; // certificado PEM em texto claro
```

> **Nota de segurança:** O módulo `encryptDecrypt.dart` usa AES-CBC com IV fixo
> por compatibilidade com dados legados. Para novos projetos, gere um IV
> aleatório por operação de criptografia e armazene-o junto ao ciphertext.

#### Seleção de endpoint por UF

```dart
// Produção — UF São Paulo
final clientProd = NFeV4.fromUF(UFS.SP, tpAmb: '1',
  privateKey: pemKey, certificate: x509Cert);

// Homologação — UF Minas Gerais
final clientHom  = NFeV4.fromUF(UFS.MG, tpAmb: '2',
  privateKey: pemKey, certificate: x509Cert);

// Contingência EPEC (tpEmis=4) / SVC-AN (tpEmis=6)
final clientSvc  = NFeV4.fromUF(UFS.SP, tpAmb: '1', tpEmis: 6,
  privateKey: pemKey, certificate: x509Cert);
```

### `danfe_nfe` — Formatos suportados

| Função | Formato | Tamanho |
|--------|---------|---------|
| `gerenerateDanfeA4Retrato` | A4 retrato | 210×297mm |
| `gerenerateDanfeA4Paisagem` | A4 paisagem | 297×210mm |
| `gerenerateDanfeSimplificadoEtiqueta10x15` | Etiqueta simplificada | 100×150mm |
| `generateCartaDeCorrecao` | Carta de Correção | A4 |

```dart
// A4 Retrato (padrão)
final pdf = await generateDanfeFromProcNFe([procNFeXml], retrato: true);

// Múltiplas NF-e em um único PDF
final pdf = await generateDanfeFromProcNFe(
  [procNFe1Xml, procNFe2Xml],
  retrato: true,
  logo: logoBytes,
  cancelado: {1: true},
);

// Carta de Correção (CC-e)
final pdfCce = await generateCartaDeCorrecao(
  procNFe: procNFeSchema,
  envCCe: envCCeSchema,
  retEnvCCe: retEnvCCeSchema,
  retrato: true,
);
```

### Executando os testes

```bash
# nfe_client (inclui testes de sanitização de string)
cd packages/nfe_client && dart pub get && dart test

# xml_schema_validator
cd packages/xml_schema_validator && dart pub get && dart test

# danfe_nfe
cd packages/danfe_nfe && dart pub get && dart test
```

### Dependências externas

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

### Público-alvo

- Devs brasileiros em fintech / e-commerce que precisam emitir NF-e
- Empresas de software fiscal (ERP, PDV)
- Qualquer sistema que precise integrar com o SEFAZ

### Licença

MIT — veja `LICENSE` para detalhes.

---

<a name="english"></a>

## 🇺🇸 English

> Electronic Invoice (NF-e) for Dart/Flutter  
> Generate, send and print Brazilian NF-e documents without private dependencies.

### Overview

This repository contains a set of pure Dart packages for working with
**NF-e (Nota Fiscal Eletrônica)** — the mandatory electronic tax document in
Brazil, governed by SEFAZ / Receita Federal.

#### Included packages

| Package | Description |
|---------|-------------|
| [`xml_schema_validator`](./packages/xml_schema_validator/) | XSD parser and typed schema model |
| [`xml_schema_builder`](./packages/xml_schema_builder/) | `build_runner` code generator from `.xsd` files |
| [`soap_client`](./packages/soap_client/) | Native Dart SOAP client with mTLS / A1 certificate support |
| [`nfe_client`](./packages/nfe_client/) | Full NF-e v4.0 client: schemas, XML signing, SEFAZ communication |
| [`danfe_nfe`](./packages/danfe_nfe/) | PDF generator for DANFE (A4 portrait, A4 landscape, 10×15 label) |

#### Example application

The [`example/`](./example/) directory contains a complete Dart CLI app
demonstrating the **full NF-e lifecycle**:
build → sign → send to SEFAZ → poll receipt → generate DANFE PDF.

### Main flow

```
1. Build infNFe           →  nfe_client (schemas/nfe4.dart — infNFeComplexType_TNFe.fromJson)
2. Sign digitally         →  nfe_client (signature.dart — singXML)
3. Send to SEFAZ          →  nfe_client (client.dart — NFeV4.enviNFe)
4. Poll receipt           →  nfe_client (NFeV4.consReciNFe)
5. Build procNFe          →  nfe_client (procNFe.dart — makeXmlNFeProc)
6. Print DANFE            →  danfe_nfe  (generateDanfeFromProcNFe)
```

Supported supplementary operations:
- **Query NF-e status** — `NFeV4.consSitNFe`
- **Cancellation** — `NFeV4.envEventoCancNFeFromChNFe`
- **Correction Letter (CC-e)** — `NFeV4.envCCeFromChNFe`
- **Number range invalidation** — `inutilizarNumeracao()`
- **Taxpayer registry query** — `NFeV4.consCad`
- **Service status** — `NFeV4.consStatServ`
- **DFe distribution** — `NFeV4.distDFeInt`
- **EPEC contingency** — `NFeV4.envEPEC`
- **SVC-AN / SVC-RS contingency** — configurable via `tpEmis`

### Quick start

#### 1. Add to `pubspec.yaml`

```yaml
dependencies:
  nfe_client:
    path: packages/nfe_client   # adjust relative path
  danfe_nfe:
    path: packages/danfe_nfe
```

#### 2. Build and sign the NF-e XML

```dart
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;

// 1. Build infNFe from the typed schema
final infNFe = infNFeComplexType_TNFe.fromJson({
  'Id': 'NFe35260311222333000181550010000000011000000019',
  'versao': '4.00',
  'ide': {
    'cUF': '35',        // SP (São Paulo state code)
    'cNF': '00000001',
    'natOp': 'PRODUCT SALE',
    'mod': '55',
    'serie': '1',
    'nNF': '1',
    'dhEmi': formatarDataNFe(DateTime.now().toUtc()),
    'tpNF': '1',        // 1=Outbound
    'idDest': '1',
    'cMunFG': '3550308',
    'tpImp': '1',
    'tpEmis': '1',
    'cDV': '9',
    'tpAmb': '2',       // 2=Homologation (test environment)
    'finNFe': '1',
    'indFinal': '0',
    'indPres': '1',
    'procEmi': '3',
    'verProc': '1.0',
  },
  'emit': {
    'CNPJ': '11222333000181',
    'xNome': 'EXAMPLE COMPANY LLC',
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

// 2. Wrap in <NFe> without a signature (pre-signing state)
final nfeElement = xml.XmlElement(
  xml.XmlName('NFe'),
  [xml.XmlAttribute(xml.XmlName('xmlns'), NFeV4.xmlns)],
  [xml.XmlDocumentFragment.parse(infNFe.toXml(name: 'infNFe'))],
);
final unsignedXml = '<?xml version="1.0" encoding="UTF-8"?>'
    '${nfeElement.toXmlString()}';

// 3. Sign digitally (RSA-SHA1 / xmldsig)
final signedXml = singXML(
  doc: unsignedXml,
  xmlElementName: 'infNFe',   // element to sign
  privateKeyRsa: pemRsaKey,   // A1 certificate private key (PEM)
  x509Cert: x509Pem,          // issuer X.509 certificate (PEM)
);
```

#### 3. Send to SEFAZ (homologation)

```dart
import 'package:nfe_client/nfe_client.dart';

final client = NFeV4.fromUF(
  UFS.SP,
  tpAmb: '2',            // '2' = homologation; '1' = production
  privateKey: pemRsaKey,
  certificate: x509Pem,
);

try {
  final nfeSchema = NFe4Schema.fromXml(signedXml);
  final enviNFe = EnviNFeSchema.unsafe(
    xmlns: NFeV4.xmlns,
    idLote: '1',
    indSinc: indSincEnum.v_1, // 1=synchronous
    NFe: [nfeSchema],
    versao: '4.00',
  );
  final response = await client.enviNFe(
    '<?xml version="1.0" encoding="UTF-8"?>'
    '${enviNFe.toXml(xmlns: NFeV4.xmlns)}',
  );
  print('cStat : ${response.cStat}');
  print('nRec  : ${response.infRec?.nRec}');

  await Future.delayed(const Duration(seconds: 3));
  final receipt = await client.consReciNFe(response.infRec!.nRec);
  final prot = receipt.protNFe!.first;
  if (prot.infProt.cStat == '100') {
    print('NF-e AUTHORIZED — protocol: ${prot.infProt.nProt}');
  }
} finally {
  client.dispose();
}
```

#### 4. Build procNFe and generate DANFE

```dart
import 'package:nfe_client/nfe_client.dart';
import 'package:danfe_nfe/danfe_nfe.dart';

// Build procNFe XML (authorized NF-e + SEFAZ protocol)
final procNFeXml = makeXmlNFeProc(nfeSchema, prot);

// Generate DANFE as PDF (A4 portrait)
final pdf = await generateDanfeFromProcNFe(
  [procNFeXml],
  retrato: true,
  logo: logoBytes, // Uint8List? — optional company logo
);
final bytes = await pdf.save();
await File('danfe.pdf').writeAsBytes(bytes);
```

#### 5. Query NF-e status

```dart
final status = await client.consSitNFe(accessKey44Digits);
print('cStat: ${status.cStat} — ${status.xMotivo}');
// 100 = Authorized, 101 = Cancelled, 110 = Usage Denied
```

#### 6. Cancel an NF-e

```dart
final cancResult = await client.envEventoCancNFeFromChNFe(
  accessKey,
  cnpj: '11222333000181',
  xJust: 'Cancellation due to data entry error in the invoice',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
print('Event cStat: ${cancResult.retEvento?.first.infEvento.cStat}');
```

#### 7. Issue a Correction Letter (CC-e)

```dart
final cceResult = await client.envCCeFromChNFe(
  accessKey,
  xCorrecao: 'Correction of field xProd in item 1: correct product is XYZ',
  xCondUso: 'A Carta de Correcao e disciplinada pelo paragrafo 1o-A '
            'do art. 7o do Convenio S/N de 15 de dezembro de 1970...',
  privateKeyRsa: pemRsaKey,
  x509Cert: x509Pem,
);
```

#### 8. Invalidate number range

```dart
import 'package:nfe_client/nfe_client.dart';

final result = await inutilizarNumeracao(
  instance: InutNumeracao(
    inicio: 10,
    fim: 15,
    serie: 1,
    xJust: 'Numbers invalidated due to accidental sequence gap',
  ),
  certificadoDigital: myCertificate,
  configuracaoNFe: NFeConfig(
    numeracao_atual: 1,
    serie: 1,
    ambiente: AmbienteNFE.homologacao,
  ),
  uf: UFS.SP,
  cnpj: '11222333000181',
);
```

#### 9. Sanitize free-text before inserting into XML

```dart
import 'package:nfe_client/nfe_client.dart';

// Always sanitize strings before inserting into the NF-e XML
final name = removerCharRestrito('John & Mary "Commerce" Ltd. <HQ>');
// → 'John &amp; Mary &quot;Commerce&quot; Ltd. &lt;HQ&gt;'

// Strip accents for fields that only accept ASCII-range characters:
final asciiName = removerCharRestrito(removerAcentos('João Müller'));
// → 'Joao Muller'
```

### Example Application

The `example/` directory contains a complete Dart CLI. To run it:

```bash
cd example
dart pub get
dart run lib/main.dart
```

Without a certificate configured, it runs in **offline mode** and writes only
the unsigned XML to `output/nfe.xml`. For the full online flow, set
`_privateKeyRsa` and `_x509Certificate` in `lib/main.dart`.

### Package Architecture

```
xml_schema_validator          (pure Dart — no local dependencies)
       │
       ▼
xml_schema_builder            (build-time code generation tool)
       │
       ▼
soap_client                   (native Dart SOAP client with mTLS)
       │
       ▼
nfe_client                    (NF-e client + 70+ XSD-generated schemas)
       │
       ▼
danfe_nfe                     (DANFE PDF generation)
```

### `nfe_client` — Highlights

#### Auto-generated schemas

The files in `lib/src/schemas/*.dart` are **generated** from the official XSD
files published by SEFAZ in `packages/nfe_client/schemas/`. To regenerate:

```bash
cd packages/nfe_client
dart run build_runner build --delete-conflicting-outputs
```

#### Digital Certificate (A1/PFX)

```dart
import 'package:nfe_client/nfe_client.dart';

final cert = CertificadoDigital(
  pemKey: encryptedPem,           // AES-encrypted PEM key (base64)
  rsaKey: encryptedRsa,           // AES-encrypted RSA key (base64)
  x509Certificate: encryptedX509, // AES-encrypted X.509 cert (base64)
  encryptionKey: myBase64Key,     // AES-256 key in base64
  validade: DateTime(2026, 1, 1),
);

if (!cert.isValid) throw Exception('Certificate expired or invalid');
final pemDecrypted = cert.pem;   // decrypted private key PEM
final x509Decrypted = cert.x509; // decrypted certificate PEM
```

> **Security note:** `encryptDecrypt.dart` uses AES-CBC with a fixed IV for
> backward compatibility. For new projects, generate a fresh IV per encryption
> operation and store it alongside the ciphertext.

#### Endpoint selection by state (UF)

```dart
// Production — São Paulo
final clientProd = NFeV4.fromUF(UFS.SP, tpAmb: '1',
  privateKey: pemKey, certificate: x509Cert);

// Homologation — Minas Gerais
final clientHom  = NFeV4.fromUF(UFS.MG, tpAmb: '2',
  privateKey: pemKey, certificate: x509Cert);

// EPEC contingency (tpEmis=4) / SVC-AN (tpEmis=6)
final clientSvc  = NFeV4.fromUF(UFS.SP, tpAmb: '1', tpEmis: 6,
  privateKey: pemKey, certificate: x509Cert);
```

### `danfe_nfe` — Supported formats

| Function | Format | Size |
|----------|--------|------|
| `gerenerateDanfeA4Retrato` | A4 portrait | 210×297mm |
| `gerenerateDanfeA4Paisagem` | A4 landscape | 297×210mm |
| `gerenerateDanfeSimplificadoEtiqueta10x15` | Simplified label | 100×150mm |
| `generateCartaDeCorrecao` | Correction Letter | A4 |

```dart
// A4 portrait (default)
final pdf = await generateDanfeFromProcNFe([procNFeXml], retrato: true);

// Multiple NF-e documents in a single PDF
final pdf = await generateDanfeFromProcNFe(
  [procNFe1Xml, procNFe2Xml],
  retrato: true,
  logo: logoBytes,
  cancelado: {1: true}, // mark pages as cancelled by index
);

// Correction Letter (CC-e)
final pdfCce = await generateCartaDeCorrecao(
  procNFe: procNFeSchema,
  envCCe: envCCeSchema,
  retEnvCCe: retEnvCCeSchema,
  retrato: true,
);
```

### Running the tests

```bash
# nfe_client (includes string sanitization tests)
cd packages/nfe_client && dart pub get && dart test

# xml_schema_validator
cd packages/xml_schema_validator && dart pub get && dart test

# danfe_nfe
cd packages/danfe_nfe && dart pub get && dart test
```

### External dependencies

| Package | Version | Usage |
|---------|---------|-------|
| `xml` | ^6.3.0 | XML parsing / generation |
| `http` | ^1.1.0 | SOAP requests to SEFAZ |
| `crypto` | ^3.0.2 | Hash (SHA-1, SHA-256) |
| `encrypt` | ^5.0.3 | AES-CBC for certificates |
| `xml_crypto` | ^3.2.0 | XML digital signatures (xmldsig) |
| `ninja` | ^3.0.8 | RSA / PKCS#8 |
| `ninja_pem` | ^2.0.0 | PEM key parsing |
| `json_annotation` | ^4.5.0 | JSON serialization |
| `pdf` | ^3.8.4 | PDF generation (DANFE) |
| `barcode` | ^2.2.3 | Barcode in DANFE |
| `intl` | any | Date / number formatting |
| `diacritic` | ^0.1.3 | Accent removal |

### Target audience

- Brazilian developers in fintech / e-commerce who need to issue NF-e
- Fiscal software companies (ERP, POS)
- Any system that needs to integrate with SEFAZ

### License

MIT — see `LICENSE` for details.
