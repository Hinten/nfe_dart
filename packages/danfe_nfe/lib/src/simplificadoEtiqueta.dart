import 'dart:typed_data';
import 'package:danfe_nfe/src/base.dart';
import 'package:danfe_nfe/src/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:barcode/barcode.dart' as bar;
import 'package:nfe_client/nfe_client.dart';
import 'dart:math' as math;

const fontSize = 7.0;

// Item 3.12.4 do manual, pag 23.
// ATENÇÃO DANFE SIMPLIFICADO NÃO É O MESMO QUE DANFE SIMPLIFICADO - ETIQUETA
Future<pw.Page> gerenerateDanfeSimplificadoEtiqueta10x15({
  required final infNFeComplexType_TNFe infNFe,
  final ProcNFeSchema? procNFe,
  final RetornoEpec? retornoEpec,
  final Uint8List? logo,
}) async {
  final chave = infNFe.Id.replaceAll(RegExp(r'\D'), '');

  return pw.Page(
      pageFormat: PdfPageFormat(
        cmToPixel(10),
        cmToPixel(15),
      ),
    build: (context){
        return pw.Padding(
          padding: pw.EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(
                color: PdfColors.black,
                width: 1,
              ),
            ),
            child: pw.Stack(
              children: [
                if (infNFe.ide.tpAmb.value == '2')
                  pw.Align(
                    alignment: pw.Alignment.center,
                    child: pw.Transform.rotateBox(
                      angle: math.pi / 4,
                      child: pw.Opacity(
                        opacity: 0.5,
                        child: pw.Text(
                          'SEM VALOR FISCAL',
                          style: pw.TextStyle(
                            color: PdfColors.red,
                            fontSize: 50,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                pw.Column(
                    children: [
                      pw.SizedBox(height: 4),
                      pw.Align(
                        alignment: pw.Alignment.center,
                        child: textContent(
                          'DANFE SIMPLIFICADO - ETIQUETA',
                          fontSize: fontSize,
                          bold: true,
                        ),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Center(
                          child: pw.BarcodeWidget(
                            barcode: bar.Barcode.code128(
                              useCode128A: false,
                              useCode128B: false,
                              useCode128C: true,
                            ),
                            drawText: false,
                            data: chave,
                            width: cmToPixel(9),
                            height: cmToPixel(1.30),
                          )),
                      pw.Center(
                        child: textContent(
                          formataChaveDeAcesso(chave),
                          fontSize: 8,
                        ),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Container(
                        padding: pw.EdgeInsets.fromLTRB(2, 2, 2, 2),
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                            color: PdfColors.black,
                            width: 1,
                          ),
                        ),
                        child: pw.Row(
                          children: [
                            if (procNFe != null) textContent(
                              "PROTOCOLO DE AUTORIZAÇÃO DE USO",
                              fontSize: fontSize,
                              bold: true,
                            ),
                            if (procNFe != null) pw.Expanded(child: pw.Container()),
                            if (procNFe != null) textContent(
                              "${procNFe.protNFe.infProt.nProt} ${formatDateTimeFromNFe(procNFe.protNFe.infProt.dhRecbto)} ${formatHoraMinutoSegundoFromNFe(procNFe.protNFe.infProt.dhRecbto)}",
                              fontSize: fontSize,
                            ),
                            if (retornoEpec != null) textContent(
                              "PROTOCOLO DE AUTORIZAÇÃO DO EPEC",
                              fontSize: fontSize,
                              bold: true,
                            ),
                            if (retornoEpec != null) pw.Expanded(child: pw.Container()),
                            if (retornoEpec != null) textContent(
                              "${retornoEpec.infEvento.nProt} ${formatDateTimeFromNFe(retornoEpec.infEvento.dhRegEvento)} ${formatHoraMinutoSegundoFromNFe(retornoEpec.infEvento.dhRegEvento)}",
                              fontSize: fontSize,
                            ),

                          ],
                        ),
                      ),
                      pw.Flexible(
                        child: pw.Container(
                          padding: pw.EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(
                              color: PdfColors.black,
                              width: 1,
                            ),
                          ),
                          child: pw.Column(
                              children: [
                                textContent('Dados do Emitente', center: true, fontSize: fontSize, bold: true),
                                pw.SizedBox(height: 2),
                                pw.Flexible(child:
                                pw.Row(
                                    children: [
                                      if (logo != null)
                                        pw.Expanded(
                                          child: pw.Image(
                                            pw.MemoryImage(logo),
                                          ),
                                        ),
                                      pw.Expanded(
                                        child: pw.Column(
                                          mainAxisSize: pw.MainAxisSize.min,
                                          children: [
                                            pw.Row(
                                              children: [
                                                if (infNFe.emit.CNPJ != null) textContent('Razão Social', fontSize: fontSize, bold: true),
                                                if (infNFe.emit.CPF != null) textContent('Nome', fontSize: fontSize, bold: true),
                                                pw.Expanded(child: pw.Container()),
                                                textContent(infNFe.emit.xNome, fontSize: fontSize),
                                              ],
                                            ),
                                            pw.SizedBox(height: 2),
                                            pw.Row(
                                              children: [
                                                if (infNFe.emit.CNPJ != null) textContent('CNPJ', fontSize: fontSize, bold: true),
                                                if (infNFe.emit.CPF != null) textContent('CPF', fontSize: fontSize, bold: true),
                                                pw.Expanded(child: pw.Container()),
                                                if (infNFe.emit.CNPJ != null) textContent(formatarCpfCnpj(infNFe.emit.CNPJ!), fontSize: fontSize),
                                                if (infNFe.emit.CPF != null) textContent(formatarCpfCnpj(infNFe.emit.CPF!), fontSize: fontSize),
                                              ],
                                            ),
                                            pw.SizedBox(height: 2),
                                            pw.Row(
                                              children: [
                                                textContent('IE', fontSize: fontSize, bold: true),
                                                pw.Expanded(child: pw.Container()),
                                                textContent(formatarCpfCnpj(infNFe.emit.IE), fontSize: fontSize),
                                              ],
                                            ),
                                            pw.SizedBox(height: 2),
                                            pw.Row(
                                              mainAxisSize: pw.MainAxisSize.min,
                                              children: [
                                                textContent('Endereço', fontSize: fontSize, bold: true),
                                                pw.Expanded(child: pw.Container()),
                                                pw.Flexible(
                                                  child: textContent(
                                                      "${infNFe.emit.enderEmit.xLgr}, ${infNFe.emit.enderEmit.nro}${infNFe.emit.enderEmit.xCpl != null? ', ' + infNFe.emit.enderEmit.xCpl!: ''} - ${infNFe.emit.enderEmit.xBairro} - ${infNFe.emit.enderEmit.xMun} - ${infNFe.emit.enderEmit.UF.value}, CEP: ${infNFe.emit.enderEmit.CEP}",
                                                      fontSize: fontSize),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]
                                ),),
                              ]
                          ),
                        ),
                      ),
                      pw.Flexible(
                        child: pw.Container(
                          padding: pw.EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(
                              color: PdfColors.black,
                              width: 1,
                            ),
                          ),
                          child:
                          pw.Column(
                              children: [
                                textContent('Dados gerais da NF-e', center: true, fontSize: fontSize, bold: true),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('TIPO', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      if (infNFe.ide.tpNF.value == '1') textContent('1 - SAIDA', fontSize: fontSize),
                                      if (infNFe.ide.tpNF.value == '0') textContent('0 - ENTRADA', fontSize: fontSize),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('NFe Nº', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      textContent(formatarNNF(infNFe.ide.nNF), fontSize: fontSize),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('SÉRIE', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      textContent(infNFe.ide.serie.padLeft(3, '0'), fontSize: fontSize),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('DATA DA EMISSÃO', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      textContent(formatDateTimeFromNFe(infNFe.ide.dhEmi), fontSize: fontSize),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('VALOR TOTAL', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      textContent(parseMoney(infNFe.total.ICMSTot.vNF), fontSize: fontSize),
                                    ]
                                ),
                              ]
                          ),
                        ),
                      ),

                      pw.Flexible(
                        child: pw.Container(
                          padding: pw.EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(
                              color: PdfColors.black,
                              width: 1,
                            ),
                          ),
                          child:
                          pw.Column(
                              children: [
                                textContent('Dados do destinatário/remetente', center: true, fontSize: fontSize, bold: true),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      textContent('Nome/Razão Social', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      textContent(
                                          infNFe.dest?.xNome ?? '',
                                          fontSize: fontSize),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                if (infNFe.dest?.CNPJ != null)
                                  pw.Row(
                                      children: [
                                        textContent('CNPJ', fontSize: fontSize, bold: true),
                                        pw.Expanded(child: pw.Container()),
                                        textContent(formatarCpfCnpj(infNFe.dest!.CNPJ!), fontSize: fontSize),
                                      ]
                                  ),
                                if (infNFe.dest?.CPF != null)
                                  pw.Row(
                                      children: [
                                        textContent('CPF', fontSize: fontSize, bold: true),
                                        pw.Expanded(child: pw.Container()),
                                        textContent(formatarCpfCnpj(infNFe.dest!.CPF!), fontSize: fontSize),
                                      ]
                                  ),
                                if (infNFe.dest?.idEstrangeiro != null)
                                  pw.Row(
                                      children: [
                                        textContent('ID Estrangeiro', fontSize: fontSize, bold: true),
                                        pw.Expanded(child: pw.Container()),
                                        textContent(infNFe.dest!.idEstrangeiro!, fontSize: fontSize),
                                      ]
                                  ),
                                pw.SizedBox(height: 2),
                                if (infNFe.dest?.IE != null)
                                  pw.Row(
                                      children: [
                                        textContent('IE', fontSize: fontSize, bold: true),
                                        pw.Expanded(child: pw.Container()),
                                        textContent(infNFe.dest!.IE!, fontSize: fontSize),
                                      ]
                                  ),
                                if (infNFe.dest?.IE != null) pw.SizedBox(height: 2),
                                if (infNFe.dest?.enderDest != null)
                                  pw.Row(
                                    children: [
                                      textContent('Endereço', fontSize: fontSize, bold: true),
                                      pw.Expanded(child: pw.Container()),
                                      pw.Flexible(
                                        child: textContent(
                                            "${infNFe.dest!.enderDest!.xLgr}, ${infNFe.dest!.enderDest!.nro}${infNFe.dest!.enderDest!.xCpl != null? ', ' + infNFe.dest!.enderDest!.xCpl!: ''} - ${infNFe.dest!.enderDest!.xBairro} - ${infNFe.dest!.enderDest!.xMun} - ${infNFe.dest!.enderDest!.UF.value}, CEP: ${infNFe.dest!.enderDest!.CEP}",
                                            fontSize: fontSize),
                                      ),
                                    ],
                                  ),
                              ]
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                            padding: pw.EdgeInsets.fromLTRB(2, 2, 2, 2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColors.black,
                                width: 1,
                              ),
                            ),
                            child: pw.SizedBox.expand(child: pw.Text(
                              "${infNFe.infAdic?.infCpl ?? ''} ${infNFe.infAdic?.infAdFisco ?? ''} ${infNFe.infAdic?.obsCont ?? ''}",
                              overflow: pw.TextOverflow.clip,
                              style: pw.TextStyle(
                                fontSize: fontSize,
                                font: pw.Font.times(),
                              ),
                            ),
                            )
                        ),
                      ),
                    ]
                )
              ]
            ),
          ),
        );
    }
  );
}