import 'package:json_annotation/json_annotation.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:xml/xml.dart' as xml;
part 'constStatServ.xsd.g.dart';
part 'constStatServ.g.dart';

@FromSchema('schemas/PL_009i_NT2021_004_v100d/consStatServ_v4.00.xsd')
typedef ConstStatServSchema = _ConstStatServSchema;
