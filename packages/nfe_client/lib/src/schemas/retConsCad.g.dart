// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsCad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetConsCadSchema _$RetConsCadSchemaFromJson(Map<String, dynamic> json) =>
    _RetConsCadSchema(
      xmlns: json['xmlns'] as String?,
      infCons: _infConsComplexType_TRetConsCadFromJson(
          json['infCons'] as Map<String, dynamic>),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$RetConsCadSchemaToJson(_RetConsCadSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infCons': _infConsComplexType_TRetConsCadToJson(instance.infCons),
      'versao': instance.versao,
    };

infConsComplexType_TRetConsCad _$infConsComplexType_TRetConsCadFromJson(
        Map<String, dynamic> json) =>
    infConsComplexType_TRetConsCad(
      xmlns: json['xmlns'] as String?,
      verAplic: json['verAplic'] as String,
      cStat: json['cStat'] as String,
      xMotivo: json['xMotivo'] as String,
      UF: _UFEnumFromValue(json['UF'] as String),
      IE: json['IE'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      dhCons: json['dhCons'] as String?,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      infCad: _infCadComplexType_infConsMaybeFromJson(
          json['infCad'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$infConsComplexType_TRetConsCadToJson(
        infConsComplexType_TRetConsCad instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'verAplic': instance.verAplic,
      'cStat': instance.cStat,
      'xMotivo': instance.xMotivo,
      'UF': _UFEnumToValue(instance.UF),
      'IE': instance.IE,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'dhCons': instance.dhCons,
      'cUF': _cUFEnumToValue(instance.cUF),
      'infCad': _infCadComplexType_infConsMaybeToJson(instance.infCad),
    };

infCadComplexType_infCons _$infCadComplexType_infConsFromJson(
        Map<String, dynamic> json) =>
    infCadComplexType_infCons(
      xmlns: json['xmlns'] as String?,
      IE: json['IE'] as String,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      UF: _UFEnumFromValue(json['UF'] as String),
      cSit: _cSitEnumFromValue(json['cSit'] as String),
      indCredNFe: _indCredNFeEnumFromValue(json['indCredNFe'] as String),
      indCredCTe: _indCredCTeEnumFromValue(json['indCredCTe'] as String),
      xNome: json['xNome'] as String,
      xFant: json['xFant'] as String?,
      xRegApur: json['xRegApur'] as String?,
      CNAE: json['CNAE'] as String?,
      dIniAtiv: json['dIniAtiv'] as String?,
      dUltSit: json['dUltSit'] as String?,
      dBaixa: json['dBaixa'] as String?,
      IEUnica: json['IEUnica'] as String?,
      IEAtual: json['IEAtual'] as String?,
      ender: _TEnderecoComplexTypeMaybeFromJson(
          json['ender'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$infCadComplexType_infConsToJson(
        infCadComplexType_infCons instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'IE': instance.IE,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'UF': _UFEnumToValue(instance.UF),
      'cSit': _cSitEnumToValue(instance.cSit),
      'indCredNFe': _indCredNFeEnumToValue(instance.indCredNFe),
      'indCredCTe': _indCredCTeEnumToValue(instance.indCredCTe),
      'xNome': instance.xNome,
      'xFant': instance.xFant,
      'xRegApur': instance.xRegApur,
      'CNAE': instance.CNAE,
      'dIniAtiv': instance.dIniAtiv,
      'dUltSit': instance.dUltSit,
      'dBaixa': instance.dBaixa,
      'IEUnica': instance.IEUnica,
      'IEAtual': instance.IEAtual,
      'ender': _TEnderecoComplexTypeMaybeToJson(instance.ender),
    };

TEnderecoComplexType _$TEnderecoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TEnderecoComplexType(
      xmlns: json['xmlns'] as String?,
      xLgr: json['xLgr'] as String?,
      nro: json['nro'] as String?,
      xCpl: json['xCpl'] as String?,
      xBairro: json['xBairro'] as String?,
      cMun: json['cMun'] as String?,
      xMun: json['xMun'] as String?,
      CEP: json['CEP'] as String?,
    );

Map<String, dynamic> _$TEnderecoComplexTypeToJson(
        TEnderecoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xLgr': instance.xLgr,
      'nro': instance.nro,
      'xCpl': instance.xCpl,
      'xBairro': instance.xBairro,
      'cMun': instance.cMun,
      'xMun': instance.xMun,
      'CEP': instance.CEP,
    };
