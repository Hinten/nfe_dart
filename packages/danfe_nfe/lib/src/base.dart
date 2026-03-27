import 'package:danfe_nfe/src/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:nfe_client/nfe_client.dart';

String? getCST(impostoComplexType_det imposto) {
  if (imposto.ICMS != null) {
    final icms = imposto.ICMS!;
    if (icms.ICMS00 != null) {
      return icms.ICMS00!.CST.value;
    }
    if (icms.ICMS10 != null) {
      return icms.ICMS10!.CST.value;
    }
    if (icms.ICMS20 != null) {
      return icms.ICMS20!.CST.value;
    }
    if (icms.ICMS30 != null) {
      return icms.ICMS30!.CST.value;
    }
    if (icms.ICMS40 != null) {
      return icms.ICMS40!.CST.value;
    }
    if (icms.ICMS51 != null) {
      return icms.ICMS51!.CST.value;
    }
    if (icms.ICMS60 != null) {
      return icms.ICMS60!.CST.value;
    }
    if (icms.ICMS70 != null) {
      return icms.ICMS70!.CST.value;
    }
    if (icms.ICMS90 != null) {
      return icms.ICMS90!.CST.value;
    }
    if (icms.ICMSPart != null) {
      return icms.ICMSPart!.CST.value;
    }
    if (icms.ICMSST != null) {
      return icms.ICMSST!.CST.value;
    }
    if (icms.ICMSSN101 != null) {
      return icms.ICMSSN101!.CSOSN.value;
    }
    if (icms.ICMSSN102 != null) {
      return icms.ICMSSN102!.CSOSN.value;
    }
    if (icms.ICMSSN201 != null) {
      return icms.ICMSSN201!.CSOSN.value;
    }
    if (icms.ICMSSN202 != null) {
      return icms.ICMSSN202!.CSOSN.value;
    }
    if (icms.ICMSSN500 != null) {
      return icms.ICMSSN500!.CSOSN.value;
    }
    if (icms.ICMSSN900 != null) {
      return icms.ICMSSN900!.CSOSN.value;
    }
  }
  return null;
}

String? getVBCIcms(impostoComplexType_det imposto) {
  if (imposto.ICMS != null) {
    final icms = imposto.ICMS!;
    if (icms.ICMS00 != null) {
      return icms.ICMS00!.vBC;
    }
    if (icms.ICMS10 != null) {
      return icms.ICMS10!.vBC;
    }
    if (icms.ICMS20 != null) {
      return icms.ICMS20!.vBC;
    }
    if (icms.ICMS30 != null) {
      return icms.ICMS30!.vBCST;
    }
    if (icms.ICMS40 != null) {
      return '0';
    }
    if (icms.ICMS51 != null) {
      return icms.ICMS51!.vBC;
    }
    if (icms.ICMS60 != null) {
      return icms.ICMS60!.vBCSTRet;
    }
    if (icms.ICMS70 != null) {
      return icms.ICMS70!.vBC;
    }
    if (icms.ICMS90 != null) {
      return icms.ICMS90!.vBC;
    }
    if (icms.ICMSPart != null) {
      return icms.ICMSPart!.vBC;
    }
    if (icms.ICMSST != null) {
      return icms.ICMSST!.vBCEfet;
    }
    if (icms.ICMSSN101 != null) {
      return '0';
    }
    if (icms.ICMSSN102 != null) {
      return '0';
    }
    if (icms.ICMSSN201 != null) {
      return '0';
    }
    if (icms.ICMSSN202 != null) {
      return '0';
    }
    if (icms.ICMSSN500 != null) {
      return '0';
    }
    if (icms.ICMSSN900 != null) {
      return '0';
    }
  }
  return null;
}

String? getVICMS(impostoComplexType_det imposto) {
  if (imposto.ICMS != null) {
    final icms = imposto.ICMS!;
    if (icms.ICMS00 != null) {
      return icms.ICMS00!.vICMS;
    }
    if (icms.ICMS10 != null) {
      return icms.ICMS10!.vICMS;
    }
    if (icms.ICMS20 != null) {
      return icms.ICMS20!.vICMS;
    }
    if (icms.ICMS30 != null) {
      return icms.ICMS30!.vICMSST;
    }
    if (icms.ICMS40 != null) {
      return '0';
    }
    if (icms.ICMS51 != null) {
      return icms.ICMS51!.vICMS;
    }
    if (icms.ICMS60 != null) {
      return icms.ICMS60!.vICMSSTRet;
    }
    if (icms.ICMS70 != null) {
      return icms.ICMS70!.vICMS;
    }
    if (icms.ICMS90 != null) {
      return icms.ICMS90!.vICMS;
    }
    if (icms.ICMSPart != null) {
      return icms.ICMSPart!.vICMS;
    }
    if (icms.ICMSST != null) {
      return icms.ICMSST!.vICMSEfet;
    }
    if (icms.ICMSSN101 != null) {
      return '0';
    }
    if (icms.ICMSSN102 != null) {
      return '0';
    }
    if (icms.ICMSSN201 != null) {
      return '0';
    }
    if (icms.ICMSSN202 != null) {
      return '0';
    }
    if (icms.ICMSSN500 != null) {
      return '0';
    }
    if (icms.ICMSSN900 != null) {
      return '0';
    }
  }
  return null;
}

