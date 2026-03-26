import 'dart:convert';

import 'package:nfe_client/src/common.dart';
import 'package:nfe_client/src/schemas/confRecebto.dart' as conf;
import 'package:nfe_client/src/schemas/consCad.dart';
import 'package:nfe_client/src/schemas/consReciNFe.dart';
import 'package:nfe_client/src/schemas/consSitNFe.dart';
import 'package:nfe_client/src/schemas/constStatServ.dart';
import 'package:nfe_client/src/schemas/distDFeInt.dart';
import 'package:nfe_client/src/schemas/envCCe.dart';
import 'package:nfe_client/src/schemas/envEventoCancNFe.dart';
import 'package:nfe_client/src/schemas/retConsCad.dart';
import 'package:nfe_client/src/schemas/retConsReciNFe.dart';
import 'package:nfe_client/src/schemas/retConsSitNFe.dart';
import 'package:nfe_client/src/schemas/retConstStatServ.dart';
import 'package:nfe_client/src/schemas/retDistDFeInt.dart';
import 'package:nfe_client/src/schemas/retEnvCCe.dart';
import 'package:nfe_client/src/schemas/retEnvConfRecebto.dart';
import 'package:nfe_client/src/schemas/retEnvEPEC.dart';
import 'package:nfe_client/src/schemas/retEnvEventoCancNFe.dart';
import 'package:nfe_client/src/schemas/retEnviNFe.dart';
import 'package:nfe_client/src/schemas/retInutNFe.dart';
import 'package:xml/xml.dart' as xml;
import 'package:soap_client/soap_client.dart';
import 'enderecos.dart' as end;
import 'enderecos_homologacao.dart' as hom;

class NFeV4 extends Disposeable {
  final end.EnderecoWebService webService;
  final SoapClient soapClient;
  final versao = '4.00';
  final String tpAmb;
  final String mod;
  static final xmlns = 'http://www.portalfiscal.inf.br/nfe';

  @override
  void dispose(){
    soapClient.dispose();
  }

  const NFeV4({
    required this.webService,
    required this.soapClient,
    required this.tpAmb,
    this.mod = '55',
  });

  //<editor-fold desc="Basicos">

  factory NFeV4.fromUF(UFS uf, {
    SoapClient? soapClient,
    required String tpAmb,
    int tpEmis = 1,
    String? privateKey,
    String? certificate,
    List<List<int>> trustedCertificates = const [],
  }) {
    late final end.EnderecoWebService webService;
    if (tpAmb == '1') {
      switch (tpEmis) {
        case 1:
          webService = end.fromUF(uf);
          break;
        case 2:
          webService = end.fromUF(uf);
          break;
        case 4:
          webService = end.fromUFContingenciaEPEC(uf);
          break;
        case 5:
          webService = end.fromUF(uf);
          break;
        case 6:
          webService = end.fromUFContingenciaSVC_AN(uf);
          break;
        case 7:
          webService = end.fromUFContingenciaSVC_RS(uf);
          break;
        default:
          throw Exception('tpEmis $tpEmis inválido');
      }
    } else {
      switch (tpEmis) {
        case 1:
          webService = hom.fromUF(uf);
          break;
        case 2:
          webService = hom.fromUF(uf);
          break;
        case 4:
          webService = hom.fromUFContingenciaEPEC(uf);
          break;
        case 5:
          webService = hom.fromUF(uf);
          break;
        case 6:
          webService = hom.fromUFContingenciaSVC_AN(uf);
          break;
        case 7:
          webService = hom.fromUFContingenciaSVC_RS(uf);
          break;
        default:
          throw Exception('tpEmis $tpEmis inválido');
      }
    }
    return NFeV4(
        webService: webService,
        soapClient: soapClient ?? SoapClient.nfe(
          privateKey: privateKey != null? utf8.encode(privateKey): null,
          certificate: certificate != null? utf8.encode(certificate): null,
          trustedCertificates: trustedCertificates,
        ),
        tpAmb: tpAmb);
  }

