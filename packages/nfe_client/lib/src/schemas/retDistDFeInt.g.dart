// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retDistDFeInt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetDistDFeIntSchema _$RetDistDFeIntSchemaFromJson(Map<String, dynamic> json) =>
    _RetDistDFeIntSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      dhResp: json['dhResp'] as String,
      ultNSU: json['ultNSU'] as String?,
      maxNSU: json['maxNSU'] as String?,
      loteDistDFeInt: _loteDistDFeIntComplexType_retDistDFeIntMaybeFromJson(
          json['loteDistDFeInt'] as Map<String, dynamic>?),
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$RetDistDFeIntSchemaToJson(
        _RetDistDFeIntSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'dhResp': instance.dhResp,
      'ultNSU': instance.ultNSU,
      'maxNSU': instance.maxNSU,
      'loteDistDFeInt': _loteDistDFeIntComplexType_retDistDFeIntMaybeToJson(
          instance.loteDistDFeInt),
      'versao': _versaoEnumToValue(instance.versao),
    };

loteDistDFeIntComplexType_retDistDFeInt
    _$loteDistDFeIntComplexType_retDistDFeIntFromJson(
            Map<String, dynamic> json) =>
        loteDistDFeIntComplexType_retDistDFeInt(
          xmlns: json['xmlns'] as String?,
          docZip: _docZipComplexType_loteDistDFeIntFromJson(
              json['docZip'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$loteDistDFeIntComplexType_retDistDFeIntToJson(
        loteDistDFeIntComplexType_retDistDFeInt instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'docZip': _docZipComplexType_loteDistDFeIntToJson(instance.docZip),
    };

docZipComplexType_loteDistDFeInt _$docZipComplexType_loteDistDFeIntFromJson(
        Map<String, dynamic> json) =>
    docZipComplexType_loteDistDFeInt(
      xmlns: json['xmlns'] as String?,
      docZip: json['docZip'] as String,
    );

Map<String, dynamic> _$docZipComplexType_loteDistDFeIntToJson(
        docZipComplexType_loteDistDFeInt instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'docZip': instance.docZip,
    };
