import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:xml_schema_builder/src/generator.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

Builder xsdSchemaBuilder(BuilderOptions options) =>
    PartBuilder([XsdSchemaGenerator(), ], '.xsd.g.dart');