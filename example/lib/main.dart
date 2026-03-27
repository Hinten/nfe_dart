/// Complete Example — NF-e Lifecycle
///
/// This application demonstrates the full lifecycle of a Brazilian
/// electronic invoice (Nota Fiscal Eletrônica):
///
///   1. Build the NF-e data model (schemas generated from the official XSD)
///   2. Digitally sign the XML with an A1 certificate (RSA-SHA1 / xmldsig)
///   3. Send to SEFAZ in the HOMOLOGATION (test) environment
///   4. Poll the batch receipt (asynchronous processing)
///   5. Check the authorization status of the NF-e
///   6. Build the procNFe document (NF-e + authorization protocol)
///   7. Generate the DANFE PDF (A4 portrait)
///
/// To run:
///   cd example
///   dart pub get
///   dart run lib/main.dart
///
/// NOTE: Sending to SEFAZ requires a valid A1 digital certificate.
/// Without a certificate, the example only builds the XML and saves it to disk.
library nfe_example;

import 'dart:io';

import 'package:danfe_nfe/danfe_nfe.dart';
import 'package:nfe_client/nfe_client.dart';
import 'package:xml/xml.dart' as xml;

// ---------------------------------------------------------------------------
// Credentials — replace with your real A1 certificate data
// ---------------------------------------------------------------------------
//
// To generate a self-signed test certificate with OpenSSL:
//   openssl req -x509 -newkey rsa:2048 -keyout key.pem \
//     -out cert.pem -days 365 -nodes -subj "/CN=TEST"
//
// NOTE: Self-signed certificates are not accepted by SEFAZ.
//       Always use an A1 certificate issued by a trusted CA.

/// RSA private key in PEM format.
/// Leave null to run in offline mode (no SEFAZ request will be made).
const String? _privateKeyRsa = null; // Insert your PEM key here

/// X.509 certificate in PEM format.
/// Leave null to run in offline mode (no SEFAZ request will be made).
const String? _x509Certificate = null; // Insert your PEM certificate here

// ---------------------------------------------------------------------------
// Issuer data (the company issuing the NF-e)
// ---------------------------------------------------------------------------
const _issuerCnpj = '11222333000181'; // Dummy CNPJ for homologation testing
const _issuerIe = '111111111111'; // Dummy state registration
const _issuerName = 'EXAMPLE COMPANY LLC';
const _issuerStreet = 'RUA DAS FLORES';
const _issuerNumber = '100';
const _issuerDistrict = 'CENTRO';
const _issuerCityCode = '3550308'; // São Paulo
const _issuerCityName = 'SAO PAULO';
const _issuerUf = 'SP';
const _issuerZip = '01310100';
const _issuerCountryCode = '1058';
const _issuerCountryName = 'BRASIL';
const _issuerPhone = '1133333333';
const _issuerCrt = '1'; // 1=Simples Nacional, 3=Normal Tax Regime

// ---------------------------------------------------------------------------
// Recipient data
// ---------------------------------------------------------------------------
const _recipientCnpj = '99888777000166'; // Dummy CNPJ
const _recipientName = 'EXAMPLE CUSTOMER INC';
const _recipientStreet = 'AV PAULISTA';
const _recipientNumber = '1000';
const _recipientDistrict = 'BELA VISTA';
const _recipientCityCode = '3550308'; // São Paulo
const _recipientCityName = 'SAO PAULO';
const _recipientUf = 'SP';
const _recipientZip = '01310100';
const _recipientCountryCode = '1058';
const _recipientCountryName = 'BRASIL';
const _indIEDest = '1'; // 1=ICMS taxpayer

// ---------------------------------------------------------------------------
// NF-e parameters
// ---------------------------------------------------------------------------
const _tpAmb = '2'; // 2 = HOMOLOGATION (never use 1=Production by mistake)
const _uf = UFS.SP;
const _serie = '1';
const _nNF = '1'; // Invoice number
const _natOp = 'PRODUCT SALE';
const _mod = '55'; // 55 = NF-e, 65 = NFC-e
const _tpNF = '1'; // 0=Inbound, 1=Outbound
const _idDest = '1'; // 1=Intrastate operation
const _indFinal = '0'; // 0=Normal, 1=Final consumer
const _indPres = '1'; // 1=In-person

