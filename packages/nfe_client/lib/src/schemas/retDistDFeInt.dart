import 'package:json_annotation/json_annotation.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:xml/xml.dart' as xml;
part 'retDistDFeInt.xsd.g.dart';
part 'retDistDFeInt.g.dart';

@FromSchema('schemas/PL_NFeDistDFe_103/retDistDFeInt_v1.01.xsd')
typedef RetDistDFeIntSchema = _RetDistDFeIntSchema;
