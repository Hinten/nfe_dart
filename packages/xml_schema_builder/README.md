# xml_schema_builder

A `build_runner` code generator that produces typed Dart classes from XSD (XML Schema Definition) schemas using the `@FromSchema` annotation.

## Features

- Annotate a typedef with `@FromSchema('path/to/schema.xsd')` to trigger generation
- Generates immutable Dart classes with `fromXml` / `toXml` / `fromJson` / `toJson` methods
- Handles complex types, sequences, choices, extensions, and restrictions
- Built on top of `xml_schema_validator` for accurate schema parsing

## Getting started

Add the dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  xml_schema_builder: ^1.0.0

dev_dependencies:
  build_runner: ^2.4.0
```

Register the builder in your `build.yaml`:

```yaml
targets:
  $default:
    builders:
      xml_schema_builder|xsdSchemaBuilder:
        enabled: true
```

## Usage

```dart
import 'package:xml_schema_builder/xml_schema_builder.dart';

@FromSchema('schemas/nfe4.xsd')
typedef NFeSchema = _NFeSchema;
```

Then run the generator:

```sh
dart run build_runner build --delete-conflicting-outputs
```

## Additional information

This package is part of the [nfe_dart](https://github.com/Hinten/nfe_dart) monorepo.

Issues and contributions are welcome at <https://github.com/Hinten/nfe_dart/issues>.

