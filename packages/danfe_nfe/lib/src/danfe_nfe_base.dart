import 'dart:typed_data';
import 'package:danfe_nfe/src/paisagem.dart';
import 'package:danfe_nfe/src/retrato.dart';
import 'package:danfe_nfe/src/simplificadoEtiqueta.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:nfe_client/nfe_client.dart';

class epecNFE{
  final String infNfeXML;
  final String procEpecXML;

  const epecNFE({
    required this.infNfeXML,
    required this.procEpecXML,
  });
}

Future<pw.Document> generateDanfeFromProcNFe(final List<String> procNFexmls, {
  final List<epecNFE> epecs = const [],
  final bool retrato = false,
  final bool paisagem = false,
  final bool simplificado = false,
  final Uint8List? logo,
  final Map<int, bool> cancelado = const {},
}) async {

  final pdf = pw.Document();

  for (final xml in procNFexmls) {
    final procNFe = ProcNFeSchema.fromXml(xml);

    if (paisagem) {

      final pages = await gerenerateDanfeA4Paisagem(
        infNFe: procNFe.NFe.infNFe,
        procNFe: procNFe,
        logo: logo,
        cancelado: cancelado[int.tryParse(procNFe.NFe.infNFe.ide.nNF)] ?? false,
      );

      for (final item in pages){
        pdf.addPage(item);
      }

    } else if (simplificado) {
      pdf.addPage(await gerenerateDanfeSimplificadoEtiqueta10x15(
        infNFe: procNFe.NFe.infNFe,
        procNFe: procNFe,
        logo: logo,
      ));
    } else {

      final pages = await gerenerateDanfeA4Retrato(
        infNFe: procNFe.NFe.infNFe,
        procNFe: procNFe,
        logo: logo,
        cancelado: cancelado[int.tryParse(procNFe.NFe.infNFe.ide.nNF)] ?? false,
      );

      for (final item in pages){
        pdf.addPage(item);
      }
    }
  }

  for (final xml in epecs) {
    final infNFe = infNFeComplexType_TNFe.fromXml(xml.infNfeXML);
    final procEpec = ProcEpecSchema.fromXml(xml.procEpecXML);

    if (paisagem) {

      final pages = await gerenerateDanfeA4Paisagem(
        infNFe: infNFe,
        retornoEpec: procEpec.retEvento,
        logo: logo,
        cancelado: cancelado[int.tryParse(infNFe.ide.nNF)] ?? false,
      );

      for (final item in pages){
        pdf.addPage(item);
      }

    } else if (simplificado) {
      pdf.addPage(await gerenerateDanfeSimplificadoEtiqueta10x15(
        infNFe: infNFe,
        retornoEpec: procEpec.retEvento,
        logo: logo,
      ));
    } else {

      final pages = await gerenerateDanfeA4Retrato(
        infNFe: infNFe,
        retornoEpec: procEpec.retEvento,
        logo: logo,
        cancelado: cancelado[int.tryParse(infNFe.ide.nNF)] ?? false,
      );

      for (final item in pages){
        pdf.addPage(item);
      }
    }
  }

  return pdf;
}