import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:nfe_client/src/common.dart';
import 'package:nfe_client/src/encryptDecrypt.dart';
import 'package:nfe_client/src/schemas/envEPEc.dart';
import 'package:nfe_client/src/schemas/enviNFe.dart';
import 'package:nfe_client/src/schemas/inutNFe.dart' show makeInutNFe;
import 'package:nfe_client/src/schemas/retEnvEPEC.dart';
import 'package:nfe_client/src/schemas/retEnviNFe.dart';
import 'package:nfe_client/src/schemas/retInutNFe.dart';

part 'models.g.dart';

// ---------------------------------------------------------------------------
// AmbienteNFE
// ---------------------------------------------------------------------------

enum AmbienteNFE implements enchancedEnum {
  producao('1'),
  homologacao('2');

  final String value;
  const AmbienteNFE(this.value);

  @override
  String toJson() => value;

  @override
  factory AmbienteNFE.fromJson(String json) =>
      AmbienteNFE.values.firstWhere((e) => e.value == json,
          orElse: () => AmbienteNFE.homologacao);

  @override
  String get displayName {
    switch (this) {
      case AmbienteNFE.producao:
        return 'Produção';
      case AmbienteNFE.homologacao:
        return 'Homologação';
    }
  }
}

AmbienteNFE ambienteNFEFromJson(String json) => AmbienteNFE.fromJson(json);
String ambienteNFEToJson(AmbienteNFE value) => value.toJson();

// ---------------------------------------------------------------------------
// NFeConfig – NF-e numbering configuration
// ---------------------------------------------------------------------------

@JsonSerializable()
class NFeConfig {
  /// Optional document identifier (e.g. Firestore docId or database PK).
  final String? id;
  final DateTime? createTime;
  final DateTime? updateTime;

  int numeracao_atual;
  int serie;
  int idLote;

  @JsonKey(
    fromJson: ambienteNFEFromJson,
    toJson: ambienteNFEToJson,
  )
  AmbienteNFE ambiente;

  String get tpAmb => ambiente.value;

  NFeConfig({
    this.id,
    this.createTime,
    this.updateTime,
    required this.numeracao_atual,
    required this.serie,
    this.ambiente = AmbienteNFE.homologacao,
    this.idLote = 1,
  });

  NFeConfig copyWith({
    String? id,
    DateTime? createTime,
    DateTime? updateTime,
    int? numeracao_atual,
    int? serie,
    AmbienteNFE? ambiente,
    int? idLote,
  }) =>
      NFeConfig(
        id: id ?? this.id,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime ?? this.updateTime,
        numeracao_atual: numeracao_atual ?? this.numeracao_atual,
        serie: serie ?? this.serie,
        ambiente: ambiente ?? this.ambiente,
        idLote: idLote ?? this.idLote,
      );

  factory NFeConfig.fromJson(Map<String, dynamic> json) =>
      _$NFeConfigFromJson(json);

  Map<String, dynamic> toJson() => _$NFeConfigToJson(this);
}

// ---------------------------------------------------------------------------
// EstadoEnviNFeMsg
// ---------------------------------------------------------------------------

enum EstadoEnviNFeMsg implements enchancedEnum {
  error('e'),
  iniciado('0'),
  aguardando_envio('1'),
  aguardando_envio_pos_epec_apenas_periodico('a'),
  aguardando_epec('c'),
  aguardando_envio_pos_epec('n'),
  respondido('2'),
  respondido_apenas_periodico('4'),
  respondido_apenas_tasks('t'),
  concluido('3'),
  semMaisAcoes('i');

  final String value;
  const EstadoEnviNFeMsg(this.value);

  @override
  String toJson() => value;

  @override
  factory EstadoEnviNFeMsg.fromJson(String json) =>
      EstadoEnviNFeMsg.values.firstWhere((e) => e.value == json);

  @override
  String get displayName {
    switch (this) {
      case EstadoEnviNFeMsg.error:
        return 'Erro';
      case EstadoEnviNFeMsg.iniciado:
        return 'Iniciado';
      case EstadoEnviNFeMsg.aguardando_envio:
        return 'Aguardando envio';
      case EstadoEnviNFeMsg.aguardando_epec:
        return 'Aguardando EPEC';
      case EstadoEnviNFeMsg.aguardando_envio_pos_epec:
        return 'Aguardando envio após EPEC';
      case EstadoEnviNFeMsg.respondido:
        return 'Respondido';
      case EstadoEnviNFeMsg.respondido_apenas_periodico:
        return 'Respondido Assíncrono';
      case EstadoEnviNFeMsg.respondido_apenas_tasks:
        return 'Respondido Assíncrono (tasks)';
      case EstadoEnviNFeMsg.concluido:
        return 'Concluído';
      case EstadoEnviNFeMsg.semMaisAcoes:
        return 'Sem mais ações';
      case EstadoEnviNFeMsg.aguardando_envio_pos_epec_apenas_periodico:
        return 'Aguardando novo envio EPEC na próxima task periódica';
    }
  }
}

