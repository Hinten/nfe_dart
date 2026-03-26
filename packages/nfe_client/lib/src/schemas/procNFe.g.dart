// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcNFeSchema _$ProcNFeSchemaFromJson(Map<String, dynamic> json) =>
    _ProcNFeSchema(
      xmlns: json['xmlns'] as String?,
      NFe: _TNFeComplexTypeFromJson(json['NFe'] as Map<String, dynamic>),
      protNFe:
          _TProtNFeComplexTypeFromJson(json['protNFe'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$ProcNFeSchemaToJson(_ProcNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'NFe': _TNFeComplexTypeToJson(instance.NFe),
      'protNFe': _TProtNFeComplexTypeToJson(instance.protNFe),
      'versao': instance.versao,
    };
