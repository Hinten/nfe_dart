import 'package:test/test.dart';
import 'package:nfe_client/src/schemas/utils.dart';

void main() {
  group('removerCharRestrito', () {
    test('should escape XML special characters', () {
      // Caracteres especiais do XML devem ser escapados
      expect(removerCharRestrito('Teste & teste'), 'Teste &amp; teste');
      expect(removerCharRestrito('Valor < 100'), 'Valor &lt; 100');
      expect(removerCharRestrito('Valor > 50'), 'Valor &gt; 50');
      expect(removerCharRestrito('Ele disse "olá"'), 'Ele disse &quot;olá&quot;');
      expect(removerCharRestrito("L'amour"), 'L&#39;amour');
    });

    test('should handle combined XML special characters', () {
      // Múltiplos caracteres especiais na mesma string
      expect(
        removerCharRestrito('Nome: "João & Maria" <email@test.com>'),
        'Nome: &quot;João &amp; Maria&quot; &lt;emailtest.com&gt;',
      );
    });

    test('should remove problematic special characters', () {
      // Caracteres que devem ser removidos completamente
      expect(removerCharRestrito('Email: test@example.com'), 'Email: testexample.com');
      expect(removerCharRestrito('Desconto 10%'), 'Desconto 10');
      expect(removerCharRestrito('Item #123'), 'Item 123');
      expect(removerCharRestrito(r'Preço $50,00'), r'Preço 50,00');
      expect(removerCharRestrito('3 * 5 = 15'), '3 5 15');
      expect(removerCharRestrito('Art. 5º, §2ª'), 'Art. 5, 2');
    });

    test('should remove line breaks and tabs', () {
      expect(removerCharRestrito('Linha 1\nLinha 2'), 'Linha 1 Linha 2');
      expect(removerCharRestrito('Linha 1\r\nLinha 2'), 'Linha 1 Linha 2');
      expect(removerCharRestrito('Col1\tCol2'), 'Col1 Col2');
      expect(removerCharRestrito('Multi\n\nLine\n\n\nText'), 'Multi Line Text');
    });

    test('should remove control characters', () {
      // Caracteres de controle Unicode (U+0000 a U+001F)
      expect(removerCharRestrito('Teste\x01\x02\x03'), 'Teste');
      expect(removerCharRestrito('Valor\x00null'), 'Valornull');
    });

    test('should remove multiple consecutive spaces', () {
      expect(removerCharRestrito('Teste    com    espaços'), 'Teste com espaços');
      expect(removerCharRestrito('   Espaços no início e fim   '), 'Espaços no início e fim');
    });

    test('should handle empty and null-like strings', () {
      expect(removerCharRestrito(''), '');
      expect(removerCharRestrito('   '), '');
      expect(removerCharRestrito('\n\t  \r\n'), '');
    });

    test('should handle real-world customer names', () {
      // Nomes reais com caracteres problemáticos
      expect(
        removerCharRestrito('João & Maria Ltda.'),
        'João &amp; Maria Ltda.',
      );
      expect(
        removerCharRestrito('Empresa "XYZ" S/A'),
        'Empresa &quot;XYZ&quot; S/A',  // / é permitido
      );
      expect(
        removerCharRestrito('Comércio de Produtos* Diversos'),
        'Comércio de Produtos Diversos',
      );
    });

    test('should handle real-world addresses', () {
      // Endereços com caracteres problemáticos
      expect(
        removerCharRestrito('Rua Dr. João, 123 - Apto. 45'),
        'Rua Dr. João, 123 - Apto. 45',  // - é permitido
      );
      expect(
        removerCharRestrito('Av. Principal, nº 500'),
        'Av. Principal, n 500',
      );
      expect(
        removerCharRestrito('Complemento: Apto 301, Bloco "A"'),
        'Complemento: Apto 301, Bloco &quot;A&quot;',  // : é permitido
      );
    });

    test('should handle special symbols and marks', () {
      // Símbolos especiais que devem ser removidos
      expect(removerCharRestrito('Marca®'), 'Marca');
      expect(removerCharRestrito('Copyright©'), 'Copyright');
      expect(removerCharRestrito('Produto™'), 'Produto');
      expect(removerCharRestrito('Pipe | teste'), 'Pipe teste');
      expect(removerCharRestrito('Barra\\invertida'), 'Barrainvertida');
    });

    test('should handle bullet points and special punctuation', () {
      // Marcadores de lista e pontuação especial que devem ser removidos
      expect(removerCharRestrito('Item • teste'), 'Item teste');
      expect(removerCharRestrito('Lista: ◦ A ◦ B'), 'Lista: A B');
      expect(removerCharRestrito('Ponto ‣ Item'), 'Ponto Item');
      expect(removerCharRestrito('Hífen ⁃ texto'), 'Hífen texto');
      expect(removerCharRestrito('Reticências…'), 'Reticências');
      expect(removerCharRestrito('Middle · dot'), 'Middle dot');
      
      // Endereço real do problema reportado
      expect(
        removerCharRestrito('601 até às 17:30hs/2•à 6•feira'),
        '601 até às 17:30hs/2à 6feira',
      );
    });

    test('should handle brackets and braces', () {
      expect(removerCharRestrito('[Item]'), 'Item');
      expect(removerCharRestrito('{Valor}'), 'Valor');
      expect(removerCharRestrito('Teste [123] valor'), 'Teste 123 valor');
    });

    test('should handle mathematical symbols', () {
      expect(removerCharRestrito('2 + 2 = 4'), '2 2 4');
      expect(removerCharRestrito('A~B'), 'AB');
      expect(removerCharRestrito('X^2'), 'X2');
      expect(removerCharRestrito('Under_score'), 'Underscore');
    });

    test('should preserve allowed punctuation', () {
      // Pontuação permitida deve ser mantida
      expect(removerCharRestrito(r'Valor: R$ 1.234,56'), r'Valor: R 1.234,56');
      expect(removerCharRestrito('Item (A)'), 'Item (A)');
      expect(removerCharRestrito('Ponto. Vírgula; Dois:pontos'), 'Ponto. Vírgula; Dois:pontos');  // : é permitido
    });

    test('should handle complex real-world scenarios', () {
      // Cenários complexos combinando vários problemas
      const input = '''
Nome: "João & Cia" <joao@email.com>
Endereço: Rua Dr. Pedro*, nº 123 - Apto. 45-B
Obs: Item #456 | Desconto 10% | Preço \$100
''';
      final result = removerCharRestrito(input);
      
      // Verifica que o resultado não contém caracteres problemáticos
      expect(result.contains('@'), false);
      expect(result.contains('#'), false);
      expect(result.contains('%'), false);
      expect(result.contains('*'), false);
      expect(result.contains('|'), false);
      expect(result.contains('\$'), false);
      expect(result.contains('\n'), false);
      
      // Verifica que & foi escapado
      expect(result.contains('&amp;'), true);
      // Verifica que aspas foram escapadas
      expect(result.contains('&quot;'), true);
    });

    test('should handle order of operations correctly', () {
      // Verifica que & é tratado primeiro para não afetar outras substituições
      const input = 'A & B < C > D';
      final result = removerCharRestrito(input);
      expect(result, 'A &amp; B &lt; C &gt; D');
      
      // Não deve haver &amp;lt; (duplo escape)
      expect(result.contains('&amp;lt;'), false);
      expect(result.contains('&amp;gt;'), false);
    });
  });

  group('undoRemoverCharRestrito', () {
    test('should reverse XML entity escaping', () {
      expect(undoRemoverCharRestrito('Teste &amp; teste'), 'Teste & teste');
      expect(undoRemoverCharRestrito('Valor &lt; 100'), 'Valor < 100');
      expect(undoRemoverCharRestrito('Valor &gt; 50'), 'Valor > 50');
      expect(undoRemoverCharRestrito('Disse &quot;olá&quot;'), 'Disse "olá"');
      expect(undoRemoverCharRestrito('L&#39;amour'), "L'amour");
    });

    test('should handle alternative apostrophe entities', () {
      // Diferentes formas de representar apostrofo
      expect(undoRemoverCharRestrito("L&#39;amour"), "L'amour");
      expect(undoRemoverCharRestrito("L&#x27;amour"), "L'amour");
      expect(undoRemoverCharRestrito("L&apos;amour"), "L'amour");
    });

    test('should handle combined entities', () {
      const escaped = 'Nome: &quot;João &amp; Maria&quot; &lt;email&gt;';
      const unescaped = 'Nome: "João & Maria" <email>';
      expect(undoRemoverCharRestrito(escaped), unescaped);
    });

    test('should handle entities in correct order to avoid double-unescape', () {
      // Testa que &amp; é processado por último
      const text = '&amp;lt; &amp;gt; &amp;quot;';
      final result = undoRemoverCharRestrito(text);
      // Deve resultar em &lt; &gt; &quot; (não < > ")
      expect(result, '&lt; &gt; &quot;');
    });

    test('should be reverse of removerCharRestrito for XML chars', () {
      // Para caracteres XML, deve ser possível reverter
      const original = 'A & B < C > D "E"';
      final escaped = removerCharRestrito(original);
      final unescaped = undoRemoverCharRestrito(escaped);
      
      // Nota: caracteres removidos (como @, #, etc) não podem ser recuperados
      // mas caracteres XML escapados podem
      expect(unescaped, 'A & B < C > D "E"');
    });

    test('should handle empty and simple strings', () {
      expect(undoRemoverCharRestrito(''), '');
      expect(undoRemoverCharRestrito('Simple text'), 'Simple text');
      expect(undoRemoverCharRestrito('No entities here'), 'No entities here');
    });

    test('should demonstrate that removed chars cannot be recovered', () {
      // Caracteres removidos não podem ser recuperados
      const original = 'Email: test@example.com | Item #123';
      final sanitized = removerCharRestrito(original);
      final reversed = undoRemoverCharRestrito(sanitized);
      
      // @ # | foram removidos e não podem ser recuperados
      expect(reversed.contains('@'), false);
      expect(reversed.contains('#'), false);
      expect(reversed.contains('|'), false);
      
      // Mas o texto básico deve estar presente
      expect(reversed.contains('Email'), true);
      expect(reversed.contains('test'), true);
      expect(reversed.contains('example'), true);
    });

    test('should work with real-world NFe data', () {
      // Simula dados que passaram por removerCharRestrito
      const nfeData = 'Cliente: João &amp; Maria Ltda. &lt;MATRIZ&gt; - Rua: &quot;Principal&quot;';
      final unescaped = undoRemoverCharRestrito(nfeData);
      
      expect(unescaped, 'Cliente: João & Maria Ltda. <MATRIZ> - Rua: "Principal"');
      expect(unescaped.contains('&amp;'), false);
      expect(unescaped.contains('&lt;'), false);
      expect(unescaped.contains('&gt;'), false);
      expect(unescaped.contains('&quot;'), false);
    });
  });

  group('removerNaoAlfaNumericos', () {
    test('should keep only alphanumeric characters and spaces', () {
      expect(removerNaoAlfaNumericos('ABC123'), 'ABC123');
      expect(removerNaoAlfaNumericos('Teste 123'), 'Teste 123');
      expect(removerNaoAlfaNumericos('Test-123_ABC'), 'Test123ABC');
    });

    test('should remove all special characters', () {
      expect(removerNaoAlfaNumericos(r'!@#$%^&*()'), '');
      expect(removerNaoAlfaNumericos('Rua Dr Joao 123'), 'Rua Dr Joao 123');  // sem pontuação
      expect(removerNaoAlfaNumericos('IE: 123.456.789-00'), 'IE 12345678900');
    });

    test('should handle null input', () {
      expect(removerNaoAlfaNumericos(null), null);
    });

    test('should handle empty string', () {
      expect(removerNaoAlfaNumericos(''), '');
    });

    test('should preserve case', () {
      expect(removerNaoAlfaNumericos('AbCdEf123'), 'AbCdEf123');
    });
  });

  group('Integration tests', () {
    test('should sanitize complete customer data for NFe', () {
      // Simula dados de cliente com vários problemas
      const customerName = 'João & Maria "Comércio" Ltda. <MATRIZ>';
      const address = 'Rua Dr. Pedro*, nº 123 - Apto. 45-B, Bloco "C"';
      const complement = 'Próximo ao Shopping\nReferência: Igreja São José';
      
      // Remove acentos (seria feito por removerAcentos do global)
      // e depois remove caracteres restritos
      final sanitizedName = removerCharRestrito(customerName);
      final sanitizedAddress = removerCharRestrito(address);
      final sanitizedComplement = removerCharRestrito(complement);
      
      // Verifica que não há caracteres problemáticos
      for (final text in [sanitizedName, sanitizedAddress, sanitizedComplement]) {
        expect(text.contains('\n'), false, reason: 'Should not contain newlines');
        expect(text.contains('\r'), false, reason: 'Should not contain carriage returns');
        expect(text.contains('@'), false, reason: 'Should not contain @');
        expect(text.contains('#'), false, reason: 'Should not contain #');
        expect(text.contains('%'), false, reason: 'Should not contain %');
        expect(text.contains('*'), false, reason: 'Should not contain *');
        expect(text.contains('  '), false, reason: 'Should not contain double spaces');
      }
      
      // Verifica que caracteres XML foram escapados
      expect(sanitizedName.contains('&amp;'), true);
      expect(sanitizedName.contains('&quot;'), true);
      expect(sanitizedName.contains('&lt;'), true);
      expect(sanitizedName.contains('&gt;'), true);
    });

    test('should handle product descriptions', () {
      // Descrição de produto com problemas comuns
      const description = '''
PRODUTO XYZ - Modelo "Premium"*
Características: 100% algodão | Tam. G
Obs: Item #12345 | 20% OFF
''';
      
      final sanitized = removerCharRestrito(description);
      
      // Verifica remoção de caracteres problemáticos
      expect(sanitized.contains('\n'), false);
      expect(sanitized.contains('#'), false);
      expect(sanitized.contains('%'), false);
      expect(sanitized.contains('*'), false);
      expect(sanitized.contains('|'), false);
      
      // Verifica escape de aspas
      expect(sanitized.contains('&quot;'), true);
      
      // Verifica que texto ainda é legível
      expect(sanitized.contains('PRODUTO XYZ'), true);
      expect(sanitized.contains('Premium'), true);
    });
  });
}
