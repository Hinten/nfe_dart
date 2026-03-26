import 'package:nfe_client/src/common.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:nfe_client/src/schemas/utils.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'envEventoCancNFe.xsd.g.dart';
part 'envEventoCancNFe.g.dart';

@FromSchema('schemas/Evento_Canc_PL_v1.01/envEventoCancNFe_v1.00.xsd',)
typedef EnvEventoCancNFeSchema = _EnvEventoCancNFeSchema;

String makeEnvEventoCancNFe({
  required final String cOrgao, // cUF ou 91 para Ambiente Nacional
  required final String tpAmb,
  final String? CNPJ,
  final String? CPF,
  final DateTime? dhEvento,
  required final String chNFe,
  required final String idLote, // o Sefaz não controla esse campo, não sei pq é obrigatório
  required final String nProt,
  required final String xJust,
  final int nSeqEvento = 1,
  final String versao = '1.00',
  required final String privateKeyRsa,
  required final String x509Cert,
}){
  assert (CNPJ != null || CPF != null);
  assert (xJust.length >=15 && xJust.length <= 255);
  final data = dhEvento ?? DateTime.now();
  final id = 'ID${tpEventoEnum.v_110111.value}$chNFe${nSeqEvento.toString().padLeft(2, '0')}';
  final schema = infEventoComplexType_TEvento(
    Id: id,
    cOrgao: cOrgaoEnum.fromValue(cOrgao),
    tpAmb: tpAmbEnum.fromValue(tpAmb),
    CNPJ: CNPJ,
    CPF: CPF,
    chNFe: chNFe,
    dhEvento: formatarDataNFe(data),
    tpEvento: tpEventoEnum.v_110111,
    nSeqEvento: nSeqEvento.toString(),
    verEvento: verEventoEnum.v_100,
    detEvento: detEventoComplexType_infEvento(
      versao: versaoEnum.v_100,
      descEvento: descEventoEnum.v_Cancelamento,
      nProt: nProt,
      xJust: removerAcentos(removerCharRestrito(xJust)),
    ),
  );

  final element = xml.XmlElement(xml.XmlName('evento'), [
    xml.XmlAttribute(xml.XmlName('xmlns'), "http://www.portalfiscal.inf.br/nfe"),
    xml.XmlAttribute(xml.XmlName('versao'), versao),
  ], [
    xml.XmlDocumentFragment.parse(schema.toXml()),
  ]);

  final doc = element.toXmlString();

  final assinatura = singXML(
    xmlElementName: 'infEvento',
    doc: doc,
    privateKeyRsa: privateKeyRsa,
    x509Cert: x509Cert,
  );

  final msg = EnvEventoCancNFeSchema(
    idLote: idLote,
    versao: versao,
    evento: <TEventoComplexType>[TEventoComplexType.fromXml(assinatura, name: 'evento')],
  );
  return msg.toXml(xmlns: 'http://www.portalfiscal.inf.br/nfe');
}