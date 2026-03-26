import 'package:json_annotation/json_annotation.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:nfe_client/src/schemas/utils.dart';
import 'package:xml/xml.dart' as xml;
import 'package:xml_schema_validator/xml_schema_validator.dart';

part 'envEPEc.g.dart';
part 'envEPEc.xsd.g.dart';

@FromSchema('schemas/Evento_EPEC_PL_v1.01/envEPEC_v1.00.xsd', imports: [
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
])
typedef EnvEPECSchema = _EnvEPECSchema;

String makeEPEC(
  TNFeComplexType nfe, {
  required final String cUF,
  required final String tpAmb,
  required final String privateKeyRsa,
  required final String x509Cert,
  final String tpAutor = '1',
  final DateTime? dhEvento,
  final int nSeqEvento = 1,
  final String versao = '1.00',
  final String cOrgao = '91', // Ambiante Nacional
}) {
  assert(nfe.infNFe.dest != null,
      "Somente é possível emitir EPEC caso a nfe tenha um destinatário");
  final data = dhEvento ?? DateTime.now();
  final chNFe = nfe.infNFe.Id.replaceFirst('NFe', '');
  final id =
      'ID${tpEventoEnum.v_110140.value}$chNFe${nSeqEvento.toString().padLeft(2, '0')}';
  final cnpj = nfe.infNFe.emit.CNPJ;
  final ie = nfe.infNFe.emit.IE;
  assert(
      cnpj != null && ie != null, "Para gerar EPEC é necessário um CNPJ e IE");
  final schema = infEventoComplexType_TEvento(
    Id: id,
    cOrgao: cOrgaoEnum.fromValue(cOrgao),
    tpAmb: tpAmbEnum.fromValue(tpAmb),
    CNPJ: cnpj!,
    chNFe: chNFe,
    dhEvento: formatarDataNFe(data),
    tpEvento: tpEventoEnum.v_110140,
    nSeqEvento: nSeqEvento.toString(),
    verEvento: verEventoEnum.v_100,
    detEvento: detEventoComplexType_infEvento(
      descEvento: descEventoEnum.v_EPEC,
      cOrgaoAutor: cOrgaoAutorEnum.fromValue(cUF),
      tpAutor: tpAutorEnum.fromValue(tpAutor),
      verAplic: nfe.infNFe.ide.verProc,
      dhEmi: nfe.infNFe.ide.dhEmi,
      tpNF: tpNFEnum.fromValue(nfe.infNFe.ide.tpNF.value),
      IE: ie,
      versao: versaoEnum.v_100,
      dest: destComplexType_detEvento(
        UF: UFEnum.fromValue(nfe.infNFe.dest!.idEstrangeiro != null
            ? 'EX'
            : nfe.infNFe.dest!.enderDest!.UF.value),
        CNPJ: nfe.infNFe.dest!.CNPJ,
        CPF: nfe.infNFe.dest!.CPF,
        idEstrangeiro: nfe.infNFe.dest!.idEstrangeiro,
        IE: nfe.infNFe.dest!.IE,
        vNF: nfe.infNFe.total.ICMSTot.vNF,
        vICMS: nfe.infNFe.total.ICMSTot.vICMS,
        vST: nfe.infNFe.total.ICMSTot.vST,
      ),
    ),
  );
  final element = xml.XmlElement(xml.XmlName('evento'), [
    xml.XmlAttribute(
        xml.XmlName('xmlns'), "http://www.portalfiscal.inf.br/nfe"),
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

  return assinatura;
}
