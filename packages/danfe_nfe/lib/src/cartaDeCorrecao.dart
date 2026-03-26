import 'dart:typed_data';
import 'package:danfe_nfe/src/paisagem.dart';
import 'package:danfe_nfe/src/retrato.dart';
import 'package:danfe_nfe/src/simplificadoEtiqueta.dart';
import 'package:danfe_nfe/src/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:nfe_client/nfe_client.dart';

Future<pw.Page> gerenerateCartaDeCorrecaoPaisagem(
    final ProcNFeSchema procNfe,
    final EnvCCeSchema envCCeSchema, final RetEnvCCeSchema retEnvCCeSchema) async {
  return pw.Page(
    pageFormat: PdfPageFormat(
      cmToPixel(29.7),
      cmToPixel(21.0),
    ),
    build: (pw.Context context) {
      return pw.Padding(
        padding: const pw.EdgeInsets.all(8.0),
        child: pw.Column(
            children: [
              pw.Center(
                child: pw.Text(
                  'Carta de Correção',
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.SizedBox(height: cmToPixel(0.5)),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('CNPJ',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              envCCeSchema.evento.first.infEvento.CNPJ!,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('CHAVE DE ACESSO',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              retEnvCCeSchema.retEvento!.first.infEvento.chNFe!,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('SÉRIE',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              procNfe.NFe.infNFe.ide.serie,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('NÚMERO',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              procNfe.NFe.infNFe.ide.nNF,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('DATA/HORA DO REGISTRO',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "${formatDateTimeFromNFe(retEnvCCeSchema.retEvento!.first.infEvento.dhRegEvento)} ${formatHoraMinutoSegundoFromNFe(retEnvCCeSchema.retEvento!.first.infEvento.dhRegEvento)}",
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1,
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(4.0),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('PROTOCOLO',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              retEnvCCeSchema.retEvento!.first.infEvento.nProt!,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.Expanded(
                child: pw.Container(
                  decoration: pw.BoxDecoration(
                    border: pw.Border.all(
                      color: PdfColors.black,
                      width: 1,
                    ),
                  ),
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('TEXTO DA CORREÇÃO',
                          style: pw.TextStyle(
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Text(
                            undoRemoverCharRestrito(envCCeSchema.evento.first.infEvento.detEvento.xCorrecao).padRight(1000),
                            style: pw.TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(
                    color: PdfColors.black,
                    width: 1,
                  ),
                ),
                child: pw.Padding(
                  padding: const pw.EdgeInsets.all(4.0),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        envCCeSchema.evento.first.infEvento.detEvento.xCondUso.value,
                        style: pw.TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
        ),
      );
    },
  );
}

Future<pw.Document> cartaDeCorrecaoPDF({
  required final String procNFeXmlString,
  required final String envCCeXmlString,
  required final String retEnvCCeXmlString,
}) async {

    final pdf = pw.Document();

    final procNFe = ProcNFeSchema.fromXml(procNFeXmlString);
    final envCCe = EnvCCeSchema.fromXml(envCCeXmlString);
    final retEnvCCe = RetEnvCCeSchema.fromXml(retEnvCCeXmlString);

    final page = await gerenerateCartaDeCorrecaoPaisagem(
      procNFe,
      envCCe,
      retEnvCCe,
    );

    pdf.addPage(page);

    return pdf;
}