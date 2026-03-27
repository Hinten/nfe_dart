# xml_schema_validator

A Dart library for parsing and validating XML documents against XSD (XML Schema Definition) schemas.

## Features

- Load and parse XSD schemas from the file system
- Recursively resolve `xs:include` and `xs:import` directives
- Validate XML elements against complex and simple types
- Resolve type hierarchies (extensions, restrictions, sequences, choices)
- Exposes schema metadata used by `xml_schema_builder` for code generation

## Getting started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_validator: ^1.0.0
```

## Usage

```dart
import 'package:xml_schema_validator/xml_schema_validator.dart';

// Load a schema (includes/imports are resolved automatically)
final schema = await XSdSchema.fromFile('path/to/schema.xsd');

// Validate an XML document
final doc = xml.XmlDocument.parse(xmlString);
schema.validate(doc.rootElement);
```

## Additional information

This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.
It is the low-level foundation used by `xml_schema_builder` (code generation) and
`nfe_client` (NF-e schema validation).

Issues and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.

