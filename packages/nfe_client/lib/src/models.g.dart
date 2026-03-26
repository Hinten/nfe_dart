// GENERATED CODE - DO NOT MODIFY BY HAND
// Regenerate with: dart run build_runner build --delete-conflicting-outputs

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NFeConfig _$NFeConfigFromJson(Map<String, dynamic> json) => NFeConfig(
      id: json['id'] as String?,
      createTime: maybeDateTimeFromJson((json['createTime'] as num?)?.toInt()),
      updateTime: maybeDateTimeFromJson((json['updateTime'] as num?)?.toInt()),
      numeracao_atual: (json['numeracao_atual'] as num).toInt(),
      serie: (json['serie'] as num).toInt(),
      ambiente: json['ambiente'] == null
          ? AmbienteNFE.homologacao
          : ambienteNFEFromJson(json['ambiente'] as String),
      idLote: (json['idLote'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$NFeConfigToJson(NFeConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createTime', maybeDateTimeToJson(instance.createTime));
  writeNotNull('updateTime', maybeDateTimeToJson(instance.updateTime));
  val['numeracao_atual'] = instance.numeracao_atual;
  val['serie'] = instance.serie;
  val['idLote'] = instance.idLote;
  val['ambiente'] = ambienteNFEToJson(instance.ambiente);
  return val;
}

EnviNFeMsg _$EnviNFeMsgFromJson(Map<String, dynamic> json) => EnviNFeMsg(
      id: json['id'] as String?,
      createTime: maybeDateTimeFromJson((json['createTime'] as num?)?.toInt()),
      updateTime: maybeDateTimeFromJson((json['updateTime'] as num?)?.toInt()),
      estado: json['estado'] == null
          ? EstadoEnviNFeMsg.iniciado
          : $estadoEnviNFeMsgFromJson(json['estado'] as String),
      idLote: (json['idLote'] as num?)?.toInt(),
      indSinc: json['indSinc'] as String?,
      targetsChnfe: (json['targetsChnfe'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      infNFes: (json['infNFes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      previsaoResposta:
          maybeDateTimeFromJson((json['previsaoResposta'] as num?)?.toInt()),
      xml_enviado: stringNotEmptyFromJson(json['xml_enviado'] as String?),
      xml_retorno: stringNotEmptyFromJson(json['xml_retorno'] as String?),
      protNFe: json['protNFe'] as String?,
      nRec: json['nRec'] as String?,
      cStat: json['cStat'] as String?,
      xMotivo: json['xMotivo'] as String?,
      cMsg: json['cMsg'] as String?,
      xMsg: json['xMsg'] as String?,
      error: stringNotEmptyFromJson(json['error'] as String?),
      codEmissao: (json['codEmissao'] as num?)?.toInt(),
      ultimaModificacao:
          maybeDateTimeFromJson((json['ultimaModificacao'] as num?)?.toInt()),
      dataContingencia:
          maybeDateTimeFromJson((json['dataContingencia'] as num?)?.toInt()),
      retries: (json['retries'] as num?)?.toInt(),
      justificativaContingencia:
          stringNotEmptyFromJson(json['justificativaContingencia'] as String?),
    );

Map<String, dynamic> _$EnviNFeMsgToJson(EnviNFeMsg instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createTime', maybeDateTimeToJson(instance.createTime));
  writeNotNull('updateTime', maybeDateTimeToJson(instance.updateTime));
  val['estado'] = $estadoEnviNFeMsgToJson(instance.estado);
  val['idLote'] = instance.idLote;
  val['indSinc'] = instance.indSinc;
  val['targetsChnfe'] = instance.targetsChnfe;
  val['infNFes'] = instance.infNFes;
  val['previsaoResposta'] = maybeDateTimeToJson(instance.previsaoResposta);
  val['xml_enviado'] = stringNotEmptyToJson(instance.xml_enviado);
  val['xml_retorno'] = stringNotEmptyToJson(instance.xml_retorno);
  val['protNFe'] = instance.protNFe;
  val['nRec'] = instance.nRec;
  val['cStat'] = instance.cStat;
  val['xMotivo'] = instance.xMotivo;
  writeNotNull('cMsg', instance.cMsg);
  writeNotNull('xMsg', instance.xMsg);
  val['error'] = stringNotEmptyToJson(instance.error);
  writeNotNull('codEmissao', instance.codEmissao);
  writeNotNull(
      'dataContingencia', maybeDateTimeToJson(instance.dataContingencia));
  writeNotNull('justificativaContingencia',
      stringNotEmptyToJson(instance.justificativaContingencia));
  writeNotNull('retries', instance.retries);
  val['ultimaModificacao'] = maybeDateTimeToJson(instance.ultimaModificacao);
  return val;
}

EpecMsg _$EpecMsgFromJson(Map<String, dynamic> json) => EpecMsg(
      id: json['id'] as String?,
      createTime: maybeDateTimeFromJson((json['createTime'] as num?)?.toInt()),
      updateTime: maybeDateTimeFromJson((json['updateTime'] as num?)?.toInt()),
      estado: json['estado'] == null
          ? EstadoEnviNFeMsg.iniciado
          : $estadoEnviNFeMsgFromJson(json['estado'] as String),
      xml_enviado: json['xml_enviado'] as String?,
      xml_retorno: json['xml_retorno'] as String?,
      error: stringNotEmptyFromJson(json['error'] as String?),
    );

Map<String, dynamic> _$EpecMsgToJson(EpecMsg instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createTime', maybeDateTimeToJson(instance.createTime));
  writeNotNull('updateTime', maybeDateTimeToJson(instance.updateTime));
  val['estado'] = $estadoEnviNFeMsgToJson(instance.estado);
  val['xml_enviado'] = instance.xml_enviado;
  val['xml_retorno'] = instance.xml_retorno;
  writeNotNull('error', stringNotEmptyToJson(instance.error));
  return val;
}

CertificadoDigital _$CertificadoDigitalFromJson(Map<String, dynamic> json) =>
    CertificadoDigital(
      id: json['id'] as String?,
      createTime: maybeDateTimeFromJson((json['createTime'] as num?)?.toInt()),
      updateTime: maybeDateTimeFromJson((json['updateTime'] as num?)?.toInt()),
      validade: maybeDateTimeFromJson((json['validade'] as num?)?.toInt()),
      originalCert: json['originalCert'] as String?,
      pemKey: json['pemKey'] as String?,
      rsaKey: json['rsaKey'] as String?,
      x509Certificate: json['x509Certificate'] as String?,
      timestamp: maybeDateTimeFromJson((json['timestamp'] as num?)?.toInt()),
    );

Map<String, dynamic> _$CertificadoDigitalToJson(CertificadoDigital instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createTime', maybeDateTimeToJson(instance.createTime));
  writeNotNull('updateTime', maybeDateTimeToJson(instance.updateTime));
  val['validade'] = maybeDateTimeToJson(instance.validade);
  val['originalCert'] = instance.originalCert;
  val['pemKey'] = instance.pemKey;
  val['rsaKey'] = instance.rsaKey;
  val['x509Certificate'] = instance.x509Certificate;
  val['timestamp'] = maybeDateTimeToJson(instance.timestamp);
  return val;
}

InutNumeracao _$InutNumeracaoFromJson(Map<String, dynamic> json) =>
    InutNumeracao(
      id: json['id'] as String?,
      createTime: maybeDateTimeFromJson((json['createTime'] as num?)?.toInt()),
      updateTime: maybeDateTimeFromJson((json['updateTime'] as num?)?.toInt()),
      estado: json['estado'] == null
          ? EstadoEnviNFeMsg.iniciado
          : $estadoEnviNFeMsgFromJson(json['estado'] as String),
      serie: (json['serie'] as num?)?.toInt() ?? 1,
      inicio: (json['inicio'] as num).toInt(),
      fim: (json['fim'] as num).toInt(),
      justificativa: json['justificativa'] as String,
      xml_enviado: json['xml_enviado'] as String?,
      xml_retorno: json['xml_retorno'] as String?,
      error: stringNotEmptyFromJson(json['error'] as String?),
      timestamp: maybeDateTimeFromJson((json['timestamp'] as num?)?.toInt()),
    );

Map<String, dynamic> _$InutNumeracaoToJson(InutNumeracao instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createTime', maybeDateTimeToJson(instance.createTime));
  writeNotNull('updateTime', maybeDateTimeToJson(instance.updateTime));
  val['estado'] = $estadoEnviNFeMsgToJson(instance.estado);
  val['serie'] = instance.serie;
  val['inicio'] = instance.inicio;
  val['fim'] = instance.fim;
  val['justificativa'] = instance.justificativa;
  val['xml_enviado'] = instance.xml_enviado;
  val['xml_retorno'] = instance.xml_retorno;
  writeNotNull('error', stringNotEmptyToJson(instance.error));
  val['timestamp'] = maybeDateTimeToJson(instance.timestamp);
  return val;
}
