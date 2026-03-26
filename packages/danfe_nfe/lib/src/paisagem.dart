import 'dart:typed_data';
import 'dart:math' as math;
import 'package:danfe_nfe/src/base.dart';
import 'package:danfe_nfe/src/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:barcode/barcode.dart' as bar;
import 'package:nfe_client/nfe_client.dart';

const double laguraPaginaComCanhoto = 27.05;
const double alturaPagina = 21.00 - 0.47 * 2;

const double cabecalhoHeight = 4.38;
const double destinatarioHeight = 1.92;

const double calculoImpostoHeight = 1.28;
const double defaultLocalRetiradaHeight = 1.92;
const double defaultLocalEntregaHeight = 1.92;

const double duplicataLineHeight = 0.64;
const double defaultFaturaHeight = duplicataLineHeight;

const double duplicataBox = 1.47444;

const double transportadoraHeight = 1.92;
const double produtosPag1DefaultHeight = 6.0;

const double produtosOutrasPaginasHeight = 0.47 +
    calculoImpostoHeight +
    destinatarioHeight +
    produtosPag1DefaultHeight +
    transportadoraHeight +
    duplicataLineHeight;
const double footerHeight = 2.94;

const int informacoesComplementaresLength = 1331;

Future<List<pw.Page>> gerenerateDanfeA4Paisagem({
      required infNFeComplexType_TNFe infNFe,
      ProcNFeSchema? procNFe,
      RetornoEpec? retornoEpec,
      Uint8List? logo,
      required final bool cancelado,
    }) async {
  final List<pw.Page> pages = [];

  final hasGtin =
  infNFe.det.any((element) => element.prod.cEAN != "SEM GTIN");
  final produtoHeight = hasGtin ? 0.42 * 3 : 0.42 * 2;
  final todosProd = infNFe.det;
  final todosProdHeight = todosProd.length * produtoHeight;
  late List<detComplexType_infNFe> produtosPag1;

  bool hasLocalRetirada = infNFe.retirada != null;
  final double retiradaHeight =
  hasLocalRetirada ? defaultLocalRetiradaHeight : 0;
  bool hasLocalEntrega = infNFe.entrega != null;
  final double entregaHeight = hasLocalEntrega ? defaultLocalEntregaHeight : 0;
  bool hasFatura = infNFe.cobr?.fat != null;
  final double faturaHeight = hasFatura ? defaultFaturaHeight : 0;

  bool hasDuplicata = infNFe.cobr?.dup != null;

  final int duplicataLines = hasDuplicata
      ? ((infNFe.cobr!.dup?.length ?? 0) / 5).ceil()
      : 0;

  double duplicataHeight = duplicataLines * duplicataLineHeight;

  final produtosPag1Height =
      produtosPag1DefaultHeight - retiradaHeight - entregaHeight - faturaHeight;

  if (todosProdHeight > produtosPag1Height) {
    final _pages = todosProdHeight / produtosPag1Height;
    final qte = todosProd.length ~/ _pages;
    produtosPag1 = todosProd.sublist(0, qte);
  } else {
    produtosPag1 = todosProd;
  }

  int folhas = 1;
  int qteProdFolha = produtosPag1.length;

  if (produtosPag1.length < todosProd.length) {
    final resto = todosProd.length - produtosPag1.length;
    final _pages = resto * produtoHeight / produtosOutrasPaginasHeight;
    qteProdFolha = produtosOutrasPaginasHeight ~/ produtoHeight;
    folhas += _pages.ceil();
  }

  String informacoesComplementares =
      infNFe.infAdic?.infAdFisco ?? "";
  if (infNFe.infAdic?.infCpl != null) {
    informacoesComplementares += " ${infNFe.infAdic!.infCpl!}";
  }

  if (infNFe.ide.NFref != null && infNFe.ide.NFref!.isNotEmpty) {
    informacoesComplementares +=
    " ${infNFe.ide.NFref!.map((e) => "NFref. ${e.refNFe}").join(" ")}";
  }

  if (infNFe.infAdic?.obsCont != null) {
    informacoesComplementares +=
    " ${infNFe.infAdic!.obsCont!.map((e) => "${e.xCampo}: ${e.xTexto}").join(" ")}";
  }

  informacoesComplementares = undoRemoverCharRestrito(informacoesComplementares);

  if (informacoesComplementares.length > informacoesComplementaresLength) {
    final _pages =
        informacoesComplementares.length / informacoesComplementaresLength;
    if (folhas < _pages.ceil()) {
      folhas = _pages.ceil();
    }
  }

  final infList = informacoesComplementares.split("");

  for (int i = 1; i < folhas + 1; i++) {
    final page = makePage(
      cancelado: cancelado,
      infNFe: infNFe,
      retornoEpec: retornoEpec,
      procNFe: procNFe,
      currentPage: i,
      totalPages: folhas,
      produtos: i == 1
          ? produtosPag1
          : todosProd
          .skip(i == 2 ? produtosPag1.length : qteProdFolha)
          .take(qteProdFolha)
          .toList(),
      hasGtin: hasGtin,
      produtoHeight: produtoHeight,
      faturaHeight: i == 1 ? faturaHeight : 0,
      duplicataHeight: i == 1 ? duplicataHeight : 0,
      faturaDuplicataHeight: i == 1 ? faturaHeight + duplicataHeight : 0,
      localDeRetiradaHeight: i == 1 ? retiradaHeight : 0,
      localDeEntregaHeight: i == 1 ? entregaHeight : 0,
      informacoesComplementares: infList
          .skip(informacoesComplementaresLength * (i - 1))
          .take(informacoesComplementaresLength)
          .join(""),
    );
    pages.add(page);
  }

  return pages;
}

