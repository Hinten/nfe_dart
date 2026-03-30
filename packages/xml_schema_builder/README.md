# xml_schema_builder

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

> **Monorepo:** Este pacote faz parte do [nfe_dart](https://github.com/Hinten/nfe_dart) — veja o [README raiz](https://github.com/Hinten/nfe_dart#readme) para a visão geral completa do ecossistema e como as packages trabalham juntas.

---

## Português

### O que é?

`xml_schema_builder` é um gerador de código para `build_runner` que **cria classes Dart tipadas a partir de schemas XSD**. Basta anotar um typedef com `@FromSchema('caminho/para/schema.xsd')` e o gerador produz uma classe completa com métodos `fromXml`, `toXml`, `fromJson` e `toJson`.

É utilizado pelo `nfe_client` para gerar todas as classes de schema da NF-e (nota, autorização, eventos, etc.) a partir dos XSDs oficiais do SEFAZ.

### Packages relacionadas

| Package | Função |
|---------|--------|
| [`xml_schema_validator`](https://pub.dev/packages/xml_schema_validator) | Dependência base para parse dos arquivos XSD |
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Usa este gerador para todas as classes de schema da NF-e |

### Funcionalidades

- 📝 Geração de código a partir da anotação `@FromSchema`
- 🏗️ Gera classes com `fromXml` / `toXml` / `fromJson` / `toJson`
- 🔄 Suporte a tipos complexos, sequências, choices, extensões e restrições
- 📦 Integração nativa com `build_runner`
- 🔍 Baseado em `xml_schema_validator` para parse preciso do XSD

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_builder: ^1.0.0

dev_dependencies:
  build_runner: ^2.4.0
```

Registre o builder no `build.yaml` do seu projeto:

```yaml
targets:
  $default:
    builders:
      xml_schema_builder|xsdSchemaBuilder:
        enabled: true
```

### Uso

1. Crie um arquivo wrapper (ex: `lib/src/schemas/meu_schema.dart`):

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

part 'meu_schema.xsd.g.dart';
part 'meu_schema.g.dart';

@FromSchema('schemas/meu_schema.xsd')
typedef MeuSchema = _MeuSchema;
```

2. Execute o gerador:

```sh
dart run build_runner build --delete-conflicting-outputs
```

3. Use a classe gerada:

```dart
// Criar a partir de uma string XML
final obj = MeuSchema.fromXml(xmlString);

// Serializar de volta para XML
final xmlOut = obj.toXml();

// Serializar para JSON
final json = obj.toJson();
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart). Consulte o [README raiz](https://github.com/Hinten/nfe_dart#readme) para o fluxo completo de uso.
- Os schemas XSD da NF-e ficam em `packages/nfe_client/schemas/`.
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`xml_schema_builder` is a `build_runner` code generator that **creates typed Dart classes from XSD schemas**. Simply annotate a typedef with `@FromSchema('path/to/schema.xsd')` and the generator produces a complete class with `fromXml`, `toXml`, `fromJson`, and `toJson` methods.

It is used by `nfe_client` to generate all NF-e schema classes (invoice, authorization, events, etc.) from the official SEFAZ XSD files.

### Related packages

| Package | Role |
|---------|------|
| [`xml_schema_validator`](https://pub.dev/packages/xml_schema_validator) | Base dependency for XSD file parsing |
| [`nfe_client`](https://pub.dev/packages/nfe_client) | Uses this generator for all NF-e schema classes |

### Features
- 🏗️ Generates classes with `fromXml` / `toXml` / `fromJson` / `toJson`
- 🔄 Supports complex types, sequences, choices, extensions, and restrictions
- 📦 Native `build_runner` integration
- 🔍 Powered by `xml_schema_validator` for accurate XSD parsing

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_builder: ^1.0.0

dev_dependencies:
  build_runner: ^2.4.0
```

Register the builder in your project's `build.yaml`:

```yaml
targets:
  $default:
    builders:
      xml_schema_builder|xsdSchemaBuilder:
        enabled: true
```

### Usage

1. Create a wrapper file (e.g. `lib/src/schemas/my_schema.dart`):

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

part 'my_schema.xsd.g.dart';
part 'my_schema.g.dart';

@FromSchema('schemas/my_schema.xsd')
typedef MySchema = _MySchema;
```

2. Run the generator:

```sh
dart run build_runner build --delete-conflicting-outputs
```

3. Use the generated class:

```dart
// Create from an XML string
final obj = MySchema.fromXml(xmlString);

// Serialize back to XML
final xmlOut = obj.toXml();

// Serialize to JSON
final json = obj.toJson();
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo. See the [root README](https://github.com/Hinten/nfe_dart#readme) for the full ecosystem overview.
- NF-e XSD schemas live under `packages/nfe_client/schemas/`.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


