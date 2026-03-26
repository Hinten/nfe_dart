// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procEventoCancNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ProcEventoCancNFeSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _TEventoComplexTypeFromJson, toJson: _TEventoComplexTypeToJson)
  TEventoComplexType evento;
  @JsonKey(
      fromJson: _TRetEventoComplexTypeFromJson,
      toJson: _TRetEventoComplexTypeToJson)
  TRetEventoComplexType retEvento;
  String versao;

  _ProcEventoCancNFeSchema(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
      required this.versao}) {
    if ((RegExp(r'1\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _ProcEventoCancNFeSchema.unsafe(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
      required this.versao});
  String toXml(
      {String name = 'procEventoNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          evento.toXml(name: "evento", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          retEvento.toXml(name: "retEvento", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ProcEventoCancNFeSchema.fromXml(String xmlString,
      {String name = 'procEventoNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ProcEventoCancNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      evento: TEventoComplexType.fromXml(
          element.findElements('evento').first.toString(),
          name: "evento"),
      retEvento: TRetEventoComplexType.fromXml(
          element.findElements('retEvento').first.toString(),
          name: "retEvento"),
    );
  }
  factory _ProcEventoCancNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$ProcEventoCancNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ProcEventoCancNFeSchemaToJson(this);
}

@JsonSerializable()
class TEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infEventoComplexType_TEventoFromJson,
      toJson: _infEventoComplexType_TEventoToJson)
  infEventoComplexType_TEvento infEvento;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeFromJson,
      toJson: _SignatureTypeComplexTypeToJson)
  SignatureTypeComplexType Signature;
  String versao;

  TEventoComplexType(
      {this.xmlns,
      required this.infEvento,
      required this.Signature,
      required this.versao}) {
    if ((RegExp(r'1\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  TEventoComplexType.unsafe(
      {this.xmlns,
      required this.infEvento,
      required this.Signature,
      required this.versao});
  String toXml({String name = 'TEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infEvento.toXml(name: "infEvento", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Signature.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TEventoComplexType.fromXml(String xmlString,
      {String name = 'TEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TEventoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infEvento: infEventoComplexType_TEvento.fromXml(
          element.findElements('infEvento').first.toString(),
          name: "infEvento"),
      Signature: SignatureTypeComplexType.fromXml(
          element.findElements('Signature').first.toString(),
          name: "Signature"),
    );
  }
  factory TEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TEventoComplexTypeToJson(this);
}

List<TEventoComplexType> _TEventoComplexTypeListFromJson(List<dynamic> json) =>
    json
        .map((e) => TEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TEventoComplexType>? _TEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TEventoComplexTypeListToJson(
        List<TEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TEventoComplexTypeMaybeListToJson(
        List<TEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TEventoComplexType _TEventoComplexTypeFromJson(Map<String, dynamic> json) =>
    TEventoComplexType.fromJson(json);
TEventoComplexType? _TEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TEventoComplexTypeToJson(TEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TEventoComplexTypeMaybeToJson(
        TEventoComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TRetEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infEventoComplexType_TRetEventoFromJson,
      toJson: _infEventoComplexType_TRetEventoToJson)
  infEventoComplexType_TRetEvento infEvento;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  TRetEventoComplexType(
      {this.xmlns,
      required this.infEvento,
      this.Signature,
      required this.versao}) {
    if ((RegExp(r'1\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  TRetEventoComplexType.unsafe(
      {this.xmlns,
      required this.infEvento,
      this.Signature,
      required this.versao});
  String toXml(
      {String name = 'TRetEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infEvento.toXml(name: "infEvento", pretty: pretty)),
      if (Signature != null)
        xml.XmlDocumentFragment.parse(
            Signature!.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TRetEventoComplexType.fromXml(String xmlString,
      {String name = 'TRetEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TRetEventoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infEvento: infEventoComplexType_TRetEvento.fromXml(
          element.findElements('infEvento').first.toString(),
          name: "infEvento"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory TRetEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TRetEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TRetEventoComplexTypeToJson(this);
}

List<TRetEventoComplexType> _TRetEventoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TRetEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TRetEventoComplexType>? _TRetEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TRetEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TRetEventoComplexTypeListToJson(
        List<TRetEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TRetEventoComplexTypeMaybeListToJson(
        List<TRetEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TRetEventoComplexType _TRetEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TRetEventoComplexType.fromJson(json);
TRetEventoComplexType? _TRetEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TRetEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TRetEventoComplexTypeToJson(
        TRetEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TRetEventoComplexTypeMaybeToJson(
        TRetEventoComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignatureTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _SignedInfoTypeComplexTypeFromJson,
      toJson: _SignedInfoTypeComplexTypeToJson)
  SignedInfoTypeComplexType SignedInfo;
  @JsonKey(
      fromJson: _SignatureValueTypeComplexTypeFromJson,
      toJson: _SignatureValueTypeComplexTypeToJson)
  SignatureValueTypeComplexType SignatureValue;
  @JsonKey(
      fromJson: _KeyInfoTypeComplexTypeFromJson,
      toJson: _KeyInfoTypeComplexTypeToJson)
  KeyInfoTypeComplexType KeyInfo;
  String? Id;

  SignatureTypeComplexType(
      {this.xmlns,
      required this.SignedInfo,
      required this.SignatureValue,
      required this.KeyInfo,
      this.Id});
  SignatureTypeComplexType.unsafe(
      {this.xmlns,
      required this.SignedInfo,
      required this.SignatureValue,
      required this.KeyInfo,
      this.Id});
  String toXml(
      {String name = 'SignatureType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(
          SignedInfo.toXml(name: "SignedInfo", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          SignatureValue.toXml(name: "SignatureValue", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          KeyInfo.toXml(name: "KeyInfo", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureTypeComplexType.fromXml(String xmlString,
      {String name = 'SignatureType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      SignedInfo: SignedInfoTypeComplexType.fromXml(
          element.findElements('SignedInfo').first.toString(),
          name: "SignedInfo"),
      SignatureValue: SignatureValueTypeComplexType.fromXml(
          element.findElements('SignatureValue').first.toString(),
          name: "SignatureValue"),
      KeyInfo: KeyInfoTypeComplexType.fromXml(
          element.findElements('KeyInfo').first.toString(),
          name: "KeyInfo"),
    );
  }
  factory SignatureTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignatureTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureTypeComplexTypeToJson(this);
}

List<SignatureTypeComplexType> _SignatureTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => SignatureTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<SignatureTypeComplexType>? _SignatureTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => SignatureTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _SignatureTypeComplexTypeListToJson(
        List<SignatureTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _SignatureTypeComplexTypeMaybeListToJson(
        List<SignatureTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
SignatureTypeComplexType _SignatureTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureTypeComplexType.fromJson(json);
SignatureTypeComplexType? _SignatureTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? SignatureTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _SignatureTypeComplexTypeToJson(
        SignatureTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignatureTypeComplexTypeMaybeToJson(
        SignatureTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignedInfoTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _CanonicalizationMethodComplexType_SignedInfoTypeFromJson,
      toJson: _CanonicalizationMethodComplexType_SignedInfoTypeToJson)
  CanonicalizationMethodComplexType_SignedInfoType CanonicalizationMethod;
  @JsonKey(
      fromJson: _SignatureMethodComplexType_SignedInfoTypeFromJson,
      toJson: _SignatureMethodComplexType_SignedInfoTypeToJson)
  SignatureMethodComplexType_SignedInfoType SignatureMethod;
  @JsonKey(
      fromJson: _ReferenceTypeComplexTypeFromJson,
      toJson: _ReferenceTypeComplexTypeToJson)
  ReferenceTypeComplexType Reference;
  String? Id;

  SignedInfoTypeComplexType(
      {this.xmlns,
      required this.CanonicalizationMethod,
      required this.SignatureMethod,
      required this.Reference,
      this.Id});
  SignedInfoTypeComplexType.unsafe(
      {this.xmlns,
      required this.CanonicalizationMethod,
      required this.SignatureMethod,
      required this.Reference,
      this.Id});
  String toXml(
      {String name = 'SignedInfoType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(CanonicalizationMethod.toXml(
          name: "CanonicalizationMethod", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          SignatureMethod.toXml(name: "SignatureMethod", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Reference.toXml(name: "Reference", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignedInfoTypeComplexType.fromXml(String xmlString,
      {String name = 'SignedInfoType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignedInfoTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      CanonicalizationMethod:
          CanonicalizationMethodComplexType_SignedInfoType.fromXml(
              element.findElements('CanonicalizationMethod').first.toString(),
              name: "CanonicalizationMethod"),
      SignatureMethod: SignatureMethodComplexType_SignedInfoType.fromXml(
          element.findElements('SignatureMethod').first.toString(),
          name: "SignatureMethod"),
      Reference: ReferenceTypeComplexType.fromXml(
          element.findElements('Reference').first.toString(),
          name: "Reference"),
    );
  }
  factory SignedInfoTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignedInfoTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignedInfoTypeComplexTypeToJson(this);
}

List<SignedInfoTypeComplexType> _SignedInfoTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            SignedInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<SignedInfoTypeComplexType>? _SignedInfoTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            SignedInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _SignedInfoTypeComplexTypeListToJson(
        List<SignedInfoTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _SignedInfoTypeComplexTypeMaybeListToJson(
        List<SignedInfoTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
SignedInfoTypeComplexType _SignedInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignedInfoTypeComplexType.fromJson(json);
SignedInfoTypeComplexType? _SignedInfoTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? SignedInfoTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _SignedInfoTypeComplexTypeToJson(
        SignedInfoTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignedInfoTypeComplexTypeMaybeToJson(
        SignedInfoTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignatureValueTypeComplexType {
  String? xmlns;
  String SignatureValueType;
  String? Id;

  SignatureValueTypeComplexType(
      {this.xmlns, required this.SignatureValueType, this.Id});
  SignatureValueTypeComplexType.unsafe(
      {this.xmlns, required this.SignatureValueType, this.Id});
  String toXml(
      {String name = 'SignatureValueType',
      bool pretty = false,
      String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlText(SignatureValueType)
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureValueTypeComplexType.fromXml(String xmlString,
      {String name = 'SignatureValueType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureValueTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      SignatureValueType: element.text,
    );
  }
  factory SignatureValueTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignatureValueTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureValueTypeComplexTypeToJson(this);
}

List<SignatureValueTypeComplexType> _SignatureValueTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            SignatureValueTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<SignatureValueTypeComplexType>?
    _SignatureValueTypeComplexTypeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            SignatureValueTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _SignatureValueTypeComplexTypeListToJson(
        List<SignatureValueTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _SignatureValueTypeComplexTypeMaybeListToJson(
        List<SignatureValueTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
SignatureValueTypeComplexType _SignatureValueTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureValueTypeComplexType.fromJson(json);
SignatureValueTypeComplexType? _SignatureValueTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? SignatureValueTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _SignatureValueTypeComplexTypeToJson(
        SignatureValueTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignatureValueTypeComplexTypeMaybeToJson(
        SignatureValueTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class KeyInfoTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _X509DataTypeComplexTypeFromJson,
      toJson: _X509DataTypeComplexTypeToJson)
  X509DataTypeComplexType X509Data;
  String? Id;

  KeyInfoTypeComplexType({this.xmlns, required this.X509Data, this.Id});
  KeyInfoTypeComplexType.unsafe({this.xmlns, required this.X509Data, this.Id});
  String toXml(
      {String name = 'KeyInfoType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(
          X509Data.toXml(name: "X509Data", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory KeyInfoTypeComplexType.fromXml(String xmlString,
      {String name = 'KeyInfoType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return KeyInfoTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      X509Data: X509DataTypeComplexType.fromXml(
          element.findElements('X509Data').first.toString(),
          name: "X509Data"),
    );
  }
  factory KeyInfoTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$KeyInfoTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$KeyInfoTypeComplexTypeToJson(this);
}

List<KeyInfoTypeComplexType> _KeyInfoTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => KeyInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<KeyInfoTypeComplexType>? _KeyInfoTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => KeyInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _KeyInfoTypeComplexTypeListToJson(
        List<KeyInfoTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _KeyInfoTypeComplexTypeMaybeListToJson(
        List<KeyInfoTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
KeyInfoTypeComplexType _KeyInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    KeyInfoTypeComplexType.fromJson(json);
KeyInfoTypeComplexType? _KeyInfoTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? KeyInfoTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _KeyInfoTypeComplexTypeToJson(
        KeyInfoTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _KeyInfoTypeComplexTypeMaybeToJson(
        KeyInfoTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class ReferenceTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _TransformsTypeComplexTypeFromJson,
      toJson: _TransformsTypeComplexTypeToJson)
  TransformsTypeComplexType Transforms;
  @JsonKey(
      fromJson: _DigestMethodComplexType_ReferenceTypeFromJson,
      toJson: _DigestMethodComplexType_ReferenceTypeToJson)
  DigestMethodComplexType_ReferenceType DigestMethod;
  String DigestValue;
  String? Id;

  String URI;

  String? Type;

  ReferenceTypeComplexType(
      {this.xmlns,
      required this.Transforms,
      required this.DigestMethod,
      required this.DigestValue,
      this.Id,
      required this.URI,
      this.Type}) {
    if ((URI.toString().length >= 2) == false) {
      throw Exception('Invalid value for URI');
    }
    ;
  }
  ReferenceTypeComplexType.unsafe(
      {this.xmlns,
      required this.Transforms,
      required this.DigestMethod,
      required this.DigestValue,
      this.Id,
      required this.URI,
      this.Type});
  String toXml(
      {String name = 'ReferenceType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!),
      xml.XmlAttribute(xml.XmlName('URI'), URI.toString()),
      if (Type != null) xml.XmlAttribute(xml.XmlName('Type'), Type!)
    ], [
      xml.XmlDocumentFragment.parse(
          Transforms.toXml(name: "Transforms", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          DigestMethod.toXml(name: "DigestMethod", pretty: pretty)),
      xml.XmlElement(
          xml.XmlName('DigestValue'), [], [xml.XmlText(DigestValue.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ReferenceTypeComplexType.fromXml(String xmlString,
      {String name = 'ReferenceType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ReferenceTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      URI: element.getAttribute('URI')!,
      Type: element.getAttribute("Type"),
      Transforms: TransformsTypeComplexType.fromXml(
          element.findElements('Transforms').first.toString(),
          name: "Transforms"),
      DigestMethod: DigestMethodComplexType_ReferenceType.fromXml(
          element.findElements('DigestMethod').first.toString(),
          name: "DigestMethod"),
      DigestValue: element.findElements('DigestValue').first.text,
    );
  }
  factory ReferenceTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$ReferenceTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceTypeComplexTypeToJson(this);
}

List<ReferenceTypeComplexType> _ReferenceTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => ReferenceTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<ReferenceTypeComplexType>? _ReferenceTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ReferenceTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ReferenceTypeComplexTypeListToJson(
        List<ReferenceTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ReferenceTypeComplexTypeMaybeListToJson(
        List<ReferenceTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
ReferenceTypeComplexType _ReferenceTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    ReferenceTypeComplexType.fromJson(json);
ReferenceTypeComplexType? _ReferenceTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ReferenceTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _ReferenceTypeComplexTypeToJson(
        ReferenceTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _ReferenceTypeComplexTypeMaybeToJson(
        ReferenceTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class X509DataTypeComplexType {
  String? xmlns;
  String X509Certificate;
  X509DataTypeComplexType({this.xmlns, required this.X509Certificate});
  X509DataTypeComplexType.unsafe({this.xmlns, required this.X509Certificate});
  String toXml(
      {String name = 'X509DataType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('X509Certificate'), [], [
        xml.XmlText(X509Certificate),
      ]),
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory X509DataTypeComplexType.fromXml(String xmlString,
      {String name = 'X509DataType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return X509DataTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      X509Certificate: element.getElement('X509Certificate')!.text,
    );
  }
  factory X509DataTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$X509DataTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$X509DataTypeComplexTypeToJson(this);
}

List<X509DataTypeComplexType> _X509DataTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => X509DataTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<X509DataTypeComplexType>? _X509DataTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => X509DataTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _X509DataTypeComplexTypeListToJson(
        List<X509DataTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _X509DataTypeComplexTypeMaybeListToJson(
        List<X509DataTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
X509DataTypeComplexType _X509DataTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    X509DataTypeComplexType.fromJson(json);
X509DataTypeComplexType? _X509DataTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? X509DataTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _X509DataTypeComplexTypeToJson(
        X509DataTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _X509DataTypeComplexTypeMaybeToJson(
        X509DataTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TransformsTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _TransformTypeComplexTypeListFromJson,
      toJson: _TransformTypeComplexTypeListToJson)
  List<TransformTypeComplexType> Transform;
  TransformsTypeComplexType({this.xmlns, required this.Transform});
  TransformsTypeComplexType.unsafe({this.xmlns, required this.Transform});
  String toXml(
      {String name = 'TransformsType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      ...Transform.map((e) => xml.XmlDocumentFragment.parse(
          e.toXml(name: "Transform", pretty: pretty))).toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TransformsTypeComplexType.fromXml(String xmlString,
      {String name = 'TransformsType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TransformsTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Transform: element
          .findElements('Transform')
          .map((e) =>
              TransformTypeComplexType.fromXml(e.toString(), name: "Transform"))
          .toList(),
    );
  }
  factory TransformsTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TransformsTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TransformsTypeComplexTypeToJson(this);
}

List<TransformsTypeComplexType> _TransformsTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            TransformsTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TransformsTypeComplexType>? _TransformsTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            TransformsTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TransformsTypeComplexTypeListToJson(
        List<TransformsTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TransformsTypeComplexTypeMaybeListToJson(
        List<TransformsTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TransformsTypeComplexType _TransformsTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformsTypeComplexType.fromJson(json);
TransformsTypeComplexType? _TransformsTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TransformsTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _TransformsTypeComplexTypeToJson(
        TransformsTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TransformsTypeComplexTypeMaybeToJson(
        TransformsTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TransformTypeComplexType {
  String? xmlns;
  String? XPath;
  @JsonKey(fromJson: _AlgorithmEnumFromValue, toJson: _AlgorithmEnumToValue)
  AlgorithmEnum Algorithm;

  TransformTypeComplexType({this.xmlns, this.XPath, required this.Algorithm});
  TransformTypeComplexType.unsafe(
      {this.xmlns, this.XPath, required this.Algorithm});
  String toXml(
      {String name = 'TransformType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm.value)
    ], [
      if (XPath?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('XPath'), [], [xml.XmlText(XPath!)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TransformTypeComplexType.fromXml(String xmlString,
      {String name = 'TransformType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TransformTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: AlgorithmEnum.fromValue(element.getAttribute('Algorithm')!),
      XPath: element.getElement('XPath')?.text,
    );
  }
  factory TransformTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TransformTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TransformTypeComplexTypeToJson(this);
}

List<TransformTypeComplexType> _TransformTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => TransformTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TransformTypeComplexType>? _TransformTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => TransformTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TransformTypeComplexTypeListToJson(
        List<TransformTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TransformTypeComplexTypeMaybeListToJson(
        List<TransformTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TransformTypeComplexType _TransformTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformTypeComplexType.fromJson(json);
TransformTypeComplexType? _TransformTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TransformTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _TransformTypeComplexTypeToJson(
        TransformTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TransformTypeComplexTypeMaybeToJson(
        TransformTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class infEventoComplexType_TEvento {
  String? xmlns;
  @JsonKey(fromJson: _cOrgaoEnumFromValue, toJson: _cOrgaoEnumToValue)
  cOrgaoEnum cOrgao;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String? CNPJ;
  String? CPF;
  String chNFe;
  String dhEvento;
  @JsonKey(fromJson: _tpEventoEnumFromValue, toJson: _tpEventoEnumToValue)
  tpEventoEnum tpEvento;
  String nSeqEvento;
  @JsonKey(fromJson: _verEventoEnumFromValue, toJson: _verEventoEnumToValue)
  verEventoEnum verEvento;
  @JsonKey(
      fromJson: _detEventoComplexType_infEventoFromJson,
      toJson: _detEventoComplexType_infEventoToJson)
  detEventoComplexType_infEvento detEvento;
  String Id;

  infEventoComplexType_TEvento(
      {this.xmlns,
      required this.cOrgao,
      required this.tpAmb,
      this.CNPJ,
      this.CPF,
      required this.chNFe,
      required this.dhEvento,
      required this.tpEvento,
      required this.nSeqEvento,
      required this.verEvento,
      required this.detEvento,
      required this.Id}) {
    if ((cOrgao.toString().trim() == cOrgao.toString()) == false) {
      throw Exception('Invalid value for cOrgao');
    }
    ;
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((CNPJ == null ||
            RegExp(r'[0-9]{0}|[0-9]{14}').hasMatch(CNPJ.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((CPF == null || RegExp(r'[0-9]{11}').hasMatch(CPF.toString())) ==
        false) {
      throw Exception('Invalid value for CPF - $CPF');
    }
    ;
    if ((CPF == null || CPF.toString().trim() == CPF.toString()) == false) {
      throw Exception('Invalid value for CPF');
    }
    ;
    final _$CNPJCPF = [CNPJ != null, CPF != null];
    if ((_$CNPJCPF.every((e) => e == false) ||
            _$CNPJCPF.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJ, CPF');
    }
    ;
    if ((RegExp(r'[0-9]{44}').hasMatch(chNFe.toString())) == false) {
      throw Exception('Invalid value for chNFe - $chNFe');
    }
    ;
    if ((chNFe.toString().trim() == chNFe.toString()) == false) {
      throw Exception('Invalid value for chNFe');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhEvento.toString())) ==
        false) {
      throw Exception('Invalid value for dhEvento - $dhEvento');
    }
    ;
    if ((dhEvento.toString().trim() == dhEvento.toString()) == false) {
      throw Exception('Invalid value for dhEvento');
    }
    ;
    if ((RegExp(r'[0-9]{6}').hasMatch(tpEvento.toString())) == false) {
      throw Exception('Invalid value for tpEvento - $tpEvento');
    }
    ;
    if ((tpEvento.toString().trim() == tpEvento.toString()) == false) {
      throw Exception('Invalid value for tpEvento');
    }
    ;
    if ((RegExp(r'[1-9]|[1][0-9]{0,1}|20').hasMatch(nSeqEvento.toString())) ==
        false) {
      throw Exception('Invalid value for nSeqEvento - $nSeqEvento');
    }
    ;
    if ((nSeqEvento.toString().trim() == nSeqEvento.toString()) == false) {
      throw Exception('Invalid value for nSeqEvento');
    }
    ;
    if ((verEvento.toString().trim() == verEvento.toString()) == false) {
      throw Exception('Invalid value for verEvento');
    }
    ;
    if ((RegExp(r'ID[0-9]{52}').hasMatch(Id.toString())) == false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infEventoComplexType_TEvento.unsafe(
      {this.xmlns,
      required this.cOrgao,
      required this.tpAmb,
      this.CNPJ,
      this.CPF,
      required this.chNFe,
      required this.dhEvento,
      required this.tpEvento,
      required this.nSeqEvento,
      required this.verEvento,
      required this.detEvento,
      required this.Id});
  String toXml(
      {String name = 'infEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlElement(xml.XmlName('cOrgao'), [], [xml.XmlText(cOrgao.value)]),
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      xml.XmlElement(
          xml.XmlName('dhEvento'), [], [xml.XmlText(dhEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('tpEvento'), [], [xml.XmlText(tpEvento.value)]),
      xml.XmlElement(
          xml.XmlName('nSeqEvento'), [], [xml.XmlText(nSeqEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('verEvento'), [], [xml.XmlText(verEvento.value)]),
      xml.XmlDocumentFragment.parse(
          detEvento.toXml(name: "detEvento", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infEventoComplexType_TEvento.fromXml(String xmlString,
      {String name = 'infEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infEventoComplexType_TEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute('Id')!,
      cOrgao: cOrgaoEnum.fromValue(element.findElements('cOrgao').first.text),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      chNFe: element.findElements('chNFe').first.text,
      dhEvento: element.findElements('dhEvento').first.text,
      tpEvento:
          tpEventoEnum.fromValue(element.findElements('tpEvento').first.text),
      nSeqEvento: element.findElements('nSeqEvento').first.text,
      verEvento:
          verEventoEnum.fromValue(element.findElements('verEvento').first.text),
      detEvento: detEventoComplexType_infEvento.fromXml(
          element.findElements('detEvento').first.toString(),
          name: "detEvento"),
    );
  }
  factory infEventoComplexType_TEvento.fromJson(Map<String, dynamic> json) =>
      _$infEventoComplexType_TEventoFromJson(json);
  Map<String, dynamic> toJson() => _$infEventoComplexType_TEventoToJson(this);
}

List<infEventoComplexType_TEvento> _infEventoComplexType_TEventoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infEventoComplexType_TEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<infEventoComplexType_TEvento>?
    _infEventoComplexType_TEventoMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infEventoComplexType_TEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infEventoComplexType_TEventoListToJson(
        List<infEventoComplexType_TEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infEventoComplexType_TEventoMaybeListToJson(
        List<infEventoComplexType_TEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
infEventoComplexType_TEvento _infEventoComplexType_TEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TEvento.fromJson(json);
infEventoComplexType_TEvento? _infEventoComplexType_TEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infEventoComplexType_TEvento.fromJson(json) : null;
Map<String, dynamic> _infEventoComplexType_TEventoToJson(
        infEventoComplexType_TEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _infEventoComplexType_TEventoMaybeToJson(
        infEventoComplexType_TEvento? instance) =>
    instance?.toJson();

@JsonSerializable()
class infEventoComplexType_TRetEvento {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  @JsonKey(fromJson: _cOrgaoEnumFromValue, toJson: _cOrgaoEnumToValue)
  cOrgaoEnum cOrgao;
  String cStat;
  String xMotivo;
  String? chNFe;
  String? tpEvento;
  String? xEvento;
  String? nSeqEvento;
  String? CNPJDest;
  String? CPFDest;
  String? emailDest;
  String dhRegEvento;
  String? nProt;
  String? Id;

  infEventoComplexType_TRetEvento(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.chNFe,
      this.tpEvento,
      this.xEvento,
      this.nSeqEvento,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
      this.nProt,
      this.Id}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((verAplic.toString().length <= 20) == false) {
      throw Exception('Invalid value for verAplic');
    }
    ;
    if ((verAplic.toString().length >= 1) == false) {
      throw Exception('Invalid value for verAplic');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(verAplic.toString())) ==
        false) {
      throw Exception('Invalid value for verAplic - $verAplic');
    }
    ;
    if ((verAplic.toString().trim() == verAplic.toString()) == false) {
      throw Exception('Invalid value for verAplic');
    }
    ;
    if ((cOrgao.toString().trim() == cOrgao.toString()) == false) {
      throw Exception('Invalid value for cOrgao');
    }
    ;
    if ((RegExp(r'[0-9]{3}').hasMatch(cStat.toString())) == false) {
      throw Exception('Invalid value for cStat - $cStat');
    }
    ;
    if ((cStat.toString().trim() == cStat.toString()) == false) {
      throw Exception('Invalid value for cStat');
    }
    ;
    if ((xMotivo.toString().length <= 255) == false) {
      throw Exception('Invalid value for xMotivo');
    }
    ;
    if ((xMotivo.toString().length >= 1) == false) {
      throw Exception('Invalid value for xMotivo');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xMotivo.toString())) ==
        false) {
      throw Exception('Invalid value for xMotivo - $xMotivo');
    }
    ;
    if ((xMotivo.toString().trim() == xMotivo.toString()) == false) {
      throw Exception('Invalid value for xMotivo');
    }
    ;
    if ((chNFe == null || RegExp(r'[0-9]{44}').hasMatch(chNFe.toString())) ==
        false) {
      throw Exception('Invalid value for chNFe - $chNFe');
    }
    ;
    if ((chNFe == null || chNFe.toString().trim() == chNFe.toString()) ==
        false) {
      throw Exception('Invalid value for chNFe');
    }
    ;
    if ((tpEvento == null ||
            RegExp(r'[0-9]{6}').hasMatch(tpEvento.toString())) ==
        false) {
      throw Exception('Invalid value for tpEvento - $tpEvento');
    }
    ;
    if ((tpEvento == null ||
            tpEvento.toString().trim() == tpEvento.toString()) ==
        false) {
      throw Exception('Invalid value for tpEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().length <= 60) == false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().length >= 5) == false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((xEvento == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xEvento.toString())) ==
        false) {
      throw Exception('Invalid value for xEvento - $xEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().trim() == xEvento.toString()) ==
        false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((nSeqEvento == null ||
            RegExp(r'[1-9][0-9]{0,1}').hasMatch(nSeqEvento.toString())) ==
        false) {
      throw Exception('Invalid value for nSeqEvento - $nSeqEvento');
    }
    ;
    if ((nSeqEvento == null ||
            nSeqEvento.toString().trim() == nSeqEvento.toString()) ==
        false) {
      throw Exception('Invalid value for nSeqEvento');
    }
    ;
    if ((CNPJDest == null || CNPJDest.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJDest');
    }
    ;
    if ((CNPJDest == null ||
            RegExp(r'[0-9]{0}|[0-9]{14}').hasMatch(CNPJDest.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJDest - $CNPJDest');
    }
    ;
    if ((CNPJDest == null ||
            CNPJDest.toString().trim() == CNPJDest.toString()) ==
        false) {
      throw Exception('Invalid value for CNPJDest');
    }
    ;
    if ((CPFDest == null ||
            RegExp(r'[0-9]{11}').hasMatch(CPFDest.toString())) ==
        false) {
      throw Exception('Invalid value for CPFDest - $CPFDest');
    }
    ;
    if ((CPFDest == null || CPFDest.toString().trim() == CPFDest.toString()) ==
        false) {
      throw Exception('Invalid value for CPFDest');
    }
    ;
    final _$CNPJDestCPFDest = [CNPJDest != null, CPFDest != null];
    if ((_$CNPJDestCPFDest.every((e) => e == false) ||
            _$CNPJDestCPFDest.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJDest, CPFDest');
    }
    ;
    if ((emailDest == null || emailDest.toString().length <= 60) == false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((emailDest == null || emailDest.toString().length >= 1) == false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((emailDest == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(emailDest.toString())) ==
        false) {
      throw Exception('Invalid value for emailDest - $emailDest');
    }
    ;
    if ((emailDest == null ||
            emailDest.toString().trim() == emailDest.toString()) ==
        false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d-0[1-4]:00')
            .hasMatch(dhRegEvento.toString())) ==
        false) {
      throw Exception('Invalid value for dhRegEvento - $dhRegEvento');
    }
    ;
    if ((dhRegEvento.toString().trim() == dhRegEvento.toString()) == false) {
      throw Exception('Invalid value for dhRegEvento');
    }
    ;
    if ((nProt == null || RegExp(r'[0-9]{15}').hasMatch(nProt.toString())) ==
        false) {
      throw Exception('Invalid value for nProt - $nProt');
    }
    ;
    if ((nProt == null || nProt.toString().trim() == nProt.toString()) ==
        false) {
      throw Exception('Invalid value for nProt');
    }
    ;
    if ((Id == null || RegExp(r'ID[0-9]{15}').hasMatch(Id.toString())) ==
        false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infEventoComplexType_TRetEvento.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.chNFe,
      this.tpEvento,
      this.xEvento,
      this.nSeqEvento,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
      this.nProt,
      this.Id});
  String toXml(
      {String name = 'infEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cOrgao'), [], [xml.XmlText(cOrgao.value)]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      if (chNFe != null)
        xml.XmlElement(
            xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      if (tpEvento != null)
        xml.XmlElement(
            xml.XmlName('tpEvento'), [], [xml.XmlText(tpEvento.toString())]),
      if (xEvento != null)
        xml.XmlElement(
            xml.XmlName('xEvento'), [], [xml.XmlText(xEvento.toString())]),
      if (nSeqEvento != null)
        xml.XmlElement(xml.XmlName('nSeqEvento'), [],
            [xml.XmlText(nSeqEvento.toString())]),
      if (CNPJDest != null)
        xml.XmlElement(
            xml.XmlName('CNPJDest'), [], [xml.XmlText(CNPJDest.toString())]),
      if (CPFDest != null)
        xml.XmlElement(
            xml.XmlName('CPFDest'), [], [xml.XmlText(CPFDest.toString())]),
      if (emailDest != null)
        xml.XmlElement(
            xml.XmlName('emailDest'), [], [xml.XmlText(emailDest.toString())]),
      xml.XmlElement(xml.XmlName('dhRegEvento'), [],
          [xml.XmlText(dhRegEvento.toString())]),
      if (nProt != null)
        xml.XmlElement(
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infEventoComplexType_TRetEvento.fromXml(String xmlString,
      {String name = 'infEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infEventoComplexType_TRetEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute('Id'),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cOrgao: cOrgaoEnum.fromValue(element.findElements('cOrgao').first.text),
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      chNFe: element.findElements('chNFe').isNotEmpty
          ? element.findElements('chNFe').first.text
          : null,
      tpEvento: element.findElements('tpEvento').isNotEmpty
          ? element.findElements('tpEvento').first.text
          : null,
      xEvento: element.findElements('xEvento').isNotEmpty
          ? element.findElements('xEvento').first.text
          : null,
      nSeqEvento: element.findElements('nSeqEvento').isNotEmpty
          ? element.findElements('nSeqEvento').first.text
          : null,
      CNPJDest: element.findElements('CNPJDest').isNotEmpty
          ? element.findElements('CNPJDest').first.text
          : null,
      CPFDest: element.findElements('CPFDest').isNotEmpty
          ? element.findElements('CPFDest').first.text
          : null,
      emailDest: element.findElements('emailDest').isNotEmpty
          ? element.findElements('emailDest').first.text
          : null,
      dhRegEvento: element.findElements('dhRegEvento').first.text,
      nProt: element.findElements('nProt').isNotEmpty
          ? element.findElements('nProt').first.text
          : null,
    );
  }
  factory infEventoComplexType_TRetEvento.fromJson(Map<String, dynamic> json) =>
      _$infEventoComplexType_TRetEventoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$infEventoComplexType_TRetEventoToJson(this);
}

List<infEventoComplexType_TRetEvento>
    _infEventoComplexType_TRetEventoListFromJson(List<dynamic> json) => json
        .map((e) =>
            infEventoComplexType_TRetEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<infEventoComplexType_TRetEvento>?
    _infEventoComplexType_TRetEventoMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infEventoComplexType_TRetEvento
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infEventoComplexType_TRetEventoListToJson(
        List<infEventoComplexType_TRetEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infEventoComplexType_TRetEventoMaybeListToJson(
        List<infEventoComplexType_TRetEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
infEventoComplexType_TRetEvento _infEventoComplexType_TRetEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TRetEvento.fromJson(json);
infEventoComplexType_TRetEvento? _infEventoComplexType_TRetEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infEventoComplexType_TRetEvento.fromJson(json) : null;
Map<String, dynamic> _infEventoComplexType_TRetEventoToJson(
        infEventoComplexType_TRetEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _infEventoComplexType_TRetEventoMaybeToJson(
        infEventoComplexType_TRetEvento? instance) =>
    instance?.toJson();

@JsonSerializable()
class CanonicalizationMethodComplexType_SignedInfoType {
  String? xmlns;
  final String Algorithm;

  CanonicalizationMethodComplexType_SignedInfoType(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'}) {
    if (Algorithm != 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315') {
      throw Exception(
          "Algorithm != 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'");
    }
    ;
  }
  CanonicalizationMethodComplexType_SignedInfoType.unsafe(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'});
  String toXml(
      {String name = 'CanonicalizationMethod',
      bool pretty = false,
      String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory CanonicalizationMethodComplexType_SignedInfoType.fromXml(
      String xmlString,
      {String name = 'CanonicalizationMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return CanonicalizationMethodComplexType_SignedInfoType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory CanonicalizationMethodComplexType_SignedInfoType.fromJson(
          Map<String, dynamic> json) =>
      _$CanonicalizationMethodComplexType_SignedInfoTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CanonicalizationMethodComplexType_SignedInfoTypeToJson(this);
}

List<CanonicalizationMethodComplexType_SignedInfoType>
    _CanonicalizationMethodComplexType_SignedInfoTypeListFromJson(
            List<dynamic> json) =>
        json
            .map((e) =>
                CanonicalizationMethodComplexType_SignedInfoType.fromJson(
                    e as Map<String, dynamic>))
            .toList();
List<CanonicalizationMethodComplexType_SignedInfoType>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) =>
                CanonicalizationMethodComplexType_SignedInfoType.fromJson(
                    e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>>
    _CanonicalizationMethodComplexType_SignedInfoTypeListToJson(
            List<CanonicalizationMethodComplexType_SignedInfoType> list) =>
        list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeListToJson(
            List<CanonicalizationMethodComplexType_SignedInfoType>? list) =>
        list?.map((e) => e.toJson()).toList();
CanonicalizationMethodComplexType_SignedInfoType
    _CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        CanonicalizationMethodComplexType_SignedInfoType.fromJson(json);
CanonicalizationMethodComplexType_SignedInfoType?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? CanonicalizationMethodComplexType_SignedInfoType.fromJson(json)
            : null;
Map<String, dynamic> _CanonicalizationMethodComplexType_SignedInfoTypeToJson(
        CanonicalizationMethodComplexType_SignedInfoType instance) =>
    instance.toJson();
Map<String, dynamic>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeToJson(
            CanonicalizationMethodComplexType_SignedInfoType? instance) =>
        instance?.toJson();

@JsonSerializable()
class SignatureMethodComplexType_SignedInfoType {
  String? xmlns;
  final String Algorithm;

  SignatureMethodComplexType_SignedInfoType(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'}) {
    if (Algorithm != 'http://www.w3.org/2000/09/xmldsig#rsa-sha1') {
      throw Exception(
          "Algorithm != 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'");
    }
    ;
  }
  SignatureMethodComplexType_SignedInfoType.unsafe(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'});
  String toXml(
      {String name = 'SignatureMethod', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureMethodComplexType_SignedInfoType.fromXml(String xmlString,
      {String name = 'SignatureMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureMethodComplexType_SignedInfoType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory SignatureMethodComplexType_SignedInfoType.fromJson(
          Map<String, dynamic> json) =>
      _$SignatureMethodComplexType_SignedInfoTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SignatureMethodComplexType_SignedInfoTypeToJson(this);
}

List<SignatureMethodComplexType_SignedInfoType>
    _SignatureMethodComplexType_SignedInfoTypeListFromJson(
            List<dynamic> json) =>
        json
            .map((e) => SignatureMethodComplexType_SignedInfoType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<SignatureMethodComplexType_SignedInfoType>?
    _SignatureMethodComplexType_SignedInfoTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) => SignatureMethodComplexType_SignedInfoType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _SignatureMethodComplexType_SignedInfoTypeListToJson(
        List<SignatureMethodComplexType_SignedInfoType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _SignatureMethodComplexType_SignedInfoTypeMaybeListToJson(
            List<SignatureMethodComplexType_SignedInfoType>? list) =>
        list?.map((e) => e.toJson()).toList();
SignatureMethodComplexType_SignedInfoType
    _SignatureMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        SignatureMethodComplexType_SignedInfoType.fromJson(json);
SignatureMethodComplexType_SignedInfoType?
    _SignatureMethodComplexType_SignedInfoTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? SignatureMethodComplexType_SignedInfoType.fromJson(json)
            : null;
Map<String, dynamic> _SignatureMethodComplexType_SignedInfoTypeToJson(
        SignatureMethodComplexType_SignedInfoType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignatureMethodComplexType_SignedInfoTypeMaybeToJson(
        SignatureMethodComplexType_SignedInfoType? instance) =>
    instance?.toJson();

@JsonSerializable()
class DigestMethodComplexType_ReferenceType {
  String? xmlns;
  final String Algorithm;

  DigestMethodComplexType_ReferenceType(
      {this.xmlns, this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#sha1'}) {
    if (Algorithm != 'http://www.w3.org/2000/09/xmldsig#sha1') {
      throw Exception("Algorithm != 'http://www.w3.org/2000/09/xmldsig#sha1'");
    }
    ;
  }
  DigestMethodComplexType_ReferenceType.unsafe(
      {this.xmlns, this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#sha1'});
  String toXml(
      {String name = 'DigestMethod', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory DigestMethodComplexType_ReferenceType.fromXml(String xmlString,
      {String name = 'DigestMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return DigestMethodComplexType_ReferenceType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory DigestMethodComplexType_ReferenceType.fromJson(
          Map<String, dynamic> json) =>
      _$DigestMethodComplexType_ReferenceTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DigestMethodComplexType_ReferenceTypeToJson(this);
}

List<DigestMethodComplexType_ReferenceType>
    _DigestMethodComplexType_ReferenceTypeListFromJson(List<dynamic> json) =>
        json
            .map((e) => DigestMethodComplexType_ReferenceType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<DigestMethodComplexType_ReferenceType>?
    _DigestMethodComplexType_ReferenceTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) => DigestMethodComplexType_ReferenceType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _DigestMethodComplexType_ReferenceTypeListToJson(
        List<DigestMethodComplexType_ReferenceType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _DigestMethodComplexType_ReferenceTypeMaybeListToJson(
            List<DigestMethodComplexType_ReferenceType>? list) =>
        list?.map((e) => e.toJson()).toList();
DigestMethodComplexType_ReferenceType
    _DigestMethodComplexType_ReferenceTypeFromJson(Map<String, dynamic> json) =>
        DigestMethodComplexType_ReferenceType.fromJson(json);
DigestMethodComplexType_ReferenceType?
    _DigestMethodComplexType_ReferenceTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? DigestMethodComplexType_ReferenceType.fromJson(json)
            : null;
Map<String, dynamic> _DigestMethodComplexType_ReferenceTypeToJson(
        DigestMethodComplexType_ReferenceType instance) =>
    instance.toJson();
Map<String, dynamic>? _DigestMethodComplexType_ReferenceTypeMaybeToJson(
        DigestMethodComplexType_ReferenceType? instance) =>
    instance?.toJson();

@JsonSerializable()
class detEventoComplexType_infEvento {
  String? xmlns;
  @JsonKey(fromJson: _descEventoEnumFromValue, toJson: _descEventoEnumToValue)
  descEventoEnum descEvento;
  String nProt;
  String xJust;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  detEventoComplexType_infEvento(
      {this.xmlns,
      required this.descEvento,
      required this.nProt,
      required this.xJust,
      required this.versao}) {
    if ((descEvento.toString().trim() == descEvento.toString()) == false) {
      throw Exception('Invalid value for descEvento');
    }
    ;
    if ((RegExp(r'[0-9]{15}').hasMatch(nProt.toString())) == false) {
      throw Exception('Invalid value for nProt - $nProt');
    }
    ;
    if ((nProt.toString().trim() == nProt.toString()) == false) {
      throw Exception('Invalid value for nProt');
    }
    ;
    if ((xJust.toString().length <= 255) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((xJust.toString().length >= 15) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xJust.toString())) ==
        false) {
      throw Exception('Invalid value for xJust - $xJust');
    }
    ;
    if ((xJust.toString().trim() == xJust.toString()) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  detEventoComplexType_infEvento.unsafe(
      {this.xmlns,
      required this.descEvento,
      required this.nProt,
      required this.xJust,
      required this.versao});
  String toXml(
      {String name = 'detEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.value)
    ], [
      xml.XmlElement(
          xml.XmlName('descEvento'), [], [xml.XmlText(descEvento.value)]),
      xml.XmlElement(xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())]),
      xml.XmlElement(xml.XmlName('xJust'), [], [xml.XmlText(xJust.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory detEventoComplexType_infEvento.fromXml(String xmlString,
      {String name = 'detEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return detEventoComplexType_infEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      descEvento: descEventoEnum
          .fromValue(element.findElements('descEvento').first.text),
      nProt: element.findElements('nProt').first.text,
      xJust: element.findElements('xJust').first.text,
    );
  }
  factory detEventoComplexType_infEvento.fromJson(Map<String, dynamic> json) =>
      _$detEventoComplexType_infEventoFromJson(json);
  Map<String, dynamic> toJson() => _$detEventoComplexType_infEventoToJson(this);
}

List<detEventoComplexType_infEvento>
    _detEventoComplexType_infEventoListFromJson(List<dynamic> json) => json
        .map((e) =>
            detEventoComplexType_infEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<detEventoComplexType_infEvento>?
    _detEventoComplexType_infEventoMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => detEventoComplexType_infEvento
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _detEventoComplexType_infEventoListToJson(
        List<detEventoComplexType_infEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _detEventoComplexType_infEventoMaybeListToJson(
        List<detEventoComplexType_infEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
detEventoComplexType_infEvento _detEventoComplexType_infEventoFromJson(
        Map<String, dynamic> json) =>
    detEventoComplexType_infEvento.fromJson(json);
detEventoComplexType_infEvento? _detEventoComplexType_infEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? detEventoComplexType_infEvento.fromJson(json) : null;
Map<String, dynamic> _detEventoComplexType_infEventoToJson(
        detEventoComplexType_infEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _detEventoComplexType_infEventoMaybeToJson(
        detEventoComplexType_infEvento? instance) =>
    instance?.toJson();

enum AlgorithmEnum {
  v_httpwwww3org200009("http://www.w3.org/2000/09/xmldsig#enveloped-signature"),
  v_httpwwww3orgTR2001("http://www.w3.org/TR/2001/REC-xml-c14n-20010315");

  final String value;
  const AlgorithmEnum(this.value);
  factory AlgorithmEnum.fromValue(String value) {
    for (final item in AlgorithmEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for AlgorithmEnum: $value");
  }
}

AlgorithmEnum? _AlgorithmEnumFromMaybeValue(String? value) =>
    value != null ? AlgorithmEnum.fromValue(value) : null;
String? _AlgorithmEnumToMaybeValue(AlgorithmEnum? value) =>
    value != null ? value.value : null;

AlgorithmEnum _AlgorithmEnumFromValue(String value) =>
    AlgorithmEnum.fromValue(value);
String _AlgorithmEnumToValue(AlgorithmEnum value) => value.value;

List<AlgorithmEnum>? _AlgorithmEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => AlgorithmEnum.fromValue(e)).toList();
List<String>? _AlgorithmEnumToMaybeList(List<AlgorithmEnum>? value) =>
    value?.map((e) => e.value).toList();

List<AlgorithmEnum> _AlgorithmEnumFromList(List<String> value) =>
    value.map((e) => AlgorithmEnum.fromValue(e)).toList();
List<String> _AlgorithmEnumToList(List<AlgorithmEnum> value) =>
    value.map((e) => e.value).toList();

enum cOrgaoEnum {
  v_11("11"),
  v_12("12"),
  v_13("13"),
  v_14("14"),
  v_15("15"),
  v_16("16"),
  v_17("17"),
  v_21("21"),
  v_22("22"),
  v_23("23"),
  v_24("24"),
  v_25("25"),
  v_26("26"),
  v_27("27"),
  v_28("28"),
  v_29("29"),
  v_31("31"),
  v_32("32"),
  v_33("33"),
  v_35("35"),
  v_41("41"),
  v_42("42"),
  v_43("43"),
  v_50("50"),
  v_51("51"),
  v_52("52"),
  v_53("53"),
  v_91("91");

  final String value;
  const cOrgaoEnum(this.value);
  factory cOrgaoEnum.fromValue(String value) {
    for (final item in cOrgaoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cOrgaoEnum: $value");
  }
}

cOrgaoEnum? _cOrgaoEnumFromMaybeValue(String? value) =>
    value != null ? cOrgaoEnum.fromValue(value) : null;
String? _cOrgaoEnumToMaybeValue(cOrgaoEnum? value) =>
    value != null ? value.value : null;

cOrgaoEnum _cOrgaoEnumFromValue(String value) => cOrgaoEnum.fromValue(value);
String _cOrgaoEnumToValue(cOrgaoEnum value) => value.value;

List<cOrgaoEnum>? _cOrgaoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cOrgaoEnum.fromValue(e)).toList();
List<String>? _cOrgaoEnumToMaybeList(List<cOrgaoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cOrgaoEnum> _cOrgaoEnumFromList(List<String> value) =>
    value.map((e) => cOrgaoEnum.fromValue(e)).toList();
List<String> _cOrgaoEnumToList(List<cOrgaoEnum> value) =>
    value.map((e) => e.value).toList();

enum tpAmbEnum {
  v_1("1"),
  v_2("2");

  final String value;
  const tpAmbEnum(this.value);
  factory tpAmbEnum.fromValue(String value) {
    for (final item in tpAmbEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpAmbEnum: $value");
  }
}

tpAmbEnum? _tpAmbEnumFromMaybeValue(String? value) =>
    value != null ? tpAmbEnum.fromValue(value) : null;
String? _tpAmbEnumToMaybeValue(tpAmbEnum? value) =>
    value != null ? value.value : null;

tpAmbEnum _tpAmbEnumFromValue(String value) => tpAmbEnum.fromValue(value);
String _tpAmbEnumToValue(tpAmbEnum value) => value.value;

List<tpAmbEnum>? _tpAmbEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpAmbEnum.fromValue(e)).toList();
List<String>? _tpAmbEnumToMaybeList(List<tpAmbEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpAmbEnum> _tpAmbEnumFromList(List<String> value) =>
    value.map((e) => tpAmbEnum.fromValue(e)).toList();
List<String> _tpAmbEnumToList(List<tpAmbEnum> value) =>
    value.map((e) => e.value).toList();

enum tpEventoEnum {
  v_110111("110111");

  final String value;
  const tpEventoEnum(this.value);
  factory tpEventoEnum.fromValue(String value) {
    for (final item in tpEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpEventoEnum: $value");
  }
}

tpEventoEnum? _tpEventoEnumFromMaybeValue(String? value) =>
    value != null ? tpEventoEnum.fromValue(value) : null;
String? _tpEventoEnumToMaybeValue(tpEventoEnum? value) =>
    value != null ? value.value : null;

tpEventoEnum _tpEventoEnumFromValue(String value) =>
    tpEventoEnum.fromValue(value);
String _tpEventoEnumToValue(tpEventoEnum value) => value.value;

List<tpEventoEnum>? _tpEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpEventoEnum.fromValue(e)).toList();
List<String>? _tpEventoEnumToMaybeList(List<tpEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpEventoEnum> _tpEventoEnumFromList(List<String> value) =>
    value.map((e) => tpEventoEnum.fromValue(e)).toList();
List<String> _tpEventoEnumToList(List<tpEventoEnum> value) =>
    value.map((e) => e.value).toList();

enum verEventoEnum {
  v_100("1.00");

  final String value;
  const verEventoEnum(this.value);
  factory verEventoEnum.fromValue(String value) {
    for (final item in verEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for verEventoEnum: $value");
  }
}

verEventoEnum? _verEventoEnumFromMaybeValue(String? value) =>
    value != null ? verEventoEnum.fromValue(value) : null;
String? _verEventoEnumToMaybeValue(verEventoEnum? value) =>
    value != null ? value.value : null;

verEventoEnum _verEventoEnumFromValue(String value) =>
    verEventoEnum.fromValue(value);
String _verEventoEnumToValue(verEventoEnum value) => value.value;

List<verEventoEnum>? _verEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => verEventoEnum.fromValue(e)).toList();
List<String>? _verEventoEnumToMaybeList(List<verEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<verEventoEnum> _verEventoEnumFromList(List<String> value) =>
    value.map((e) => verEventoEnum.fromValue(e)).toList();
List<String> _verEventoEnumToList(List<verEventoEnum> value) =>
    value.map((e) => e.value).toList();

enum descEventoEnum {
  v_Cancelamento("Cancelamento");

  final String value;
  const descEventoEnum(this.value);
  factory descEventoEnum.fromValue(String value) {
    for (final item in descEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for descEventoEnum: $value");
  }
}

descEventoEnum? _descEventoEnumFromMaybeValue(String? value) =>
    value != null ? descEventoEnum.fromValue(value) : null;
String? _descEventoEnumToMaybeValue(descEventoEnum? value) =>
    value != null ? value.value : null;

descEventoEnum _descEventoEnumFromValue(String value) =>
    descEventoEnum.fromValue(value);
String _descEventoEnumToValue(descEventoEnum value) => value.value;

List<descEventoEnum>? _descEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => descEventoEnum.fromValue(e)).toList();
List<String>? _descEventoEnumToMaybeList(List<descEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<descEventoEnum> _descEventoEnumFromList(List<String> value) =>
    value.map((e) => descEventoEnum.fromValue(e)).toList();
List<String> _descEventoEnumToList(List<descEventoEnum> value) =>
    value.map((e) => e.value).toList();

enum versaoEnum {
  v_100("1.00");

  final String value;
  const versaoEnum(this.value);
  factory versaoEnum.fromValue(String value) {
    for (final item in versaoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for versaoEnum: $value");
  }
}

versaoEnum? _versaoEnumFromMaybeValue(String? value) =>
    value != null ? versaoEnum.fromValue(value) : null;
String? _versaoEnumToMaybeValue(versaoEnum? value) =>
    value != null ? value.value : null;

versaoEnum _versaoEnumFromValue(String value) => versaoEnum.fromValue(value);
String _versaoEnumToValue(versaoEnum value) => value.value;

List<versaoEnum>? _versaoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => versaoEnum.fromValue(e)).toList();
List<String>? _versaoEnumToMaybeList(List<versaoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<versaoEnum> _versaoEnumFromList(List<String> value) =>
    value.map((e) => versaoEnum.fromValue(e)).toList();
List<String> _versaoEnumToList(List<versaoEnum> value) =>
    value.map((e) => e.value).toList();
