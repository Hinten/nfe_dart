import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'nfe4.dart';
import 'retConsReciNFe.dart' show TProtNFeComplexType;
part 'procNFe.xsd.g.dart';
part 'procNFe.g.dart';

@FromSchema('schemas/PL_009i_NT2021_004_v100d/procNFe_v4.00.xsd',
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
    'TProtNFeComplexType',
  ],
)
typedef ProcNFeSchema = _ProcNFeSchema;

String makeXmlNFeProc(NFe4Schema nfe, TProtNFeComplexType prot, {versao='4.00'}) {
  ProcNFeSchema procNFe = ProcNFeSchema.unsafe(
    xmlns: 'http://www.portalfiscal.inf.br/nfe',
    NFe: nfe,
    protNFe: prot,
    versao: versao,
  );
  return '<?xml version="1.0" encoding="UTF-8"?>${procNFe.toXml()}';
}