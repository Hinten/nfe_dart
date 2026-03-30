# soap_client

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

> **Monorepo:** Este pacote faz parte do [nfe_dart](https://github.com/Hinten/nfe_dart) — veja o [README raiz](https://github.com/Hinten/nfe_dart#readme) para a visão geral completa do ecossistema e como as packages trabalham juntas.

---

## Português

### O que é?

`soap_client` é um cliente SOAP leve para aplicações Dart puro e Flutter com suporte a **mTLS (TLS mútuo)**. Ele monta e faz o parse de envelopes SOAP, realiza a descoberta automática de operações via WSDL e gerencia autenticação com certificados de cliente.

É utilizado pelo `nfe_client` como camada de transporte para comunicação com os web services do SEFAZ (que utilizam SOAP com certificados A1/A3).

### Packages relacionadas

| Package | Função |
|---------|--------|
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Usa este pacote como transporte SOAP/mTLS para o SEFAZ |

### Funcionalidades

- 📨 Monta e faz o parse de envelopes SOAP 1.1 e 1.2
- 🔍 Descoberta automática de operações WSDL antes das requisições
- 🔐 Autenticação mTLS com certificado e chave privada do cliente
- 📜 Suporte a certificados raiz confiáveis (trusted CAs)
- ⏱️ Timeout configurável por conexão
- ♻️ `SoapClient.nfe()` — factory pré-configurado com os certificados das autoridades SEFAZ/Receita Federal
- 🎯 Funciona em Dart puro (sem dependência de Flutter)

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  soap_client: ^1.0.0
```

### Uso

#### Cliente genérico

```dart
import 'package:soap_client/soap_client.dart';

final client = SoapClient.init(
  privateKey: privateKeyBytes,     // chave privada DER
  certificate: certificateBytes,   // certificado DER
  trustedCertificates: [caBytess], // CAs confiáveis (opcional)
);

final response = await client.call(
  url: 'https://servico.sefaz.uf.gov.br/NFeAutorizacao4',
  action: 'nfeAutorizacaoLote',
  body: '<nfeDadosMsg>...</nfeDadosMsg>',
  namespace: 'http://www.portalfiscal.inf.br/nfe/wsdl/NFeAutorizacao4',
);

client.dispose(); // libera o HttpClient
```

#### Factory pré-configurado para NF-e

```dart
// Carrega automaticamente os certificados do SEFAZ/Receita Federal
final client = SoapClient.nfe(
  privateKey: myPrivateKeyBytes,
  certificate: myCertificateBytes,
);
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart). Consulte o [README raiz](https://github.com/Hinten/nfe_dart#readme) para o fluxo completo de uso.
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`soap_client` is a lightweight SOAP client for pure Dart and Flutter applications with **mTLS (mutual TLS)** support. It builds and parses SOAP envelopes, auto-discovers WSDL operations, and handles client-certificate authentication.

It is used by `nfe_client` as the transport layer for communicating with SEFAZ web services (which use SOAP with A1/A3 certificates).

### Related packages

| Package | Role |
|---------|------|
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Uses this package as the SOAP/mTLS transport layer for SEFAZ |

### Features
- 🔍 Automatic WSDL operation discovery before requests
- 🔐 mTLS authentication with client certificate and private key
- 📜 Trusted root certificate support (custom CAs)
- ⏱️ Configurable connection timeout
- ♻️ `SoapClient.nfe()` — factory pre-loaded with SEFAZ / Receita Federal CA certificates
- 🎯 Works in pure Dart (no Flutter dependency)

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  soap_client: ^1.0.0
```

### Usage

#### Generic client

```dart
import 'package:soap_client/soap_client.dart';

final client = SoapClient.init(
  privateKey: privateKeyBytes,     // DER-encoded private key
  certificate: certificateBytes,   // DER-encoded certificate
  trustedCertificates: [caBytes],  // trusted CAs (optional)
);

final response = await client.call(
  url: 'https://servico.sefaz.uf.gov.br/NFeAutorizacao4',
  action: 'nfeAutorizacaoLote',
  body: '<nfeDadosMsg>...</nfeDadosMsg>',
  namespace: 'http://www.portalfiscal.inf.br/nfe/wsdl/NFeAutorizacao4',
);

client.dispose(); // release the underlying HttpClient
```

#### Pre-configured factory for NF-e

```dart
// Automatically loads SEFAZ / Receita Federal CA certificates
final client = SoapClient.nfe(
  privateKey: myPrivateKeyBytes,
  certificate: myCertificateBytes,
);
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo. See the [root README](https://github.com/Hinten/nfe_dart#readme) for the full ecosystem overview.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


