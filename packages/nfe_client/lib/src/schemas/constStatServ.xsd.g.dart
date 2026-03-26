// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constStatServ.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ConstStatServSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  @JsonKey(fromJson: _xServEnumFromValue, toJson: _xServEnumToValue)
  xServEnum xServ;
  String versao;

  _ConstStatServSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.cUF,
      required this.xServ,
      required this.versao}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _ConstStatServSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.cUF,
      required this.xServ,
      required this.versao});
  String toXml(
      {String name = 'consStatServ', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(xml.XmlName('xServ'), [], [xml.XmlText(xServ.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ConstStatServSchema.fromXml(String xmlString,
      {String name = 'consStatServ'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ConstStatServSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      xServ: xServEnum.fromValue(element.findElements('xServ').first.text),
    );
  }
  factory _ConstStatServSchema.fromJson(Map<String, dynamic> json) =>
      _$ConstStatServSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ConstStatServSchemaToJson(this);
}

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

enum xServEnum {
  v_STATUS("STATUS");

  final String value;
  const xServEnum(this.value);
  factory xServEnum.fromValue(String value) {
    for (final item in xServEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for xServEnum: $value");
  }
}

xServEnum? _xServEnumFromMaybeValue(String? value) =>
    value != null ? xServEnum.fromValue(value) : null;
String? _xServEnumToMaybeValue(xServEnum? value) =>
    value != null ? value.value : null;

xServEnum _xServEnumFromValue(String value) => xServEnum.fromValue(value);
String _xServEnumToValue(xServEnum value) => value.value;

List<xServEnum>? _xServEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => xServEnum.fromValue(e)).toList();
List<String>? _xServEnumToMaybeList(List<xServEnum>? value) =>
    value?.map((e) => e.value).toList();

List<xServEnum> _xServEnumFromList(List<String> value) =>
    value.map((e) => xServEnum.fromValue(e)).toList();
List<String> _xServEnumToList(List<xServEnum> value) =>
    value.map((e) => e.value).toList();
