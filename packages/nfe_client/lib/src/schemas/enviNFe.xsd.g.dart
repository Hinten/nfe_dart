// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enviNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _EnviNFeSchema {
  String? xmlns;
  String idLote;
  @JsonKey(fromJson: _indSincEnumFromValue, toJson: _indSincEnumToValue)
  indSincEnum indSinc;
  @JsonKey(
      fromJson: _TNFeComplexTypeListFromJson,
      toJson: _TNFeComplexTypeListToJson)
  List<TNFeComplexType> NFe;
  String versao;

  _EnviNFeSchema(
      {this.xmlns,
      required this.idLote,
      required this.indSinc,
      required this.NFe,
      required this.versao}) {
    if ((RegExp(r'[0-9]{1,15}').hasMatch(idLote.toString())) == false) {
      throw Exception('Invalid value for idLote - $idLote');
    }
    ;
    if ((idLote.toString().trim() == idLote.toString()) == false) {
      throw Exception('Invalid value for idLote');
    }
    ;
    if ((indSinc.toString().trim() == indSinc.toString()) == false) {
      throw Exception('Invalid value for indSinc');
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
  _EnviNFeSchema.unsafe(
      {this.xmlns,
      required this.idLote,
      required this.indSinc,
      required this.NFe,
      required this.versao});
  String toXml({String name = 'enviNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('idLote'), [], [xml.XmlText(idLote.toString())]),
      xml.XmlElement(xml.XmlName('indSinc'), [], [xml.XmlText(indSinc.value)]),
      ...NFe.map((e) => xml.XmlDocumentFragment.parse(
          e.toXml(name: "NFe", pretty: pretty))).toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _EnviNFeSchema.fromXml(String xmlString, {String name = 'enviNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _EnviNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      idLote: element.findElements('idLote').first.text,
      indSinc:
          indSincEnum.fromValue(element.findElements('indSinc').first.text),
      NFe: element
          .findElements('NFe')
          .map((e) => TNFeComplexType.fromXml(e.toString(), name: "NFe"))
          .toList(),
    );
  }
  factory _EnviNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$EnviNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$EnviNFeSchemaToJson(this);
}

List<TNFeComplexType> _TNFeComplexTypeListFromJson(List<dynamic> json) => json
    .map((e) => TNFeComplexType.fromJson(e as Map<String, dynamic>))
    .toList();
List<TNFeComplexType>? _TNFeComplexTypeMaybeListFromJson(List<dynamic>? json) =>
    json
        ?.map((e) => TNFeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TNFeComplexTypeListToJson(
        List<TNFeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TNFeComplexTypeMaybeListToJson(
        List<TNFeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TNFeComplexType _TNFeComplexTypeFromJson(Map<String, dynamic> json) =>
    TNFeComplexType.fromJson(json);
TNFeComplexType? _TNFeComplexTypeMaybeFromJson(Map<String, dynamic>? json) =>
    json != null ? TNFeComplexType.fromJson(json) : null;
Map<String, dynamic> _TNFeComplexTypeToJson(TNFeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TNFeComplexTypeMaybeToJson(TNFeComplexType? instance) =>
    instance?.toJson();

enum indSincEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indSincEnum(this.value);
  factory indSincEnum.fromValue(String value) {
    for (final item in indSincEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indSincEnum: $value");
  }
}

indSincEnum? _indSincEnumFromMaybeValue(String? value) =>
    value != null ? indSincEnum.fromValue(value) : null;
String? _indSincEnumToMaybeValue(indSincEnum? value) =>
    value != null ? value.value : null;

indSincEnum _indSincEnumFromValue(String value) => indSincEnum.fromValue(value);
String _indSincEnumToValue(indSincEnum value) => value.value;

List<indSincEnum>? _indSincEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indSincEnum.fromValue(e)).toList();
List<String>? _indSincEnumToMaybeList(List<indSincEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indSincEnum> _indSincEnumFromList(List<String> value) =>
    value.map((e) => indSincEnum.fromValue(e)).toList();
List<String> _indSincEnumToList(List<indSincEnum> value) =>
    value.map((e) => e.value).toList();
