# soap_client

A lightweight SOAP client for pure Dart and Flutter applications with mTLS (mutual TLS) support.

## Features

- Build and parse SOAP 1.1 / 1.2 envelopes
- Automatic WSDL operation discovery before requests
- Mutual TLS (mTLS) authentication with client certificates
- Configurable retry logic and timeout handling
- Works in pure Dart (no Flutter dependency required)

## Getting started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  soap_client: ^1.0.0
```

## Usage

```dart
import 'package:soap_client/soap_client.dart';

final client = SoapClient(
  wsdlUrl: 'https://example.com/service?wsdl',
  certificate: clientCertPem,
  privateKey: privateKeyPem,
);

final response = await client.call(
  action: 'MyOperation',
  body: '<MyRequest>...</MyRequest>',
);
```

## Additional information

This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo,
where it provides the SOAP transport layer for `nfe_client`.

Issues and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.

