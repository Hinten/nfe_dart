import 'package:json_annotation/json_annotation.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:xml/xml.dart' as xml;
part 'distDFeInt.xsd.g.dart';
part 'distDFeInt.g.dart';

@FromSchema('schemas/PL_NFeDistDFe_103/distDFeInt_v1.01.xsd')
typedef DistDFeIntSchema = _DistDFeIntSchema;
