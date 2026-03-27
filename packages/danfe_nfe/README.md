# danfe_nfe

A PDF generator for the Brazilian **DANFE** (Documento Auxiliar da Nota Fiscal Eletrônica).

## Features

- Generate DANFE PDFs from `procNFe` XML documents
- Supports three layouts:
  - **Portrait** (retrato) — standard A4 portrait
  - **Landscape** (paisagem) — A4 landscape
  - **Simplified label** (etiqueta simplificada)
- Generate **Carta de Correção Eletrônica** (CC-e) PDFs
- Built on top of the [`pdf`](https://pub.dev/packages/pdf) package

## Getting started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  danfe_nfe: ^1.0.0
```

## Usage

```dart
import 'package:danfe_nfe/danfe_nfe.dart';

// Generate a DANFE PDF from a procNFe XML string
final pdfBytes = await generateDanfeFromProcNFe(procNFeXml);

// Save or display the PDF
await File('danfe.pdf').writeAsBytes(pdfBytes);
```

### Carta de Correção

```dart
final pdfBytes = await generateCartaDeCorrecao(procNFeXml, eventoXml);
```

## Additional information

This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.
It depends on `nfe_client` for NF-e data models.

Issues and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.

