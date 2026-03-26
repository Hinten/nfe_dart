// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consCad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConsCadSchema _$ConsCadSchemaFromJson(Map<String, dynamic> json) =>
    _ConsCadSchema(
      xmlns: json['xmlns'] as String?,
      infCons: _infConsComplexType_TConsCadFromJson(
          json['infCons'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$ConsCadSchemaToJson(_ConsCadSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infCons': _infConsComplexType_TConsCadToJson(instance.infCons),
      'versao': instance.versao,
    };

infConsComplexType_TConsCad _$infConsComplexType_TConsCadFromJson(
        Map<String, dynamic> json) =>
    infConsComplexType_TConsCad(
      xmlns: json['xmlns'] as String?,
      xServ: _xServEnumFromValue(json['xServ'] as String),
      UF: _UFEnumFromValue(json['UF'] as String),
      IE: json['IE'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
    );

Map<String, dynamic> _$infConsComplexType_TConsCadToJson(
        infConsComplexType_TConsCad instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xServ': _xServEnumToValue(instance.xServ),
      'UF': _UFEnumToValue(instance.UF),
      'IE': instance.IE,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
    };
