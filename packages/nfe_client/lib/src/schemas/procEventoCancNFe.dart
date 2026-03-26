import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;

part 'procEventoCancNFe.xsd.g.dart';
part 'procEventoCancNFe.g.dart';

@FromSchema('schemas/Evento_Canc_PL_v1.01/procEventoCancNFe_v1.00.xsd')
typedef ProcEventoCancNFeSchema = _ProcEventoCancNFeSchema;
