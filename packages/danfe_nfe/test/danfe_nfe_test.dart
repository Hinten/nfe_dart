import 'package:danfe_nfe/danfe_nfe.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('Teste Danfe', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Danfe Retrato', () async {
      final nfeXml = File('test/123-nfe.xml').readAsStringSync();
      final pdf = await generateDanfeFromProcNFe([nfeXml], retrato: true);
      final file = File('test/retrato.pdf');
      await file.writeAsBytes(await pdf.save());
    });
    test('Danfe Etiqueta', () async {
      final nfeXml = File('test/456-nfe.xml').readAsStringSync();
      final pdf = await generateDanfeFromProcNFe([nfeXml], simplificado: true);
      final file = File('test/etiqueta.pdf');
      await file.writeAsBytes(await pdf.save());
    });
    test('Danfe Paisagem', () async {
      final nfeXml = File('test/789-nfe.xml').readAsStringSync();
      final pdf = await generateDanfeFromProcNFe([nfeXml], paisagem: true);
      final file = File('test/paisagem.pdf');
      await file.writeAsBytes(await pdf.save());
    });
  });
}
