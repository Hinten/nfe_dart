# xml_schema_validator

> 🇧🇷 [Português](#português) &nbsp;|&nbsp; 🇺🇸 [English](#english)

---

## Português

### O que é?

`xml_schema_validator` é uma biblioteca Dart para **leitura, resolução e validação de schemas XSD** (XML Schema Definition). Ela carrega um arquivo `.xsd` do sistema de arquivos, resolve recursivamente as diretivas `xs:include` e `xs:import`, e oferece uma API para validar documentos XML e consultar a estrutura do schema.

É a fundação de baixo nível do ecossistema [`nfe_dart`](https://github.com/Hinten/nfe_dart), utilizada pelo `xml_schema_builder` para geração de código e pelo `nfe_client` para validação de schemas da NF-e.

### Funcionalidades

- 📄 Carrega e faz o parse de schemas XSD a partir do sistema de arquivos
- 🔗 Resolve recursivamente `xs:include` e `xs:import` (suporte a multi-arquivo)
- ✅ Valida elementos XML contra tipos complexos e simples
- 🌳 Resolve hierarquias de tipos: extensões, restrições, sequências e choices
- 🔍 Expõe metadados do schema para geração de código via `xml_schema_builder`

### Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_validator: ^1.0.0
```

### Uso

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

// Carrega o schema (includes/imports são resolvidos automaticamente)
final schema = XSdSchema.fromFile('caminho/para/schema.xsd');

// Valida um documento XML
import 'package:xml/xml.dart' as xml;
final doc = xml.XmlDocument.parse(xmlString);
schema.validate(doc.rootElement);
```

#### Anotação `@FromSchema`

A anotação usada pelo `xml_schema_builder` para identificar quais schemas devem ser processados pelo gerador de código também é exportada por este pacote:

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

// Usado no xml_schema_builder — veja aquele pacote para mais detalhes
@FromSchema('schemas/meu_schema.xsd')
typedef MeuSchema = _MeuSchema;
```

### Informações adicionais

- Este pacote faz parte do monorepo [nfe_dart](https://github.com/Hinten/nfe_dart).
- Bugs e contribuições são bem-vindos em <https://github.com/Hinten/nfe_dart/issues>.

---

## English

### What is it?

`xml_schema_validator` is a Dart library for **loading, resolving, and validating XSD** (XML Schema Definition) schemas. It loads a `.xsd` file from the file system, recursively follows `xs:include` and `xs:import` directives, and provides an API to validate XML documents and introspect schema structure.

It is the low-level foundation of the [`nfe_dart`](https://github.com/Hinten/nfe_dart) ecosystem, used by `xml_schema_builder` for code generation and by `nfe_client` for NF-e schema validation.

### Features

- 📄 Load and parse XSD schemas from the file system
- 🔗 Recursively resolve `xs:include` and `xs:import` (multi-file schema support)
- ✅ Validate XML elements against complex and simple types
- 🌳 Resolve type hierarchies: extensions, restrictions, sequences, and choices
- 🔍 Expose schema metadata for code generation via `xml_schema_builder`

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_validator: ^1.0.0
```

### Usage

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

// Load the schema (includes/imports are resolved automatically)
final schema = XSdSchema.fromFile('path/to/schema.xsd');

// Validate an XML document
import 'package:xml/xml.dart' as xml;
final doc = xml.XmlDocument.parse(xmlString);
schema.validate(doc.rootElement);
```

#### `@FromSchema` annotation

The annotation consumed by `xml_schema_builder` to identify which schemas to process is also exported by this package:

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

// Used with xml_schema_builder — see that package for details
@FromSchema('schemas/my_schema.xsd')
typedef MySchema = _MySchema;
```

### Additional information

- This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.
- Bugs and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.


