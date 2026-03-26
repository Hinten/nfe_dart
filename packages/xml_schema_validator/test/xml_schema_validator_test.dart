import 'dart:io';
import 'package:xml_schema_validator/xml_schema_validator.dart';

import 'package:test/test.dart';

void main() {
  group('Schema validation group', () {

    test('Schema pequena', () {
      final validator = XSdSchema.fromFile('test/schemas/PL_NFeDistDFe_100/distDFeInt_v1.00.xsd');
      final textDocument = '''<?xml version="1.0" encoding="utf-8"?>
<distDFeInt versao="1.00" xmlns="http://www.portalfiscal.inf.br/nfe">
  <tpAmb>2</tpAmb>
  <cUFAutor>35</cUFAutor>
  <CPF>99999999999</CPF>
  <distNSU>
    <ultNSU>000000000000626</ultNSU>
  </distNSU>
</distDFeInt>''';
      final textDocumentComErro = '''<?xml version="1.0" encoding="utf-8"?>
<distDFeInt versao="1.00" xmlns="http://www.portalfiscal.inf.br/nfe">
  <tpAmb>2</tpAmb>
  <cUFAutor>2</cUFAutor>
  <CPF>123123</CPF>
  <distNSU>
    <ultNSU>00626</ultNSU>
  </distNSU>
</distDFeInt>''';

      expect(validator.validateString(textDocument), isTrue);
      expect(() => validator.validateString(textDocumentComErro), throwsA(TypeMatcher<XSDvalidationException>()));
    });
    test('Schema ProcNFe', () {
      final validator = XSdSchema.fromFile('test/schemas/PL_009i_NT2021_004_v100d/procNFe_v4.00.xsd');
      final textDocument = File('test/123456-nfe.xml').readAsStringSync();
      expect(validator.validateString(textDocument), isTrue);
    });
  });
}
