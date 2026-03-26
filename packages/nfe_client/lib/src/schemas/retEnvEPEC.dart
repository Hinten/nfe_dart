import 'package:json_annotation/json_annotation.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;
import 'package:xml_schema_validator/xml_schema_validator.dart';

part 'retEnvEPEC.g.dart';
part 'retEnvEPEC.xsd.g.dart';

@FromSchema('schemas/Evento_EPEC_PL_v1.01/retEnvEPEC_v1.00.xsd', imports: [
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
  'tpAmbEnum',
  'tpNFEnum',
  'UFEnum',
  'cOrgaoEnum',
  'cOrgaoAutorEnum',
])
typedef RetEnvEPECSchema = _RetEnvEPECSchema;

typedef RetornoEpec = TRetEventoComplexType;
