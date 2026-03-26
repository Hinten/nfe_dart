// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procEPEC.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcEpecSchema _$ProcEpecSchemaFromJson(Map<String, dynamic> json) =>
    _ProcEpecSchema(
      xmlns: json['xmlns'] as String?,
      evento:
          _TEventoComplexTypeFromJson(json['evento'] as Map<String, dynamic>),
      retEvento: _TRetEventoComplexTypeFromJson(
          json['retEvento'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$ProcEpecSchemaToJson(_ProcEpecSchema instance) =>
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
      tpEvento: _tpEventoEnumFromValue(json['tpEvento'] as String),
      nSeqEvento: json['nSeqEvento'] as String,
      verEvento: _verEventoEnumFromValue(json['verEvento'] as String),
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
      'tpEvento': _tpEventoEnumToValue(instance.tpEvento),
      'nSeqEvento': instance.nSeqEvento,
      'verEvento': _verEventoEnumToValue(instance.verEvento),
      'detEvento': _detEventoComplexType_infEventoToJson(instance.detEvento),
      'Id': instance.Id,
    };

detEventoComplexType_infEvento _$detEventoComplexType_infEventoFromJson(
        Map<String, dynamic> json) =>
    detEventoComplexType_infEvento(
      xmlns: json['xmlns'] as String?,
      descEvento: _descEventoEnumFromValue(json['descEvento'] as String),
      cOrgaoAutor: _cOrgaoAutorEnumFromValue(json['cOrgaoAutor'] as String),
      tpAutor: _tpAutorEnumFromValue(json['tpAutor'] as String),
      verAplic: json['verAplic'] as String,
      dhEmi: json['dhEmi'] as String,
      tpNF: _tpNFEnumFromValue(json['tpNF'] as String),
      IE: json['IE'] as String,
      dest: _destComplexType_detEventoFromJson(
          json['dest'] as Map<String, dynamic>),
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$detEventoComplexType_infEventoToJson(
        detEventoComplexType_infEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'descEvento': _descEventoEnumToValue(instance.descEvento),
      'cOrgaoAutor': _cOrgaoAutorEnumToValue(instance.cOrgaoAutor),
      'tpAutor': _tpAutorEnumToValue(instance.tpAutor),
      'verAplic': instance.verAplic,
      'dhEmi': instance.dhEmi,
      'tpNF': _tpNFEnumToValue(instance.tpNF),
      'IE': instance.IE,
      'dest': _destComplexType_detEventoToJson(instance.dest),
      'versao': _versaoEnumToValue(instance.versao),
    };

destComplexType_detEvento _$destComplexType_detEventoFromJson(
        Map<String, dynamic> json) =>
    destComplexType_detEvento(
      xmlns: json['xmlns'] as String?,
      UF: _UFEnumFromValue(json['UF'] as String),
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      idEstrangeiro: json['idEstrangeiro'] as String?,
      IE: json['IE'] as String?,
      vNF: json['vNF'] as String,
      vICMS: json['vICMS'] as String,
      vST: json['vST'] as String,
    );

Map<String, dynamic> _$destComplexType_detEventoToJson(
        destComplexType_detEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'UF': _UFEnumToValue(instance.UF),
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'idEstrangeiro': instance.idEstrangeiro,
      'IE': instance.IE,
      'vNF': instance.vNF,
      'vICMS': instance.vICMS,
      'vST': instance.vST,
    };