  xml.XmlDocument soapHeader({
    required String targetNamespace,
    String? versao,
    String? cUF,
  }){
    final xmlBuilder = xml.XmlBuilder();
    xmlBuilder.element('nfeCabecMsg', nest: (){
      xmlBuilder.attribute('xmlns', targetNamespace);
      xmlBuilder.element('versaoDados', nest: versao ?? this.versao);
      if (cUF != null) {
        xmlBuilder.element('cUF', nest: cUF);
      }
    });
    return xmlBuilder.buildDocument();
  }

  Future<RetConsStatServSchema> consStatServ() async {
    final service = await soapClient.autoDiscover(webService.NfeStatusServico.url);
    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(ConstStatServSchema.fromJson({
        'tpAmb': tpAmb,
        'cUF': webService.uf?.cUF,
        'xServ': "STATUS",
        'versao': versao,
      }).toXml(xmlns: NFeV4.xmlns)),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetConsStatServSchema.fromXml(response);
    return parsed;
  }

  Future<RetDistDFeIntSchema> distDFeInt({
    String? CNPJ,
    String? CPF,
    String? ultNSU,
    String? NSU,
    String? chNFe,
  }) async {
    // Consulta notas fiscais cujo destinatário é o usuário
    final service = await soapClient.autoDiscover(
        webService.NFeDistribuicaoDFe.url);

    final schema = DistDFeIntSchema.fromJson({
        'versao': "1.01",
        'tpAmb': tpAmb,
        'cUFAutor': webService.uf?.cUF,
        'CNPJ': CNPJ,
        'CPF': CPF,
        if (ultNSU != null)'distNSU': {
          'ultNSU': ultNSU,
        },
        if (NSU != null) 'consNSU':{
          'NSU': NSU,
        },
        if (chNFe != null) 'consChNFe' : {
          'chNFe': chNFe,
        },
    });

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(schema.toXml(xmlns: NFeV4.xmlns)),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetDistDFeIntSchema.fromXml(response);
    return parsed;
  }

  Future<RetEnviNFeSchema> enviNFe(String enviNFeString) async {

    final service = await soapClient.autoDiscover(webService.NFeAutorizacao.url);

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(enviNFeString),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    try {
      final parsed = RetEnviNFeSchema.fromXml(response);
      return parsed;
    } catch (e) {
      print(response);
      rethrow;
    }
  }

  Future<RetConsReciNFeSchema> consReciNFe(String nRec) async {
    final service = await soapClient.autoDiscover(
        webService.NFeRetAutorizacao.url);
    final schema = ConsReciNFeSchema.fromJson({
      'versao': versao,
      'tpAmb': tpAmb,
      'nRec': nRec,
    });

    final response = await service.services.first.request(
      body: xml.XmlDocument.parse(schema.toXml(xmlns: NFeV4.xmlns)),
      header: soapHeader(
        targetNamespace: service.services.first.targetNamespace,
        cUF: webService.uf?.cUF,
      ),
    );
    final parsed = RetConsReciNFeSchema.fromXml(response);
    return parsed;
  }

  Future<RetInutNFeSchema> inutNFe(String inutNFeString) async {

    final service = await soapClient.autoDiscover(webService.NfeInutilizacao.url);

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(inutNFeString),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetInutNFeSchema.fromXml(response);
    return parsed;
  }

  Future<RetConsSitNFeSchema> consSitNFe(String chave) async {
    assert (chave.length == 44);
    final service = await soapClient.autoDiscover(webService.NfeConsultaProtocolo.url);
    final schema = ConsSitNFeSchema.fromJson({
      'versao': versao,
      'tpAmb': tpAmb,
      'chNFe': chave,
      'xServ': "CONSULTAR",
    });

    final response = await service.services.first.request(
      body: xml.XmlDocument.parse(schema.toXml(xmlns: NFeV4.xmlns)),
      header: soapHeader(
        targetNamespace: service.services.first.targetNamespace,
        cUF: webService.uf?.cUF,
      ),
    );

    final parsed = RetConsSitNFeSchema.fromXml(response);
    return parsed;
  }

