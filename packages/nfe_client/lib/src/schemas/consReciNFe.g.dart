// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consReciNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConsReciNFeSchema _$ConsReciNFeSchemaFromJson(Map<String, dynamic> json) =>
    _ConsReciNFeSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      nRec: json['nRec'] as String,
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$ConsReciNFeSchemaToJson(_ConsReciNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'nRec': instance.nRec,
      'versao': instance.versao,
    };
