# nfe_client

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

> **Monorepo:** Este pacote faz parte do [nfe_dart](https://github.com/Hinten/nfe_dart) — veja o [README raiz](https://github.com/Hinten/nfe_dart#readme) para a visão geral completa do ecossistema e o fluxo de uso de todas as packages juntas.

---

## Português

### O que é?

`nfe_client` é um cliente Dart completo para o ecossistema da **NF-e (Nota Fiscal Eletrônica)** brasileira. Ele encapsula toda a comunicação com os web services do SEFAZ via SOAP/mTLS, assina XML com certificado digital A1, roteia automaticamente os endpoints por UF e ambiente, e expõe métodos de alto nível para todas as operações previstas no Manual de Integração.

### Packages relacionadas

| Package | Função |
|---------|--------|
| [`soap_client`](https://pub.dev/packages/soap_client) | Camada de transporte SOAP/mTLS utilizada internamente |
| [`xml_schema_validator`](https://pub.dev/packages/xml_schema_validator) | Parser XSD base dos schemas da NF-e |
| [`danfe_nfe`](https://pub.dev/packages/danfe_nfe) | Geração de DANFE em PDF a partir dos modelos deste pacote |

### Funcionalidades

- 🔐 Assinatura de XML com certificado digital A1 (PFX/PKCS#12)
- 🌐 Comunicação com os web services do SEFAZ via SOAP 1.2 + mTLS
- 🗺️ Roteamento automático de endpoints por UF e por ambiente (produção / homologação)
- 📋 Suporte completo às operações NF-e:
  | Método | Operação |
  |---|---|
  | `enviNFe` | Envio de lote de NF-e |
  | `consReciNFe` | Consulta de recibo |
  | `consSitNFe` | Consulta de situação da NF-e |
  | `consStatServ` | Consulta de status do serviço |
  | `inutNFe` | Inutilização de numeração |
  | `envEventoCancNFe` | Cancelamento |
  | `envCCe` | Carta de Correção Eletrônica |
  | `envEPEC` | EPEC (contingência) |
  | `envConfRecebto` | Confirmação de recebimento (NF-e destinatário) |
  | `distDFeInt` | Distribuição de DF-e |
  | `consCad` | Consulta de cadastro |
- 🔒 Armazenamento seguro de certificado: chaves armazenadas criptografadas (AES-CBC), decriptadas sob demanda via `CERTS_ENCRYPT`

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  nfe_client: ^1.0.0
```

Você precisará de um certificado digital A1 emitido por uma AC credenciada pela ICP-Brasil, com as chaves já extraídas em formato PEM.

### `CertificadoDigital` — modelo do certificado

`CertificadoDigital` **não** lê arquivos `.pfx` diretamente. Ele é um modelo de dados que armazena o material criptográfico do certificado **já criptografado** com AES-CBC, projetado para ser persistido em banco de dados. A chave de criptografia é lida da variável de ambiente `CERTS_ENCRYPT` (Base64 de 32 bytes).

```dart
import 'package:nfe_client/nfe_client.dart';

// Normalmente carregado do banco via fromJson:
final certificado = CertificadoDigital.fromJson(certMap);

// Ou construído diretamente com as chaves já criptografadas:
final certificado = CertificadoDigital(
  pemKey:         encryptedPemString,  // chave privada PEM criptografada com AES-CBC
  rsaKey:         encryptedRsaString,  // chave RSA criptografada
  x509Certificate: encryptedX509,     // certificado X.509 criptografado
  validade:       DateTime(2026, 12, 31),
  // encryptionKey: myBase64Key,       // omita para usar CERTS_ENCRYPT do ambiente
);

// Os getters .pem / .rsa / .x509 descriptografam sob demanda:
print(certificado.isValid); // true se dentro da validade
```

Para criptografar as chaves use as funções exportadas pelo pacote:

```dart
// Criptografa a string PEM com a chave AES-CBC em Base64
final encryptedPem = encryptar(value: rawPemString, b64key: myBase64AesKey);
final encryptedX509 = encryptar(value: rawX509String, b64key: myBase64AesKey);
```

### Uso

#### 1. Criar o cliente

```dart
import 'package:nfe_client/nfe_client.dart';

// certificado.pem e certificado.x509 retornam as strings PEM descriptografadas
final client = NFeV4.fromUF(
  UFS.sp,                        // UF do emitente
  tpAmb: '2',                    // '1' = produção, '2' = homologação
  privateKey: certificado.pem,
  certificate: certificado.x509,
);
```

#### 2. Enviar uma NF-e

```dart
// enviNFeString é o XML da NF-e já assinado
final retorno = await client.enviNFe(enviNFeString);
print(retorno.infRec.nRec); // número do recibo para consulta posterior
```

#### 3. Consultar o recibo

```dart
final resultado = await client.consReciNFe(nRec);
print(resultado.protNFe?.infProt.cStat); // '100' = autorizado
```

#### 4. Cancelar uma NF-e

```dart
await client.envEventoCancNFeFromChNFe(
  chNFe: '35...',          // chave de acesso
  xJust: 'Motivo do cancelamento com pelo menos 15 caracteres',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

#### 5. Emitir uma Carta de Correção (CC-e)

```dart
await client.envCCeFromChNFe(
  chNFe: '35...',
  xCorrecao: 'Corrige o campo ...',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart). Consulte o [README raiz](https://github.com/Hinten/nfe_dart#readme) para o fluxo completo de uso.
- Os endpoints de produção ficam em `enderecos.dart` e os de homologação em `enderecos_homologacao.dart`.
- Para gerar o DANFE em PDF, use o pacote [`danfe_nfe`](https://pub.dev/packages/danfe_nfe).
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`nfe_client` is a full-featured Dart client for the Brazilian **NF-e (Nota Fiscal Eletrônica)** ecosystem. It encapsulates all communication with SEFAZ web services via SOAP/mTLS, signs XML with an A1 digital certificate, automatically routes endpoints by state (UF) and environment, and exposes high-level methods for every operation in the Integration Manual.

### Related packages

| Package | Role |
|---------|------|
| [`soap_client`](https://pub.dev/packages/soap_client) | Internal SOAP/mTLS transport layer |
| [`xml_schema_validator`](https://pub.dev/packages/xml_schema_validator) | Base XSD parser for NF-e schemas |
| [`danfe_nfe`](https://pub.dev/packages/danfe_nfe) | DANFE PDF generation using this package's models |

### Features

- 🔐 XML signing with A1 digital certificate (PFX/PKCS#12)
- 🌐 SEFAZ web service communication via SOAP 1.2 + mTLS
- 🗺️ Automatic endpoint routing by UF and environment (production / homologação)
- 📋 Full NF-e operation support:
  | Method | Operation |
  |---|---|
  | `enviNFe` | Send NF-e batch |
  | `consReciNFe` | Query receipt |
  | `consSitNFe` | Query NF-e status |
  | `consStatServ` | Query service status |
  | `inutNFe` | Inutilize number range |
  | `envEventoCancNFe` | Cancel NF-e |
  | `envCCe` | Correction Letter (CC-e) |
  | `envEPEC` | EPEC contingency |
  | `envConfRecebto` | Recipient confirmation |
  | `distDFeInt` | DF-e distribution |
  | `consCad` | Taxpayer registry query |
- 🔒 Secure certificate storage: key material stored encrypted (AES-CBC), decrypted on demand via `CERTS_ENCRYPT`

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  nfe_client: ^1.0.0
```

You will need an A1 digital certificate issued by a CA accredited by ICP-Brasil, with keys already extracted in PEM format.

### `CertificadoDigital` — certificate model

`CertificadoDigital` does **not** read `.pfx` files directly. It is a data model that stores the certificate's cryptographic material **already encrypted** with AES-CBC, designed to be persisted in a database. The encryption key is read from the `CERTS_ENCRYPT` environment variable (Base64-encoded 32-byte key).

```dart
import 'package:nfe_client/nfe_client.dart';

// Typically loaded from your database via fromJson:
final certificado = CertificadoDigital.fromJson(certMap);

// Or constructed directly with already-encrypted key strings:
final certificado = CertificadoDigital(
  pemKey:          encryptedPemString,  // AES-CBC encrypted PEM private key
  rsaKey:          encryptedRsaString,  // AES-CBC encrypted RSA private key
  x509Certificate: encryptedX509,       // AES-CBC encrypted X.509 certificate
  validade:        DateTime(2026, 12, 31),
  // encryptionKey: myBase64Key,         // omit to use CERTS_ENCRYPT from env
);

// The .pem / .rsa / .x509 getters decrypt on demand:
print(certificado.isValid); // true if within validity period
```

To encrypt the key strings, use the helper functions exported by the package:

```dart
// Encrypt a PEM string with your Base64 AES-CBC key
final encryptedPem  = encryptar(value: rawPemString,  b64key: myBase64AesKey);
final encryptedX509 = encryptar(value: rawX509String, b64key: myBase64AesKey);
```

### Usage

#### 1. Create the client

```dart
import 'package:nfe_client/nfe_client.dart';

// certificado.pem and certificado.x509 return the decrypted PEM strings
final client = NFeV4.fromUF(
  UFS.sp,                        // issuer state
  tpAmb: '2',                    // '1' = production, '2' = homologação
  privateKey: certificado.pem,
  certificate: certificado.x509,
);
```

#### 2. Send an NF-e

```dart
// enviNFeString is the already-signed NF-e XML
final retorno = await client.enviNFe(enviNFeString);
print(retorno.infRec.nRec); // receipt number for later query
```

#### 3. Query the receipt

```dart
final resultado = await client.consReciNFe(nRec);
print(resultado.protNFe?.infProt.cStat); // '100' = authorized
```

#### 4. Cancel an NF-e

```dart
await client.envEventoCancNFeFromChNFe(
  chNFe: '35...',          // NF-e access key
  xJust: 'Cancellation reason with at least 15 characters',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

#### 5. Send a Correction Letter (CC-e)

```dart
await client.envCCeFromChNFe(
  chNFe: '35...',
  xCorrecao: 'Corrects field ...',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo. See the [root README](https://github.com/Hinten/nfe_dart#readme) for the full end-to-end usage flow.
- Production endpoints are in `enderecos.dart`; homologação endpoints are in `enderecos_homologacao.dart`.
- To generate the DANFE as a PDF, use the [`danfe_nfe`](https://pub.dev/packages/danfe_nfe) package.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


