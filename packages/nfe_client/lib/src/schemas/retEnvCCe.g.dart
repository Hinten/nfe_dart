// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnvCCe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetEnvCCeSchema _$RetEnvCCeSchemaFromJson(Map<String, dynamic> json) =>
    _RetEnvCCeSchema(
      xmlns: json['xmlns'] as String?,
      idLote: json['idLote'] as String,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cOrgao: _cOrgaoEnumFromValue(json['cOrgao'] as String),
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      retEvento:
          _TretEventoComplexTypeMaybeListFromJson(json['retEvento'] as List?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetEnvCCeSchemaToJson(_RetEnvCCeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'idLote': instance.idLote,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cOrgao': _cOrgaoEnumToValue(instance.cOrgao),
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'retEvento': _TretEventoComplexTypeMaybeListToJson(instance.retEvento),
      'versao': instance.versao,
    };

TretEventoComplexType _$TretEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TretEventoComplexType(
      xmlns: json['xmlns'] as String?,
      infEvento: _infEventoComplexType_TretEventoFromJson(
          json['infEvento'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeMaybeFromJson(
          json['Signature'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TretEventoComplexTypeToJson(
        TretEventoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infEvento': _infEventoComplexType_TretEventoToJson(instance.infEvento),
      'Signature': _SignatureTypeComplexTypeMaybeToJson(instance.Signature),
      'versao': instance.versao,
    };

infEventoComplexType_TretEvento _$infEventoComplexType_TretEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TretEvento(
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
      CNPJDest: json['CNPJDest'] as String?,
      CPFDest: json['CPFDest'] as String?,
      emailDest: json['emailDest'] as String?,
      dhRegEvento: json['dhRegEvento'] as String,
      nProt: json['nProt'] as String?,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$infEventoComplexType_TretEventoToJson(
        infEventoComplexType_TretEvento instance) =>
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
      'CNPJDest': instance.CNPJDest,
      'CPFDest': instance.CPFDest,
      'emailDest': instance.emailDest,
      'dhRegEvento': instance.dhRegEvento,
      'nProt': instance.nProt,
      'Id': instance.Id,
    };