  Future<RetConsCadSchema> consCad({
    String? CNPJ,
    String? CPF,
    String? IE,
    String? UF,
  }) async {
    assert (CNPJ != null || CPF != null || IE != null);
    final service = await soapClient.autoDiscover(webService.NfeConsultaCadastro.url);
    final schema = ConsCadSchema.fromJson({
      'versao': "2.00",
      'infCons': {
        'xServ': "CONS-CAD",
        'UF': UF ?? webService.uf!.value,
        if (CNPJ != null) 'CNPJ': CNPJ,
        if (CPF != null) 'CPF': CPF,
        if (IE != null) 'IE': IE,
      }
    });

    final response = await service.services.first.request(
      body: xml.XmlDocument.parse(schema.toXml(xmlns: NFeV4.xmlns)),
      header: soapHeader(
        targetNamespace: service.services.first.targetNamespace,
        cUF: webService.uf?.cUF,
      ),
    );

    final parsed = RetConsCadSchema.fromXml(response);
    return parsed;
  }

  Future<RetEnvEventoCancNFeSchema> envEventoCancNFe(String envEventoCancNFeString) async {

    final service = await soapClient.autoDiscover(webService.RecepcaoEvento.url);

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(envEventoCancNFeString),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetEnvEventoCancNFeSchema.fromXml(response);
    return parsed;
  }

  Future<RetEnvEventoCancNFeSchema> envEventoCancNFeFromChNFe(
      String chNFe,{
        String? cnpj,
        String? cpf,
        xJust = "Cancelamento de NF-e emitida por erro/desistência do cliente",
        required String privateKeyRsa,
        required String x509Cert,
      }) async {
    assert (chNFe.length == 44);
    assert (cnpj != null || cpf != null);
    final status = await consSitNFe(chNFe);
    if (!["100", "150"].contains(status.cStat)){
      throw Exception("Impossível cancelar NFe que ainda não foi autorizada");
    }
    if (status.retCancNFe != null){
      if(status.retCancNFe!.infCanc.cStat == "101" || status.retCancNFe!.infCanc.cStat == "151"){
        throw Exception("NFe já cancelada");
      }
      throw Exception("${status.retCancNFe!.infCanc.cStat} - ${status.retCancNFe!.infCanc.xMotivo}");
    }

    assert (status.protNFe?.infProt.nProt != null, "NFe não possui protocolo de autorização");

    final schema = makeEnvEventoCancNFe(
        cOrgao: webService.uf?.cUF ?? '91',
        tpAmb: tpAmb,
        CNPJ: cnpj,
        CPF: cpf,
        chNFe: chNFe,
        idLote: DateTime.now().millisecondsSinceEpoch.toString(),
        nProt: status.protNFe!.infProt.nProt!,
        xJust: xJust,
        privateKeyRsa: privateKeyRsa,
        x509Cert: x509Cert,
    );
    return envEventoCancNFe(schema);
  }

  Future<RetEnvCCeSchema> envCCe(String envCCeString) async {

      final service = await soapClient.autoDiscover(webService.RecepcaoEvento.url);

      final response = await service.services.first.request(
          body: xml.XmlDocument.parse(envCCeString),
          header: soapHeader(
            targetNamespace: service.services.first.targetNamespace,
            cUF: webService.uf?.cUF,
          ),
      );
      final parsed = RetEnvCCeSchema.fromXml(response);
      return parsed;
  }