EstadoEnviNFeMsg $estadoEnviNFeMsgFromJson(String json) =>
    EstadoEnviNFeMsg.fromJson(json);

String $estadoEnviNFeMsgToJson(EstadoEnviNFeMsg value) => value.toJson();

// ---------------------------------------------------------------------------
// EnviNFeMsg – NF-e sending message
// ---------------------------------------------------------------------------

@JsonSerializable()
class EnviNFeMsg {
  final String? id;
  final DateTime? createTime;
  final DateTime? updateTime;

  @JsonKey(
    fromJson: $estadoEnviNFeMsgFromJson,
    toJson: $estadoEnviNFeMsgToJson,
  )
  final EstadoEnviNFeMsg estado;
  final int? idLote;
  final String? indSinc;
  final List<String>? targetsChnfe;
  final Map<String, String>? infNFes;
  final DateTime? previsaoResposta;
  @JsonKey(fromJson: stringNotEmptyFromJson, toJson: stringNotEmptyToJson)
  final String? xml_enviado;
  @JsonKey(fromJson: stringNotEmptyFromJson, toJson: stringNotEmptyToJson)
  final String? xml_retorno;
  final String? protNFe;
  final String? nRec;
  final String? cStat;
  final String? xMotivo;
  @JsonKey(includeIfNull: false)
  final String? cMsg;
  @JsonKey(includeIfNull: false)
  final String? xMsg;
  @JsonKey(fromJson: stringNotEmptyFromJson, toJson: stringNotEmptyToJson)
  final String? error;
  @JsonKey(includeIfNull: false)
  final int? codEmissao;
  int get tpEmis => codEmissao ?? 1;

  @JsonKey(
    includeIfNull: false,
    fromJson: maybeDateTimeFromJson,
    toJson: maybeDateTimeToJson,
  )
  final DateTime? dataContingencia;
  @JsonKey(
    includeIfNull: false,
    fromJson: stringNotEmptyFromJson,
    toJson: stringNotEmptyToJson,
  )
  final String? justificativaContingencia;
  @JsonKey(includeIfNull: false)
  final int? retries;

  final DateTime? ultimaModificacao;

  EnviNFeMsg({
    this.id,
    this.createTime,
    this.updateTime,
    this.estado = EstadoEnviNFeMsg.iniciado,
    this.idLote,
    this.indSinc,
    this.targetsChnfe,
    this.infNFes,
    this.previsaoResposta,
    this.xml_enviado,
    this.xml_retorno,
    this.protNFe,
    this.nRec,
    this.cStat,
    this.xMotivo,
    this.cMsg,
    this.xMsg,
    this.error,
    this.codEmissao,
    this.ultimaModificacao,
    this.dataContingencia,
    this.retries,
    this.justificativaContingencia,
  });

  @override
  String toString() => toJson().toString();

  factory EnviNFeMsg.fromJson(Map<String, dynamic> json) =>
      _$EnviNFeMsgFromJson(json);

  Map<String, dynamic> toJson() => _$EnviNFeMsgToJson(this);

  EnviNFeMsg copyWith({
    String? id,
    DateTime? createTime,
    DateTime? updateTime,
    EstadoEnviNFeMsg? estado,
    int? idLote,
    String? indSinc,
    List<String>? targetsChnfe,
    Map<String, String>? infNFes,
    DateTime? previsaoResposta,
    String? xml_enviado,
    String? xml_retorno,
    String? protNFe,
    String? nRec,
    String? cStat,
    String? xMotivo,
    String? cMsg,
    String? xMsg,
    String? error,
    int? codEmissao,
    DateTime? ultimaModificacao,
    DateTime? dataContingencia,
    int? retries,
    String? justificativaContingencia,
  }) =>
      EnviNFeMsg(
        id: id ?? this.id,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime ?? this.updateTime,
        estado: estado ?? this.estado,
        idLote: idLote ?? this.idLote,
        indSinc: indSinc ?? this.indSinc,
        targetsChnfe: targetsChnfe ?? this.targetsChnfe,
        infNFes: infNFes ?? this.infNFes,
        previsaoResposta: previsaoResposta ?? this.previsaoResposta,
        xml_enviado: xml_enviado ?? this.xml_enviado,
        xml_retorno: xml_retorno ?? this.xml_retorno,
        protNFe: protNFe ?? this.protNFe,
        nRec: nRec ?? this.nRec,
        cStat: cStat ?? this.cStat,
        xMotivo: xMotivo ?? this.xMotivo,
        cMsg: cMsg ?? this.cMsg,
        xMsg: xMsg ?? this.xMsg,
        error: error ?? this.error,
        codEmissao: codEmissao ?? this.codEmissao,
        ultimaModificacao: ultimaModificacao ?? this.ultimaModificacao,
        dataContingencia: dataContingencia ?? this.dataContingencia,
        retries: retries ?? this.retries,
        justificativaContingencia:
            justificativaContingencia ?? this.justificativaContingencia,
      );

