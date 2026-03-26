/// Exemplo Completo — Ciclo de vida de uma NF-e
///
/// Este aplicativo demonstra o fluxo completo de uma Nota Fiscal Eletrônica:
///
///   1. Montagem do modelo de dados da NF-e (schemas gerados do XSD oficial)
///   2. Assinatura digital do XML com certificado A1 (RSA-SHA1 / xmldsig)
///   3. Envio para o SEFAZ em ambiente de HOMOLOGAÇÃO
///   4. Consulta do recibo de lote (processamento assíncrono)
///   5. Consulta da situação da NF-e autorizada
///   6. Montagem do procNFe (NF-e + protocolo de autorização)
///   7. Geração do DANFE em PDF (A4 retrato)
///
/// Para executar:
///   cd exemplo_completo
///   dart pub get
///   dart run lib/main.dart
///
/// ATENÇÃO: Para enviar ao SEFAZ você precisa de um certificado digital A1 válido.
/// Sem certificado o exemplo demonstra apenas a montagem do XML e salva em disco.
library exemplo_completo;

import 'dart:io';

import 'package:danfe_nfe/danfe_nfe.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;

// ---------------------------------------------------------------------------
// Credenciais — substitua pelos dados reais do seu certificado A1
// ---------------------------------------------------------------------------
//
// Para gerar um certificado de teste (auto-assinado), use o OpenSSL:
//   openssl req -x509 -newkey rsa:2048 -keyout chave.pem \
//     -out cert.pem -days 365 -nodes -subj "/CN=TESTE"
//
// NOTA: Um certificado auto-assinado não é aceito pelo SEFAZ.
//       Use sempre um certificado A1 emitido por uma AC credenciada.

/// Chave privada RSA em formato PEM.
/// Deixe null para rodar o exemplo apenas em modo offline (sem envio ao SEFAZ).
const String? _privateKeyRsa = null; // Insira sua chave PEM aqui

/// Certificado X.509 em formato PEM.
/// Deixe null para rodar o exemplo apenas em modo offline (sem envio ao SEFAZ).
const String? _x509Certificate = null; // Insira seu certificado PEM aqui

// ---------------------------------------------------------------------------
// Dados do emitente (empresa que emite a NF-e)
// ---------------------------------------------------------------------------
const _cnpjEmitente = '11222333000181'; // CNPJ fictício para homologação
const _ieEmitente = '111111111111'; // IE fictícia
const _nomeEmitente = 'EMPRESA EXEMPLO LTDA';
const _logradouroEmitente = 'RUA DAS FLORES';
const _numeroEmitente = '100';
const _bairroEmitente = 'CENTRO';
const _cMunicipioEmitente = '3550308'; // São Paulo
const _xMunicipioEmitente = 'SAO PAULO';
const _ufEmitente = 'SP';
const _cepEmitente = '01310100';
const _cPaisEmitente = '1058';
const _xPaisEmitente = 'BRASIL';
const _foneFoneEmitente = '1133333333';
const _crtEmitente = '1'; // 1=Simples Nacional, 3=Regime Normal

// ---------------------------------------------------------------------------
// Dados do destinatário
// ---------------------------------------------------------------------------
const _cnpjDestinatario = '99888777000166'; // CNPJ fictício
const _nomeDestinatario = 'CLIENTE EXEMPLO SA';
const _logradouroDestinatario = 'AV PAULISTA';
const _numeroDestinatario = '1000';
const _bairroDestinatario = 'BELA VISTA';
const _cMunicipioDestinatario = '3550308'; // São Paulo
const _xMunicipioDestinatario = 'SAO PAULO';
const _ufDestinatario = 'SP';
const _cepDestinatario = '01310100';
const _cPaisDestinatario = '1058';
const _xPaisDestinatario = 'BRASIL';
const _indIEDest = '1'; // 1=Contribuinte ICMS

// ---------------------------------------------------------------------------
// Dados da NF-e
// ---------------------------------------------------------------------------
const _tpAmb = '2'; // 2 = HOMOLOGAÇÃO (nunca use 1=Produção por acidente)
const _uf = UFS.SP;
const _serie = '1';
const _nNF = '1'; // Número da nota
const _natOp = 'VENDA DE MERCADORIA';
const _mod = '55'; // 55 = NF-e, 65 = NFC-e
const _tpNF = '1'; // 0=Entrada, 1=Saída
const _idDest = '1'; // 1=Operação interna
const _indFinal = '0'; // 0=Normal, 1=Consumidor final
const _indPres = '1'; // 1=Presencial

