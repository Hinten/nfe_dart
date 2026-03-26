// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constStatServ.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConstStatServSchema _$ConstStatServSchemaFromJson(Map<String, dynamic> json) =>
    _ConstStatServSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      xServ: _xServEnumFromValue(json['xServ'] as String),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$ConstStatServSchemaToJson(
        _ConstStatServSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'cUF': _cUFEnumToValue(instance.cUF),
      'xServ': _xServEnumToValue(instance.xServ),
      'versao': instance.versao,
    };
