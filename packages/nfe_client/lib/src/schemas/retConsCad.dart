import 'package:nfe_client/src/common.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'retConsCad.xsd.g.dart';
part 'retConsCad.g.dart';

@FromSchema("schemas/PL_006v/retConsCad_v2.00.xsd",
)
typedef RetConsCadSchema = _RetConsCadSchema;
