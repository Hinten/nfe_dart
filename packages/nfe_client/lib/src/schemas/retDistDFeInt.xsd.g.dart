// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retDistDFeInt.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetDistDFeIntSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  String dhResp;
  String? ultNSU;
  String? maxNSU;
  @JsonKey(
      fromJson: _loteDistDFeIntComplexType_retDistDFeIntMaybeFromJson,
      toJson: _loteDistDFeIntComplexType_retDistDFeIntMaybeToJson)
  loteDistDFeIntComplexType_retDistDFeInt? loteDistDFeInt;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  _RetDistDFeIntSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.dhResp,
      this.ultNSU,
      this.maxNSU,
      this.loteDistDFeInt,
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
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhResp.toString())) ==
        false) {
      throw Exception('Invalid value for dhResp - $dhResp');
    }
    ;
    if ((dhResp.toString().trim() == dhResp.toString()) == false) {
      throw Exception('Invalid value for dhResp');
    }
    ;
    if ((ultNSU == null || RegExp(r'[0-9]{15}').hasMatch(ultNSU.toString())) ==
        false) {
      throw Exception('Invalid value for ultNSU - $ultNSU');
    }
    ;
    if ((maxNSU == null || RegExp(r'[0-9]{15}').hasMatch(maxNSU.toString())) ==
        false) {
      throw Exception('Invalid value for maxNSU - $maxNSU');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _RetDistDFeIntSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.dhResp,
      this.ultNSU,
      this.maxNSU,
      this.loteDistDFeInt,
      required this.versao});
  String toXml(
      {String name = 'retDistDFeInt', bool pretty = false, String? xmlns}) {
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
      xml.XmlElement(
          xml.XmlName('dhResp'), [], [xml.XmlText(dhResp.toString())]),
      if (ultNSU != null)
        xml.XmlElement(
            xml.XmlName('ultNSU'), [], [xml.XmlText(ultNSU.toString())]),
      if (maxNSU != null)
        xml.XmlElement(
            xml.XmlName('maxNSU'), [], [xml.XmlText(maxNSU.toString())]),
      if (loteDistDFeInt != null)
        xml.XmlDocumentFragment.parse(
            loteDistDFeInt!.toXml(name: "loteDistDFeInt", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetDistDFeIntSchema.fromXml(String xmlString,
      {String name = 'retDistDFeInt'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetDistDFeIntSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      dhResp: element.findElements('dhResp').first.text,
      ultNSU: element.findElements('ultNSU').isNotEmpty
          ? element.findElements('ultNSU').first.text
          : null,
      maxNSU: element.findElements('maxNSU').isNotEmpty
          ? element.findElements('maxNSU').first.text
          : null,
      loteDistDFeInt: element.findElements('loteDistDFeInt').isNotEmpty
          ? loteDistDFeIntComplexType_retDistDFeInt.fromXml(
              element.findElements('loteDistDFeInt').first.toString(),
              name: "loteDistDFeInt")
          : null,
    );
  }
  factory _RetDistDFeIntSchema.fromJson(Map<String, dynamic> json) =>
      _$RetDistDFeIntSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetDistDFeIntSchemaToJson(this);
}

@JsonSerializable()
class loteDistDFeIntComplexType_retDistDFeInt {
  String? xmlns;
  @JsonKey(
      fromJson: _docZipComplexType_loteDistDFeIntFromJson,
      toJson: _docZipComplexType_loteDistDFeIntToJson)
  docZipComplexType_loteDistDFeInt docZip;
  loteDistDFeIntComplexType_retDistDFeInt({this.xmlns, required this.docZip});
  loteDistDFeIntComplexType_retDistDFeInt.unsafe(
      {this.xmlns, required this.docZip});
  String toXml(
      {String name = 'loteDistDFeInt', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlDocumentFragment.parse(
          docZip.toXml(name: "docZip", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory loteDistDFeIntComplexType_retDistDFeInt.fromXml(String xmlString,
      {String name = 'loteDistDFeInt'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return loteDistDFeIntComplexType_retDistDFeInt.unsafe(
      xmlns: element.getAttribute('xmlns'),
      docZip: docZipComplexType_loteDistDFeInt.fromXml(
          element.findElements('docZip').first.toString(),
          name: "docZip"),
    );
  }
  factory loteDistDFeIntComplexType_retDistDFeInt.fromJson(
          Map<String, dynamic> json) =>
      _$loteDistDFeIntComplexType_retDistDFeIntFromJson(json);
  Map<String, dynamic> toJson() =>
      _$loteDistDFeIntComplexType_retDistDFeIntToJson(this);
}

List<loteDistDFeIntComplexType_retDistDFeInt>
    _loteDistDFeIntComplexType_retDistDFeIntListFromJson(
            List<dynamic> json) =>
        json
            .map((e) => loteDistDFeIntComplexType_retDistDFeInt
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<loteDistDFeIntComplexType_retDistDFeInt>?
    _loteDistDFeIntComplexType_retDistDFeIntMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) => loteDistDFeIntComplexType_retDistDFeInt
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _loteDistDFeIntComplexType_retDistDFeIntListToJson(
        List<loteDistDFeIntComplexType_retDistDFeInt> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _loteDistDFeIntComplexType_retDistDFeIntMaybeListToJson(
            List<loteDistDFeIntComplexType_retDistDFeInt>? list) =>
        list?.map((e) => e.toJson()).toList();
loteDistDFeIntComplexType_retDistDFeInt
    _loteDistDFeIntComplexType_retDistDFeIntFromJson(
            Map<String, dynamic> json) =>
        loteDistDFeIntComplexType_retDistDFeInt.fromJson(json);
loteDistDFeIntComplexType_retDistDFeInt?
    _loteDistDFeIntComplexType_retDistDFeIntMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? loteDistDFeIntComplexType_retDistDFeInt.fromJson(json)
            : null;
Map<String, dynamic> _loteDistDFeIntComplexType_retDistDFeIntToJson(
        loteDistDFeIntComplexType_retDistDFeInt instance) =>
    instance.toJson();
Map<String, dynamic>? _loteDistDFeIntComplexType_retDistDFeIntMaybeToJson(
        loteDistDFeIntComplexType_retDistDFeInt? instance) =>
    instance?.toJson();

@JsonSerializable()
class docZipComplexType_loteDistDFeInt {
  String? xmlns;
  String docZip;
  docZipComplexType_loteDistDFeInt({this.xmlns, required this.docZip});
  docZipComplexType_loteDistDFeInt.unsafe({this.xmlns, required this.docZip});
  String toXml({String name = 'docZip', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlText(docZip)
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory docZipComplexType_loteDistDFeInt.fromXml(String xmlString,
      {String name = 'docZip'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return docZipComplexType_loteDistDFeInt.unsafe(
      xmlns: element.getAttribute('xmlns'),
      docZip: element.text,
    );
  }
  factory docZipComplexType_loteDistDFeInt.fromJson(
          Map<String, dynamic> json) =>
      _$docZipComplexType_loteDistDFeIntFromJson(json);
  Map<String, dynamic> toJson() =>
      _$docZipComplexType_loteDistDFeIntToJson(this);
}

List<docZipComplexType_loteDistDFeInt>
    _docZipComplexType_loteDistDFeIntListFromJson(List<dynamic> json) => json
        .map((e) => docZipComplexType_loteDistDFeInt
            .fromJson(e as Map<String, dynamic>))
        .toList();
List<docZipComplexType_loteDistDFeInt>?
    _docZipComplexType_loteDistDFeIntMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => docZipComplexType_loteDistDFeInt
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _docZipComplexType_loteDistDFeIntListToJson(
        List<docZipComplexType_loteDistDFeInt> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _docZipComplexType_loteDistDFeIntMaybeListToJson(
        List<docZipComplexType_loteDistDFeInt>? list) =>
    list?.map((e) => e.toJson()).toList();
docZipComplexType_loteDistDFeInt _docZipComplexType_loteDistDFeIntFromJson(
        Map<String, dynamic> json) =>
    docZipComplexType_loteDistDFeInt.fromJson(json);
docZipComplexType_loteDistDFeInt?
    _docZipComplexType_loteDistDFeIntMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null ? docZipComplexType_loteDistDFeInt.fromJson(json) : null;
Map<String, dynamic> _docZipComplexType_loteDistDFeIntToJson(
        docZipComplexType_loteDistDFeInt instance) =>
    instance.toJson();
Map<String, dynamic>? _docZipComplexType_loteDistDFeIntMaybeToJson(
        docZipComplexType_loteDistDFeInt? instance) =>
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

enum versaoEnum {
  v_101("1.01");

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
