# nfe_client

A Dart client for the Brazilian **NF-e (Nota Fiscal Eletrônica)** ecosystem.

## Features

- Communicate with all SEFAZ web services via SOAP/mTLS
- Sign XML documents with A1 digital certificates (PFX/PKCS#12)
- Support for all major NF-e operations:
  - **NFeAutorizacao** — send NF-e batches
  - **NFeRetAutorizacao** — query authorization results
  - **NFeConsultaProtocolo** — query a specific NF-e
  - **NFeInutilizacao** — inutilize number ranges
  - **NFeRecepcaoEvento** — cancel, send correction letters (CC-e), register EPEC
  - **NFeDistribuicaoDFe** — download NF-e documents
- Automatic endpoint routing by UF (state) and environment (production / homologação)
- Encrypted certificate storage with environment-variable key

## Getting started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  nfe_client: ^1.0.0
```

You will need an A1 digital certificate (`.pfx` file) issued by a Brazilian CA.

## Usage

```dart
import 'package:nfe_client/nfe_client.dart';

final cert = CertificadoDigital.fromPfxBytes(pfxBytes, password: 'senha');

final client = NFeV4.fromUF(
  uf: UF.sp,
  ambiente: TAmb.homologacao,
  certificado: cert,
);

// Send an NF-e batch
final response = await client.nfeAutorizacao(lote);
```

## Additional information

This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.
Endpoint addresses are maintained in `enderecos.dart` / `enderecos_homologacao.dart`.

Issues and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.

