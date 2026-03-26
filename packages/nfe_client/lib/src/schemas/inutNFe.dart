import 'package:nfe_client/src/common.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
import 'nfe4.dart';
part 'inutNFe.xsd.g.dart';
part 'inutNFe.g.dart';

@FromSchema('schemas/PL_009i_NT2021_004_v100d/inutNFe_v4.00.xsd',
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
  ],
)
typedef InutNFeSchema = _InutNFeSchema;

String makeInutNFe({
  required String cUF,
  required String tpAmb,
  required String mod,
  String? anoInutilizacao, // 2 digitos
  required String cnpj, // 14 digitos
  required String xJust, // 15 a 255 caracteres
  required int serie,
  required int nNFIni, //numero inicial a ser inutilizado
  required int nNFFin, //numero final a ser inutilizado
  required String privateKeyRsa,
  required String x509Cert,
  String versao = '4.00',
}) {
  assert (nNFIni <= nNFFin);
  assert (xJust.length >= 15 && xJust.length <= 255);
  final ano = anoInutilizacao ?? DateTime.now().year.toString().substring(2);
  final _serie = serie.toString().padLeft(3, '0');
  final _nNFIni = nNFIni.toString().padLeft(9, '0');
  final _nNFFin = nNFFin.toString().padLeft(9, '0');
  final id = "ID$cUF$ano$cnpj$mod$_serie$_nNFIni$_nNFFin";

  final schema = infInutComplexType_TInutNFe.fromJson({
    'Id': id,
    'tpAmb': tpAmb,
    'xServ': 'INUTILIZAR',
    'cUF': cUF,
    'ano': ano,
    'CNPJ': cnpj,
    'mod': mod,
    'serie': serie.toString(),
    'nNFIni': nNFIni.toString(),
    'nNFFin': nNFFin.toString(),
    'xJust': removerAcentos(xJust),
  },);

  final element = xml.XmlElement(xml.XmlName('inutNFe'), [
    xml.XmlAttribute(xml.XmlName('xmlns'), "http://www.portalfiscal.inf.br/nfe"),
    xml.XmlAttribute(xml.XmlName('versao'), versao),
  ], [
    xml.XmlDocumentFragment.parse(schema.toXml()),
  ]);

  final doc = element.toXmlString();

  final assinatura = singXML(
    xmlElementName: 'infInut',
    doc: doc,
    privateKeyRsa: privateKeyRsa,
    x509Cert: x509Cert,
  );

  return assinatura;
}