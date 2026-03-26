import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'retEnvConfRecebto.xsd.g.dart';
part 'retEnvConfRecebto.g.dart';

@FromSchema('schemas/Evento_ManifestaDest_PL_v1.01/retEnvConfRecebto_v1.00.xsd')
typedef RetEnvConfRecebtoSchema = _RetEnvConfRecebtoSchema;