// ---------------------------------------------------------------------------
// Sample product
// ---------------------------------------------------------------------------
const _productCode = '001';
const _productDesc = 'DEMONSTRATION PRODUCT NFe';
const _ncm = '84714900';
const _cfop = '5102'; // Sale of purchased goods
const _uCom = 'UN';
const _qCom = '1.0000';
const _vUnCom = '100.00';
const _vProd = '100.00';
const _uTrib = 'UN';
const _qTrib = '1.0000';
const _vUnTrib = '100.00';
const _indTot = '1'; // 1=Product is included in invoice total

// ---------------------------------------------------------------------------
// main
// ---------------------------------------------------------------------------
Future<void> main() async {
  print('');
  print('╔══════════════════════════════════════════════════════╗');
  print('║         NF-e Complete Example — Full Lifecycle        ║');
  print('║              Environment: HOMOLOGATION                ║');
  print('╚══════════════════════════════════════════════════════╝');
  print('');

  // Create output directory
  await Directory('output').create(recursive: true);

  // ─── 1. Build the infNFe XML ──────────────────────────────────────────────
  print('1. Building infNFe XML...');
  final infNFeXml = _buildInfNFe();

  // Wrap in <NFe> without signature (pre-signing state)
  final nfeUnsignedXml = _wrapInNFe(infNFeXml);
  await File('output/nfe.xml').writeAsString(nfeUnsignedXml);
  print('   ✔  Unsigned XML saved to output/nfe.xml\n');

  // ─── 2. Check certificate ─────────────────────────────────────────────────
  if (_privateKeyRsa == null || _x509Certificate == null) {
    print('⚠  Certificate not configured.');
    print('   The example ran in OFFLINE mode.');
    print('   The XML was built but was not signed or sent to SEFAZ.');
    print('');
    print('   To enable the full flow, edit lib/main.dart and set:');
    print('   - _privateKeyRsa  (PEM private key from your A1 certificate)');
    print('   - _x509Certificate (X.509 PEM certificate)');
    print('');
    return;
  }

  // ─── 3. Sign the XML ──────────────────────────────────────────────────────
  print('2. Signing the NF-e XML...');
  final signedXml = singXML(
    doc: nfeUnsignedXml,
    xmlElementName: 'infNFe',
    privateKeyRsa: _privateKeyRsa!,
    x509Cert: _x509Certificate!,
  );
  await File('output/nfe_signed.xml').writeAsString(signedXml);
  print('   ✔  Signed XML saved to output/nfe_signed.xml\n');

  // ─── 4. Validate the signature ────────────────────────────────────────────
  print('3. Validating digital signature...');
  final signatureValid = validateXml(signedXml, _x509Certificate!);
  print('   ✔  Signature: ${signatureValid ? 'VALID' : 'INVALID'}\n');

  // ─── 5. Build the submission batch ────────────────────────────────────────
  print('4. Building submission batch...');
  final nfeSchema = NFe4Schema.fromXml(signedXml);
  final enviNFe = EnviNFeSchema.unsafe(
    xmlns: NFeV4.xmlns,
    idLote: '1',
    indSinc: indSincEnum.v_1, // 1=synchronous
    NFe: [nfeSchema],
    versao: '4.00',
  );
  final enviXml = '<?xml version="1.0" encoding="UTF-8"?>'
      '${enviNFe.toXml(xmlns: NFeV4.xmlns)}';
  await File('output/enviNFe.xml').writeAsString(enviXml);
  print('   ✔  Batch saved to output/enviNFe.xml\n');

  // ─── 6. Send to SEFAZ ─────────────────────────────────────────────────────
  print('5. Sending to SEFAZ (homologation — UF: $_uf)...');
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
    print('   ✔  Submission response saved to output/retEnviNFe.xml\n');

    final nRec = retEnviNFe.infRec?.nRec;
    if (nRec == null) {
      print('   ✘  NF-e rejected immediately by SEFAZ. Please fix the data.');
      return;
    }

    // ─── 7. Poll the batch receipt ────────────────────────────────────────
    print('6. Polling batch receipt $nRec...');
    await Future.delayed(const Duration(seconds: 3)); // wait for processing
    final retConsReci = await client.consReciNFe(nRec);
    await File('output/retConsReciNFe.xml')
        .writeAsString(retConsReci.toXml(xmlns: NFeV4.xmlns));
    print('   cStat  : ${retConsReci.cStat}');
    print('   xMotivo: ${retConsReci.xMotivo}');
    print('   ✔  Receipt response saved to output/retConsReciNFe.xml\n');

    final protNFe = retConsReci.protNFe?.firstOrNull;
    if (protNFe == null || protNFe.infProt.cStat != '100') {
      print('   ✘  NF-e not authorized. cStat: ${protNFe?.infProt.cStat}');
      return;
    }

    print('   ✔  NF-e AUTHORIZED');
    print('      Access key: ${protNFe.infProt.chNFe}');
    print('      Protocol  : ${protNFe.infProt.nProt}\n');

    // ─── 8. Build the procNFe ─────────────────────────────────────────────
    print('7. Building procNFe (NF-e + authorization protocol)...');
    final procNFeXml = makeXmlNFeProc(nfeSchema, protNFe);
    await File('output/procNFe.xml').writeAsString(procNFeXml);
    print('   ✔  procNFe saved to output/procNFe.xml\n');

    // ─── 9. Generate DANFE ────────────────────────────────────────────────
    print('8. Generating DANFE (A4 portrait)...');
    final pdf = await generateDanfeFromProcNFe([procNFeXml], retrato: true);
    final pdfBytes = await pdf.save();
    await File('output/danfe.pdf').writeAsBytes(pdfBytes);
    print('   ✔  DANFE saved to output/danfe.pdf\n');

    print('════════════════════════════════════════════════════════');
    print('  FLOW COMPLETED SUCCESSFULLY!');
    print('  Files generated in the output/ folder:');
    print('    nfe.xml            — unsigned NF-e XML');
    print('    nfe_signed.xml     — signed NF-e XML');
    print('    enviNFe.xml        — batch sent to SEFAZ');
    print('    retEnviNFe.xml     — submission response');
    print('    retConsReciNFe.xml — receipt query response');
    print('    procNFe.xml        — procNFe (NF-e + protocol)');
    print('    danfe.pdf          — DANFE PDF');
    print('════════════════════════════════════════════════════════');
  } finally {
    client.dispose();
  }
}

