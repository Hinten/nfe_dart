import 'package:nfe_client/src/common.dart';
import 'enderecos.dart' as end;


// http://www.nfe.fazenda.gov.br/portal/webServices.aspx?tipoConteudo=OUC/YVNWZfo=

class SP_NFe extends end.EnderecoWebService{
  @override
  final UFS uf = UFS.SP;
  @override
  final end.WebServiceNFe NfeInutilizacao = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeinutilizacao4.asmx');
  @override
  final end.WebServiceNFe NfeConsultaProtocolo = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeconsultaprotocolo4.asmx');
  @override
  final end.WebServiceNFe NfeStatusServico = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfestatusservico4.asmx');
  @override
  final end.WebServiceNFe NfeConsultaCadastro = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/cadconsultacadastro4.asmx');
  @override
  final end.WebServiceNFe RecepcaoEvento = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nferecepcaoevento4.asmx');
  @override
  final end.WebServiceNFe NFeAutorizacao = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeautorizacao4.asmx');
  @override
  final end.WebServiceNFe NFeRetAutorizacao = const end.WebServiceNFe(url: 'https://homologacao.nfe.fazenda.sp.gov.br/ws/nferetautorizacao4.asmx');
  @override
  final end.WebServiceNFe NFeDistribuicaoDFe = const end.WebServiceNFe(
    versao: '1.00',
    url: 'https://hom1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}

class SVC_RS_NFe extends end.EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  end.WebServiceNFe get NfeInutilizacao => throw Exception('Não existe serviço de inutilização SVC_RS de contingência');
  @override
  final end.WebServiceNFe NfeConsultaProtocolo = const end.WebServiceNFe(url: 'https://nfe-homologacao.svrs.rs.gov.br/ws/NfeConsulta/NfeConsulta4.asmx');
  @override
  final end.WebServiceNFe NfeStatusServico = const end.WebServiceNFe(url: 'https://nfe-homologacao.svrs.rs.gov.br/ws/NfeStatusServico/NfeStatusServico4.asmx');
  @override
  end.WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro SVC_RS de contingência');
  @override
  final end.WebServiceNFe RecepcaoEvento = const end.WebServiceNFe(url: 'https://nfe-homologacao.svrs.rs.gov.br/ws/recepcaoevento/recepcaoevento4.asmx');
  @override
  final end.WebServiceNFe NFeAutorizacao = const end.WebServiceNFe(url: 'https://nfe-homologacao.svrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx');
  @override
  final end.WebServiceNFe NFeRetAutorizacao = const end.WebServiceNFe(url: 'https://nfe-homologacao.svrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx');
  @override
  end.WebServiceNFe get  NFeDistribuicaoDFe => throw Exception('Não existe serviço NFeDistribuicaoDFe SVC_RS de contingência');
}


class SVC_AN_NFe extends end.EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  final end.WebServiceNFe NfeInutilizacao = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeInutilizacao4/NFeInutilizacao4.asmx');
  @override
  final end.WebServiceNFe NfeConsultaProtocolo = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeConsultaProtocolo4/NFeConsultaProtocolo4.asmx');
  @override
  final end.WebServiceNFe NfeStatusServico = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeStatusServico4/NFeStatusServico4.asmx');
  @override
  end.WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro SVC_RS de contingência');
  @override
  final end.WebServiceNFe RecepcaoEvento = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  final end.WebServiceNFe NFeAutorizacao = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeAutorizacao4/NFeAutorizacao4.asmx');
  @override
  final end.WebServiceNFe NFeRetAutorizacao = const end.WebServiceNFe(url: 'https://hom.svc.fazenda.gov.br/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx');
  @override
  end.WebServiceNFe get NFeDistribuicaoDFe => throw Exception('Não existe serviço NFeDistribuicaoDFe SVC_RS de contingência');
}

class AN_NFe extends end.EnderecoWebService{
  @override
  final UFS? uf = null;
  @override
  end.WebServiceNFe get NfeInutilizacao => throw Exception('Não existe serviço de inutilização AN');
  @override
  end.WebServiceNFe get NfeConsultaProtocolo => throw Exception('Não existe serviço de consulta de protocolo AN');
  @override
  end.WebServiceNFe get NfeStatusServico => throw Exception('Não existe serviço de status de serviço AN');
  @override
  end.WebServiceNFe get NfeConsultaCadastro => throw Exception('Não existe serviço de consulta de cadastro AN');
  @override
  final end.WebServiceNFe RecepcaoEvento = const end.WebServiceNFe(url: 'https://hom1.nfe.fazenda.gov.br/NFeRecepcaoEvento4/NFeRecepcaoEvento4.asmx');
  @override
  end.WebServiceNFe get NFeAutorizacao => throw Exception('Não existe serviço de autorização AN');
  @override
  end.WebServiceNFe get NFeRetAutorizacao => throw Exception('Não existe serviço de retorno de autorização AN');
  @override
  final end.WebServiceNFe NFeDistribuicaoDFe = const end.WebServiceNFe(
    versao: '1.00',
    url: 'https://hom1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx',
  );
}


end.EnderecoWebService fromUF(UFS? uf){
  switch(uf){
    case UFS.SP: return SP_NFe();
    default: throw UnimplementedError('UF homologação não implementada');
  }
}

end.EnderecoWebService fromUFContingenciaSVC_AN(UFS? uf){
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
end.EnderecoWebService fromUFContingenciaSVC_RS(UFS? uf){
  switch(uf){
    case UFS.AM : return SVC_RS_NFe();
    case UFS.BA : return SVC_RS_NFe();
    case UFS.GO : return SVC_RS_NFe();
    case UFS.MA : return SVC_RS_NFe();
    case UFS.MS : return SVC_RS_NFe();
    case UFS.MT : return SVC_RS_NFe();
    case UFS.PE : return SVC_RS_NFe();
    case UFS.PI : return SVC_RS_NFe();
    case UFS.PR : return SVC_RS_NFe();
    default: throw Exception('Não existe serviço de contingência SVC-RS para o estado do ${uf?.displayName}');
  }
}
end.EnderecoWebService fromUFContingenciaEPEC(UFS? uf){
  return AN_NFe();
}

