import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'nfe4.dart';
part 'retConsReciNFe.xsd.g.dart';
part 'retConsReciNFe.g.dart';


@FromSchema(
    'schemas/PL_009i_NT2021_004_v100d/retConsReciNFe_v4.00.xsd',
  imports: [
    'TNFeComplexType',
    'SignatureTypeComplexType',
    'SignedInfoTypeComplexType',
    'SignatureValueTypeComplexType',
    'KeyInfoTypeComplexType',
    'X509DataTypeComplexType',
    'TransformsTypeComplexType',
    'TransformTypeComplexType',
    'ReferenceTypeComplexType',
    'CanonicalizationMethodComplexType',
    'SignatureMethodComplexType',
    'DigestMethodComplexType',
    'AlgorithmEnum',
    'TpAmbEnum',
    'tpAmbEnum',
    'cUFEnum',
  ],
)
typedef RetConsReciNFeSchema = _RetConsReciNFeSchema;