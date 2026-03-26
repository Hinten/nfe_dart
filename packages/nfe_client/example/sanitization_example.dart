/// Example demonstrating the NFe character sanitization functionality.
///
/// This example shows how the sanitization functions handle various problematic
/// characters that are not compatible with the NFe (Nota Fiscal Eletrônica) schema.

import 'package:nfe_client/src/schemas/utils.dart';

/// Removes diacritics (accents) from a string.
/// In production you can use the `diacritic` pub package for this.
String _removeAccents(String str) {
  const accented =
      'ÀÁÂÃÄÅàáâãäåÈÉÊËèéêëÌÍÎÏìíîïÒÓÔÕÖòóôõöÙÚÛÜùúûüÝýÿÇçÑñ';
  const plain =
      'AAAAAAaaaaaEEEEeeeeIIIIiiiiOOOOOoooooUUUUuuuuYyyÇcNn';
  // Simple character-by-character replacement for the example.
  final result = StringBuffer();
  for (final ch in str.runes) {
    final idx = accented.runes.toList().indexOf(ch);
    result.write(idx >= 0 ? String.fromCharCode(plain.runes.elementAt(idx)) : String.fromCharCode(ch));
  }
  return result.toString();
}

void main() {
  print('=== NFe Character Sanitization Examples ===\n');

  // Example 1: Customer name with special characters
  print('1. Customer Names:');
  final customerName = 'João & Maria "Comércio" Ltda. <MATRIZ>';
  print('   Input:  $customerName');
  // First remove accents, then remove restricted chars
  final sanitizedName = removerCharRestrito(_removeAccents(customerName));
  print('   Output: $sanitizedName');
  print('   Result: Safe for NFe ✓\n');

  // Example 2: Address with problematic characters
  print('2. Address with Special Characters:');
  final address = 'Rua Dr. Pedro*, nº 123 - Apto. 45-B, Bloco "C"';
  print('   Input:  $address');
  final sanitizedAddress = removerCharRestrito(_removeAccents(address));
  print('   Output: $sanitizedAddress');
  print('   Result: * and º removed, " escaped, accents removed ✓\n');

  // Example 3: Product description with various issues
  print('3. Product Description:');
  final description = '''
PRODUTO XYZ - Modelo "Premium"*
Características: 100% algodão | Tam. G
Obs: Item #12345 | 20% OFF | Preço \$100
''';
  print('   Input:  ${description.replaceAll('\n', '\\n')}');
  final sanitizedDesc = removerCharRestrito(_removeAccents(description));
  print('   Output: $sanitizedDesc');
  print('   Result: Line breaks → spaces, #%*|@ removed, " escaped ✓\n');

  // Example 4: Additional information with email and symbols
  print('4. Additional Information:');
  final infoCpl = 'Contato: João <joao@email.com> | Tel: (11) 99999-9999';
  print('   Input:  $infoCpl');
  final sanitizedInfo = removerCharRestrito(_removeAccents(infoCpl));
  print('   Output: $sanitizedInfo');
  print('   Result: @ and < > escaped/removed, | removed ✓\n');

  // Example 5: XML special characters
  print('5. XML Special Characters:');
  final xmlChars = 'A & B < C > D "E" \'F\'';
  print('   Input:  $xmlChars');
  final sanitizedXml = removerCharRestrito(xmlChars);
  print('   Output: $sanitizedXml');
  print('   Result: All XML chars properly escaped ✓\n');

  // Example 6: Control characters and line breaks
  print('6. Control Characters and Line Breaks:');
  final controlChars = 'Line 1\nLine 2\r\nLine 3\tTab\x01\x02Control';
  print('   Input:  ${controlChars.replaceAll('\n', '\\n').replaceAll('\r', '\\r').replaceAll('\t', '\\t')}');
  final sanitizedControl = removerCharRestrito(controlChars);
  print('   Output: $sanitizedControl');
  print('   Result: All converted to single spaces, control chars removed ✓\n');

  print('=== Summary ===');
  print('The sanitization process:');
  print('1. Escapes XML special characters: & < > " \'');
  print('2. Removes problematic chars: @ # % * \$ £ § ª º © ® ™ | \\ ~ ^ ` [ ] { } = + _');
  print('3. Converts line breaks and tabs to spaces');
  print('4. Removes control characters');
  print('5. Preserves: letters, numbers, spaces, . , - / : ; ( )');
  print('\nRemember: Always use _removeAccents() first to remove accents!');
}
