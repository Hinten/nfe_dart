// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enviNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnviNFeSchema _$EnviNFeSchemaFromJson(Map<String, dynamic> json) =>
    _EnviNFeSchema(
      xmlns: json['xmlns'] as String?,
      idLote: json['idLote'] as String,
      indSinc: _indSincEnumFromValue(json['indSinc'] as String),
      NFe: _TNFeComplexTypeListFromJson(json['NFe'] as List),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$EnviNFeSchemaToJson(_EnviNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'idLote': instance.idLote,
      'indSinc': _indSincEnumToValue(instance.indSinc),
      'NFe': _TNFeComplexTypeListToJson(instance.NFe),
      'versao': instance.versao,
    };