// ---------------------------------------------------------------------------
// Produto de exemplo
// ---------------------------------------------------------------------------
const _cProd = '001';
const _xProd = 'PRODUTO DE DEMONSTRACAO NFe';
const _ncm = '84714900';
const _cfop = '5102'; // Venda de mercadoria adquirida
const _uCom = 'UN';
const _qCom = '1.0000';
const _vUnCom = '100.00';
const _vProd = '100.00';
const _uTrib = 'UN';
const _qTrib = '1.0000';
const _vUnTrib = '100.00';
const _indTot = '1'; // 1=Produto compõe total da NF-e

// ---------------------------------------------------------------------------
// main
// ---------------------------------------------------------------------------
Future<void> main() async {
  print('');
  print('╔══════════════════════════════════════════════════════╗');
  print('║        Exemplo Completo de Emissão de NF-e           ║');
  print('║              Ambiente: HOMOLOGAÇÃO                    ║');
  print('╚══════════════════════════════════════════════════════╝');
  print('');

  // Cria a pasta de saída
  await Directory('output').create(recursive: true);

  // ─── 1. Montar o infNFe XML ───────────────────────────────────────────────
  print('1. Montando o infNFe...');
  final infNFeXml = _buildInfNFe();

  // Monta o XML não-assinado (apenas infNFe dentro de <NFe>)
  final nfeUnsignedXml = _wrapInNFe(infNFeXml);
  await File('output/nfe.xml').writeAsString(nfeUnsignedXml);
  print('   ✔  XML não-assinado salvo em output/nfe.xml\n');

  // ─── 2. Verificar certificado ─────────────────────────────────────────────
  if (_privateKeyRsa == null || _x509Certificate == null) {
    print('⚠  Certificado não configurado.');
    print('   O exemplo foi executado no modo OFFLINE.');
    print('   O XML foi gerado, mas não foi assinado nem enviado ao SEFAZ.');
    print('');
    print('   Para habilitar o envio, edite lib/main.dart e preencha:');
    print('   - _privateKeyRsa  (chave privada PEM do seu certificado A1)');
    print('   - _x509Certificate (certificado X.509 PEM)');
    print('');
    return;
  }

  // ─── 3. Assinar o XML ─────────────────────────────────────────────────────
  print('2. Assinando o XML da NF-e...');
  final xmlNFeAssinado = singXML(
    doc: nfeUnsignedXml,
    xmlElementName: 'infNFe',
    privateKeyRsa: _privateKeyRsa!,
    x509Cert: _x509Certificate!,
  );
  await File('output/nfe_assinada.xml').writeAsString(xmlNFeAssinado);
  print('   ✔  XML assinado salvo em output/nfe_assinada.xml\n');

  // ─── 4. Validar a assinatura ──────────────────────────────────────────────
  print('3. Validando a assinatura digital...');
  final assinaturaValida = validateXml(xmlNFeAssinado, _x509Certificate!);
  print('   ✔  Assinatura: ${assinaturaValida ? 'VÁLIDA' : 'INVÁLIDA'}\n');

  // ─── 5. Montar o lote de envio ────────────────────────────────────────────
  print('4. Montando o lote de envio...');
  final nfeSchema = NFe4Schema.fromXml(xmlNFeAssinado);
  final enviNFe = EnviNFeSchema.unsafe(
    xmlns: NFeV4.xmlns,
    idLote: '1',
    indSinc: indSincEnum.v_1, // 1=síncrono
    NFe: [nfeSchema],
    versao: '4.00',
  );
  final enviXml = '<?xml version="1.0" encoding="UTF-8"?>'
      '${enviNFe.toXml(xmlns: NFeV4.xmlns)}';
  await File('output/enviNFe.xml').writeAsString(enviXml);
  print('   ✔  Lote salvo em output/enviNFe.xml\n');

  // ─── 6. Enviar ao SEFAZ ───────────────────────────────────────────────────
  print('5. Enviando para o SEFAZ (homologação — UF: $_uf)...');
  final client = NFeV4.fromUF(
    _uf,
    tpAmb: _tpAmb,
    privateKey: _privateKeyRsa,
    certificate: _x509Certificate,
  );

  try {
    final retEnviNFe = await client.enviNFe(enviXml);
    print('   cStat  : ${retEnviNFe.cStat}');
    print('   xMotivo: ${retEnviNFe.xMotivo}');
    await File('output/retEnviNFe.xml')
        .writeAsString(retEnviNFe.toXml(xmlns: NFeV4.xmlns));
    print('   ✔  Retorno do envio salvo em output/retEnviNFe.xml\n');

    final nRec = retEnviNFe.infRec?.nRec;
    if (nRec == null) {
      print('   ✘  NF-e rejeitada imediatamente pelo SEFAZ. Corrija os dados.');
      return;
    }

    // ─── 7. Consultar recibo ──────────────────────────────────────────────
    print('6. Consultando recibo $nRec...');
    await Future.delayed(const Duration(seconds: 3));
    final retConsReci = await client.consReciNFe(nRec);
    await File('output/retConsReciNFe.xml')
        .writeAsString(retConsReci.toXml(xmlns: NFeV4.xmlns));
    print('   cStat  : ${retConsReci.cStat}');
    print('   xMotivo: ${retConsReci.xMotivo}');
    print('   ✔  Retorno da consulta salvo em output/retConsReciNFe.xml\n');

    final protNFe = retConsReci.protNFe?.firstOrNull;
    if (protNFe == null || protNFe.infProt.cStat != '100') {
      print('   ✘  NF-e não autorizada. cStat: ${protNFe?.infProt.cStat}');
      return;
    }

    print('   ✔  NF-e AUTORIZADA');
    print('      Chave   : ${protNFe.infProt.chNFe}');
    print('      Protocolo: ${protNFe.infProt.nProt}\n');

    // ─── 8. Montar procNFe ────────────────────────────────────────────────
    print('7. Montando o procNFe (NF-e + protocolo)...');
    final procNFeXml = makeXmlNFeProc(nfeSchema, protNFe);
    await File('output/procNFe.xml').writeAsString(procNFeXml);
    print('   ✔  procNFe salvo em output/procNFe.xml\n');

    // ─── 9. Gerar DANFE ───────────────────────────────────────────────────
    print('8. Gerando DANFE (A4 retrato)...');
    final pdf = await generateDanfeFromProcNFe([procNFeXml], retrato: true);
    final pdfBytes = await pdf.save();
    await File('output/danfe.pdf').writeAsBytes(pdfBytes);
    print('   ✔  DANFE salvo em output/danfe.pdf\n');

    print('════════════════════════════════════════════════════════');
    print('  FLUXO CONCLUÍDO COM SUCESSO!');
    print('  Arquivos gerados na pasta output/:');
    print('    nfe.xml            — XML da NF-e não-assinada');
    print('    nfe_assinada.xml   — XML da NF-e assinada');
    print('    enviNFe.xml        — Lote enviado ao SEFAZ');
    print('    retEnviNFe.xml     — Retorno do envio');
    print('    retConsReciNFe.xml — Retorno da consulta do recibo');
    print('    procNFe.xml        — procNFe (NF-e + protocolo)');
    print('    danfe.pdf          — DANFE em PDF');
    print('════════════════════════════════════════════════════════');
  } finally {
    client.dispose();
  }
}