  Future<RetEnvCCeSchema> envCCeFromChNFe(
    String chNFe, {
    required String xCorrecao,
    required String xCondUso,
    required String privateKeyRsa,
    required String x509Cert,
  }) async {
    assert (chNFe.length == 44);
    final status = await consSitNFe(chNFe);
    if (!["100", "150"].contains(status.cStat)){
      throw Exception("Impossível enviar CCe para NFe que ainda não foi autorizada");
    }
    if (status.retCancNFe != null){
      if(status.retCancNFe!.infCanc.cStat == "101" || status.retCancNFe!.infCanc.cStat == "151"){
        throw Exception("NFe já cancelada");
      }
      throw Exception("${status.retCancNFe!.infCanc.cStat} - ${status.retCancNFe!.infCanc.xMotivo}");
    }

    final schema = makeEnvCCe(
        cOrgao: webService.uf?.cUF ?? '91',
        tpAmb: tpAmb,
        chNFe: chNFe,
        idLote: DateTime.now().millisecondsSinceEpoch.toString(),
        xCorrecao: xCorrecao,
        privateKeyRsa: privateKeyRsa,
        x509Cert: x509Cert,
    );
    return envCCe(schema);
  }

  Future<RetEnvConfRecebtoSchema> envConfRecebto(String envConfRecebtoString) async {

    final service = await soapClient.autoDiscover(webService.RecepcaoEvento.url);

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(envConfRecebtoString),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetEnvConfRecebtoSchema.fromXml(response);
    return parsed;
  }

  Future<RetEnvConfRecebtoSchema> envConfRecebtoFromChNFe(
    String chNFe, {
    required conf.descEventoEnum descEvento,
    required String xJust,
    required String privateKeyRsa,
    required String x509Cert,
  }) async {
    assert (chNFe.length == 44);
    final status = await consSitNFe(chNFe);
    if (!["100", "150"].contains(status.cStat)){
      throw Exception("Impossível enviar confirmação de recebimento para NFe que ainda não foi autorizada");
    }
    if (status.retCancNFe != null){
      if(status.retCancNFe!.infCanc.cStat == "101" || status.retCancNFe!.infCanc.cStat == "151"){
        throw Exception("NFe já cancelada");
      }
      throw Exception("${status.retCancNFe!.infCanc.cStat} - ${status.retCancNFe!.infCanc.xMotivo}");
    }

    assert (status.protNFe?.infProt.nProt != null, "NFe não possui protocolo de autorização");

    final schema = conf.makeEnvConfRecebto(
        cOrgao: webService.uf?.cUF ?? '91',
        tpAmb: tpAmb,
        chNFe: chNFe,
        idLote: DateTime.now().millisecondsSinceEpoch.toString(),
        descEvento: descEvento,
        xJust: xJust,
        privateKeyRsa: privateKeyRsa,
        x509Cert: x509Cert,
    );
    return envConfRecebto(schema);
  }

  Future<RetEnvEPECSchema> envEPEC(String envEPECString) async {

    final service = await soapClient.autoDiscover(webService.RecepcaoEvento.url);

    final response = await service.services.first.request(
        body: xml.XmlDocument.parse(envEPECString),
        header: soapHeader(
          targetNamespace: service.services.first.targetNamespace,
          cUF: webService.uf?.cUF,
        ),
    );
    final parsed = RetEnvEPECSchema.fromXml(response);
    return parsed;
  }

  Future<dynamic> envRemIndus(String envRemIndustString) async {
      throw UnimplementedError('Implementar envRemIndus');
  //   final service = await soapClient.autoDiscover(webService.RecepcaoEvento.url);
  //
  //   final response = await service.services.first.request(
  //       body: xml.XmlDocument.parse(envRemIndustString),
  //       header: soapHeader(
  //         targetNamespace: service.services.first.targetNamespace,
  //         cUF: webService.uf?.cUF,
  //       ),
  //   );
  //   final parsed = RetEnvRemIndusSchema.fromXml(response);
  //   return parsed;
  }

  Future<dynamic> envEventoAtorInteressado(String envEventoAtorInteressadoString) async {
    throw UnimplementedError('Implementar envEventoAtorInteressado');
  }
}