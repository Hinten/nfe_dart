// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsSitNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetConsSitNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String dhRecbto;
  String chNFe;
  @JsonKey(
      fromJson: _TProtNFeComplexTypeMaybeFromJson,
      toJson: _TProtNFeComplexTypeMaybeToJson)
  TProtNFeComplexType? protNFe;
  @JsonKey(
      fromJson: _TRetCancNFeComplexTypeMaybeFromJson,
      toJson: _TRetCancNFeComplexTypeMaybeToJson)
  TRetCancNFeComplexType? retCancNFe;
  @JsonKey(
      fromJson: _TProcEventoComplexTypeMaybeFromJson,
      toJson: _TProcEventoComplexTypeMaybeToJson)
  TProcEventoComplexType? procEventoNFe;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  _RetConsSitNFeSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      required this.chNFe,
      this.protNFe,
      this.retCancNFe,
      this.procEventoNFe,
      required this.versao}) {
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
    if ((cStat.toString().length <= 3) == false) {
      throw Exception('Invalid value for cStat');
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
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhRecbto.toString())) ==
        false) {
      throw Exception('Invalid value for dhRecbto - $dhRecbto');
    }
    ;
    if ((dhRecbto.toString().trim() == dhRecbto.toString()) == false) {
      throw Exception('Invalid value for dhRecbto');
    }
    ;
    if ((chNFe.toString().length <= 44) == false) {
      throw Exception('Invalid value for chNFe');
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
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _RetConsSitNFeSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      required this.chNFe,
      this.protNFe,
      this.retCancNFe,
      this.procEventoNFe,
      required this.versao});
  String toXml(
      {String name = 'retConsSitNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.value)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(
          xml.XmlName('dhRecbto'), [], [xml.XmlText(dhRecbto.toString())]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      if (protNFe != null)
        xml.XmlDocumentFragment.parse(
            protNFe!.toXml(name: "protNFe", pretty: pretty)),
      if (retCancNFe != null)
        xml.XmlDocumentFragment.parse(
            retCancNFe!.toXml(name: "retCancNFe", pretty: pretty)),
      if (procEventoNFe != null)
        xml.XmlDocumentFragment.parse(
            procEventoNFe!.toXml(name: "procEventoNFe", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetConsSitNFeSchema.fromXml(String xmlString,
      {String name = 'retConsSitNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetConsSitNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      dhRecbto: element.findElements('dhRecbto').first.text,
      chNFe: element.findElements('chNFe').first.text,
      protNFe: element.findElements('protNFe').isNotEmpty
          ? TProtNFeComplexType.fromXml(
              element.findElements('protNFe').first.toString(),
              name: "protNFe")
          : null,
      retCancNFe: element.findElements('retCancNFe').isNotEmpty
          ? TRetCancNFeComplexType.fromXml(
              element.findElements('retCancNFe').first.toString(),
              name: "retCancNFe")
          : null,
      procEventoNFe: element.findElements('procEventoNFe').isNotEmpty
          ? TProcEventoComplexType.fromXml(
              element.findElements('procEventoNFe').first.toString(),
              name: "procEventoNFe")
          : null,
    );
  }
  factory _RetConsSitNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$RetConsSitNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetConsSitNFeSchemaToJson(this);
}

List<TProtNFeComplexType> _TProtNFeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TProtNFeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TProtNFeComplexType>? _TProtNFeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TProtNFeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TProtNFeComplexTypeListToJson(
        List<TProtNFeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TProtNFeComplexTypeMaybeListToJson(
        List<TProtNFeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TProtNFeComplexType _TProtNFeComplexTypeFromJson(Map<String, dynamic> json) =>
    TProtNFeComplexType.fromJson(json);
TProtNFeComplexType? _TProtNFeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TProtNFeComplexType.fromJson(json) : null;
Map<String, dynamic> _TProtNFeComplexTypeToJson(TProtNFeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TProtNFeComplexTypeMaybeToJson(
        TProtNFeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TRetCancNFeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infCancComplexType_TRetCancNFeFromJson,
      toJson: _infCancComplexType_TRetCancNFeToJson)
  infCancComplexType_TRetCancNFe infCanc;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  TRetCancNFeComplexType(
      {this.xmlns,
      required this.infCanc,
      this.Signature,
      required this.versao}) {
    if ((RegExp(r'[1-9]{1}\.[0-9]{2}').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(versao.toString())) ==
        false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  TRetCancNFeComplexType.unsafe(
      {this.xmlns,
      required this.infCanc,
      this.Signature,
      required this.versao});
  String toXml(
      {String name = 'TRetCancNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infCanc.toXml(name: "infCanc", pretty: pretty)),
      if (Signature != null)
        xml.XmlDocumentFragment.parse(
            Signature!.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TRetCancNFeComplexType.fromXml(String xmlString,
      {String name = 'TRetCancNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TRetCancNFeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infCanc: infCancComplexType_TRetCancNFe.fromXml(
          element.findElements('infCanc').first.toString(),
          name: "infCanc"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory TRetCancNFeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TRetCancNFeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TRetCancNFeComplexTypeToJson(this);
}

List<TRetCancNFeComplexType> _TRetCancNFeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TRetCancNFeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TRetCancNFeComplexType>? _TRetCancNFeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TRetCancNFeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TRetCancNFeComplexTypeListToJson(
        List<TRetCancNFeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TRetCancNFeComplexTypeMaybeListToJson(
        List<TRetCancNFeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TRetCancNFeComplexType _TRetCancNFeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TRetCancNFeComplexType.fromJson(json);
TRetCancNFeComplexType? _TRetCancNFeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TRetCancNFeComplexType.fromJson(json) : null;
Map<String, dynamic> _TRetCancNFeComplexTypeToJson(
        TRetCancNFeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TRetCancNFeComplexTypeMaybeToJson(
        TRetCancNFeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TProcEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _TEventoComplexTypeFromJson, toJson: _TEventoComplexTypeToJson)
  TEventoComplexType evento;
  @JsonKey(
      fromJson: _TRetEventoComplexTypeFromJson,
      toJson: _TRetEventoComplexTypeToJson)
  TRetEventoComplexType retEvento;
  String versao;

  TProcEventoComplexType(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
      required this.versao}) {
    if ((RegExp(r'[1-9]{1}\.[0-9]{2}').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(versao.toString())) ==
        false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  TProcEventoComplexType.unsafe(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
      required this.versao});
  String toXml(
      {String name = 'TProcEvento', bool pretty = false, String? xmlns}) {
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

  factory TProcEventoComplexType.fromXml(String xmlString,
      {String name = 'TProcEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TProcEventoComplexType.unsafe(
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
  factory TProcEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TProcEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TProcEventoComplexTypeToJson(this);
}

List<TProcEventoComplexType> _TProcEventoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TProcEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TProcEventoComplexType>? _TProcEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TProcEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TProcEventoComplexTypeListToJson(
        List<TProcEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TProcEventoComplexTypeMaybeListToJson(
        List<TProcEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TProcEventoComplexType _TProcEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TProcEventoComplexType.fromJson(json);
TProcEventoComplexType? _TProcEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TProcEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TProcEventoComplexTypeToJson(
        TProcEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TProcEventoComplexTypeMaybeToJson(
        TProcEventoComplexType? instance) =>
    instance?.toJson();

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
    if ((RegExp(r'[1-9]{1}\.[0-9]{2}').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(versao.toString())) ==
        false) {
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
    if ((RegExp(r'[1-9]{1}\.[0-9]{2}').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(versao.toString())) ==
        false) {
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
class infCancComplexType_TRetCancNFe {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String? chNFe;
  String? dhRecbto;
  String? nProt;
  String? Id;

  infCancComplexType_TRetCancNFe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      this.chNFe,
      this.dhRecbto,
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
    if ((cStat.toString().length <= 3) == false) {
      throw Exception('Invalid value for cStat');
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
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((chNFe == null || chNFe.toString().length <= 44) == false) {
      throw Exception('Invalid value for chNFe');
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
    if ((nProt == null || nProt.toString().length <= 15) == false) {
      throw Exception('Invalid value for nProt');
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
  }
  infCancComplexType_TRetCancNFe.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      this.chNFe,
      this.dhRecbto,
      this.nProt,
      this.Id});
  String toXml({String name = 'infCanc', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      if (chNFe != null)
        xml.XmlElement(
            xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      if (dhRecbto?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('dhRecbto'), [], [xml.XmlText(dhRecbto!)]),
      if (nProt != null)
        xml.XmlElement(
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infCancComplexType_TRetCancNFe.fromXml(String xmlString,
      {String name = 'infCanc'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infCancComplexType_TRetCancNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      chNFe: element.findElements('chNFe').isNotEmpty
          ? element.findElements('chNFe').first.text
          : null,
      dhRecbto: element.getElement('dhRecbto')?.text,
      nProt: element.findElements('nProt').isNotEmpty
          ? element.findElements('nProt').first.text
          : null,
    );
  }
  factory infCancComplexType_TRetCancNFe.fromJson(Map<String, dynamic> json) =>
      _$infCancComplexType_TRetCancNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infCancComplexType_TRetCancNFeToJson(this);
}

List<infCancComplexType_TRetCancNFe>
    _infCancComplexType_TRetCancNFeListFromJson(List<dynamic> json) => json
        .map((e) =>
            infCancComplexType_TRetCancNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infCancComplexType_TRetCancNFe>?
    _infCancComplexType_TRetCancNFeMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infCancComplexType_TRetCancNFe
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infCancComplexType_TRetCancNFeListToJson(
        List<infCancComplexType_TRetCancNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infCancComplexType_TRetCancNFeMaybeListToJson(
        List<infCancComplexType_TRetCancNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infCancComplexType_TRetCancNFe _infCancComplexType_TRetCancNFeFromJson(
        Map<String, dynamic> json) =>
    infCancComplexType_TRetCancNFe.fromJson(json);
infCancComplexType_TRetCancNFe? _infCancComplexType_TRetCancNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infCancComplexType_TRetCancNFe.fromJson(json) : null;
Map<String, dynamic> _infCancComplexType_TRetCancNFeToJson(
        infCancComplexType_TRetCancNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infCancComplexType_TRetCancNFeMaybeToJson(
        infCancComplexType_TRetCancNFe? instance) =>
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
  String tpEvento;
  String nSeqEvento;
  String verEvento;
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
    if ((CPF == null || CPF.toString().length <= 11) == false) {
      throw Exception('Invalid value for CPF');
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
    if ((chNFe.toString().length <= 44) == false) {
      throw Exception('Invalid value for chNFe');
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
    if ((RegExp(r'[1-9][0-9]{0,1}').hasMatch(nSeqEvento.toString())) == false) {
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
          xml.XmlName('tpEvento'), [], [xml.XmlText(tpEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('nSeqEvento'), [], [xml.XmlText(nSeqEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('verEvento'), [], [xml.XmlText(verEvento.toString())]),
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
      tpEvento: element.findElements('tpEvento').first.text,
      nSeqEvento: element.findElements('nSeqEvento').first.text,
      verEvento: element.findElements('verEvento').first.text,
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
    if ((cStat.toString().length <= 3) == false) {
      throw Exception('Invalid value for cStat');
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
    if ((chNFe == null || chNFe.toString().length <= 44) == false) {
      throw Exception('Invalid value for chNFe');
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
    if ((CPFDest == null || CPFDest.toString().length <= 11) == false) {
      throw Exception('Invalid value for CPFDest');
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
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhRegEvento.toString())) ==
        false) {
      throw Exception('Invalid value for dhRegEvento - $dhRegEvento');
    }
    ;
    if ((dhRegEvento.toString().trim() == dhRegEvento.toString()) == false) {
      throw Exception('Invalid value for dhRegEvento');
    }
    ;
    if ((nProt == null || nProt.toString().length <= 15) == false) {
      throw Exception('Invalid value for nProt');
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
class detEventoComplexType_infEvento {
  String? xmlns;

  detEventoComplexType_infEvento({
    this.xmlns,
  });
  detEventoComplexType_infEvento.unsafe({
    this.xmlns,
  });
  String toXml(
      {String name = 'detEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], []);
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

enum cUFEnum {
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
  v_53("53");

  final String value;
  const cUFEnum(this.value);
  factory cUFEnum.fromValue(String value) {
    for (final item in cUFEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cUFEnum: $value");
  }
}

cUFEnum? _cUFEnumFromMaybeValue(String? value) =>
    value != null ? cUFEnum.fromValue(value) : null;
String? _cUFEnumToMaybeValue(cUFEnum? value) =>
    value != null ? value.value : null;

cUFEnum _cUFEnumFromValue(String value) => cUFEnum.fromValue(value);
String _cUFEnumToValue(cUFEnum value) => value.value;

List<cUFEnum>? _cUFEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cUFEnum.fromValue(e)).toList();
List<String>? _cUFEnumToMaybeList(List<cUFEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cUFEnum> _cUFEnumFromList(List<String> value) =>
    value.map((e) => cUFEnum.fromValue(e)).toList();
List<String> _cUFEnumToList(List<cUFEnum> value) =>
    value.map((e) => e.value).toList();

enum versaoEnum {
  v_400("4.00");

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
  v_90("90"),
  v_91("91"),
  v_92("92");

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
