import 'package:intl/intl.dart' show DateFormat;

/// Remove caracteres restritos da NFe conforme especificação da SEFAZ.
/// 
/// A NFe exige que o XML siga o padrão TString que não aceita:
/// - Caracteres especiais do XML que precisam ser escapados: <, >, &, ", '
/// - Outros caracteres problemáticos: @, #, %, *, \, $, £, ª, §, ©, etc.
/// - Marcadores de lista e caracteres especiais de pontuação: •, ◦, ‣, ⁃, …, etc.
/// - Quebras de linha e tabulações
/// - Caracteres de controle Unicode (U+0000 a U+001F exceto tab/newline já tratados)
/// 
/// Caracteres permitidos (mantidos): números, letras, espaços, pontuação básica (. , - / : ; ( ))
/// 
/// Referências:
/// - Manual de Orientação do Contribuinte NFe versão 7.0 (item 3.2)
/// - Schema XSD da SEFAZ (tipo TString)
/// - https://mothereff.in/html-entities
String removerCharRestrito(String texto) {
  // Estratégia: processar caractere por caractere para ter controle preciso
  final buffer = StringBuffer();
  int i = 0;
  
  while (i < texto.length) {
    final char = texto[i];
    
    // Verifica se estamos no início de uma entidade HTML já existente
    if (char == '&' && i + 1 < texto.length) {
      // Procura o fim da entidade (;)
      int endPos = texto.indexOf(';', i);
      if (endPos != -1 && endPos - i < 10) {  // Entidades HTML típicas têm menos de 10 chars
        final entity = texto.substring(i, endPos + 1);
        // Se parece com uma entidade, mantém ela
        if (RegExp(r'^&[a-z]+;|^&#\d+;|^&#x[0-9A-Fa-f]+;').hasMatch(entity)) {
          buffer.write(entity);
          i = endPos + 1;
          continue;
        }
      }
      // Se não é uma entidade reconhecida, escapa o &
      buffer.write('&amp;');
      i++;
      continue;
    }
    
    // Caracteres XML que devem ser escapados
    if (char == '<') {
      buffer.write('&lt;');
    } else if (char == '>') {
      buffer.write('&gt;');
    } else if (char == '"') {
      buffer.write('&quot;');
    } else if (char == "'") {
      buffer.write('&#39;');
    }
    // Quebras de linha, tabs e retornos de carro → espaço
    else if (char == '\n' || char == '\r' || char == '\t') {
      // Se o último caractere no buffer não for espaço, adiciona um
      if (buffer.isEmpty || buffer.toString()[buffer.length - 1] != ' ') {
        buffer.write(' ');
      }
    }
    // Caracteres de controle Unicode (U+0000 a U+001F, exceto os já tratados)
    else if (char.codeUnitAt(0) >= 0x00 && char.codeUnitAt(0) <= 0x1F) {
      // Remove (não adiciona ao buffer)
    }
    // Caracteres que devem ser completamente removidos
    else if (char == '@' || char == '#' || char == '%' || char == '*' || 
             char == '\$' || char == '£' || char == '§' || char == 'ª' || 
             char == 'º' || char == '©' || char == '®' || char == '™' ||
             char == '|' || char == '\\' || char == '~' || char == '^' ||
             char == '`' || char == '[' || char == ']' || char == '{' ||
             char == '}' || char == '=' || char == '+' || char == '_' ||
             char == '•' || char == '◦' || char == '‣' || char == '⁃' ||
             char == '·' || char == '․' || char == '‥' || char == '…') {
      // Remove (não adiciona ao buffer)
    }
    // Todos os outros caracteres são mantidos (números, letras, espaços, pontuação permitida)
    else {
      buffer.write(char);
    }
    
    i++;
  }
  
  // Remove múltiplos espaços consecutivos e espaços no início/fim
  return buffer.toString()
      .replaceAll(RegExp(r'\s{2,}'), ' ')
      .trim();
}

/// Desfaz a transformação de caracteres restritos (para testes ou debug).
/// 
/// Reconverte as entidades HTML de volta para caracteres originais.
/// Esta função é útil para:
/// - Testes automatizados
/// - Debug e validação
/// - Reversão de transformações quando necessário
/// 
/// IMPORTANTE: Esta função só consegue reverter os caracteres que foram
/// ESCAPADOS (convertidos para entidades HTML). Caracteres que foram
/// REMOVIDOS por removerCharRestrito() não podem ser recuperados.
/// 
/// Exemplos:
/// - `&lt;` → `<` (pode ser revertido)
/// - `@` foi removido → não pode ser recuperado
String undoRemoverCharRestrito(String texto) {
  // Processa as entidades HTML na ordem correta
  // IMPORTANTE: &amp; deve ser processado por último para evitar double-unescape
  return texto
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&quot;', '"')
      .replaceAll('&#39;', "'")
      .replaceAll('&#x27;', "'")  // Variante hexadecimal de apostrofo
      .replaceAll('&apos;', "'")  // Variante alternativa de apostrofo
      .replaceAll('&amp;', '&');  // & deve ser último para não afetar outras substituições
}

String? removerNaoAlfaNumericos(String? input) {
  if (input == null) return null;
  return input.replaceAll(RegExp(r'[^a-zA-Z0-9 ]'), '');
}


String formatarDataNFe(DateTime data) {
  final _f = DateFormat('yyyy-MM-ddTHH:mm:ss+00:00');
  return _f.format(data.toUtc());
}

String formatarDataLocal(DateTime data) {
  final _f = DateFormat.yMd();
  return _f.format(data);
}

String formatarDataLocalMiliseconds(int data) {
  final _f = DateFormat.yMd();
  return _f.format(DateTime.fromMillisecondsSinceEpoch(data));
}