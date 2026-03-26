import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'nfe4.dart';
part 'enviNFe.xsd.g.dart';
part 'enviNFe.g.dart';

@FromSchema(
  'schemas/PL_009i_NT2021_004_v100d/enviNFe_v4.00.xsd',
  imports: ['TNFeComplexType'],
)
typedef EnviNFeSchema = _EnviNFeSchema;
