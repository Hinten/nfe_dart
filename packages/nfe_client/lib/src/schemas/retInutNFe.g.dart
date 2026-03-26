// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retInutNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetInutNFeSchema _$RetInutNFeSchemaFromJson(Map<String, dynamic> json) =>
    _RetInutNFeSchema(
      xmlns: json['xmlns'] as String?,
      infInut: _infInutComplexType_TRetInutNFeFromJson(
          json['infInut'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeMaybeFromJson(
          json['Signature'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetInutNFeSchemaToJson(_RetInutNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infInut': _infInutComplexType_TRetInutNFeToJson(instance.infInut),
      'Signature': _SignatureTypeComplexTypeMaybeToJson(instance.Signature),
      'versao': instance.versao,
    };

infInutComplexType_TRetInutNFe _$infInutComplexType_TRetInutNFeFromJson(
        Map<String, dynamic> json) =>
    infInutComplexType_TRetInutNFe(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      ano: json['ano'] as String?,
      CNPJ: json['CNPJ'] as String?,
      mod: _modEnumFromMaybeValue(json['mod'] as String?),
      serie: json['serie'] as String?,
      nNFIni: json['nNFIni'] as String?,
      nNFFin: json['nNFFin'] as String?,
      dhRecbto: json['dhRecbto'] as String,
      nProt: json['nProt'] as String?,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$infInutComplexType_TRetInutNFeToJson(
        infInutComplexType_TRetInutNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'ano': instance.ano,
      'CNPJ': instance.CNPJ,
      'mod': _modEnumToMaybeValue(instance.mod),
      'serie': instance.serie,
      'nNFIni': instance.nNFIni,
      'nNFFin': instance.nNFFin,
      'dhRecbto': instance.dhRecbto,
      'nProt': instance.nProt,
      'Id': instance.Id,
    };
