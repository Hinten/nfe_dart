# danfe_nfe

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

> **Monorepo:** Este pacote faz parte do [nfe_dart](https://github.com/Hinten/nfe_dart) — veja o [README raiz](https://github.com/Hinten/nfe_dart#readme) para a visão geral completa do ecossistema e como as packages trabalham juntas.

---

## Português

### O que é?

`danfe_nfe` é um gerador de PDF para o **DANFE** (Documento Auxiliar da Nota Fiscal Eletrônica) em Dart puro. A partir dos XMLs da NF-e (`procNFe`) e dos eventos, ele produz documentos PDF prontos para impressão, em três layouts distintos, utilizando o pacote [`pdf`](https://pub.dev/packages/pdf).

### Packages relacionadas

| Package | Função |
|---------|--------|
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Provê os modelos de dados (schemas) consumidos por este gerador |

### Funcionalidades

- 🖨️ Gera DANFE em PDF a partir de um ou múltiplos XMLs `procNFe`
- 📐 Suporte a três layouts:
  - **Retrato** (A4 portrait) — layout padrão, mais comum
  - **Paisagem** (A4 landscape) — layout horizontal
  - **Etiqueta simplificada** (10×15 cm) — formato reduzido para logística
- 📝 Gera **Carta de Correção Eletrônica** (CC-e) em PDF
- 🏷️ Suporte a logotipo personalizado do emitente
- ✅ Indicação visual de NF-e cancelada
- 🎯 Funciona em Dart puro (sem dependência de Flutter)

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  danfe_nfe: ^1.0.0
```

### Uso

#### Gerar DANFE

```dart
import 'package:danfe_nfe/danfe_nfe.dart';
import 'dart:io';

// XML procNFe — pode ser uma lista com múltiplas notas (serão páginas do mesmo PDF)
final procNFexmls = [
  File('35240100000000000000550010000000011000000011-procNFe.xml').readAsStringSync(),
];

// Layout padrão (retrato A4)
final pdf = await generateDanfeFromProcNFe(procNFexmls);
await File('danfe.pdf').writeAsBytes(await pdf.save());

// Layout paisagem
final pdfPaisagem = await generateDanfeFromProcNFe(procNFexmls, paisagem: true);

// Etiqueta simplificada (10×15 cm)
final pdfEtiqueta = await generateDanfeFromProcNFe(procNFexmls, simplificado: true);

// Com logotipo do emitente
final logo = await File('logo.png').readAsBytes();
final pdfComLogo = await generateDanfeFromProcNFe(procNFexmls, logo: logo);
```

#### Indicar notas canceladas

```dart
// A chave é o número da NF-e (nNF), o valor indica se está cancelada
final pdf = await generateDanfeFromProcNFe(
  procNFexmls,
  cancelado: {1: true},
);
```

#### Gerar Carta de Correção (CC-e)

```dart
final pdfCCe = await cartaDeCorrecaoPDF(
  procNFeXmlString: procNFeXml,
  envCCeXmlString: envCCeXml,
  retEnvCCeXmlString: retEnvCCeXml,
);
await File('cce.pdf').writeAsBytes(await pdfCCe.save());
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart). Consulte o [README raiz](https://github.com/Hinten/nfe_dart#readme) para o fluxo completo de uso.
- Depende do [`nfe_client`](https://pub.dev/packages/nfe_client) para os modelos de dados da NF-e.
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`danfe_nfe` is a pure-Dart PDF generator for the **DANFE** (Documento Auxiliar da Nota Fiscal Eletrônica — the Brazilian NF-e companion document). Given `procNFe` and event XMLs, it produces print-ready PDF documents in three different layouts, powered by the [`pdf`](https://pub.dev/packages/pdf) package.

### Related packages

| Package | Role |
|---------|------|
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Provides the data models (schemas) consumed by this generator |

### Features
- 📐 Three layout options:
  - **Portrait** (A4 retrato) — standard, most common layout
  - **Landscape** (A4 paisagem) — horizontal layout
  - **Simplified label** (10×15 cm) — compact format for logistics
- 📝 Generate **Carta de Correção Eletrônica** (CC-e) PDFs
- 🏷️ Custom issuer logo support
- ✅ Visual cancellation indicator
- 🎯 Works in pure Dart (no Flutter dependency)

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  danfe_nfe: ^1.0.0
```

### Usage

#### Generate DANFE

```dart
import 'package:danfe_nfe/danfe_nfe.dart';
import 'dart:io';

// procNFe XML — a list allows multiple invoices in the same PDF
final procNFexmls = [
  File('35240100000000000000550010000000011000000011-procNFe.xml').readAsStringSync(),
];

// Default layout (A4 portrait)
final pdf = await generateDanfeFromProcNFe(procNFexmls);
await File('danfe.pdf').writeAsBytes(await pdf.save());

// Landscape layout
final pdfLandscape = await generateDanfeFromProcNFe(procNFexmls, paisagem: true);

// Simplified label (10×15 cm)
final pdfLabel = await generateDanfeFromProcNFe(procNFexmls, simplificado: true);

// With issuer logo
final logo = await File('logo.png').readAsBytes();
final pdfWithLogo = await generateDanfeFromProcNFe(procNFexmls, logo: logo);
```

#### Mark cancelled invoices

```dart
// Key = NF-e number (nNF), value = whether it is cancelled
final pdf = await generateDanfeFromProcNFe(
  procNFexmls,
  cancelado: {1: true},
);
```

#### Generate a Correction Letter (CC-e)

```dart
final pdfCCe = await cartaDeCorrecaoPDF(
  procNFeXmlString: procNFeXml,
  envCCeXmlString: envCCeXml,
  retEnvCCeXmlString: retEnvCCeXml,
);
await File('cce.pdf').writeAsBytes(await pdfCCe.save());
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo. See the [root README](https://github.com/Hinten/nfe_dart#readme) for the full end-to-end usage flow.
- It depends on [`nfe_client`](https://pub.dev/packages/nfe_client) for NF-e data models.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


