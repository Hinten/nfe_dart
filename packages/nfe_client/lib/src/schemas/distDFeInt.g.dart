// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distDFeInt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DistDFeIntSchema _$DistDFeIntSchemaFromJson(Map<String, dynamic> json) =>
    _DistDFeIntSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      cUFAutor: _cUFAutorEnumFromMaybeValue(json['cUFAutor'] as String?),
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      distNSU: _distNSUComplexType_distDFeIntMaybeFromJson(
          json['distNSU'] as Map<String, dynamic>?),
      consNSU: _consNSUComplexType_distDFeIntMaybeFromJson(
          json['consNSU'] as Map<String, dynamic>?),
      consChNFe: _consChNFeComplexType_distDFeIntMaybeFromJson(
          json['consChNFe'] as Map<String, dynamic>?),
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$DistDFeIntSchemaToJson(_DistDFeIntSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'cUFAutor': _cUFAutorEnumToMaybeValue(instance.cUFAutor),
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'distNSU': _distNSUComplexType_distDFeIntMaybeToJson(instance.distNSU),
      'consNSU': _consNSUComplexType_distDFeIntMaybeToJson(instance.consNSU),
      'consChNFe':
          _consChNFeComplexType_distDFeIntMaybeToJson(instance.consChNFe),
      'versao': _versaoEnumToValue(instance.versao),
    };

distNSUComplexType_distDFeInt _$distNSUComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    distNSUComplexType_distDFeInt(
      xmlns: json['xmlns'] as String?,
      ultNSU: json['ultNSU'] as String,
    );

Map<String, dynamic> _$distNSUComplexType_distDFeIntToJson(
        distNSUComplexType_distDFeInt instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'ultNSU': instance.ultNSU,
    };

consNSUComplexType_distDFeInt _$consNSUComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    consNSUComplexType_distDFeInt(
      xmlns: json['xmlns'] as String?,
      NSU: json['NSU'] as String,
    );

Map<String, dynamic> _$consNSUComplexType_distDFeIntToJson(
        consNSUComplexType_distDFeInt instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'NSU': instance.NSU,
    };

consChNFeComplexType_distDFeInt _$consChNFeComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    consChNFeComplexType_distDFeInt(
      xmlns: json['xmlns'] as String?,
      chNFe: json['chNFe'] as String,
    );

Map<String, dynamic> _$consChNFeComplexType_distDFeIntToJson(
        consChNFeComplexType_distDFeInt instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'chNFe': instance.chNFe,
    };
