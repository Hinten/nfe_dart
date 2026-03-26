// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'envEventoCancNFe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnvEventoCancNFeSchema _$EnvEventoCancNFeSchemaFromJson(
        Map<String, dynamic> json) =>
    _EnvEventoCancNFeSchema(
      xmlns: json['xmlns'] as String?,
      idLote: json['idLote'] as String,
      evento: _TEventoComplexTypeListFromJson(json['evento'] as List),
      versao: json['versao'] as String,
    );

Map<String, dynamic> _$EnvEventoCancNFeSchemaToJson(
        _EnvEventoCancNFeSchema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'idLote': instance.idLote,
      'evento': _TEventoComplexTypeListToJson(instance.evento),
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

SignatureTypeComplexType _$SignatureTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureTypeComplexType(
      xmlns: json['xmlns'] as String?,
      SignedInfo: _SignedInfoTypeComplexTypeFromJson(
          json['SignedInfo'] as Map<String, dynamic>),
      SignatureValue: _SignatureValueTypeComplexTypeFromJson(
          json['SignatureValue'] as Map<String, dynamic>),
      KeyInfo: _KeyInfoTypeComplexTypeFromJson(
          json['KeyInfo'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignatureTypeComplexTypeToJson(
        SignatureTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'SignedInfo': _SignedInfoTypeComplexTypeToJson(instance.SignedInfo),
      'SignatureValue':
          _SignatureValueTypeComplexTypeToJson(instance.SignatureValue),
      'KeyInfo': _KeyInfoTypeComplexTypeToJson(instance.KeyInfo),
      'Id': instance.Id,
    };

SignedInfoTypeComplexType _$SignedInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignedInfoTypeComplexType(
      xmlns: json['xmlns'] as String?,
      CanonicalizationMethod:
          _CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
              json['CanonicalizationMethod'] as Map<String, dynamic>),
      SignatureMethod: _SignatureMethodComplexType_SignedInfoTypeFromJson(
          json['SignatureMethod'] as Map<String, dynamic>),
      Reference: _ReferenceTypeComplexTypeFromJson(
          json['Reference'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignedInfoTypeComplexTypeToJson(
        SignedInfoTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CanonicalizationMethod':
          _CanonicalizationMethodComplexType_SignedInfoTypeToJson(
              instance.CanonicalizationMethod),
      'SignatureMethod': _SignatureMethodComplexType_SignedInfoTypeToJson(
          instance.SignatureMethod),
      'Reference': _ReferenceTypeComplexTypeToJson(instance.Reference),
      'Id': instance.Id,
    };

SignatureValueTypeComplexType _$SignatureValueTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureValueTypeComplexType(
      xmlns: json['xmlns'] as String?,
      SignatureValueType: json['SignatureValueType'] as String,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignatureValueTypeComplexTypeToJson(
        SignatureValueTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'SignatureValueType': instance.SignatureValueType,
      'Id': instance.Id,
    };

KeyInfoTypeComplexType _$KeyInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    KeyInfoTypeComplexType(
      xmlns: json['xmlns'] as String?,
      X509Data: _X509DataTypeComplexTypeFromJson(
          json['X509Data'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$KeyInfoTypeComplexTypeToJson(
        KeyInfoTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'X509Data': _X509DataTypeComplexTypeToJson(instance.X509Data),
      'Id': instance.Id,
    };

ReferenceTypeComplexType _$ReferenceTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    ReferenceTypeComplexType(
      xmlns: json['xmlns'] as String?,
      Transforms: _TransformsTypeComplexTypeFromJson(
          json['Transforms'] as Map<String, dynamic>),
      DigestMethod: _DigestMethodComplexType_ReferenceTypeFromJson(
          json['DigestMethod'] as Map<String, dynamic>),
      DigestValue: json['DigestValue'] as String,
      Id: json['Id'] as String?,
      URI: json['URI'] as String,
      Type: json['Type'] as String?,
    );

Map<String, dynamic> _$ReferenceTypeComplexTypeToJson(
        ReferenceTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Transforms': _TransformsTypeComplexTypeToJson(instance.Transforms),
      'DigestMethod':
          _DigestMethodComplexType_ReferenceTypeToJson(instance.DigestMethod),
      'DigestValue': instance.DigestValue,
      'Id': instance.Id,
      'URI': instance.URI,
      'Type': instance.Type,
    };

X509DataTypeComplexType _$X509DataTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    X509DataTypeComplexType(
      xmlns: json['xmlns'] as String?,
      X509Certificate: json['X509Certificate'] as String,
    );

Map<String, dynamic> _$X509DataTypeComplexTypeToJson(
        X509DataTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'X509Certificate': instance.X509Certificate,
    };

TransformsTypeComplexType _$TransformsTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformsTypeComplexType(
      xmlns: json['xmlns'] as String?,
      Transform:
          _TransformTypeComplexTypeListFromJson(json['Transform'] as List),
    );

Map<String, dynamic> _$TransformsTypeComplexTypeToJson(
        TransformsTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Transform': _TransformTypeComplexTypeListToJson(instance.Transform),
    };

TransformTypeComplexType _$TransformTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformTypeComplexType(
      xmlns: json['xmlns'] as String?,
      XPath: json['XPath'] as String?,
      Algorithm: _AlgorithmEnumFromValue(json['Algorithm'] as String),
    );

Map<String, dynamic> _$TransformTypeComplexTypeToJson(
        TransformTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'XPath': instance.XPath,
      'Algorithm': _AlgorithmEnumToValue(instance.Algorithm),
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

CanonicalizationMethodComplexType_SignedInfoType
    _$CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        CanonicalizationMethodComplexType_SignedInfoType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/TR/2001/REC-xml-c14n-20010315',
        );

Map<String, dynamic> _$CanonicalizationMethodComplexType_SignedInfoTypeToJson(
        CanonicalizationMethodComplexType_SignedInfoType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };

SignatureMethodComplexType_SignedInfoType
    _$SignatureMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        SignatureMethodComplexType_SignedInfoType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/2000/09/xmldsig#rsa-sha1',
        );

Map<String, dynamic> _$SignatureMethodComplexType_SignedInfoTypeToJson(
        SignatureMethodComplexType_SignedInfoType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };

DigestMethodComplexType_ReferenceType
    _$DigestMethodComplexType_ReferenceTypeFromJson(
            Map<String, dynamic> json) =>
        DigestMethodComplexType_ReferenceType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/2000/09/xmldsig#sha1',
        );

Map<String, dynamic> _$DigestMethodComplexType_ReferenceTypeToJson(
        DigestMethodComplexType_ReferenceType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };

detEventoComplexType_infEvento _$detEventoComplexType_infEventoFromJson(
        Map<String, dynamic> json) =>
    detEventoComplexType_infEvento(
      xmlns: json['xmlns'] as String?,
      descEvento: _descEventoEnumFromValue(json['descEvento'] as String),
      nProt: json['nProt'] as String,
      xJust: json['xJust'] as String,
      versao: _versaoEnumFromValue(json['versao'] as String),
    );

Map<String, dynamic> _$detEventoComplexType_infEventoToJson(
        detEventoComplexType_infEvento instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'descEvento': _descEventoEnumToValue(instance.descEvento),
      'nProt': instance.nProt,
      'xJust': instance.xJust,
      'versao': _versaoEnumToValue(instance.versao),
    };
