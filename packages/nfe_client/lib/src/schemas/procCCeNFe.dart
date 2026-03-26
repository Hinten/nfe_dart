import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'procCCeNFe.xsd.g.dart';
part 'procCCeNFe.g.dart';

@FromSchema('schemas/Evento_CCe_PL_v1.01/procCCeNFe_v1.00.xsd',)
typedef ProcCCeNFeSchema = _ProcCCeNFeSchema;
