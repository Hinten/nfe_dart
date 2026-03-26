// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnvEPEC.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetEnvEPECSchema _$RetEnvEPECSchemaFromJson(Map<String, dynamic> json) =>
    _RetEnvEPECSchema(
      xmlns: json['xmlns'] as String?,
      idLote: json['idLote'] as String,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cOrgao: _cOrgaoEnumFromValue(json['cOrgao'] as String),
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      retEvento:
          _TRetEventoComplexTypeMaybeListFromJson(json['retEvento'] as List?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetEnvEPECSchemaToJson(_RetEnvEPECSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'idLote': instance.idLote,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cOrgao': _cOrgaoEnumToValue(instance.cOrgao),
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'retEvento': _TRetEventoComplexTypeMaybeListToJson(instance.retEvento),
      'versao': instance.versao,
    };

TRetEventoComplexType _$TRetEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TRetEventoComplexType(
      xmlns: json['xmlns'] as String?,
      infEvento: _infEventoComplexType_TRetEventoFromJson(
          json['infEvento'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeMaybeFromJson(
          json['Signature'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TRetEventoComplexTypeToJson(
        TRetEventoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infEvento': _infEventoComplexType_TRetEventoToJson(instance.infEvento),
      'Signature': _SignatureTypeComplexTypeMaybeToJson(instance.Signature),
      'versao': instance.versao,
    };

infEventoComplexType_TRetEvento _$infEventoComplexType_TRetEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TRetEvento(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cOrgao: _cOrgaoEnumFromValue(json['cOrgao'] as String),
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      chNFe: json['chNFe'] as String?,
      tpEvento: json['tpEvento'] as String?,
      xEvento: json['xEvento'] as String?,
      nSeqEvento: json['nSeqEvento'] as String?,
      cOrgaoAutor:
          _cOrgaoAutorEnumFromMaybeValue(json['cOrgaoAutor'] as String?),
      CNPJDest: json['CNPJDest'] as String?,
      CPFDest: json['CPFDest'] as String?,
      emailDest: json['emailDest'] as String?,
      dhRegEvento: json['dhRegEvento'] as String,
      nProt: json['nProt'] as String?,
      chNFePend: (json['chNFePend'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$infEventoComplexType_TRetEventoToJson(
        infEventoComplexType_TRetEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cOrgao': _cOrgaoEnumToValue(instance.cOrgao),
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'chNFe': instance.chNFe,
      'tpEvento': instance.tpEvento,
      'xEvento': instance.xEvento,
      'nSeqEvento': instance.nSeqEvento,
      'cOrgaoAutor': _cOrgaoAutorEnumToMaybeValue(instance.cOrgaoAutor),
      'CNPJDest': instance.CNPJDest,
      'CPFDest': instance.CPFDest,
      'emailDest': instance.emailDest,
      'dhRegEvento': instance.dhRegEvento,
      'nProt': instance.nProt,
      'chNFePend': instance.chNFePend,
      'Id': instance.Id,
    };
