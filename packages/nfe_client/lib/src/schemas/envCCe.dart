import 'package:nfe_client/src/common.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:nfe_client/src/schemas/utils.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart' as xml;
part 'envCCe.xsd.g.dart';
part 'envCCe.g.dart';

@FromSchema('schemas/Evento_CCe_PL_v1.01/envCCe_v1.00.xsd',
)
typedef EnvCCeSchema = _EnvCCeSchema;

String makeEnvCCe({
  required final String cOrgao, // cUF ou 91 para Ambiente Nacional
  required final String tpAmb,
  final String? CNPJ,
  final String? CPF,
  final DateTime? dhEvento,
  required final String chNFe,
  required final String idLote, // o Sefaz não controla esse campo, não sei pq é obrigatório
  required final String xCorrecao,
  final int nSeqEvento = 1,
  final String versao = '1.00',
  required final String privateKeyRsa,
  required final String x509Cert,
}){
  assert (CNPJ != null || CPF != null);
  final data = dhEvento ?? DateTime.now();
  assert (xCorrecao.length > 15 && xCorrecao.length <= 1000);

  final id = 'ID${tpEventoEnum.v_110110.value}$chNFe${nSeqEvento.toString().padLeft(2, '0')}';
  final schema = infEventoComplexType_TEvento(
    Id: id,
    cOrgao: cOrgaoEnum.fromValue(cOrgao),
    tpAmb: tpAmbEnum.fromValue(tpAmb),
    CNPJ: CNPJ,
    CPF: CPF,
    chNFe: chNFe,
    dhEvento: formatarDataNFe(data),
    tpEvento: tpEventoEnum.v_110110,
    nSeqEvento: nSeqEvento.toString(),
    verEvento: verEventoEnum.v_100,
    detEvento: detEventoComplexType_infEvento(
      versao: versaoEnum.v_100,
      descEvento: descEventoEnum.v_CartadeCorrecao,
      xCorrecao: removerCharRestrito(removerAcentos(xCorrecao)),
      xCondUso: xCondUsoEnum.v_ACartadeCorrecaoed,
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

  final msg = EnvCCeSchema(
    idLote: idLote,
    versao: versao,
    evento: <TEventoComplexType>[TEventoComplexType.fromXml(assinatura, name: 'evento')],
  );
  return msg.toXml(xmlns: 'http://www.portalfiscal.inf.br/nfe');
}