// ---------------------------------------------------------------------------
// Construção do XML da NF-e a partir dos schemas gerados
// ---------------------------------------------------------------------------

/// Monta o XML da tag <infNFe> utilizando [infNFeComplexType_TNFe.fromJson].
String _buildInfNFe() {
  final agora = formatarDataNFe(DateTime.now().toUtc());
  final cUF = _uf.cUF;
  final aamm = DateTime.now().toUtc().year.toString().substring(2) +
      DateTime.now().toUtc().month.toString().padLeft(2, '0');
  final nNFPad = _nNF.padLeft(9, '0');
  final seriePad = _serie.padLeft(3, '0');
  const cNF = '00000001'; // código numérico aleatório (8 dígitos)
  const tpEmis = '1';
  final chaveBase = '$cUF$aamm$_cnpjEmitente$_mod$seriePad$nNFPad$tpEmis$cNF';
  final cDV = _calcDigitoVerificador(chaveBase);
  final chNFe = '$chaveBase$cDV';

  final infNFe = infNFeComplexType_TNFe.fromJson({
    'Id': 'NFe$chNFe',
    'versao': '4.00',
    'ide': {
      'cUF': cUF,
      'cNF': cNF,
      'natOp': removerCharRestrito(_natOp),
      'mod': _mod,
      'serie': _serie,
      'nNF': _nNF,
      'dhEmi': agora,
      'dhSaiEnt': agora,
      'tpNF': _tpNF,
      'idDest': _idDest,
      'cMunFG': _cMunicipioEmitente,
      'tpImp': '1', // 1=Retrato
      'tpEmis': tpEmis, // 1=Emissão Normal
      'cDV': cDV,
      'tpAmb': _tpAmb,
      'finNFe': '1', // 1=NF-e Normal
      'indFinal': _indFinal,
      'indPres': _indPres,
      'procEmi': '3',
      'verProc': '1.0',
    },
    'emit': {
      'CNPJ': _cnpjEmitente,
      'xNome': removerCharRestrito(_nomeEmitente),
      'enderEmit': {
        'xLgr': removerCharRestrito(_logradouroEmitente),
        'nro': _numeroEmitente,
        'xBairro': removerCharRestrito(_bairroEmitente),
        'cMun': _cMunicipioEmitente,
        'xMun': removerCharRestrito(_xMunicipioEmitente),
        'UF': _ufEmitente,
        'CEP': _cepEmitente,
        'cPais': _cPaisEmitente,
        'xPais': _xPaisEmitente,
        'fone': _foneFoneEmitente,
      },
      'IE': _ieEmitente,
      'CRT': _crtEmitente,
    },
    'dest': {
      'CNPJ': _cnpjDestinatario,
      'xNome': removerCharRestrito(_nomeDestinatario),
      'enderDest': {
        'xLgr': removerCharRestrito(_logradouroDestinatario),
        'nro': _numeroDestinatario,
        'xBairro': removerCharRestrito(_bairroDestinatario),
        'cMun': _cMunicipioDestinatario,
        'xMun': removerCharRestrito(_xMunicipioDestinatario),
        'UF': _ufDestinatario,
        'CEP': _cepDestinatario,
        'cPais': _cPaisDestinatario,
        'xPais': _xPaisDestinatario,
      },
      'indIEDest': _indIEDest,
      'email': 'comprador@exemplo.com.br',
    },
    'det': [
      {
        'nItem': '1',
        'prod': {
          'cProd': _cProd,
          'cEAN': 'SEM GTIN',
          'xProd': removerCharRestrito(_xProd),
          'NCM': _ncm,
          'CFOP': _cfop,
          'uCom': _uCom,
          'qCom': _qCom,
          'vUnCom': _vUnCom,
          'vProd': _vProd,
          'cEANTrib': 'SEM GTIN',
          'uTrib': _uTrib,
          'qTrib': _qTrib,
          'vUnTrib': _vUnTrib,
          'indTot': _indTot,
        },
        'imposto': {
          'vTotTrib': '0.00',
          'ICMS': {
            'ICMS40': {
              'orig': '0', // 0=Nacional
              'CST': '40', // 40=Isenta
            },
          },
          'PIS': {
            'PISAliq': {
              'CST': '07', // Operação Isenta
              'vBC': '0.00',
              'pPIS': '0.00',
              'vPIS': '0.00',
            },
          },
          'COFINS': {
            'COFINSAliq': {
              'CST': '07',
              'vBC': '0.00',
              'pCOFINS': '0.00',
              'vCOFINS': '0.00',
            },
          },
        },
      },
    ],
    'total': {
      'ICMSTot': {
        'vBC': '0.00',
        'vICMS': '0.00',
        'vICMSDeson': '0.00',
        'vFCP': '0.00',
        'vBCST': '0.00',
        'vST': '0.00',
        'vFCPST': '0.00',
        'vFCPSTRet': '0.00',
        'vProd': _vProd,
        'vFrete': '0.00',
        'vSeg': '0.00',
        'vDesc': '0.00',
        'vII': '0.00',
        'vIPI': '0.00',
        'vIPIDevol': '0.00',
        'vPIS': '0.00',
        'vCOFINS': '0.00',
        'vOutro': '0.00',
        'vNF': _vProd,
        'vTotTrib': '0.00',
      },
    },
    'transp': {
      'modFrete': '9', // 9=Sem ocorrência de transporte
    },
    'pag': {
      'detPag': [
        {
          'tPag': '01', // 01=Dinheiro
          'vPag': _vProd,
        },
      ],
    },
    'infAdic': {
      'infCpl': removerCharRestrito(
          'NF-e de demonstracao gerada pelo exemplo de uso do nfe_dart. '
          'Ambiente de homologacao - sem valor fiscal.'),
    },
  });

  return infNFe.toXml(name: 'infNFe');
}

/// Envolve o XML da [infNFe] em uma tag `<NFe>` sem assinatura.
/// Usado apenas para persistência antes da assinatura.
String _wrapInNFe(String infNFeXml) {
  final element = xml.XmlElement(
    xml.XmlName('NFe'),
    [xml.XmlAttribute(xml.XmlName('xmlns'), NFeV4.xmlns)],
    [xml.XmlDocumentFragment.parse(infNFeXml)],
  );
  return '<?xml version="1.0" encoding="UTF-8"?>${element.toXmlString()}';
}

// ---------------------------------------------------------------------------
// Utilitários
// ---------------------------------------------------------------------------

/// Calcula o dígito verificador (módulo 11) da chave de acesso da NF-e.
String _calcDigitoVerificador(String chave) {
  assert(chave.length == 43, 'Chave deve ter 43 dígitos para o cálculo do DV');
  int peso = 2;
  int soma = 0;
  for (int i = chave.length - 1; i >= 0; i--) {
    soma += int.parse(chave[i]) * peso;
    peso = (peso == 9) ? 2 : peso + 1;
  }
  final resto = soma % 11;
  return (resto < 2 ? 0 : 11 - resto).toString();
}
