import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'consCad.xsd.g.dart';
part 'consCad.g.dart';

@FromSchema('schemas/PL_006v/consCad_v200.xsd',
)
typedef ConsCadSchema = _ConsCadSchema;
