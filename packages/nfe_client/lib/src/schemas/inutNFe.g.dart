// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inutNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InutNFeSchema _$InutNFeSchemaFromJson(Map<String, dynamic> json) =>
    _InutNFeSchema(
      xmlns: json['xmlns'] as String?,
      infInut: _infInutComplexType_TInutNFeFromJson(
          json['infInut'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeFromJson(
          json['Signature'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$InutNFeSchemaToJson(_InutNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infInut': _infInutComplexType_TInutNFeToJson(instance.infInut),
      'Signature': _SignatureTypeComplexTypeToJson(instance.Signature),
      'versao': instance.versao,
    };

infInutComplexType_TInutNFe _$infInutComplexType_TInutNFeFromJson(
        Map<String, dynamic> json) =>
    infInutComplexType_TInutNFe(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      xServ: _xServEnumFromValue(json['xServ'] as String),
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      ano: json['ano'] as String,
      CNPJ: json['CNPJ'] as String,
      mod: _modEnumFromValue(json['mod'] as String),
      serie: json['serie'] as String,
      nNFIni: json['nNFIni'] as String,
      nNFFin: json['nNFFin'] as String,
      xJust: json['xJust'] as String,
      Id: json['Id'] as String,
    );

Map<String, dynamic> _$infInutComplexType_TInutNFeToJson(
        infInutComplexType_TInutNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'xServ': _xServEnumToValue(instance.xServ),
      'cUF': _cUFEnumToValue(instance.cUF),
      'ano': instance.ano,
      'CNPJ': instance.CNPJ,
      'mod': _modEnumToValue(instance.mod),
      'serie': instance.serie,
      'nNFIni': instance.nNFIni,
      'nNFFin': instance.nNFFin,
      'xJust': instance.xJust,
      'Id': instance.Id,
    };