pw.Page makePage({
  required final int currentPage,
  required final int totalPages,
  final ProcNFeSchema? procNFe,
  final RetornoEpec? retornoEpec,
  required infNFeComplexType_TNFe infNFe,
  required final List<detComplexType_infNFe> produtos,
  required final bool hasGtin,
  required final double produtoHeight,
  final double faturaHeight = 0,
  final double duplicataHeight = 0,
  final double faturaDuplicataHeight = 0,
  required final double localDeEntregaHeight,
  required final double localDeRetiradaHeight,
  final Uint8List? logo,
  final String informacoesComplementares = '',
  required final bool cancelado,
}) {
  final emitente = infNFe.emit;
  final destinatario = infNFe.dest;
  final bool hasDestinatario = destinatario != null;

  late final double produtosTop;
  if (currentPage == 1) {
    produtosTop = 17.45 -
        1.27 +
        faturaDuplicataHeight +
        localDeEntregaHeight +
        localDeRetiradaHeight;
  } else {
    produtosTop = 17.45 -
        1.27 -
        destinatarioHeight -
        transportadoraHeight -
        calculoImpostoHeight;
  }

  return pw.Page(
    pageFormat: PdfPageFormat(
      cmToPixel(29.7),
      cmToPixel(21.0),
    ),
    build: (pw.Context context) {
      return pw.Stack(
        children: [
          if (infNFe.ide.tpAmb.value == '2')
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Transform.rotateBox(
                angle: 145,
                child: pw.Opacity(
                  opacity: 0.5,
                  child: pw.Text(
                    'SEM VALOR FISCAL',
                    style: pw.TextStyle(
                      color: PdfColors.red,
                      fontSize: 100,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          else if (cancelado)
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Transform.rotateBox(
                angle: 145,
                child: pw.Opacity(
                  opacity: 0.5,
                  child: pw.Text(
                    'CANCELADO',
                    style: pw.TextStyle(
                      color: PdfColors.red,
                      fontSize: 90,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

          //<editor-fold desc="CANHOTO">
          if (currentPage == 1) ...[
            positionedBox(
              height: 4.53,
              width: 2.04,
              left: 0.13,
              top: 0.47,
              child: pw.Container(
                  decoration: pw.BoxDecoration(
                      border: pw.Border.all(
                    color: PdfColors.black,
                    width: 1,
                  )),
                  child: pw.Padding(
                    padding: pw.EdgeInsets.all(2),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'NF-e',
                            style: pw.TextStyle(
                              fontSize: 10,
                              font: pw.Font.times(),
                            ),
                          ),
                        ),
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'Nº ${formatarNNF(infNFe.ide.nNF.padLeft(9, '0'))}',
                            style: pw.TextStyle(
                              fontSize: 17,
                              font: pw.Font.timesBold(),
                            ),
                          ),
                        ),
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'SÉRIE ${infNFe.ide.serie.padLeft(3, '0')}',
                            style: pw.TextStyle(
                              fontSize: 10,
                              font: pw.Font.times(),
                            ),
                          ),
                        ),



                      ]),
                )
              ),
            ),
            positionedBox(
                height: 15.53,
                width: 1.02,
                left: 0.13,
                top: 5.00,
              child: pw.Container(
                decoration: pw.BoxDecoration(
                    border: pw.Border.all(
                      color: PdfColors.black,
                      width: 1,
                    )),
                child: pw.Padding(
                  padding: pw.EdgeInsets.all(2),
                  child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'Recebemos de ${emitente.xNome} a mercadoria abaixo descrita, conforme Nota Fiscal Eletrônica nº ${infNFe.ide.nNF} de ${formatDateTimeFromNFe(infNFe.ide.dhEmi)}',
                            style: pw.TextStyle(
                              fontSize: 6,
                              font: pw.Font.times(),
                            ),
                          ),
                        ),

                      ]),
                )
              ),
            ),
            positionedBox(
                height: 9.21,
                width: 1.02,
                left: 1.15,
                top: 5.00,
              child: pw.Container(
                decoration: pw.BoxDecoration(
                    border: pw.Border.all(
                      color: PdfColors.black,
                      width: 1,
                    )),
                child: pw.Padding(
                  padding: pw.EdgeInsets.all(2),
                  child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'IDENTIFICAÇÃO E ASSINATURA DO RECEBEDOR',
                            style: pw.TextStyle(
                              fontSize: 6,
                              font: pw.Font.times(),
                            ),
                          ),
                        ),

                      ]),
                )
              ),
            ),
            positionedBox(
                height: 6.32,
                width: 1.02,
                left: 1.15,
                top: 14.21,
              child: pw.Container(
                decoration: pw.BoxDecoration(
                    border: pw.Border.all(
                      color: PdfColors.black,
                      width: 1,
                    )),
                child: pw.Padding(
                  padding: pw.EdgeInsets.all(2),
                  child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Transform.rotateBox(
                          angle: math.pi / 2,
                          child: pw.Text(
                            'DATA DE RECEBIMENTO',
                            style: pw.TextStyle(
                              fontSize: 6,
                              font: pw.Font.times(),
                            ),
                          ),
                        ),

                      ]),
                )
              ),
            ),
          ],

          //</editor-fold desc="CANHOTO">

          ...makeIdentificacaoEmitente(
            page: currentPage,
            infNFe: infNFe,
            left: currentPage == 1 ? 2.41 : 0.13,
            procNFe: procNFe,
            retornoEpec: retornoEpec,
            logo: logo,
            pagAtual: currentPage,
            folhas: totalPages,
          ),

          //<editor-fold desc="DESTINATÁRIO/REMETENTE">
          if (currentPage == 1) ...[
            getGroupTitle(
              'DESTINATÁRIO/REMETENTE',
              width: 0.51,
              height: 1.92,
              left: 2.41,
              top: 4.85,
            ),

            positionedBox(
              height: 0.64,
              width: 16.38,
              left: 2.92,
              top: 4.85,
              child: getTextBloco(
                'Nome/Razão Social',
                content: hasDestinatario
                    ? textContent(
                  destinatario.xNome ?? '',
                  maxLength: 80,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.84,
              left: 19.30,
              top: 4.85,
              child: getTextBloco(
                'CNPJ/CPF',
                bold: true,
                content: hasDestinatario
                    ? textContent(
                    destinatario.CNPJ != null
                        ? formatarCpfCnpj(destinatario.CNPJ!)
                        : destinatario.CPF != null
                        ? formatarCpfCnpj(destinatario.CPF!)
                        : destinatario.idEstrangeiro ?? '',
                    bold: true)
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 25.14,
              top: 4.85,
              child: getTextBloco(
                'DATA DA EMISSÃO',
                bold: true,
                content: textContent(
                    formatDateTimeFromNFe(infNFe.ide.dhEmi),
                    bold: true),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 12.45,
              left: 2.92,
              top: 5.49,
              child: getTextBloco(
                'ENDEREÇO',
                content: hasDestinatario
                    ? textContent(
                  "${destinatario.enderDest?.xLgr ?? 'NÃO INFORMADO'}, ${destinatario.enderDest?.nro ?? 'S/N'} ${destinatario.enderDest?.xCpl ?? ''}",
                  maxLength: 120,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.84,
              left: 15.37,
              top: 5.49,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.xBairro ?? '',
                  maxLength: 30,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 3.94,
              left: 21.21,
              top: 5.49,
              child: getTextBloco(
                'CEP',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.CEP != null
                      ? formatarCep(destinatario.enderDest!.CEP!)
                      : 'NÃO INFORMADO',
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 25.14,
              top: 5.49,
              child: getTextBloco(
                infNFe.ide.tpNF.value == '0'
                    ? 'DATA DA ENTRADA'
                    : 'DATA DA SAÍDA',
                bold: true,
                content: infNFe.ide.dhSaiEnt != null
                    ? textContent(
                  formatDateTimeFromNFe(infNFe.ide.dhSaiEnt!),
                  bold: true,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 10.03,
              left: 2.92,
              top: 6.13,
              child: getTextBloco(
                'MUNICÍPIO',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.xMun != null
                      ? destinatario.enderDest!.xMun
                      : '',
                  maxLength: 60,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.08,
              left: 12.95,
              top: 6.13,
              child: getTextBloco(
                'FONE/FAX',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.fone != null
                      ? formatarTelefone(destinatario.enderDest!.fone!)
                      : '',
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 1.27,
              left: 18.03,
              top: 6.13,
              child: getTextBloco(
                'UF',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.UF != null
                      ? destinatario.enderDest!.UF.value
                      : '',
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.84,
              left: 19.30,
              top: 6.13,
              child: getTextBloco(
                'INSCRIÇÃO ESTADUAL',
                content: hasDestinatario
                    ? textContent(
                  destinatario.IE != null ? destinatario.IE! : '',
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 25.14,
              top: 6.13,
              child: getTextBloco(
                infNFe.ide.tpNF.value == '0'
                    ? 'HORA DA ENTRADA'
                    : 'HORA DA SAÍDA',
                bold: true,
                content: infNFe.ide.dhSaiEnt != null
                    ? textContent(
                  formatHoraFromNFe(infNFe.ide.dhSaiEnt!),
                  bold: true,
                )
                    : null,
              ),
            )
          ],
          //</editor-fold desc="DESTINATÁRIO/REMETENTE">

          // //<editor-fold desc="LOCAL DE ENTREGA">
          if (currentPage == 1 && localDeEntregaHeight > 0) ...[
            getGroupTitle(
              'INFORMAÇÕES DO LOCAL DE ENTREGA',
              width: 0.51,
              height: 1.92,
              left: 2.41,
              top: 4.85 + 1.92,
            ),

            positionedBox(
              height: duplicataLineHeight,
              width: 16.38,
              left: 2.92,
              top: 4.85 + 1.92,
              child: getTextBloco(
                'Nome/Razão Social',
                content: textContent(
                  infNFe.entrega!.xNome ?? '',
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 5.84,
              left: 19.30,
              top: 4.85 + 1.92,
              child: getTextBloco(
                'CNPJ/CPF',
                bold: true,
                content: textContent(
                    infNFe.entrega!.CNPJ != null
                        ? formatarCpfCnpj(infNFe.entrega!.CNPJ!)
                        : infNFe.entrega!.CPF != null
                        ? formatarCpfCnpj(infNFe.entrega!.CPF!)
                        : '',
                    bold: true),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 17.90,
              top: 4.85 + 1.92,
              child: getTextBloco(
                'INSCRIÇÃO ESTADUAL',
                content: textContent(
                  infNFe.entrega!.IE ?? '',
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 16.38,
              left: 2.92,
              top: 4.85 + 1.92 + duplicataLineHeight,
              child: getTextBloco(
                'ENDEREÇO',
                content: textContent(
                  "${infNFe.entrega!.xLgr}, ${infNFe.entrega!.nro} ${infNFe.entrega!.xCpl ?? ''}",
                  maxLength: 200,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 5.84,
              left: 19.30,
              top: 4.85 + 1.92 + duplicataLineHeight,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: textContent(
                  infNFe.entrega!.xBairro,
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 17.90,
              top: 4.85 + 1.92 + duplicataLineHeight,
              child: getTextBloco(
                'CEP',
                content: textContent(
                  infNFe.entrega!.CEP != null
                      ? formatarCep(infNFe.entrega!.CEP!)
                      : 'NÃO INFORMADO',
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 20.95,
              left: 2.92,
              top: 4.85 + 1.92 + duplicataLineHeight * 2,
              child: getTextBloco(
                'MUNICÍPIO',
                content: textContent(
                  infNFe.entrega!.xMun,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 1.27, // 5.84
              left: 23.87,
              top: 4.85 + 1.92 + duplicataLineHeight * 2,
              child: getTextBloco(
                'UF',
                content: textContent(infNFe.entrega!.UF.value),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 25.14,
              top: 4.85 + 1.92 + duplicataLineHeight * 2,
              child: getTextBloco(
                'FONE/FAX',
                content: textContent(
                  infNFe.entrega!.fone != null
                      ? formatarTelefone(infNFe.entrega!.fone!)
                      : '',
                ),
              ),
            ),
          ],
          // </editor-fold desc="LOCAL DE ENTREGA">

          //<editor-fold desc="LOCAL DE RETIRADA">
          if (currentPage == 1 && localDeRetiradaHeight > 0) ...[
            getGroupTitle(
              'INFORMAÇÕES DO LOCAL DE RETIRADA',
              width: 0.51,
              height: 1.92,
              left: 2.41,
              top: 4.85 + 1.92 + localDeEntregaHeight,
            ),

            positionedBox(
              height: duplicataLineHeight,
              width: 16.38,
              left: 2.92,
              top: 4.85 + 1.92 + localDeEntregaHeight,
              child: getTextBloco(
                'Nome/Razão Social',
                content: textContent(
                  infNFe.retirada!.xNome ?? '',
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 5.84,
              left: 19.30,
              top: 4.85 + 1.92 + localDeEntregaHeight,
              child: getTextBloco(
                'CNPJ/CPF',
                bold: true,
                content: textContent(
                    infNFe.retirada!.CNPJ != null
                        ? formatarCpfCnpj(infNFe.retirada!.CNPJ!)
                        : infNFe.retirada!.CPF != null
                        ? formatarCpfCnpj(infNFe.retirada!.CPF!)
                        : '',
                    bold: true),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 17.90,
              top: 4.85 + 1.92 + localDeEntregaHeight,
              child: getTextBloco(
                'INSCRIÇÃO ESTADUAL',
                content: textContent(
                  infNFe.retirada!.IE ?? '',
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 16.38,
              left: 2.92,
              top: 4.85 + 1.92 + duplicataLineHeight + localDeEntregaHeight,
              child: getTextBloco(
                'ENDEREÇO',
                content: textContent(
                  "${infNFe.retirada!.xLgr}, ${infNFe.retirada!.nro} ${infNFe.retirada!.xCpl ?? ''}",
                  maxLength: 120,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 5.84,
              left: 19.30,
              top: 4.85 + 1.92 + duplicataLineHeight + localDeEntregaHeight,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: textContent(
                  infNFe.retirada!.xBairro,
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 17.90,
              top: 4.85 + 1.92 + duplicataLineHeight + localDeEntregaHeight,
              child: getTextBloco(
                'CEP',
                content: textContent(
                  infNFe.retirada!.CEP != null
                      ? formatarCep(infNFe.retirada!.CEP!)
                      : 'NÃO INFORMADO',
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 20.95,
              left: 2.92,
              top: 4.85 + 1.92 + duplicataLineHeight * 2 + localDeEntregaHeight,
              child: getTextBloco(
                'MUNICÍPIO',
                content: textContent(
                  infNFe.retirada!.xMun,
                ),
              ),
            ),
            positionedBox(height: duplicataLineHeight,
              width: 1.27, // 5.84
              left: 23.87,
              top: 4.85 + 1.92 + duplicataLineHeight * 2 + localDeEntregaHeight,
              child: getTextBloco(
                'UF',
                content: textContent(
                  infNFe.retirada!.UF.value,
                ),
              ),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 4.32,
              left: 25.14,
              top: 4.85 + 1.92 + duplicataLineHeight * 2 + localDeEntregaHeight,
              child: getTextBloco(
                'FONE/FAX',
                content: textContent(
                  infNFe.retirada!.fone != null
                      ? formatarTelefone(infNFe.retirada!.fone!)
                      : '',
                ),
              ),
            ),
          ],
          //</editor-fold desc="LOCAL DE RETIRADA">

          // //<editor-fold desc="FATURA">

          if (currentPage == 1 && faturaHeight > 0) ...[

            getGroupTitle(
              'FAT.',
              width: 0.51,
              height: duplicataLineHeight,
              left: 2.41,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight,
            ),

            positionedBox(
              height: duplicataLineHeight,
              width: 6.635,
              left: 2.92,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Numero da Fatura",
                  content: textContent(
                    infNFe.cobr!.fat!.nFat ?? '',
                  )),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 6.635,
              left: 2.92 + 6.635,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Original",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vOrig ?? '',
                  )),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 6.635,
              left: 2.92 + 6.635 + 6.635,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Desconto",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vDesc ?? '',
                  )),
            ),
            positionedBox(
              height: duplicataLineHeight,
              width: 6.635,
              left: 2.92 + 6.635 + 6.635 + 6.635,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Líquido",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vLiq ?? '',
                  )),
            ),
          ],
          if (currentPage == 1 && duplicataHeight > 0) ...[
            getGroupTitle(
              'DUP.',
              width: 0.51,
              height: duplicataHeight,
              left: 2.41,
              top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight + faturaHeight,
            ),

            for (int i = 0; i < infNFe.cobr!.dup!.length; i++) ...[
              positionedBox(
                height: duplicataLineHeight,
                width: duplicataBox,
                left: 2.92 + (i % 6 * duplicataBox) * 3,
                top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight + faturaHeight + (i ~/ 6 * duplicataLineHeight),
                child: getTextBloco("Num.",
                  content: pw.Center(
                      child: textContent(
                        infNFe.cobr!.dup![i].nDup ?? '',
                        fontSize: 5,
                      )
                  ),
                ),
              ),
              positionedBox(
                height: duplicataLineHeight,
                width: duplicataBox,
                left: 2.92 + duplicataBox + (i % 6 * duplicataBox) * 3,
                top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight + faturaHeight + (i ~/ 6 * duplicataLineHeight),
                child: getTextBloco(
                  "Venc.",
                  content: pw.Center(
                      child: textContent(
                        infNFe.cobr!.dup![i].dVenc != null
                            ? formatDateTimeFromNFe(
                            infNFe.cobr!.dup![i].dVenc!)
                            : '',
                        fontSize: 5,
                      )),
                ),
              ),
              positionedBox(
                height: duplicataLineHeight,
                width: duplicataBox,
                left: 2.92 + duplicataBox * 2 + (i % 6 * duplicataBox) * 3,
                top: 4.85 + 1.92 + localDeEntregaHeight + localDeRetiradaHeight + faturaHeight + (i ~/ 6 * duplicataLineHeight),
                child: getTextBloco("Valor",
                    content: moneyContent(
                      infNFe.cobr!.dup![i].vDup,
                      fontSize: 5,
                    )),
              ),
            ],
          ],
          //</editor-fold desc="FATURA">

          //<editor-fold desc="CÁLCULO DO IMPOSTO">
          if (currentPage == 1) ...[

            getGroupTitle(
              'CALC. IMPOSTO',
              width: 0.51,
              height: 0.64 * 2,
              left: 2.41,
              top: 4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
            ),
            positionedBox(
              height: 0.64,
              width: 5.33,
              left: 2.92,
              top: 4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "BASE DE CÁLCULO DO ICMS",
                content: moneyContent(infNFe.total.ICMSTot.vBC),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.33,
              left: 8.25,
              top:4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO ICMS",
                content: moneyContent(infNFe.total.ICMSTot.vICMS),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.33,
              left: 13.58,
              top: 4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "BASE DE CÁLCULO DO ICMS ST",
                content: moneyContent(infNFe.total.ICMSTot.vBCST),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.33,
              left: 18.91,
              top: 4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO ICMS ST",
                content: moneyContent(infNFe.total.ICMSTot.vST),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.22,
              left: 24.24,
              top: 4.85 + 1.92 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR TOTAL DOS PRODUTOS",
                content: moneyContent(infNFe.total.ICMSTot.vProd),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 2.92,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO FRETE",
                content: moneyContent(infNFe.total.ICMSTot.vFrete),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 7.24,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO SEGURO",
                content: moneyContent(infNFe.total.ICMSTot.vSeg),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 11.56,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "DESCONTO",
                content: moneyContent(infNFe.total.ICMSTot.vDesc),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 15.88,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "OUT. DESP. ACESSÓRIAS",
                content: moneyContent(infNFe.total.ICMSTot.vOutro),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.32,
              left: 20.20,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO IPI",
                content: moneyContent(infNFe.total.ICMSTot.vIPI),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.94,
              left: 24.52,
              top: 4.85 + 1.92 + 0.64 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR TOTAL DA NOTA",
                bold: true,
                content: moneyContent(
                  infNFe.total.ICMSTot.vNF,
                  bold: true,
                ),
              ),
            )
          ],
          //</editor-fold desc="CÁLCULO DO IMPOSTO">

          //<editor-fold desc="TRANSPORTADOR/VOLUMES TRANSPORTADOS">
          if (currentPage == 1) ...[

            getGroupTitle(
              'TRANSPORT./ VOL. TRANSP.',
              width: 0.51,
              height: 1.92,
              left: 2.41,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
            ),

            positionedBox(
              height: 0.64,
              width: 11.56,
              left: 2.92,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "RAZÃO SOCIAL",
                content: textContent(
                    infNFe.transp.transporta?.xNome ?? '',
                    maxLength: 80),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 2.79,
              left: 14.48,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "FRETE POR CONTA DE",
                content: freteContent(infNFe.transp.modFrete.value),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 2.54,
              left: 17.27,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "CÓDIGO ANTT",
                content: textContent(
                    infNFe.transp.veicTransp?.RNTC ?? '',
                    maxLength: 20),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 3.81,
              left: 19.81,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "PLACA DO VEÍCULO",
                content: textContent(
                    infNFe.transp.veicTransp?.placa ?? '',
                    maxLength: 12),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 1.02,
              left: 23.62,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "UF",
                content: textContent(
                  infNFe.transp.veicTransp?.UF?.value ?? '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.83,
              left: 24.64,
              top: 4.85 + 1.92 + 0.64 * 2 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "CNPJ/CPF",
                content: textContent(
                  formatarCpfCnpj(infNFe.transp.transporta?.CNPJ ??
                      infNFe.transp.transporta?.CNPJ ??
                      ''),
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 11.56,
              left: 2.92,
              top: 4.85 + 1.92 + 0.64 * 3 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "ENDEREÇO",
                content: textContent(
                    infNFe.transp.transporta?.xEnder ?? '',
                    maxLength: 60),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 9.14,
              left: 14.48,
              top: 4.85 + 1.92 + 0.64 * 3 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "MUNICÍPIO",
                content: textContent(
                    infNFe.transp.transporta?.xMun ?? '',
                    maxLength: 60),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 1.02,
              left: 23.62,
              top: 4.85 + 1.92 + 0.64 * 3 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "UF",
                content: textContent(
                  infNFe.transp.transporta?.UF?.value ?? '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.83,
              left: 24.64,
              top: 4.85 + 1.92 + 0.64 * 3 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "INSCRIÇÃO ESTADUAL",
                content: textContent(
                  infNFe.transp.transporta?.IE ?? '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 3.56,
              left: 2.92,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "QUANTIDADE",
                content: textContent(
                  infNFe.transp.vol
                      ?.map<String>((e) => e.qVol ?? '1')
                      .map<int>((e) => int.parse(e))
                      .fold<int>(
                      0,
                          (previousValue, element) =>
                      previousValue + element)
                      .toString() ??
                      '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 3.81,
              left: 6.48,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "ESPÉCIE",
                content: textContent( (infNFe.transp.vol?.isNotEmpty ?? false)?
                  infNFe.transp.vol?.first.esp ?? '' : '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.19,
              left: 10.29,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "MARCA",
                content: textContent((infNFe.transp.vol?.isNotEmpty ?? false)?
                  infNFe.transp.vol?.first.marca ?? '' : '',
                ),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.08,
              left: 14.48,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "NUMERAÇÃO",
                // todo como que fica quando tem multiplos volumes????
                content: textContent( (infNFe.transp.vol?.isNotEmpty ?? false)?
                    infNFe.transp.vol?.first.nVol != null
                        ? infNFe.transp.vol!.length > 1
                        ? "${infNFe.transp.vol!.first.nVol}/${infNFe.transp.vol!.last.nVol}"
                        : infNFe.transp.vol!.first.nVol!
                        : '' : '',
                    maxLength: 60),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 5.08,
              left: 19.56,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "PESO BRUTO",
                // todo como que fica quando tem multiplos volumes????
                content: infNFe.transp.vol == null
                    ? null
                    : moneyContent(infNFe.transp.vol!
                    .map<String?>((e) => e.pesoB)
                    .where((element) => element != null)
                    .map<double>((e) => double.parse(e!))
                    .fold<double>(0.0,
                        (previousValue, element) => previousValue + element)
                    .toString()),
              ),
            ),
            positionedBox(
              height: 0.64,
              width: 4.83,
              left: 24.64,
              top: 4.85 + 1.92 + 0.64 * 4 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "PESO LÍQUIDO",
                // todo como que fica quando tem multiplos volumes????
                content: infNFe.transp.vol == null
                    ? null
                    : moneyContent(infNFe.transp.vol!
                    .map<String?>((e) => e.pesoL)
                    .where((element) => element != null)
                    .map<double>((e) => double.parse(e!))
                    .fold<double>(0.0,
                        (previousValue, element) => previousValue + element)
                    .toString()),
              ),
            )
          ],
          //</editor-fold desc="TRANSPORTADOR/VOLUMES TRANSPORTADOS">

          //<editor-fold desc="DADOS DOS PRODUTOS/SERVIÇOS">

          ...produtosTableHeader(
            page: currentPage,
            left: currentPage == 1 ? 2.41 : 0.13,
            produtos: produtos,
            hasGtin: hasGtin,
            topOffset: currentPage == 1 ? 4.85 + 1.92 + 0.64 * 2 + 1.92 +
                faturaDuplicataHeight +
                localDeEntregaHeight +
                localDeRetiradaHeight : 0.47 + cabecalhoHeight,
            produtoHeight: produtoHeight

          ),

          //</editor-fold desc="DADOS DOS PRODUTOS/SERVIÇOS">

          //<editor-fold desc="CÁLCULO DO ISSQN">
          if (currentPage == 1)
            ...[
          getGroupTitle(
            'ISSQN',
            height: 0.67,
            width: 0.51,
            left: 2.41,
            top: 17.28,
          ),

          positionedBox(
            height: 0.67,
            width: 6.60,
            left: 2.92,
            top: 17.28,
            child: getTextBloco(
              "INSCRIÇÃO MUNICIPAL",
              content:
              textContent(infNFe.emit.IM ?? '', maxLength: 15),
            ),
          ),

          positionedBox(
            height: 0.67,
            width: 6.60,
            left: 9.52,
            top: 17.28,
            child: getTextBloco(
              "VALOR TOTAL DOS SERVIÇOS",
              content: moneyContent(
                infNFe.total.ISSQNtot?.vServ ?? '0',
              ),
            ),
          ),

          positionedBox(
            height: 0.67,
            width: 6.60,
            left: 16.12,
            top: 17.28,
            child: getTextBloco(
              "BASE DE CÁLCULO DO ISSQN",
              content: moneyContent(
                infNFe.total.ISSQNtot?.vBC ?? '0',
              ),
            ),
          ),

          positionedBox(
            height: 0.67,
            width: 6.73,
            left: 22.72,
            top: 17.28,
            child: getTextBloco(
              "VALOR DO ISSQN",
              content: moneyContent(
                infNFe.total.ISSQNtot?.vISS ?? '0',
              ),
            ),
          ),],

          // //</editor-fold>

          //<editor-fold desc="DADOS ADICIONAIS">
          getGroupTitle(
            'DADOS ADICIONAIS',
            height: 2.59,
            width: 0.51,
            left: currentPage == 1? 2.41: 0.13,
            top: 17.95,
          ),

          positionedBox(
            height: 2.59,
            width: currentPage == 1? 19.05 : 19.05 + 2.92 - (0.13 + 0.51),
            left: currentPage == 1? 2.92: 0.13 + 0.51,
            top: 17.95,
            child: getTextBloco(
              "INFORMAÇÕES COMPLEMENTARES",
              content: textContent(informacoesComplementares, fontSize: 6),
            ),
          ),
          positionedBox(
            height: 2.59,
            width: 7.49,
            left: 21.97,
            top: 17.95,
            child: getTextBloco(
              "RESERVADO AO FISCO",
            ),
          ),
          //</editor-fold desc="DADOS ADICIONAIS">
        ],
      );
    },
  );
}

List<pw.Widget> makeIdentificacaoEmitente({
  required int page,
  required infNFeComplexType_TNFe infNFe,
  final left = 2.41,
  final ProcNFeSchema? procNFe,
  final RetornoEpec? retornoEpec,
  final Uint8List? logo,
  final int pagAtual = 1,
  final int folhas = 1,
}) {
  final emitente = infNFe.emit;
  if (infNFe.ide.tpEmis.value == '1' ||
      infNFe.ide.tpEmis.value == '2'){
    assert (procNFe != null);
  }
  if (infNFe.ide.tpEmis.value == '4' && procNFe == null){
    assert (retornoEpec != null);
  }
  final chave = infNFe.Id.replaceAll(RegExp(r'\D'), '');

  return [
    //<editor-fold desc="DADOS DA NFE">
    positionedBox(
      height: 3.10,
      width: page == 1? 11.43: 11.43 + 2.28,
      left: left,
      top: 0.47,
      child: getTextBloco('IDENTIFICAÇÃO DO EMITENTE',
          content: pw.Row(children: [
            if (logo != null)
              pw.Expanded(
                child: pw.Image(pw.MemoryImage(logo)),
              ),
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  textContent(
                    emitente.xNome,
                    bold: true,
                    fontSize: 12,
                  ),
                  textContent(
                      "${emitente.enderEmit.xLgr}, ${emitente.enderEmit.nro}" +
                          (emitente.enderEmit.xCpl != null
                              ? " , ${emitente.enderEmit.xCpl}"
                              : "") +
                          " , ${emitente.enderEmit.xBairro} , ${emitente.enderEmit.xMun} , ${emitente.enderEmit.UF.value} CEP: ${emitente.enderEmit.CEP}",
                    bold: true,
                  ),
                  if (emitente.enderEmit.fone != null)
                    textContent(
                        "Fone: ${formatarTelefone(emitente.enderEmit.fone!)}",
                      bold: true,
                    ),
                ],
              ),
            ),
          ])),
    ),
    positionedBox(
      height: 3.10,
      width: 3.05,
      left: 13.84,
      top: 0.47,
      child: getTextBloco(
        null,
        textWidget: pw.Center(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  textContent(
                    'DANFE',
                    bold: true,
                    fontSize: 12,
                  ),
                  textContent(
                    'DOCUMENTO AUXILIAR DA NOTA FISCAL ELETRÔNICA',
                    fontSize: 8,
                    center: true,
                  ),
                  pw.Row(children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        textContent(
                          '0 - ENTRADA',
                          fontSize: 8,
                        ),
                        textContent(
                          '1 - SAÍDA',
                          fontSize: 8,
                        ),
                      ],
                    ),
                    pw.SizedBox(width: 5),
                    getTextBloco(infNFe.ide.tpNF.value, fontSize: 16),
                  ]),
                  pw.SizedBox(height: 2),
                  textContent(
                    "Nº ${formatarNNF(infNFe.ide.nNF)}",
                    bold: true,
                    fontSize: 8,
                  ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      textContent(
                        "SÉRIE ${infNFe.ide.serie.padLeft(3, '0')}",
                        fontSize: 8,
                      ),
                      textContent(
                        "FL. ${pagAtual.toString().padLeft(2, '0')}/${folhas.toString().padLeft(2, '0')}",
                        fontSize: 8,
                      ),
                    ]
                  )
                ])),
      ),
    ),
    positionedBox(
      height: 1.19,
      width: 12.57,
      left: 16.89,
      top: 0.47,
      child: getTextBloco(
        null,
        content: pw.Center(
            child: pw.BarcodeWidget(
              barcode: bar.Barcode.code128(
                useCode128A: false,
                useCode128B: false,
                useCode128C: true,
              ),
              drawText: false,
              data: chave,
              width: cmToPixel(7),
              height: cmToPixel(1.30),
            )),
      ),
    ),
    positionedBox(
      height: 0.64,
      width: 12.57,
      left: 16.89,
      top: 0.47 + 1.19,
      child: getTextBloco(
        'CHAVE DE ACESSO',
        content: pw.Center(
          child: textContent(
            formataChaveDeAcesso(chave),
            fontSize: 8,
            bold: true,
          ),
        ),
      ),
    ),
    if (infNFe.ide.tpEmis.value == '1' ||
        infNFe.ide.tpEmis.value == '6' ||
        infNFe.ide.tpEmis.value == '7' ||
        (infNFe.ide.tpEmis.value == '4' && procNFe != null)
    )
      positionedBox(
        height: 1.27,
        width: 12.57,
        left: 16.89,
        top: 0.47 + 1.19 + 0.64,
        child: getTextBloco(null,
            center: true,
            content: textContent(
              "Consulta de autenticidade no portal nacional da NF-e www.nfe.fazenda.gov.br/portal ou no site da Sefaz Autorizadora",
              fontSize: 9,
              center: true,
            )),
      ),
    if (infNFe.ide.tpEmis.value == '4' && procNFe == null)
      positionedBox(
        height: 1.27,
        width: 12.57,
        left: 16.89,
        top: 0.47 + 1.19 + 0.64,
        child: getTextBloco(null,
            center: true,
            content: textContent(
              "Consulta de autenticidade no portal da NF-e www.nfe.fazenda.gov.br/portal",
              fontSize: 9,
              center: true,
            )),
      ),
    if (infNFe.ide.tpEmis.value == '2' ||
        infNFe.ide.tpEmis.value == '5')
      positionedBox(
        height: 1.27,
        width: 12.57,
        left: 16.89,
        top: 0.47 + 1.19 + 0.64,
        child: getTextBloco(
          null,
          center: true,
          content: pw.Center(
              child: pw.BarcodeWidget(
                barcode: bar.Barcode.code128(
                  useCode128A: false,
                  useCode128B: false,
                  useCode128C: true,
                ),
                drawText: false,
                data: <String>[
                  infNFe.ide.cUF.value,
                  infNFe.ide.tpEmis.value.padLeft(2, '0'),
                  infNFe.emit.CNPJ ?? '00000000000000',
                  infNFe.total.ICMSTot.vNF
                      .replaceAll(RegExp(r'\D'), '')
                      .padLeft(14, '0'),
                  // todo terminar essa parte pagina 21 do manual
                ].join(''),
                width: cmToPixel(7),
                height: cmToPixel(1.30),
              )),
        ),
      ),

    if (infNFe.ide.tpEmis.value == '1' ||
        infNFe.ide.tpEmis.value == '6' ||
        infNFe.ide.tpEmis.value == '7' ||
        (infNFe.ide.tpEmis.value == '4' && procNFe != null)
    )
      positionedBox(
        height: 0.64,
        width: 12.57,
        left: 16.89,
        top: 3.57,
        child: getTextBloco(
          'PROTOCOLO DE AUTORIZAÇÃO DE USO',
          content: pw.Center(
            child: textContent(
              procNFe!.protNFe.infProt.cStat == '100' ||
                  procNFe.protNFe.infProt.cStat == '150'
                  ? "${procNFe.protNFe.infProt.nProt} ${formatDateTimeFromNFe(procNFe.protNFe.infProt.dhRecbto)} ${formatHoraMinutoSegundoFromNFe(procNFe.protNFe.infProt.dhRecbto)}"
                  : '',
              center: true,
            ),
          ),
        ),
      ),

    if (infNFe.ide.tpEmis.value == '2' ||
        infNFe.ide.tpEmis.value == '5')
      positionedBox(
        height: 0.64,
        width: 12.57,
        left: 16.89,
        top: 3.57,
        child: getTextBloco(
          'DADOS DA NF-E',
          content: pw.Center(
            // TODO TERMINAR ESSA PARTE
            child: textContent('TERMINAR ESSA PARTE'),
          ),
        ),
      ),

    if (infNFe.ide.tpEmis.value == '4' && procNFe == null)
      positionedBox(
        height: 0.64,
        width: 12.57,
        left: 16.89,
        top: 3.57,
        child: getTextBloco(
          'PROTOCOLO DE AUTORIZAÇÃO DO EPEC',
          content: pw.Center(
            child: textContent(
              retornoEpec != null? "${retornoEpec.infEvento.nProt} ${formatDateTimeFromNFe(retornoEpec.infEvento.dhRegEvento)} ${formatHoraMinutoSegundoFromNFe(retornoEpec.infEvento.dhRegEvento)}"
                  : '',
              center: true,
            ),
          ),
        ),
      ),

    positionedBox(
      height: 0.64,
      width: 14.48 - 2.41 + left,
      left: left,
      top: 3.57,
      child: getTextBloco(
        'NATUREZA DA OPERAÇÃO',
        content: textContent(infNFe.ide.natOp,
            maxLength: 120, fontSize: 10),
      ),
    ),


    positionedBox(
      height: 0.64,
      width: 9.4 - 2.41 + left,
      left: left,
      top: 4.21,
      child: getTextBloco(
        'INSCRIÇÃO ESTADUAL',
        content: textContent(emitente.IE, fontSize: 10),
      ),
    ),
    positionedBox(
      height: 0.64,
      width: 8.89,
      left: 11.81,
      top: 4.21,
      child: getTextBloco(
        'INSCRIÇÃO ESTADUAL DE ST',
        content: emitente.IEST != null
            ? textContent(emitente.IEST!, fontSize: 10)
            : null,
      ),
    ),
    positionedBox(
      height: 0.64,
      width: 8.76,
      left: 20.70,
      top: 4.21,
      child: getTextBloco(
        'CNPJ/CPF',
        content: textContent(formatarCpfCnpj(emitente.CNPJ ?? emitente.CPF!),
            fontSize: 10),
      ),
    ),

    //</editor-fold desc="DADOS DA NFE">
  ];
}

List<pw.Widget> produtosTableHeader({
  required int page,
  final height = 0.42,
  required double left,
  final double topOffset = 0,
  final List<detComplexType_infNFe> produtos = const [],
  final bool hasGtin = false,
  final produtoHeight = 0.84,
}) {
  final targetTop = topOffset;

  final codigoWidth = 5.0;
  final codigoLeft = left + 0.51;

  final descricaoWidth = page == 1? 8.35 : 8.35 + 2.28;
  final descricaoLeft = codigoLeft + codigoWidth;

  final ncmWidth = 1.3;
  final ncmLeft = descricaoLeft + descricaoWidth;

  final cfopWidth = 0.8;
  final cfopLeft = ncmLeft + ncmWidth;

  final csonWidth = 1.4;
  final csonLeft = cfopLeft + cfopWidth;

  final unWidth = 0.5;
  final unLeft = csonLeft + csonWidth;

  final qtdWidth = 1.1;
  final qtdLeft = unLeft + unWidth;

  final vUnWidth = 1.0;
  final vUnLeft = qtdLeft + qtdWidth;

  final vDescontoWidth = 1.0;
  final vDescontoLeft = vUnLeft + vUnWidth;

  final vProdWidth = 1.5;
  final vProdLeft = vDescontoLeft + vDescontoWidth;

  final vBbcICMSWidth = 1.0;
  final vBbcICMSLeft = vProdLeft + vProdWidth;

  final vICMSWidth = 1.0;
  final vICMSLeft = vBbcICMSLeft + vBbcICMSWidth;

  final vAliqICMSWidth = 1.0;
  final vAliqICMSLeft = vICMSLeft + vICMSWidth;

  final vIPIWidth = 0.8;
  final vIPILeft = vAliqICMSLeft + vAliqICMSWidth;

  final vAliqIPIWidth = 0.8;
  final vAliqIPILeft = vIPILeft + vIPIWidth;

  return [
    getGroupTitle(
      'PROD./ SERV.',
      width: 0.51,
      height: height + produtoHeight * produtos.length,
      left: left,
      top: targetTop,
    ),
    //<editor-fold desc="CABEÇALHO">
    positionedBox(
      height: height,
      width: codigoWidth,
      left: codigoLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "Código Produto/Serviço",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: descricaoWidth,
      left: descricaoLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "Descrição Produto/Serviço",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: ncmWidth,
      left: ncmLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "NCM/SH",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: cfopWidth,
      left: cfopLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "CFOP",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: csonWidth,
      left: csonLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "CST/CSOSN",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: unWidth,
      left: unLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "UN",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: qtdWidth,
      left: qtdLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "QTD",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vUnWidth,
      left: vUnLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "V. UNIT",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vDescontoWidth,
      left: vDescontoLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "V. DESC",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vProdWidth,
      left: vProdLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "V. LIQ",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vBbcICMSWidth,
      left: vBbcICMSLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "BC ICMS",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vICMSWidth,
      left: vICMSLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "V. ICMS",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vAliqICMSWidth,
      left: vAliqICMSLeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "A. ICMS",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vIPIWidth,
      left: vIPILeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "V. IPI",
          fontSize: 6,
          center: true,
        ),
      ),
    ),
    positionedBox(
      height: height,
      width: vAliqIPIWidth,
      left: vAliqIPILeft,
      top: targetTop,
      child: getTextBloco(
        null,
        center: true,
        content: textContent(
          "A. IPI",
          fontSize: 6,
          center: true,
        ),
      ),
    ),

    //</editor-fold desc="CABEÇALHO">

    //<editor-fold desc="PRODUTOS">
    for (var i = 0; i < produtos.length; i++) ...[
      positionedBox(
        height: produtoHeight,
        width: codigoWidth,
        left: codigoLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: textContent(
            produtos[i].prod.cProd,
            fontSize: 5,
            center: true,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: descricaoWidth,
        left: descricaoLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          hasGtin ? "EAN: ${produtos[i].prod.cEAN}" : null,
          center: false,
          fontSize: 5,
          content: textContent(
            produtos[i].prod.xProd,
            fontSize: 5,
            center: false,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: ncmWidth,
        left: ncmLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: textContent(
            produtos[i].prod.NCM,
            fontSize: 5,
            center: true,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: cfopWidth,
        left: cfopLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: textContent(
            produtos[i].prod.CFOP,
            fontSize: 5,
            center: true,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: csonWidth,
        left: csonLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: textContent(
            getCST(produtos[i].imposto) ?? '',
            fontSize: 5,
            center: true,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: unWidth,
        left: unLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: textContent(
            produtos[i].prod.uCom,
            fontSize: 5,
            center: true,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: qtdWidth,
        left: qtdLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            produtos[i].prod.qCom,
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vUnWidth,
        left: vUnLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            produtos[i].prod.vUnCom,
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vDescontoWidth,
        left: vDescontoLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            produtos[i].prod.vDesc ?? '0',
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vProdWidth,
        left: vProdLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            produtos[i].prod.vProd,
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vBbcICMSWidth,
        left: vBbcICMSLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            getVBCIcms(produtos[i].imposto) ?? '0',
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vICMSWidth,
        left: vICMSLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            getVICMS(produtos[i].imposto) ?? '0',
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vAliqICMSWidth,
        left: vAliqICMSLeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            getPICMS(produtos[i].imposto) ?? '0',
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vIPIWidth,
        left: vIPILeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            getVIPI(produtos[i].imposto) ?? '0',
            fontSize: 5,
          ),
        ),
      ),
      positionedBox(
        height: produtoHeight,
        width: vAliqIPIWidth,
        left: vAliqIPILeft,
        top: targetTop + (height + produtoHeight * i),
        child: getTextBloco(
          null,
          center: true,
          content: moneyContent(
            getPIPI(produtos[i].imposto) ?? '0',
            fontSize: 5,
          ),
        ),
      ),
    ],

    //</editor-fold desc="PRODUTOS">
  ];
}

pw.Widget getGroupTitle(String text, {
  required final double height,
  required final double width,
  required final double left,
  required final double top,
}){
  return positionedBox(
    height: width, // Tive que inverter por conta do transform.rotateBox
    width: height,
    left: left,
    top: top,
    child: pw.Container(
      decoration: pw.BoxDecoration(
          border: pw.Border.all(
            color: PdfColors.black,
            width: 1,
          )),
      child: pw.Transform.rotateBox(
        angle: math.pi/2,
        child: pw.Padding(
            padding: pw.EdgeInsets.fromLTRB(2, 1, 2, 1),
            child: pw.Text(
              text,
              softWrap: true,
              style: pw.TextStyle(
                fontSize: 6,
                font: pw.Font.timesBold(),
              ),
            )
        ),
      ),

    ),
  );
}