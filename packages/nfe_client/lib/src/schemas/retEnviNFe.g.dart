// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnviNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetEnviNFeSchema _$RetEnviNFeSchemaFromJson(Map<String, dynamic> json) =>
    _RetEnviNFeSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      dhRecbto: json['dhRecbto'] as String,
      infRec: _infRecComplexType_TRetEnviNFeMaybeFromJson(
          json['infRec'] as Map<String, dynamic>?),
      protNFe: _TProtNFeComplexTypeMaybeFromJson(
          json['protNFe'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetEnviNFeSchemaToJson(_RetEnviNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'dhRecbto': instance.dhRecbto,
      'infRec': _infRecComplexType_TRetEnviNFeMaybeToJson(instance.infRec),
      'protNFe': _TProtNFeComplexTypeMaybeToJson(instance.protNFe),
      'versao': instance.versao,
    };

infRecComplexType_TRetEnviNFe _$infRecComplexType_TRetEnviNFeFromJson(
        Map<String, dynamic> json) =>
    infRecComplexType_TRetEnviNFe(
      xmlns: json['xmlns'] as String?,
      nRec: json['nRec'] as String,
      tMed: json['tMed'] as String,
    );

Map<String, dynamic> _$infRecComplexType_TRetEnviNFeToJson(
        infRecComplexType_TRetEnviNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nRec': instance.nRec,
      'tMed': instance.tMed,
    };