String? getPICMS(impostoComplexType_det imposto) {
  if (imposto.ICMS != null) {
    final icms = imposto.ICMS!;
    if (icms.ICMS00 != null) {
      return icms.ICMS00!.pICMS;
    }
    if (icms.ICMS10 != null) {
      return icms.ICMS10!.pICMS;
    }
    if (icms.ICMS20 != null) {
      return icms.ICMS20!.pICMS;
    }
    if (icms.ICMS30 != null) {
      return icms.ICMS30!.pICMSST;
    }
    if (icms.ICMS40 != null) {
      return '0';
    }
    if (icms.ICMS51 != null) {
      return icms.ICMS51!.pICMS;
    }
    if (icms.ICMS60 != null) {
      return icms.ICMS60!.pICMSEfet;
    }
    if (icms.ICMS70 != null) {
      return icms.ICMS70!.pICMS;
    }
    if (icms.ICMS90 != null) {
      return icms.ICMS90!.pICMS;
    }
    if (icms.ICMSPart != null) {
      return icms.ICMSPart!.pICMS;
    }
    if (icms.ICMSST != null) {
      return icms.ICMSST!.pICMSEfet;
    }
    if (icms.ICMSSN101 != null) {
      return '0';
    }
    if (icms.ICMSSN102 != null) {
      return '0';
    }
    if (icms.ICMSSN201 != null) {
      return '0';
    }
    if (icms.ICMSSN202 != null) {
      return '0';
    }
    if (icms.ICMSSN500 != null) {
      return '0';
    }
    if (icms.ICMSSN900 != null) {
      return '0';
    }
  }
  return null;
}

String? getVIPI(impostoComplexType_det imposto) {
  if (imposto.IPI != null) {
    final ipi = imposto.IPI!;
    if (ipi.IPITrib != null) {
      return ipi.IPITrib!.vIPI;
    }
  }
  return null;
}

String? getPIPI(impostoComplexType_det imposto) {
  if (imposto.IPI != null) {
    final ipi = imposto.IPI!;
    if (ipi.IPITrib != null) {
      return ipi.IPITrib!.pIPI;
    }
  }
  return null;
}

pw.Widget getTextBloco(
    String? text, {
      final pw.Widget? content,
      final double fontSize = 5,
      final bool bold = false,
      final pw.Widget? textWidget,
      final bool center = false,
    }) {
  return pw.Container(
    decoration: pw.BoxDecoration(
        border: pw.Border.all(
          color: PdfColors.black,
          width: 1,
        )),
    child: pw.Padding(
      padding: pw.EdgeInsets.all(2),
      child: pw.Column(
          crossAxisAlignment: center
              ? pw.CrossAxisAlignment.center
              : pw.CrossAxisAlignment.start,
          children: [
            if (textWidget != null) textWidget,
            if (text != null) textContent(text, fontSize: fontSize, bold: bold),
            if (content != null) pw.Expanded(child: content),
          ]),
    ),
  );
}

pw.Widget textContent(
    String text, {
      final double fontSize = 10,
      final bool bold = false,
      int? maxLength,
      bool center = false,
    }) {
  return pw.Text(
    maxLength != null
        ? cutString(text.toUpperCase(), maxLength)
        : text.toUpperCase(),
    textAlign: center ? pw.TextAlign.center : null,
    softWrap: true,
    tightBounds: true,
    style: pw.TextStyle(
      fontSize: fontSize,
      font: bold ? pw.Font.timesBold() : pw.Font.times(),
    ),
  );
}

pw.Widget freteContent(
    String text, {
      final double fontSize = 10,
      final bool bold = false,
      int? maxLength,
    }) {
  switch (text) {
    case '0':
      text = '0 - REM. (CIF)';
      break;
    case '1':
      text = '1 - DEST. (FOB)';
      break;
    case '2':
      text = '2 - TERC.';
      break;
    case '3':
      text = '3 - PROP./REM.';
      break;
    case '4':
      text = '4 - PROP./DEST.';
      break;
    case '9':
      text = '9 - SEM FRETE';
      break;
    default:
      text = '';
  }
  return pw.Text(
    maxLength != null
        ? cutString(text.toUpperCase(), maxLength)
        : text.toUpperCase(),
    style: pw.TextStyle(
      fontSize: fontSize,
      font: bold ? pw.Font.timesBold() : pw.Font.times(),
    ),
  );
}

pw.Widget moneyContent(
    String value, {
      final double fontSize = 10,
      final bool bold = false,
    }) {
  return pw.Align(
    alignment: pw.Alignment.centerRight,
    child: pw.Text(
      parseMoney(value),
      textAlign: pw.TextAlign.right,
      style: pw.TextStyle(
        fontSize: fontSize,
        font: bold ? pw.Font.timesBold() : pw.Font.times(),
      ),
    ),
  );
}

pw.Widget positionedBox({
  required double top,
  required double left,
  required double width,
  required double height,
  required pw.Widget child,
}) {
  return pw.Positioned(
    top: cmToPixel(top),
    left: cmToPixel(left),
    child: pw.SizedBox(
      width: cmToPixel(width),
      height: cmToPixel(height),
      child: child,
    ),
  );
}