  factory EnviNFeMsg.fromRetEnviNFeSchema({
    required idLote,
    required indSinc,
    required RetEnviNFeSchema retEnviNFeSchema,
    String? xml_enviado,
  }) {
    DateTime? previsaoResposta;
    if (retEnviNFeSchema.infRec?.tMed != null) {
      previsaoResposta = DateTime.now()
          .add(Duration(seconds: int.parse(retEnviNFeSchema.infRec!.tMed)));
    }
    return EnviNFeMsg(
      idLote: idLote,
      indSinc: indSinc,
      previsaoResposta: previsaoResposta,
      xml_enviado: xml_enviado,
      xml_retorno: retEnviNFeSchema.toXml(),
      protNFe: retEnviNFeSchema.protNFe?.toXml(),
      nRec: retEnviNFeSchema.infRec?.nRec,
    );
  }

  EnviNFeMsg updateRetEnviNFe(RetEnviNFeSchema retEnviNFeSchema) {
    DateTime? previsaoResposta;
    if (retEnviNFeSchema.infRec?.tMed != null) {
      previsaoResposta = DateTime.now()
          .add(Duration(seconds: int.parse(retEnviNFeSchema.infRec!.tMed)));
    }
    return copyWith(
      estado: EstadoEnviNFeMsg.respondido,
      previsaoResposta: previsaoResposta,
      xml_retorno: retEnviNFeSchema.toXml(),
      protNFe: retEnviNFeSchema.protNFe?.toXml(),
      nRec: retEnviNFeSchema.infRec?.nRec,
      ultimaModificacao: DateTime.now(),
    );
  }

  RetEnviNFeSchema get retEnviNFeSchema =>
      RetEnviNFeSchema.fromXml(xml_retorno!);
  EnviNFeSchema get enviNFeSchema => EnviNFeSchema.fromXml(xml_enviado!);
}

// ---------------------------------------------------------------------------
// EpecMsg – EPEC contingency message
// ---------------------------------------------------------------------------

@JsonSerializable()
class EpecMsg {
  final String? id;
  final DateTime? createTime;
  final DateTime? updateTime;

  @JsonKey(
    fromJson: $estadoEnviNFeMsgFromJson,
    toJson: $estadoEnviNFeMsgToJson,
  )
  final EstadoEnviNFeMsg estado;
  final String? xml_enviado;
  final String? xml_retorno;
  @JsonKey(
    includeIfNull: false,
    fromJson: stringNotEmptyFromJson,
    toJson: stringNotEmptyToJson,
  )
  final String? error;

  EpecMsg({
    this.id,
    this.createTime,
    this.updateTime,
    this.estado = EstadoEnviNFeMsg.iniciado,
    this.xml_enviado,
    this.xml_retorno,
    this.error,
  });

  @override
  String toString() => toJson().toString();

  factory EpecMsg.fromJson(Map<String, dynamic> json) =>
      _$EpecMsgFromJson(json);

  Map<String, dynamic> toJson() => _$EpecMsgToJson(this);

  RetEnvEPECSchema get retEnvEPECSchema {
    assert(xml_retorno != null);
    return RetEnvEPECSchema.fromXml(xml_retorno!);
  }

  EnvEPECSchema get envEPECSchema {
    assert(xml_enviado != null);
    return EnvEPECSchema.fromXml(xml_enviado!);
  }
}

// ---------------------------------------------------------------------------
// CertificadoDigital – Digital certificate (A1/PFX)
// ---------------------------------------------------------------------------

@JsonSerializable()
class CertificadoDigital {
  final String? id;
  final DateTime? createTime;
  final DateTime? updateTime;

  final DateTime? validade;
  final String? originalCert;

  /// Encrypted PEM private key.  Use [pem] to decrypt.
  final String? pemKey;

  /// Encrypted RSA private key.  Use [rsa] to decrypt.
  final String? rsaKey;

