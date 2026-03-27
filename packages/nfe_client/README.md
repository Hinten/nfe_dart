# nfe_client

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

---

## Português

### O que é?

`nfe_client` é um cliente Dart completo para o ecossistema da **NF-e (Nota Fiscal Eletrônica)** brasileira. Ele encapsula toda a comunicação com os web services do SEFAZ via SOAP/mTLS, assina XML com certificado digital A1, roteia automaticamente os endpoints por UF e ambiente, e expõe métodos de alto nível para todas as operações previstas no Manual de Integração.

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
- 🔒 Armazenamento criptografado de certificado via variável de ambiente

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  nfe_client: ^1.0.0
```

Você precisará de um certificado digital A1 (arquivo `.pfx`) emitido por uma AC credenciada pela ICP-Brasil.

### Uso

#### 1. Carregar o certificado

```dart
import 'package:nfe_client/nfe_client.dart';

final certBytes = await File('meu_certificado.pfx').readAsBytes();
final certificado = CertificadoDigital.fromPfxBytes(certBytes, password: 'minha_senha');
```

#### 2. Criar o cliente

```dart
final client = NFeV4.fromUF(
  UFS.sp,                        // UF do emitente
  tpAmb: '2',                    // '1' = produção, '2' = homologação
  privateKey: certificado.pem,
  certificate: certificado.x509,
);
```

#### 3. Enviar uma NF-e

```dart
// enviNFeString é o XML da NF-e já assinado
final retorno = await client.enviNFe(enviNFeString);
print(retorno.infRec.nRec); // número do recibo para consulta posterior
```

#### 4. Consultar o recibo

```dart
final resultado = await client.consReciNFe(nRec);
print(resultado.protNFe?.infProt.cStat); // '100' = autorizado
```

#### 5. Cancelar uma NF-e

```dart
await client.envEventoCancNFeFromChNFe(
  chNFe: '35...',          // chave de acesso
  xJust: 'Motivo do cancelamento com pelo menos 15 caracteres',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

#### 6. Emitir uma Carta de Correção (CC-e)

```dart
await client.envCCeFromChNFe(
  chNFe: '35...',
  xCorrecao: 'Corrige o campo ...',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart).
- Os endpoints de produção ficam em `enderecos.dart` e os de homologação em `enderecos_homologacao.dart`.
- Para gerar o DANFE em PDF, use o pacote `danfe_nfe`.
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`nfe_client` is a full-featured Dart client for the Brazilian **NF-e (Nota Fiscal Eletrônica)** ecosystem. It encapsulates all communication with SEFAZ web services via SOAP/mTLS, signs XML with an A1 digital certificate, automatically routes endpoints by state (UF) and environment, and exposes high-level methods for every operation in the Integration Manual.

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
- 🔒 Encrypted certificate storage via environment variable

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  nfe_client: ^1.0.0
```

You will need an A1 digital certificate (`.pfx` file) issued by a CA accredited by ICP-Brasil.

### Usage

#### 1. Load the certificate

```dart
import 'package:nfe_client/nfe_client.dart';

final certBytes = await File('my_certificate.pfx').readAsBytes();
final certificado = CertificadoDigital.fromPfxBytes(certBytes, password: 'my_password');
```

#### 2. Create the client

```dart
final client = NFeV4.fromUF(
  UFS.sp,                        // issuer state
  tpAmb: '2',                    // '1' = production, '2' = homologação
  privateKey: certificado.pem,
  certificate: certificado.x509,
);
```

#### 3. Send an NF-e

```dart
// enviNFeString is the already-signed NF-e XML
final retorno = await client.enviNFe(enviNFeString);
print(retorno.infRec.nRec); // receipt number for later query
```

#### 4. Query the receipt

```dart
final resultado = await client.consReciNFe(nRec);
print(resultado.protNFe?.infProt.cStat); // '100' = authorized
```

#### 5. Cancel an NF-e

```dart
await client.envEventoCancNFeFromChNFe(
  chNFe: '35...',          // NF-e access key
  xJust: 'Cancellation reason with at least 15 characters',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

#### 6. Send a Correction Letter (CC-e)

```dart
await client.envCCeFromChNFe(
  chNFe: '35...',
  xCorrecao: 'Corrects field ...',
  cnpj: '00000000000000',
  nSeq: 1,
);
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.
- Production endpoints are in `enderecos.dart`; homologação endpoints are in `enderecos_homologacao.dart`.
- To generate the DANFE as a PDF, use the `danfe_nfe` package.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


