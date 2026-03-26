import 'package:json_annotation/json_annotation.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;
import 'package:xml_schema_validator/xml_schema_validator.dart';

import 'retEnvEPEC.dart';

part 'procEPEC.g.dart';
part 'procEPEC.xsd.g.dart';

@FromSchema('schemas/Evento_EPEC_PL_v1.01/procEPEC_v1.00.xsd', imports: [
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
  'TRetEventoComplexType',
])
typedef ProcEpecSchema = _ProcEpecSchema;

String makeProcEpec(
    {required Map<String, dynamic> eventoEnviadoJson,
    required Map<String, dynamic> eventoRetornoJson}) {
  return ProcEpecSchema.fromJson({
    'xmlns': 'http://www.portalfiscal.inf.br/nfe',
    'evento': eventoEnviadoJson,
    'retEvento': eventoRetornoJson,
    'versao': '1.00',
  }).toXml(xmlns: 'http://www.portalfiscal.inf.br/nfe');
}
