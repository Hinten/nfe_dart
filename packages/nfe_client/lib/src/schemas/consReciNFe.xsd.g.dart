// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consReciNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ConsReciNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String nRec;
  String versao;

  _ConsReciNFeSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.nRec,
      required this.versao}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((nRec.toString().length <= 15) == false) {
      throw Exception('Invalid value for nRec');
    }
    ;
    if ((RegExp(r'[0-9]{15}').hasMatch(nRec.toString())) == false) {
      throw Exception('Invalid value for nRec - $nRec');
    }
    ;
    if ((nRec.toString().trim() == nRec.toString()) == false) {
      throw Exception('Invalid value for nRec');
    }
    ;
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _ConsReciNFeSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.nRec,
      required this.versao});
  String toXml(
      {String name = 'consReciNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(xml.XmlName('nRec'), [], [xml.XmlText(nRec.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ConsReciNFeSchema.fromXml(String xmlString,
      {String name = 'consReciNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ConsReciNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      nRec: element.findElements('nRec').first.text,
    );
  }
  factory _ConsReciNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$ConsReciNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ConsReciNFeSchemaToJson(this);
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
