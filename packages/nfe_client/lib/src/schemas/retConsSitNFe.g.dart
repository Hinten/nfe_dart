// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsSitNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetConsSitNFeSchema _$RetConsSitNFeSchemaFromJson(Map<String, dynamic> json) =>
    _RetConsSitNFeSchema(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      dhRecbto: json['dhRecbto'] as String,
      chNFe: json['chNFe'] as String,
      protNFe: _TProtNFeComplexTypeMaybeFromJson(
          json['protNFe'] as Map<String, dynamic>?),
      retCancNFe: _TRetCancNFeComplexTypeMaybeFromJson(
          json['retCancNFe'] as Map<String, dynamic>?),
      procEventoNFe: _TProcEventoComplexTypeMaybeFromJson(
          json['procEventoNFe'] as Map<String, dynamic>?),
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$RetConsSitNFeSchemaToJson(
        _RetConsSitNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'dhRecbto': instance.dhRecbto,
      'chNFe': instance.chNFe,
      'protNFe': _TProtNFeComplexTypeMaybeToJson(instance.protNFe),
      'retCancNFe': _TRetCancNFeComplexTypeMaybeToJson(instance.retCancNFe),
      'procEventoNFe':
          _TProcEventoComplexTypeMaybeToJson(instance.procEventoNFe),
      'versao': _versaoEnumToValue(instance.versao),
    };

TRetCancNFeComplexType _$TRetCancNFeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TRetCancNFeComplexType(
      xmlns: json['xmlns'] as String?,
      infCanc: _infCancComplexType_TRetCancNFeFromJson(
          json['infCanc'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeMaybeFromJson(
          json['Signature'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TRetCancNFeComplexTypeToJson(
        TRetCancNFeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infCanc': _infCancComplexType_TRetCancNFeToJson(instance.infCanc),
      'Signature': _SignatureTypeComplexTypeMaybeToJson(instance.Signature),
      'versao': instance.versao,
    };

TProcEventoComplexType _$TProcEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TProcEventoComplexType(
      xmlns: json['xmlns'] as String?,
      evento:
          _TEventoComplexTypeFromJson(json['evento'] as Map<String, dynamic>),
      retEvento: _TRetEventoComplexTypeFromJson(
          json['retEvento'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TProcEventoComplexTypeToJson(
        TProcEventoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'evento': _TEventoComplexTypeToJson(instance.evento),
      'retEvento': _TRetEventoComplexTypeToJson(instance.retEvento),
      'versao': instance.versao,
    };

TEventoComplexType _$TEventoComplexTypeFromJson(Map<String, dynamic> json) =>
    TEventoComplexType(
      xmlns: json['xmlns'] as String?,
      infEvento: _infEventoComplexType_TEventoFromJson(
          json['infEvento'] as Map<String, dynamic>),
      Signature: _SignatureTypeComplexTypeFromJson(
          json['Signature'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$TEventoComplexTypeToJson(TEventoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infEvento': _infEventoComplexType_TEventoToJson(instance.infEvento),
      'Signature': _SignatureTypeComplexTypeToJson(instance.Signature),
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

infCancComplexType_TRetCancNFe _$infCancComplexType_TRetCancNFeFromJson(
        Map<String, dynamic> json) =>
    infCancComplexType_TRetCancNFe(
      xmlns: json['xmlns'] as String?,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      chNFe: json['chNFe'] as String?,
      dhRecbto: json['dhRecbto'] as String?,
      nProt: json['nProt'] as String?,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$infCancComplexType_TRetCancNFeToJson(
        infCancComplexType_TRetCancNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'cUF': _cUFEnumToValue(instance.cUF),
      'chNFe': instance.chNFe,
      'dhRecbto': instance.dhRecbto,
      'nProt': instance.nProt,
      'Id': instance.Id,
    };

infEventoComplexType_TEvento _$infEventoComplexType_TEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TEvento(
      xmlns: json['xmlns'] as String?,
      cOrgao: _cOrgaoEnumFromValue(json['cOrgao'] as String),
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      chNFe: json['chNFe'] as String,
      dhEvento: json['dhEvento'] as String,
      tpEvento: json['tpEvento'] as String,
      nSeqEvento: json['nSeqEvento'] as String,
      verEvento: json['verEvento'] as String,
      detEvento: _detEventoComplexType_infEventoFromJson(
          json['detEvento'] as Map<String, dynamic>),
      Id: json['Id'] as String,
    );

Map<String, dynamic> _$infEventoComplexType_TEventoToJson(
        infEventoComplexType_TEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cOrgao': _cOrgaoEnumToValue(instance.cOrgao),
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'chNFe': instance.chNFe,
      'dhEvento': instance.dhEvento,
      'tpEvento': instance.tpEvento,
      'nSeqEvento': instance.nSeqEvento,
      'verEvento': instance.verEvento,
      'detEvento': _detEventoComplexType_infEventoToJson(instance.detEvento),
      'Id': instance.Id,
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
      CNPJDest: json['CNPJDest'] as String?,
      CPFDest: json['CPFDest'] as String?,
      emailDest: json['emailDest'] as String?,
      dhRegEvento: json['dhRegEvento'] as String,
      nProt: json['nProt'] as String?,
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
      'CNPJDest': instance.CNPJDest,
      'CPFDest': instance.CPFDest,
      'emailDest': instance.emailDest,
      'dhRegEvento': instance.dhRegEvento,
      'nProt': instance.nProt,
      'Id': instance.Id,
    };

detEventoComplexType_infEvento _$detEventoComplexType_infEventoFromJson(
        Map<String, dynamic> json) =>
    detEventoComplexType_infEvento(
      xmlns: json['xmlns'] as String?,
    );

Map<String, dynamic> _$detEventoComplexType_infEventoToJson(
        detEventoComplexType_infEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
    };
