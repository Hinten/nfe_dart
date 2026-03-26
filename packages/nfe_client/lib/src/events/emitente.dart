

// pagina 28 do manual
class CartaDeCorrecao{}

class Cancelamento{}

class CancelamentoPorSubstituicao{}

class EPEC_EmissaoEmContingencia{
  // pagina 36 do manual
  //  emissão do EPEC poderá ser adotada por qualquer emissor que esteja impossibilitado de
  // transmissão e/ou recepção das autorizações de uso de suas NF-e, adotando os seguintes passos:
  // • Gerar a NF-e com “tpEmis = 4”, mantendo também a informação do motivo de entrada em
  // contingência com data e hora do início da contingência, com número diferente de qualquer NF-e
  // que tenha sido transmitida com outro “tpEmis”;
  // • Gerar o arquivo XML do EPEC com as seguintes informações da NF-e:
  // o UF, CNPJ e Inscrição Estadual do emitente;
  // o Chave de Acesso;
  // o UF e CNPJ ou CPF do destinatário;
  // o Valor Total da NF-e, Valor Total do ICMS e Valor Total do ICMS-ST;
  // o Outras informações constantes no leiaute.
  // • Assinar o arquivo com o certificado digital do emitente;
  // • Enviar o arquivo XML do EPEC para o Web Service de Registro de Eventos do AN;
  // • Impressão do DANFE da NF-e que consta do EPEC, em papel comum, constando no corpo a
  //   expressão “DANFE impresso em contingência – EPEC regularmente recebida pela Receita
  //   Federal do Brasil”

  // Obtida a autorização do Evento (Número do Protocolo: 891xxxxxxxxxxxx), a exemplo do que ocorre
  // com outros eventos da NF-e, este evento também será distribuído para as UF envolvidas na
  // operação, inclusive para a própria UF do emitente.
  // Após a cessação dos problemas técnicos que impediam a transmissão da NF-e para UF de origem, a
  // NF-e que deu origem a necessidade de uso da Contingência Eletrônica “EPEC” deverá ser
  // transmitida para a SEFAZ de origem, observando o prazo limite de transmissão na legislação, bem
  // como outros procedimentos constantes na legislação caso ocorra rejeição na autorização de uso.
  // Nota: A Chave de Acesso desta NF-e é exatamente a mesma Chave de Acesso do EPEC autorizado
  // anteriormente.
}

class PedidoDeProrrogacao1prazo{}

class PedidoDeProrrogacao2prazo{}

class CancelamentoDePedidoDeProrrogacao1Prazo{}

class CancelamentoDePedidoDeProrrogacao2Prazo{}

class AtorInteressadoNFeTransportador{}