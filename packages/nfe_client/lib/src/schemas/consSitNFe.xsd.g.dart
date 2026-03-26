// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consSitNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ConsSitNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  @JsonKey(fromJson: _xServEnumFromValue, toJson: _xServEnumToValue)
  xServEnum xServ;
  String chNFe;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  _ConsSitNFeSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.xServ,
      required this.chNFe,
      required this.versao}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
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
  _ConsSitNFeSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.xServ,
      required this.chNFe,
      required this.versao});
  String toXml(
      {String name = 'consSitNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.value)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(xml.XmlName('xServ'), [], [xml.XmlText(xServ.value)]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ConsSitNFeSchema.fromXml(String xmlString,
      {String name = 'consSitNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ConsSitNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      xServ: xServEnum.fromValue(element.findElements('xServ').first.text),
      chNFe: element.findElements('chNFe').first.text,
    );
  }
  factory _ConsSitNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$ConsSitNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ConsSitNFeSchemaToJson(this);
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

enum xServEnum {
  v_CONSULTAR("CONSULTAR");

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
