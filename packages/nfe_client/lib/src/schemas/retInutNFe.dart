import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'nfe4.dart';
import 'inutNFe.dart' show infInutComplexType;
part 'retInutNFe.xsd.g.dart';
part 'retInutNFe.g.dart';

@FromSchema('schemas/PL_009i_NT2021_004_v100d/retInutNFe_v4.00.xsd',
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
    'TProtNFeComplexType',
    'infInutComplexType',
  ],
)
typedef RetInutNFeSchema = _RetInutNFeSchema;