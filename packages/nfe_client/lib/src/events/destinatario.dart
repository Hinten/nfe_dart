
// pagina 29 do manual

// pagina 32 do manual
// O destinatário poderá enviar uma única mensagem de Confirmação da Operação, Desconhecimento
// da Operação ou Operação não Realizada, valendo apenas a última mensagem registrada. Exemplo:
// o destinatário pode desconhecer uma operação que havia confirmado
// inicialmente ou confirmar uma operação que havia desconhecido inicialmente.
// O evento de “Ciência da Emissão” não configura a manifestação final do destinatário, portanto não
// cabe o registro deste evento após a manifestação final do destinatário.
// Os demais eventos representam uma manifestação conclusiva do destinatário sobre a operação
// representada pela NF-e

class ConfirmacaoDaOperacao{
  // pagina 32 do manual
  //O evento de “Confirmação da Operação” pelo destinatário confirma a operação e o recebimento da
  // mercadoria (para as operações com circulação de mercadoria). Se ocorrer a devolução total ou
  // parcial das mercadorias, além do procedimento atual de geração da Nota Fiscal de devolução,
  // também poderá ser comandado o evento da “Confirmação da Operação”.
  //
  // O registro deste evento libera a possibilidade da empresa efetuar o download da NF-e, conforme
  // especificado no “Serviço de Distribuição”.
  //
  // Nota: Após a Confirmação da Operação pelo destinatário, a empresa emitente fica automaticamente
  // impedida de cancelar a NF-e.

}

class DesconhecimentoDaOperacao{
  // pagina 32 do manual
  // Uma empresa pode ficar sabendo das operações destinadas a um determinado CNPJ/CPF
  // consultando o “Serviço de Consulta da Relação de Documentos Destinados” ao seu CNPJ/CPF. O
  // evento de “Desconhecimento da Operação” permite ao destinatário informar o seu desconhecimento
  // de uma determinada operação que conste nesta relação, por exemplo.
}

class OperacaoNaoRealizada{
  // pagina 32 do manual
  // Em algumas situações, a empresa destinatária informa que a operação não foi realizada (com
  // Recusa de Recebimento da mercadoria e outros motivos), não cabendo neste caso a emissão de
  // uma Nota Fiscal de devolução. Este evento permite o registro da declaração de Operação não
  // Realizada pelo destinatário, permitindo também a informação complementar da justificativa desta
  // informação.
}

class CienciaDaOperacaoOuEmissao{
  // pagina 32 do manual
  // Neste evento, o destinatário declara ter ciência sobre uma determinada operação destinada ao seu
  // CNPJ ou CPF, mas não possui elementos suficientes para apresentar a sua manifestação conclusiva
  // sobre a operação citada.
  // O evento de “Ciência da Emissão” é um evento opcional e pode ser evitado, já que normalmente o
  // destinatário da NF-e deve possuir o arquivo XML da NF-e enviado e/ou disponibilizado pelo emitente.
  // Após um período determinado, todas as operações com “Ciência da Emissão” deverão
  // obrigatoriamente ter a manifestação final do destinatário declarada em um dos eventos de
  // Confirmação da Operação, Desconhecimento ou Operação não Realizada.
}



