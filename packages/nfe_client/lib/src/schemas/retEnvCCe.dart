import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'envCCe.dart';
part 'retEnvCCe.xsd.g.dart';
part 'retEnvCCe.g.dart';

@FromSchema('schemas/Evento_CCe_PL_v1.01/retEnvCCe_v1.00.xsd',
    imports: [
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
      'TEventoComplexType',
    ])
typedef RetEnvCCeSchema = _RetEnvCCeSchema;
