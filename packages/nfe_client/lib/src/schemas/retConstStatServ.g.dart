// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConstStatServ.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetConsStatServSchema _$RetConsStatServSchemaFromJson(
        Map<String, dynamic> json) =>
    _RetConsStatServSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      dhRecbto: json['dhRecbto'] as String,
      tMed: json['tMed'] as String?,
      dhRetorno: json['dhRetorno'] as String?,
      xObs: json['xObs'] as String?,
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetConsStatServSchemaToJson(
        _RetConsStatServSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'dhRecbto': instance.dhRecbto,
      'tMed': instance.tMed,
      'dhRetorno': instance.dhRetorno,
      'xObs': instance.xObs,
      'versao': instance.versao,
    };
