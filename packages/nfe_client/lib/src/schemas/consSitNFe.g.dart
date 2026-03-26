// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consSitNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConsSitNFeSchema _$ConsSitNFeSchemaFromJson(Map<String, dynamic> json) =>
    _ConsSitNFeSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      xServ: _xServEnumFromValue(json['xServ'] as String),
      chNFe: json['chNFe'] as String,
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$ConsSitNFeSchemaToJson(_ConsSitNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'xServ': _xServEnumToValue(instance.xServ),
      'chNFe': instance.chNFe,
      'versao': _versaoEnumToValue(instance.versao),
    };