// ---------------------------------------------------------------------------
// NF-e XML construction using generated schemas
// ---------------------------------------------------------------------------

/// Builds the `<infNFe>` XML using [infNFeComplexType_TNFe.fromJson].
String _buildInfNFe() {
  final now = formatarDataNFe(DateTime.now().toUtc());
  final cUF = _uf.cUF;
  final aamm = DateTime.now().toUtc().year.toString().substring(2) +
      DateTime.now().toUtc().month.toString().padLeft(2, '0');
  final nNFPad = _nNF.padLeft(9, '0');
  final seriePad = _serie.padLeft(3, '0');
  const cNF = '00000001'; // 8-digit random numeric code
  const tpEmis = '1';
  final keyBase = '$cUF$aamm$_issuerCnpj$_mod$seriePad$nNFPad$tpEmis$cNF';
  final cDV = _calcCheckDigit(keyBase);
  final accessKey = '$keyBase$cDV';

  final infNFe = infNFeComplexType_TNFe.fromJson({
    'Id': 'NFe$accessKey',
    'versao': '4.00',
    'ide': {
      'cUF': cUF,
      'cNF': cNF,
      'natOp': removerCharRestrito(_natOp),
      'mod': _mod,
      'serie': _serie,
      'nNF': _nNF,
      'dhEmi': now,
      'dhSaiEnt': now,
      'tpNF': _tpNF,
      'idDest': _idDest,
      'cMunFG': _issuerCityCode,
      'tpImp': '1', // 1=Portrait
      'tpEmis': tpEmis, // 1=Normal emission
      'cDV': cDV,
      'tpAmb': _tpAmb,
      'finNFe': '1', // 1=Normal NF-e
      'indFinal': _indFinal,
      'indPres': _indPres,
      'procEmi': '3',
      'verProc': '1.0',
    },
    'emit': {
      'CNPJ': _issuerCnpj,
      'xNome': removerCharRestrito(_issuerName),
      'enderEmit': {
        'xLgr': removerCharRestrito(_issuerStreet),
        'nro': _issuerNumber,
        'xBairro': removerCharRestrito(_issuerDistrict),
        'cMun': _issuerCityCode,
        'xMun': removerCharRestrito(_issuerCityName),
        'UF': _issuerUf,
        'CEP': _issuerZip,
        'cPais': _issuerCountryCode,
        'xPais': _issuerCountryName,
        'fone': _issuerPhone,
      },
      'IE': _issuerIe,
      'CRT': _issuerCrt,
    },
    'dest': {
      'CNPJ': _recipientCnpj,
      'xNome': removerCharRestrito(_recipientName),
      'enderDest': {
        'xLgr': removerCharRestrito(_recipientStreet),
        'nro': _recipientNumber,
        'xBairro': removerCharRestrito(_recipientDistrict),
        'cMun': _recipientCityCode,
        'xMun': removerCharRestrito(_recipientCityName),
        'UF': _recipientUf,
        'CEP': _recipientZip,
        'cPais': _recipientCountryCode,
        'xPais': _recipientCountryName,
      },
      'indIEDest': _indIEDest,
      'email': 'buyer@example.com',
    },
    'det': [
      {
        'nItem': '1',
        'prod': {
          'cProd': _productCode,
          'cEAN': 'SEM GTIN',
          'xProd': removerCharRestrito(_productDesc),
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
              'orig': '0', // 0=Domestic origin
              'CST': '40', // 40=Exempt
            },
          },
          'PIS': {
            'PISAliq': {
              'CST': '07', // Exempt operation
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
      'modFrete': '9', // 9=No freight
    },
    'pag': {
      'detPag': [
        {
          'tPag': '01', // 01=Cash
          'vPag': _vProd,
        },
      ],
    },
    'infAdic': {
      'infCpl': removerCharRestrito(
          'Demo NF-e generated by the nfe_dart example app. '
          'Homologation environment only - no fiscal value.'),
    },
  });

  return infNFe.toXml(name: 'infNFe');
}

/// Wraps an [infNFe] XML string inside a `<NFe>` element without a signature.
/// Used only for persistence before the signing step.
String _wrapInNFe(String infNFeXml) {
  final element = xml.XmlElement(
    xml.XmlName('NFe'),
    [xml.XmlAttribute(xml.XmlName('xmlns'), NFeV4.xmlns)],
    [xml.XmlDocumentFragment.parse(infNFeXml)],
  );
  return '<?xml version="1.0" encoding="UTF-8"?>${element.toXmlString()}';
}

// ---------------------------------------------------------------------------
// Utilities
// ---------------------------------------------------------------------------

/// Computes the check digit (modulo-11) of the NF-e 43-digit access key.
String _calcCheckDigit(String key) {
  assert(key.length == 43, 'Key must be exactly 43 digits before check digit');
  int weight = 2;
  int sum = 0;
  for (int i = key.length - 1; i >= 0; i--) {
    sum += int.parse(key[i]) * weight;
    weight = (weight == 9) ? 2 : weight + 1;
  }
  final remainder = sum % 11;
  return (remainder < 2 ? 0 : 11 - remainder).toString();
}
