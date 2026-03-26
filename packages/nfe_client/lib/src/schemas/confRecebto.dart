import 'package:nfe_client/nfe_client.dart';
import 'package:nfe_client/src/schemas/utils.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'confRecebto.xsd.g.dart';
part 'confRecebto.g.dart';

@FromSchema('schemas/Evento_ManifestaDest_PL_v1.01/envConfRecebto_v1.00.xsd')
typedef ConfRecebtoSchema = _ConfRecebtoSchema;


String makeEnvConfRecebto({
  required final String cOrgao, // cUF ou 91 para Ambiente Nacional
  required final String tpAmb,
  final String? CNPJ,
  final String? CPF,
  final DateTime? dhEvento,
  required final String chNFe,
  required final String idLote, // o Sefaz não controla esse campo, não sei pq é obrigatório
  required final descEventoEnum descEvento,
  final String? xJust,
  final int nSeqEvento = 1,
  final String versao = '1.00',
  required final String privateKeyRsa,
  required final String x509Cert,
}){
  assert (CNPJ != null || CPF != null);
  final data = dhEvento ?? DateTime.now();
  assert (xJust == null || (xJust.length > 15 && xJust.length <= 1000));

  late final tpEventoEnum tpEvento;

  switch (descEvento){
    case descEventoEnum.v_CienciadaOperacao:
      tpEvento = tpEventoEnum.v_210210;
      break;
    case descEventoEnum.v_ConfirmacaodaOpera:
      tpEvento = tpEventoEnum.v_210200;
      break;
    case descEventoEnum.v_DesconhecimentodaO:
      tpEvento = tpEventoEnum.v_210220;
      break;
    case descEventoEnum.v_OperacaonaoRealiza:
      tpEvento = tpEventoEnum.v_210240;
      break;
  }

  final id = 'ID${tpEvento.value}$chNFe$nSeqEvento';
  final schema = infEventoComplexType_TEvento(
    Id: id,
    cOrgao: cOrgaoEnum.fromValue(cOrgao),
    tpAmb: tpAmbEnum.fromValue(tpAmb),
    CNPJ: CNPJ,
    CPF: CPF,
    chNFe: chNFe,
    dhEvento: formatarDataNFe(data),
    tpEvento: tpEvento,
    nSeqEvento: nSeqEvento.toString(),
    verEvento: versao,
    detEvento: detEventoComplexType_infEvento(
      versao: versaoEnum.v_100,
      descEvento: descEvento,
      xJust: xJust,
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

  final msg = ConfRecebtoSchema(
    idLote: idLote,
    versao: versao,
    evento: <TEventoComplexType>[TEventoComplexType.fromXml(assinatura, name: 'evento')],
  );
  return msg.toXml(xmlns: 'http://www.portalfiscal.inf.br/nfe');
}