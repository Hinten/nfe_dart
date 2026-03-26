import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'nfe4.xsd.g.dart';
part 'nfe4.g.dart';

@FromSchema('schemas/PL_009i_NT2021_004_v100d/nfe_v4.00.xsd')
typedef NFe4Schema = _NFe4Schema;
typedef TNFeComplexType = NFe4Schema;

extension NFe4SchemaExtension on NFe4Schema {

  xml.XmlDocument toXmlDocument() {
    return xml.XmlDocument.parse(toXml());
  }

}