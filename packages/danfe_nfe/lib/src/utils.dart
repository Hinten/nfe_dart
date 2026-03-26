import 'package:intl/intl.dart' show DateFormat, NumberFormat;
import 'package:pdf/pdf.dart';

final D = DateFormat('d/M/y');
final H = DateFormat('HH:mm');
final Hs = DateFormat('HH:mm:ss');
final f = NumberFormat.currency(
  locale: 'pt_BR',
  symbol: '',
  decimalDigits: 2,
);

String formatDateTimeFromNFe(String dateTime) {
  final date = DateTime.parse(dateTime);
  return D.format(date.toLocal());
}

String formatHoraFromNFe(String dateTime) {
  final date = DateTime.parse(dateTime);
  return H.format(date.toLocal());
}
String formatHoraMinutoSegundoFromNFe(String dateTime) {
  final date = DateTime.parse(dateTime);
  return Hs.format(date.toLocal());
}


double cmToPixel(double cm) {
  return cm * PdfPageFormat.cm;
}

String cutString(String value, int length) {
  if (value.length > length) {
    return value.substring(0, length);
  }
  return value;
}

String parseMoney(String value) {
  if (value.isEmpty) return value;
  final number = double.parse(value);
  return f.format(number).trim();
}

String formatarNNF(String nnf) {
  nnf = nnf.padLeft(9, '0');
  return '${nnf.substring(0, 3)}.${nnf.substring(3, 6)}.${nnf.substring(6, 9)}';
}

String formataChaveDeAcesso(String value){
  final chnfe = value.replaceAll(RegExp(r'\D'), '');
  return '${chnfe.substring(0, 4)} ${chnfe.substring(4, 8)} ${chnfe.substring(8, 12)} ${chnfe.substring(12, 16)} ${chnfe.substring(16, 20)} ${chnfe.substring(20, 24)} ${chnfe.substring(24, 28)} ${chnfe.substring(28, 32)} ${chnfe.substring(32, 36)} ${chnfe.substring(36, 40)} ${chnfe.substring(40, 44)}';
}
/// Formats a CPF (11 digits) or CNPJ (14 digits) document number.
String formatarCpfCnpj(String value) {
  if (value.isEmpty) return value;
  if (value.length <= 11) {
    return value.splitMapJoin(
      RegExp(r'(\d{3})(\d{3})(\d{3})(\d{2})'),
      onMatch: (m) => '${m[1]}.${m[2]}.${m[3]}-${m[4]}',
    );
  } else {
    return value.splitMapJoin(
      RegExp(r'(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})'),
      onMatch: (m) => '${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}',
    );
  }
}

/// Formats a Brazilian postal code (CEP) as XXXXX-XXX.
String formatarCep(String value) {
  if (value.length == 8) {
    return value.splitMapJoin(
      RegExp(r'(\d{5})(\d{3})'),
      onMatch: (m) => '${m[1]}-${m[2]}',
    );
  }
  return value;
}

/// Formats a Brazilian phone number.
String formatarTelefone(String value) {
  if (value.length == 10) {
    return value.splitMapJoin(
      RegExp(r'(\d{2})(\d{4})(\d{4})'),
      onMatch: (m) => '(${m[1]}) ${m[2]}-${m[3]}',
    );
  } else if (value.length == 11) {
    return value.splitMapJoin(
      RegExp(r'(\d{2})(\d{5})(\d{4})'),
      onMatch: (m) => '(${m[1]}) ${m[2]}-${m[3]}',
    );
  }
  return value;
}
