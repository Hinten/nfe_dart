import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'procConfRecebtoNFe.xsd.g.dart';
part 'procConfRecebtoNFe.g.dart';

@FromSchema('schemas/Evento_ManifestaDest_PL_v1.01/procConfRecebtoNFe_v1.00.xsd')
typedef ProcConfRecebtoNFeSchema = _ProcConfRecebtoNFeSchema;