  /// Encrypted X.509 certificate.  Use [x509] to decrypt.
  final String? x509Certificate;

  late final DateTime? timestamp;

  bool get isValid => validade != null && validade!.isAfter(DateTime.now());

  /// Base-64 symmetric key used to encrypt/decrypt certificate material.
  /// Provide via the `CERTS_ENCRYPT` environment variable or pass directly.
  final String encryptionKey;

  String get pem {
    assert(pemKey != null);
    return decryptar(value: pemKey!, b64key: encryptionKey);
  }

  String get rsa {
    assert(rsaKey != null);
    return decryptar(value: rsaKey!, b64key: encryptionKey);
  }

  String get x509 {
    assert(x509Certificate != null);
    return decryptar(value: x509Certificate!, b64key: encryptionKey);
  }

  CertificadoDigital({
    this.id,
    this.createTime,
    this.updateTime,
    this.validade,
    this.originalCert,
    this.pemKey,
    this.rsaKey,
    this.x509Certificate,
    DateTime? timestamp,
    String? encryptionKey,
  }) : encryptionKey =
            encryptionKey ?? Platform.environment['CERTS_ENCRYPT'] ?? '' {
    this.timestamp = timestamp ?? DateTime.now();
  }

  factory CertificadoDigital.fromJson(Map<String, dynamic> json) =>
      _$CertificadoDigitalFromJson(json);

  Map<String, dynamic> toJson() => _$CertificadoDigitalToJson(this);
}

// ---------------------------------------------------------------------------
// InutNumeracao – Number sequence inutilization request
// ---------------------------------------------------------------------------

@JsonSerializable()
class InutNumeracao {
  final String? id;
  final DateTime? createTime;
  final DateTime? updateTime;

  @JsonKey(
    fromJson: $estadoEnviNFeMsgFromJson,
    toJson: $estadoEnviNFeMsgToJson,
  )
  final EstadoEnviNFeMsg estado;
  final int serie;
  final int inicio;
  final int fim;
  final String justificativa;
  final String? xml_enviado;
  final String? xml_retorno;
  @JsonKey(
    includeIfNull: false,
    fromJson: stringNotEmptyFromJson,
    toJson: stringNotEmptyToJson,
  )
  final String? error;

  late final DateTime? timestamp;

  @override
  String toString() =>
      'Inutilização Série: $serie Início: $inicio Fim: $fim, ${estado.displayName}';

  InutNumeracao({
    this.id,
    this.createTime,
    this.updateTime,
    this.estado = EstadoEnviNFeMsg.iniciado,
    this.serie = 1,
    required this.inicio,
    required this.fim,
    required this.justificativa,
    this.xml_enviado,
    this.xml_retorno,
    this.error,
    DateTime? timestamp,
  }) {
    this.timestamp = timestamp ?? DateTime.now();
  }

  InutNumeracao copyWith({
    String? id,
    EstadoEnviNFeMsg? estado,
    int? serie,
    int? inicio,
    int? fim,
    String? justificativa,
    String? xml_enviado,
    String? xml_retorno,
    String? error,
  }) =>
      InutNumeracao(
        id: id ?? this.id,
        estado: estado ?? this.estado,
        serie: serie ?? this.serie,
        inicio: inicio ?? this.inicio,
        fim: fim ?? this.fim,
        justificativa: justificativa ?? this.justificativa,
        xml_enviado: xml_enviado ?? this.xml_enviado,
        xml_retorno: xml_retorno ?? this.xml_retorno,
        error: error ?? this.error,
        timestamp: this.timestamp,
      );

  factory InutNumeracao.fromJson(Map<String, dynamic> json) =>
      _$InutNumeracaoFromJson(json);

  Map<String, dynamic> toJson() => _$InutNumeracaoToJson(this);

  RetInutNFeSchema? get retorno {
    if (xml_retorno == null) return null;
    return RetInutNFeSchema.fromXml(xml_retorno!);
  }

  /// Generates the XML for the inutilization request.
  ///
  /// [cUF] – IBGE state code (e.g. '35' for SP).
  /// [cnpj] – Emitter CNPJ (numbers only).
  Future<String> getEnvInutNFeXML({
    required String cUF,
    required String cnpj,
    String mod = '55',
    required String tpAmb,
    required String privateKeyRsa,
    required String x509Certificate,
  }) async {
    return makeInutNFe(
      tpAmb: tpAmb,
      cUF: cUF,
      mod: mod,
      cnpj: cnpj,
      xJust: justificativa,
      serie: serie,
      nNFIni: inicio,
      nNFFin: fim,
      privateKeyRsa: privateKeyRsa,
      x509Cert: x509Certificate,
    );
  }
}
