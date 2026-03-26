import 'package:nfe_client/src/common.dart';


// http://www.nfe.fazenda.gov.br/portal/webServices.aspx?tipoConteudo=OUC/YVNWZfo=

class WebServiceNFe{
  final String versao;
  final String url;

  Uri get uri => Uri.parse(url);

  const WebServiceNFe({
    this.versao = '4.00',
    required this.url
  });

  @override
  String toString() => url;
}

abstract class EnderecoWebService{
  abstract final UFS? uf;
  WebServiceNFe get NfeInutilizacao;
  WebServiceNFe get  NfeConsultaProtocolo;
  WebServiceNFe get  NfeStatusServico;
  WebServiceNFe get  NfeConsultaCadastro;
  WebServiceNFe get  RecepcaoEvento;
  WebServiceNFe get  NFeAutorizacao;
  WebServiceNFe get  NFeRetAutorizacao;
  WebServiceNFe get  NFeDistribuicaoDFe;
}

class AM_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.AM;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/NfeInutilizacao4');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/NfeConsulta4');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/NfeStatusServico4');
  @override
  final WebServiceNFe NfeConsultaCadastro = throw Exception('Este estado não possui consulta de cadastro');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/RecepcaoEvento4');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/NfeAutorizacao4');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.am.gov.br/services2/services/NfeRetAutorizacao4');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class BA_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.BA;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeInutilizacao4/NFeInutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeConsultaProtocolo4/NFeConsultaProtocolo4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeStatusServico4/NFeStatusServico4.asmx');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/CadConsultaCadastro4/CadConsultaCadastro4.asmx');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeAutorizacao4/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ba.gov.br/webservices/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class GO_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.GO;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeInutilizacao4');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeConsultaProtocolo4');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeStatusServico4');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/CadConsultaCadastro4');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeRecepcaoEvento4');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeAutorizacao4');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.fazenda.mg.gov.br/nfe2/services/NFeRetAutorizacao4');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class MS_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.MS;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeInutilizacao4');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeConsultaProtocolo4');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeStatusServico4');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/CadConsultaCadastro4');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeRecepcaoEvento4');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeAutorizacao4');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.ms.gov.br/ws/NFeRetAutorizacao4');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class MT_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.MT;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeInutilizacao4?wsdl');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeConsulta4?wsdl');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeStatusServico4?wsdl');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/CadConsultaCadastro4?wsdl');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/RecepcaoEvento4?wsdl');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeAutorizacao4?wsdl');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeRetAutorizacao4?wsdl');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class PE_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.PE;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeInutilizacao4');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeConsultaProtocolo4');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeStatusServico4');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/CadConsultaCadastro4?wsdl');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeRecepcaoEvento4');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeAutorizacao4');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefaz.pe.gov.br/nfe-service/services/NFeRetAutorizacao4');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class PR_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.PR;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeInutilizacao4?wsdl');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeConsultaProtocolo4?wsdl');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeStatusServico4?wsdl');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/CadConsultaCadastro4?wsdl');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeRecepcaoEvento4?wsdl');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeAutorizacao4?wsdl');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefa.pr.gov.br/nfe/NFeRetAutorizacao4?wsdl');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class RS_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.RS;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/NfeConsulta/NfeConsulta4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/NfeStatusServico/NfeStatusServico4.asmx');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://cad.sefazrs.rs.gov.br/ws/cadconsultacadastro/cadconsultacadastro4.asmx');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/recepcaoevento/recepcaoevento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.sefazrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SP_NFe extends EnderecoWebService{
  @override
  final UFS uf = UFS.SP;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nfeinutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nfeconsultaprotocolo4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nfestatusservico4.asmx');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/cadconsultacadastro4.asmx');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nferecepcaoevento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nfeautorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.fazenda.sp.gov.br/ws/nferetautorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SVAN_NFe extends EnderecoWebService{
  final UFS? uf = null;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeInutilizacao4/NFeInutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeConsultaProtocolo4/NFeConsultaProtocolo4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeStatusServico4/NFeStatusServico4.asmx');
  @override
  WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro nacional');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeAutorizacao4/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://www.sefazvirtual.fazenda.gov.br/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SVRS_NFe extends EnderecoWebService{
  final UFS? uf = null;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeConsulta/NfeConsulta4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeStatusServico/NfeStatusServico4.asmx');
  @override
  final WebServiceNFe NfeConsultaCadastro = const WebServiceNFe(url: 'https://cad.svrs.rs.gov.br/ws/cadconsultacadastro/cadconsultacadastro4.asmx');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/recepcaoevento/recepcaoevento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SVC_AN_NFe extends EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  final WebServiceNFe NfeInutilizacao = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeInutilizacao4/NFeInutilizacao4.asmx');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeConsultaProtocolo4/NFeConsultaProtocolo4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeStatusServico4/NFeStatusServico4.asmx');
  @override
  WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro nacional de contingência');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeAutorizacao4/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://www.svc.fazenda.gov.br/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SVC_RS_NFe extends EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  WebServiceNFe get NfeInutilizacao => throw Exception('Não existe serviço de inutilização SVC_RS de contingência');
  @override
  final WebServiceNFe NfeConsultaProtocolo = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeConsulta/NfeConsulta4.asmx');
  @override
  final WebServiceNFe NfeStatusServico = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeStatusServico/NfeStatusServico4.asmx');
  @override
  WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro SVC_RS de contingência');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/recepcaoevento/recepcaoevento4.asmx');
  @override
  final WebServiceNFe NFeAutorizacao = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeRetAutorizacao = const WebServiceNFe(url: 'https://nfe.svrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
    versao: '1.00',
    url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class AN_NFe extends EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  WebServiceNFe get NfeInutilizacao => throw Exception('Não existe serviço de inutilização AN');
  @override
  WebServiceNFe get NfeConsultaProtocolo => throw Exception('Não existe serviço de consulta de protocolo AN');
  @override
  WebServiceNFe get NfeStatusServico => throw Exception('Não existe serviço de status de serviço AN');
  @override
  WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro AN');
  @override
  final WebServiceNFe RecepcaoEvento = const WebServiceNFe(url: 'https://www.nfe.fazenda.gov.br/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  WebServiceNFe get NFeAutorizacao => throw Exception('Não existe serviço de autorização AN');
  @override
  WebServiceNFe get NFeRetAutorizacao => throw Exception('Não existe serviço de retorno de autorização AN');
  @override
  final WebServiceNFe NFeDistribuicaoDFe = const WebServiceNFe(
      versao: '1.00',
      url: 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

EnderecoWebService fromUF(UFS? uf){
  switch(uf){
    case UFS.AM: return AM_NFe();
    case UFS.BA: return BA_NFe();
    case UFS.GO: return GO_NFe();
    case UFS.MT: return MT_NFe();
    case UFS.MA: return SVAN_NFe();
    case UFS.MS: return MS_NFe();
    case UFS.PR: return PR_NFe();
    case UFS.PE: return PE_NFe();
    case UFS.RS: return RS_NFe();
    case UFS.SP: return SP_NFe();
    default: return SVRS_NFe();
  }
}

EnderecoWebService fromUFContingenciaSVC_AN(UFS? uf){
  switch(uf){
    case UFS.AC: return SVC_AN_NFe();
    case UFS.AL: return SVC_AN_NFe();
    case UFS.AP: return SVC_AN_NFe();
    case UFS.CE: return SVC_AN_NFe();
    case UFS.DF: return SVC_AN_NFe();
    case UFS.ES: return SVC_AN_NFe();
    case UFS.MG: return SVC_AN_NFe();
    case UFS.PA: return SVC_AN_NFe();
    case UFS.PB: return SVC_AN_NFe();
    case UFS.RJ: return SVC_AN_NFe();
    case UFS.RN: return SVC_AN_NFe();
    case UFS.RO: return SVC_AN_NFe();
    case UFS.RR: return SVC_AN_NFe();
    case UFS.RS: return SVC_AN_NFe();
    case UFS.SC: return SVC_AN_NFe();
    case UFS.SE: return SVC_AN_NFe();
    case UFS.SP: return SVC_AN_NFe();
    case UFS.TO: return SVC_AN_NFe();
    default: throw Exception('Não existe serviço de contingência SVC-AN para o estado do ${uf?.displayName}');
  }
}

EnderecoWebService fromUFContingenciaSVC_RS(UFS? uf){
  switch(uf){
    case UFS.AM : return SVC_RS_NFe();
    case UFS.BA : return SVC_RS_NFe();
    case UFS.GO : return SVC_RS_NFe();
    case UFS.MA : return SVC_RS_NFe();
    case UFS.MS : return SVC_RS_NFe();
    case UFS.MT : return SVC_RS_NFe();
    case UFS.PE : return SVC_RS_NFe();
    case UFS.PR : return SVC_RS_NFe();
    default: throw Exception('Não existe serviço de contingência SVC-RS para o estado do ${uf?.displayName}');
  }
}

EnderecoWebService fromUFContingenciaEPEC(UFS? uf){
  return AN_NFe();
}