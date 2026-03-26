import 'dart:typed_data';
import 'package:danfe_nfe/src/base.dart';
import 'package:danfe_nfe/src/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:barcode/barcode.dart' as bar;
import 'package:nfe_client/nfe_client.dart';

const double lineWidth = 20.54;
const double canhotoHeight = 1.70;
const double cabecalhoHeight = 5.62;
const double destinatarioHeight = 2.94;
const double calculoImpostoHeight = 2.1;
const double defaultLocalRetiradaHeight = 2.94;
const double defaultLocalEntregaHeight = 2.94;
const double defaultFaturaHeight = 1.26;
const double duplicataLineHeight = 0.84;
const double duplicataBox = 1.3713;
const double transportadoraHeight = 2.94;
const double produtosPag1DefaultHeight = 5.88;
const double produtosOutrasPaginasHeight = 1.27 +
    calculoImpostoHeight +
    canhotoHeight +
    destinatarioHeight +
    produtosPag1DefaultHeight +
    transportadoraHeight;
const double footerHeight = 3.49;

const int informacoesComplementaresLength = 1331;

Future<List<pw.Page>> gerenerateDanfeA4Retrato({
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
  if (duplicataHeight > 0) {
    duplicataHeight += 0.42;
  }

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
        canhotoHeight -
        transportadoraHeight -
        calculoImpostoHeight;
  }

  return pw.Page(
    pageFormat: PdfPageFormat.a4
        .copyWith(marginBottom: 0, marginLeft: 0, marginRight: 0, marginTop: 0),
    build: (pw.Context context) {
      return pw.Stack(
        children: [
          if (infNFe.ide.tpAmb.value == '2')
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Transform.rotateBox(
                angle: 45,
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
                angle: 45,
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
              height: 0.85,
              width: 16.10,
              left: 0.25,
              top: 0.42,
              child: getTextBloco(
                  'Recebemos de ${emitente.xNome} a mercadoria abaixo descrita, conforme Nota Fiscal Eletrônica nº ${infNFe.ide.nNF} de ${formatDateTimeFromNFe(infNFe.ide.dhEmi)}'),
            ),
            positionedBox(
              height: 1.70,
              width: 4.50,
              left: 16.35,
              top: 0.42,
              child: getTextBloco(
                null,
                textWidget: pw.Center(
                    child: pw.Column(children: [
                      pw.Text(
                        'NF-e',
                        style: pw.TextStyle(
                          fontSize: 10,
                          font: pw.Font.times(),
                        ),
                      ),
                      pw.Text(
                        'Nº ${formatarNNF(infNFe.ide.nNF.padLeft(9, '0'))}',
                        style: pw.TextStyle(
                          fontSize: 17,
                          font: pw.Font.timesBold(),
                        ),
                      ),
                      pw.Text(
                        'SÉRIE ${infNFe.ide.serie.padLeft(3, '0')}',
                        style: pw.TextStyle(
                          fontSize: 10,
                          font: pw.Font.times(),
                        ),
                      ),
                    ])),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.10,
              left: 0.25,
              top: 1.27,
              child: getTextBloco('DATA DE RECEBIMENTO'),
            ),
            positionedBox(
              height: 0.85,
              width: 12.00,
              // todo verificar isso aqui, na documentação está 12.10, porém 12.10 cobre outro campo u.u
              left: 4.35,
              top: 1.27,
              child: getTextBloco('IDENTIFICAÇÃO E ASSINATURA DO RECEBEDOR'),
            ),
          ],

          //</editor-fold desc="CANHOTO">

          ...makeIdentificacaoEmitente(
            infNFe: infNFe,
            top: currentPage == 1 ? 2.54 : 0.84,
            procNFe: procNFe,
            retornoEpec: retornoEpec,
            logo: logo,
            pagAtual: currentPage,
            folhas: totalPages,
          ),

          //<editor-fold desc="DESTINATÁRIO/REMETENTE">
          if (currentPage == 1) ...[
            positionedBox(
              height: 0.42,
              width: 3.3,
              left: 0.25,
              top: 8.16,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "DESTINATÁRIO/REMETENTE",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 12.32,
              left: 0.25,
              top: 8.58,
              child: getTextBloco(
                'Nome/Razão Social',
                content: hasDestinatario
                    ? textContent(
                  destinatario.xNome ?? '',
                  maxLength: 60,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 5.33,
              left: 12.57,
              top: 8.58,
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
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 8.58,
              child: getTextBloco(
                'DATA DA EMISSÃO',
                bold: true,
                content: textContent(
                    formatDateTimeFromNFe(infNFe.ide.dhEmi),
                    bold: true),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 10.16,
              left: 0.25,
              top: 9.43,
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
              height: 0.85,
              width: 4.83,
              left: 10.41,
              top: 9.43,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: hasDestinatario
                    ? textContent(
                  destinatario.enderDest?.xBairro ?? '',
                  maxLength: 21,
                )
                    : null,
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.67,
              left: 15.24,
              top: 9.43,
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
              height: 0.85,
              width: 2.92,
              left: 17.91,
              top: 9.43,
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
              height: 0.85,
              width: 7.11,
              left: 0.25,
              top: 10.28,
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
              height: 0.85,
              width: 4.06,
              left: 7.36,
              top: 10.28,
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
              height: 0.85,
              width: 1.14,
              left: 11.42,
              top: 10.28,
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
              height: 0.85,
              width: 5.35,
              left: 12.56,
              top: 10.28,
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
              height: 0.85,
              width: 2.92,
              left: 17.91,
              top: 10.28,
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

          //<editor-fold desc="LOCAL DE ENTREGA">
          if (currentPage == 1 && localDeEntregaHeight > 0) ...[
            positionedBox(
              height: 0.42,
              width: 10,
              left: 0.25,
              top: 11.09,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "INFORMAÇÕES DO LOCAL DE ENTREGA",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 12.32,
              left: 0.25,
              top: 11.09 + 0.42,
              child: getTextBloco(
                'Nome/Razão Social',
                content: textContent(
                  infNFe.entrega!.xNome ?? '',
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 5.33,
              left: 12.57,
              top: 11.09 + 0.42,
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
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42,
              child: getTextBloco(
                'INSCRIÇÃO ESTADUAL',
                content: textContent(
                  infNFe.entrega!.IE ?? '',
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 10.16,
              left: 0.25,
              top: 11.09 + 0.42 + 0.85,
              child: getTextBloco(
                'ENDEREÇO',
                content: textContent(
                  "${infNFe.entrega!.xLgr}, ${infNFe.entrega!.nro} ${infNFe.entrega!.xCpl ?? ''}",
                  maxLength: 200,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.83 + 2.67,
              left: 10.41,
              top: 11.09 + 0.42 + 0.85,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: textContent(
                  infNFe.entrega!.xBairro,
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42 + 0.85,
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
              height: 0.85,
              width: 7.11 + 5.35 + 2.92 + 1.14,
              left: 0.25,
              top: 11.09 + 0.42 + 0.85 + 0.85,
              child: getTextBloco(
                'MUNICÍPIO',
                content: textContent(
                  infNFe.entrega!.xMun,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 1.14,
              left: 7.11 + 5.35 + 2.92 + 0.25 + 1.14,
              top: 11.09 + 0.42 + 0.85 + 0.85,
              child: getTextBloco(
                'UF',
                content: textContent(infNFe.entrega!.UF.value),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42 + 0.85 + 0.85,
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
          //</editor-fold desc="LOCAL DE ENTREGA">

          //<editor-fold desc="LOCAL DE RETIRADA">
          if (currentPage == 1 && localDeRetiradaHeight > 0) ...[
            positionedBox(
              height: 0.42,
              width: 10,
              left: 0.25,
              top: 11.09 + localDeEntregaHeight,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "INFORMAÇÕES DO LOCAL DE RETIRADA",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 12.32,
              left: 0.25,
              top: 11.09 + 0.42 + localDeEntregaHeight,
              child: getTextBloco(
                'Nome/Razão Social',
                content: textContent(
                  infNFe.retirada!.xNome ?? '',
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 5.33,
              left: 12.57,
              top: 11.09 + 0.42 + localDeEntregaHeight,
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
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42 + localDeEntregaHeight,
              child: getTextBloco(
                'INSCRIÇÃO ESTADUAL',
                content: textContent(
                  infNFe.retirada!.IE ?? '',
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 10.16,
              left: 0.25,
              top: 11.09 + 0.42 + 0.85 + localDeEntregaHeight,
              child: getTextBloco(
                'ENDEREÇO',
                content: textContent(
                  "${infNFe.retirada!.xLgr}, ${infNFe.retirada!.nro} ${infNFe.retirada!.xCpl ?? ''}",
                  maxLength: 120,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.83 + 2.67,
              left: 10.41,
              top: 11.09 + 0.42 + 0.85 + localDeEntregaHeight,
              child: getTextBloco(
                'BAIRRO/DISTRITO',
                content: textContent(
                  infNFe.retirada!.xBairro,
                  maxLength: 60,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42 + 0.85 + localDeEntregaHeight,
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
              height: 0.85,
              width: 7.11 + 5.35 + 2.92 + 1.14,
              left: 0.25,
              top: 11.09 + 0.42 + 0.85 + 0.85 + localDeEntregaHeight,
              child: getTextBloco(
                'MUNICÍPIO',
                content: textContent(
                  infNFe.retirada!.xMun,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 1.14,
              left: 7.11 + 5.35 + 2.92 + 0.25 + 1.14,
              top: 11.09 + 0.42 + 0.85 + 0.85 + localDeEntregaHeight,
              child: getTextBloco(
                'UF',
                content: textContent(
                  infNFe.retirada!.UF.value,
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.92,
              left: 17.90,
              top: 11.09 + 0.42 + 0.85 + 0.85 + localDeEntregaHeight,
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
          //<editor-fold desc="FATURA">

          if (currentPage == 1 && faturaHeight > 0) ...[
            positionedBox(
              height: 0.42,
              width: 10,
              left: 0.25,
              top: 11.09 + localDeEntregaHeight + localDeRetiradaHeight,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "FATURA",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.84,
              width: 5.00,
              left: 0.25,
              top: 11.51 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Numero da Fatura",
                  content: textContent(
                    infNFe.cobr!.fat!.nFat ?? '',
                  )),
            ),
            positionedBox(
              height: 0.84,
              width: 5.00,
              left: 5.25,
              top: 11.51 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Original",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vOrig ?? '',
                  )),
            ),
            positionedBox(
              height: 0.84,
              width: 5.00,
              left: 5.25 + 5.00,
              top: 11.51 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Desconto",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vDesc ?? '',
                  )),
            ),
            positionedBox(
              height: 0.84,
              width: 5.57,
              left: 5.25 + 5.00 + 5.00,
              top: 11.51 + localDeEntregaHeight + localDeRetiradaHeight,
              child: getTextBloco("Valor Líquido",
                  content: moneyContent(
                    infNFe.cobr!.fat!.vLiq ?? '',
                  )),
            ),
          ],
          if (currentPage == 1 && duplicataHeight > 0) ...[
            positionedBox(
              height: 0.42,
              width: 10,
              left: 0.25,
              top: 11.09 +
                  localDeEntregaHeight +
                  localDeRetiradaHeight +
                  faturaHeight,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  infNFe.cobr!.dup!.length == 1? "DUPLICATA" : "DUPLICATAS",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            for (int i = 0; i < infNFe.cobr!.dup!.length; i++) ...[
              positionedBox(
                height: 0.84,
                width: duplicataBox,
                left: 0.25 + (i % 5 * duplicataBox) * 3,
                top: 11.51 +
                    localDeEntregaHeight +
                    localDeRetiradaHeight +
                    faturaHeight +
                    (i ~/ 5 * 0.84),
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
                height: 0.84,
                width: duplicataBox,
                left: 0.25 + duplicataBox + (i % 5 * duplicataBox) * 3,
                top: 11.51 +
                    localDeEntregaHeight +
                    localDeRetiradaHeight +
                    faturaHeight +
                    (i ~/ 5 * 0.84),
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
                height: 0.84,
                width: duplicataBox,
                left: 0.25 + duplicataBox * 2 + (i % 5 * duplicataBox) * 3,
                top: 11.51 +
                    localDeEntregaHeight +
                    localDeRetiradaHeight +
                    faturaHeight +
                    (i ~/ 5 * 0.84),
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
            positionedBox(
              height: 0.42,
              width: 5.60,
              left: 0.25,
              top: 12.36 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "CÁLCULO DO IMPOSTO",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.06,
              left: 0.25,
              top: 12.78 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "BASE DE CÁLCULO DO ICMS",
                content: moneyContent(infNFe.total.ICMSTot.vBC),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.06,
              left: 4.31,
              top: 12.78 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO ICMS",
                content: moneyContent(infNFe.total.ICMSTot.vICMS),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.06,
              left: 8.37,
              top: 12.78 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "BASE DE CÁLCULO DO ICMS ST",
                content: moneyContent(infNFe.total.ICMSTot.vBCST),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.06,
              left: 12.43,
              top: 12.78 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO ICMS ST",
                content: moneyContent(infNFe.total.ICMSTot.vST),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.32,
              left: 16.49,
              top: 12.78 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR TOTAL DOS PRODUTOS",
                content: moneyContent(infNFe.total.ICMSTot.vProd),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.30,
              left: 0.25,
              top: 13.63 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO FRETE",
                content: moneyContent(infNFe.total.ICMSTot.vFrete),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.30,
              left: 3.55,
              top: 13.63 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO SEGURO",
                content: moneyContent(infNFe.total.ICMSTot.vSeg),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.30,
              left: 6.85,
              top: 13.63 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "DESCONTO",
                content: moneyContent(infNFe.total.ICMSTot.vDesc),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.30,
              left: 10.15,
              top: 13.63 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "OUT. DESP. ACESSÓRIAS",
                content: moneyContent(infNFe.total.ICMSTot.vOutro),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.30,
              left: 13.45,
              top: 13.63 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "VALOR DO IPI",
                content: moneyContent(infNFe.total.ICMSTot.vIPI),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.06,
              left: 16.75,
              top: 13.63 -
                  1.27 +
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
            positionedBox(
              height: 0.42,
              width: 5.20,
              left: 0.25,
              top: 14.48 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(2),
                child: pw.Text(
                  "TRANSPORTADOR/VOLUMES TRANSPORTADOS",
                  style: pw.TextStyle(
                    fontSize: 6,
                    font: pw.Font.times(),
                  ),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 9.02,
              left: 0.25,
              top: 14.90 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "RAZÃO SOCIAL",
                content: textContent(
                    infNFe.transp.transporta?.xNome ?? '',
                    maxLength: 60),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 2.79,
              left: 9.27,
              top: 14.90 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "FRETE POR CONTA DE",
                content: freteContent(infNFe.transp.modFrete.value),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 1.78,
              left: 12.06,
              top: 14.90 -
                  1.27 +
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
              height: 0.85,
              width: 2.29,
              left: 13.84,
              top: 14.90 -
                  1.27 +
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
              height: 0.85,
              width: 0.76,
              left: 16.13,
              top: 14.90 -
                  1.27 +
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
              height: 0.85,
              width: 3.94,
              left: 16.89,
              top: 14.90 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "CNPJ/CPF",
                content: textContent(
                  formatarCpfCnpj(infNFe.transp.transporta?.CNPJ ?? ''),
                ),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 9.02,
              left: 0.25,
              top: 15.75 -
                  1.27 +
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
              height: 0.85,
              width: 6.86,
              left: 9.27,
              top: 15.75 -
                  1.27 +
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
              height: 0.85,
              width: 0.76,
              left: 16.13,
              top: 15.75 -
                  1.27 +
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
              height: 0.85,
              width: 3.94,
              left: 16.89,
              top: 15.75 -
                  1.27 +
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
              height: 0.85,
              width: 2.92,
              left: 0.25,
              top: 16.60 -
                  1.27 +
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
              height: 0.85,
              width: 3.05,
              left: 3.17,
              top: 16.60 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "ESPÉCIE",
                content: (infNFe.transp.vol?.isNotEmpty ?? false)? textContent(
                  infNFe.transp.vol!.first.esp ?? '',
                ) : null,
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.05,
              left: 6.22,
              top: 16.60 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "MARCA",
                content: (infNFe.transp.vol?.isNotEmpty ?? false)? textContent(
                  infNFe.transp.vol!.first.marca ?? '',
                ): null,
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 4.83,
              left: 9.27,
              top: 16.60 -
                  1.27 +
                  faturaDuplicataHeight +
                  localDeEntregaHeight +
                  localDeRetiradaHeight,
              child: getTextBloco(
                "NUMERAÇÃO",
                // todo como que fica quando tem multiplos volumes????
                content: textContent( (infNFe.transp.vol?.isNotEmpty ?? false) ?
                    infNFe.transp.vol?.first.nVol != null
                        ? infNFe.transp.vol!.length > 1
                        ? "${infNFe.transp.vol!.first.nVol}/${infNFe.transp.vol!.last.nVol}"
                        : infNFe.transp.vol!.first.nVol!
                        : '' : '',
                    maxLength: 60),
              ),
            ),
            positionedBox(
              height: 0.85,
              width: 3.43,
              left: 14.10,
              top: 16.60 -
                  1.27 +
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
              height: 0.85,
              width: 3.30,
              left: 17.53,
              top: 16.60 -
                  1.27 +
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

          positionedBox(
            height: 0.42,
            width: 4,
            left: 0.25,
            top: produtosTop,
            child: pw.Padding(
              padding: pw.EdgeInsets.all(2),
              child: pw.Text(
                "DADOS DOS PRODUTOS/SERVIÇOS",
                style: pw.TextStyle(
                  fontSize: 6,
                  font: pw.Font.times(),
                ),
              ),
            ),
          ),

          ...produtosTableHeader(
            top: produtosTop,
            topOffset: 0.42,
            produtos: produtos,
            hasGtin: hasGtin,
            produtoHeight: produtoHeight,
          ),

          //</editor-fold desc="DADOS DOS PRODUTOS/SERVIÇOS">

          //<editor-fold desc="CÁLCULO DO ISSQN">
          if (currentPage == 1)...[
            positionedBox(height: 0.42,
              width: 2.29,
              left: 0.25,
              top: 24.64,
              child: pw.Padding(padding: pw.EdgeInsets.all(2),
                child: pw.Text("CÁLCULO DO ISSQN", style: pw.TextStyle(
                  fontSize: 6, font: pw.Font.times(),),),),),

            positionedBox(height: 0.85,
              width: 5.08,
              left: 0.25,
              top: 25.06,
              child: getTextBloco("INSCRIÇÃO MUNICIPAL", content: textContent(
                  infNFe.emit.IM ?? '', maxLength: 15),),),

            positionedBox(height: 0.85,
              width: 5.08,
              left: 5.33,
              top: 25.06,
              child: getTextBloco("VALOR TOTAL DOS SERVIÇOS",
                content: moneyContent(
                  infNFe.total.ISSQNtot?.vServ ?? '0',),),),

            positionedBox(height: 0.85,
              width: 5.08,
              left: 10.41,
              top: 25.06,
              child: getTextBloco("BASE DE CÁLCULO DO ISSQN",
                content: moneyContent(
                  infNFe.total.ISSQNtot?.vBC ?? '0',),),),

            positionedBox(height: 0.85,
              width: 5.3,
              left: 15.49,
              top: 25.06,
              child: getTextBloco("VALOR DO ISSQN", content: moneyContent(
                infNFe.total.ISSQNtot?.vISS ?? '0',),),),
          ],
          //</editor-fold>

          //<editor-fold desc="DADOS ADICIONAIS">
          positionedBox(
            height: 0.42,
            width: 2.29,
            left: 0.25,
            top: 25.91,
            child: pw.Padding(
              padding: pw.EdgeInsets.all(2),
              child: pw.Text(
                "DADOS ADICIONAIS",
                style: pw.TextStyle(
                  fontSize: 6,
                  font: pw.Font.times(),
                ),
              ),
            ),
          ),

          positionedBox(
            height: 3.07,
            width: 12.95,
            left: 0.25,
            top: 26.33,
            child: getTextBloco(
              "INFORMAÇÕES COMPLEMENTARES",
              content: textContent(informacoesComplementares, fontSize: 6),
            ),
          ),
          positionedBox(
            height: 3.07,
            width: 7.62,
            left: 13.17,
            top: 26.33,
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
  required infNFeComplexType_TNFe infNFe,
  final top = 2.54,
  final double topOffset = 0,
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
  final targetTop = top + topOffset;

  return [
    //<editor-fold desc="DADOS DA NFE">
    positionedBox(
      height: 3.92,
      width: 10.00,
      left: 0.25,
      top: targetTop,
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
      height: 3.92,
      width: 2.54,
      left: 10.25,
      top: targetTop,
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
                  pw.SizedBox(height: 2),
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
                  pw.SizedBox(height: 2),
                  textContent(
                    "SÉRIE ${infNFe.ide.serie.padLeft(3, '0')}",
                    fontSize: 8,
                  ),
                  pw.SizedBox(height: 2),
                  textContent(
                    "FOLHA ${pagAtual.toString().padLeft(2, '0')}/${folhas.toString().padLeft(2, '0')}",
                    fontSize: 8,
                  ),
                ])),
      ),
    ),
    positionedBox(
      height: 1.48,
      width: 8.04,
      left: 12.79,
      top: targetTop,
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
      height: 0.85,
      width: 8.04,
      left: 12.79,
      top: targetTop + 1.48,
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
        (infNFe.ide.tpEmis.value == '4' && procNFe != null))
      positionedBox(
        height: 1.59,
        width: 8.04,
        left: 12.79,
        top: targetTop + 1.48 + 0.85,
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
        height: 1.59,
        width: 8.04,
        left: 12.79,
        top: targetTop + 1.48 + 0.85,
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
        height: 1.59,
        width: 8.04,
        left: 12.79,
        top: targetTop + 1.48 + 0.85,
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
    positionedBox(
      height: 0.85,
      width: 7.87,
      left: 0.25,
      top: targetTop + 3.92,
      child: getTextBloco(
        'NATUREZA DA OPERAÇÃO',
        content: textContent(infNFe.ide.natOp,
            maxLength: 60, fontSize: 12),
      ),
    ),
    if (infNFe.ide.tpEmis.value == '1' ||
        infNFe.ide.tpEmis.value == '6' ||
        infNFe.ide.tpEmis.value == '7' ||
        (infNFe.ide.tpEmis.value == '4' && procNFe != null))
      positionedBox(
        height: 0.85,
        width: 8.04,
        left: 12.79,
        top: targetTop + 3.92,
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
        height: 0.85,
        width: 8.04,
        left: 12.79,
        top: targetTop + 3.92,
        child: getTextBloco(
          'DADOS DA NF-E',
          content: pw.Center(
            // TODO TERMINAR ESSA PARTE TP EMIS 2 E 5
            child: textContent('TERMINAR ESSA PARTE'),
          ),
        ),
      ),

    if (infNFe.ide.tpEmis.value == '4' && procNFe == null)
      positionedBox(
        height: 0.85,
        width: 8.04,
        left: 12.79,
        top: targetTop + 3.92,
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
      height: 0.85,
      width: 6.86,
      left: 0.25,
      top: targetTop + 3.92 + 0.85,
      child: getTextBloco(
        'INSCRIÇÃO ESTADUAL',
        content: textContent(emitente.IE, fontSize: 12),
      ),
    ),
    positionedBox(
      height: 0.85,
      width: 6.86,
      left: 7.11,
      top: targetTop + 3.92 + 0.85,
      child: getTextBloco(
        'INSCRIÇÃO ESTADUAL DE ST',
        content: emitente.IEST != null
            ? textContent(emitente.IEST!, fontSize: 12)
            : null,
      ),
    ),
    positionedBox(
      height: 0.85,
      width: 6.86,
      left: 13.97,
      top: targetTop + 3.92 + 0.85,
      child: getTextBloco(
        'CNPJ/CPF',
        content: textContent(formatarCpfCnpj(emitente.CNPJ ?? emitente.CPF!),
            fontSize: 12),
      ),
    ),

    //</editor-fold desc="DADOS DA NFE">
  ];
}

List<pw.Widget> produtosTableHeader({
  final height = 0.42,
  final top = 17.45,
  final double topOffset = 0,
  final List<detComplexType_infNFe> produtos = const [],
  final bool hasGtin = false,
  final produtoHeight = 0.84,
}) {
  final targetTop = top + topOffset;

  final codigoWidth = 3.0;
  final codigoLeft = 0.25;

  final descricaoWidth = 4.37;
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
