// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsReciNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetConsReciNFeSchema _$RetConsReciNFeSchemaFromJson(
        Map<String, dynamic> json) =>
    _RetConsReciNFeSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      nRec: json['nRec'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      dhRecbto: json['dhRecbto'] as String,
      cMsg: json['cMsg'] as String?,
      xMsg: json['xMsg'] as String?,
      protNFe: _TProtNFeComplexTypeMaybeListFromJson(json['protNFe'] as List?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetConsReciNFeSchemaToJson(
        _RetConsReciNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'nRec': instance.nRec,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'dhRecbto': instance.dhRecbto,
      'cMsg': instance.cMsg,
      'xMsg': instance.xMsg,
      'protNFe': _TProtNFeComplexTypeMaybeListToJson(instance.protNFe),
      'versao': instance.versao,
    };

TProtNFeComplexType _$TProtNFeComplexTypeFromJson(Map<String, dynamic> json) =>
    TProtNFeComplexType(
      xmlns: json['xmlns'] as String?,
      infProt: _infProtComplexType_TProtNFeFromJson(
          json['infProt'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeMaybeFromJson(
          json['Signature'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TProtNFeComplexTypeToJson(
        TProtNFeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infProt': _infProtComplexType_TProtNFeToJson(instance.infProt),
      'Signature': _SignatureTypeComplexTypeMaybeToJson(instance.Signature),
      'versao': instance.versao,
    };

infProtComplexType_TProtNFe _$infProtComplexType_TProtNFeFromJson(
        Map<String, dynamic> json) =>
    infProtComplexType_TProtNFe(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      chNFe: json['chNFe'] as String,
      dhRecbto: json['dhRecbto'] as String,
      nProt: json['nProt'] as String?,
      digVal: json['digVal'] as String?,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cMsg: json['cMsg'] as String?,
      xMsg: json['xMsg'] as String?,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$infProtComplexType_TProtNFeToJson(
        infProtComplexType_TProtNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'chNFe': instance.chNFe,
      'dhRecbto': instance.dhRecbto,
      'nProt': instance.nProt,
      'digVal': instance.digVal,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cMsg': instance.cMsg,
      'xMsg': instance.xMsg,
      'Id': instance.Id,
    };
