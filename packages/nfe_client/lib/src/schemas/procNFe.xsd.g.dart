// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ProcNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _TNFeComplexTypeFromJson, toJson: _TNFeComplexTypeToJson)
  TNFeComplexType NFe;
  @JsonKey(
      fromJson: _TProtNFeComplexTypeFromJson,
      toJson: _TProtNFeComplexTypeToJson)
  TProtNFeComplexType protNFe;
  String versao;

  _ProcNFeSchema(
      {this.xmlns,
      required this.NFe,
      required this.protNFe,
      required this.versao}) {
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _ProcNFeSchema.unsafe(
      {this.xmlns,
      required this.NFe,
      required this.protNFe,
      required this.versao});
  String toXml({String name = 'nfeProc', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(NFe.toXml(name: "NFe", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          protNFe.toXml(name: "protNFe", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ProcNFeSchema.fromXml(String xmlString, {String name = 'nfeProc'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ProcNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      NFe: TNFeComplexType.fromXml(element.findElements('NFe').first.toString(),
          name: "NFe"),
      protNFe: TProtNFeComplexType.fromXml(
          element.findElements('protNFe').first.toString(),
          name: "protNFe"),
    );
  }
  factory _ProcNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$ProcNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ProcNFeSchemaToJson(this);
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
