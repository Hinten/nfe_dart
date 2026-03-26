// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consCad.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ConsCadSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _infConsComplexType_TConsCadFromJson,
      toJson: _infConsComplexType_TConsCadToJson)
  infConsComplexType_TConsCad infCons;
  String versao;

  _ConsCadSchema({this.xmlns, required this.infCons, required this.versao}) {
    if ((RegExp(r'2\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _ConsCadSchema.unsafe(
      {this.xmlns, required this.infCons, required this.versao});
  String toXml({String name = 'ConsCad', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infCons.toXml(name: "infCons", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ConsCadSchema.fromXml(String xmlString, {String name = 'ConsCad'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ConsCadSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infCons: infConsComplexType_TConsCad.fromXml(
          element.findElements('infCons').first.toString(),
          name: "infCons"),
    );
  }
  factory _ConsCadSchema.fromJson(Map<String, dynamic> json) =>
      _$ConsCadSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ConsCadSchemaToJson(this);
}

@JsonSerializable()
class infConsComplexType_TConsCad {
  String? xmlns;
  @JsonKey(fromJson: _xServEnumFromValue, toJson: _xServEnumToValue)
  xServEnum xServ;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? IE;
  String? CNPJ;
  String? CPF;
  infConsComplexType_TConsCad(
      {this.xmlns,
      required this.xServ,
      required this.UF,
      this.IE,
      this.CNPJ,
      this.CPF}) {
    if ((IE == null || RegExp(r'[0-9]{2,14}|ISENTO').hasMatch(IE.toString())) ==
        false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE == null || IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((CNPJ == null || RegExp(r'[0-9]{3,14}').hasMatch(CNPJ.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((CPF == null || RegExp(r'[0-9]{3,11}').hasMatch(CPF.toString())) ==
        false) {
      throw Exception('Invalid value for CPF - $CPF');
    }
    ;
    if ((CPF == null || CPF.toString().trim() == CPF.toString()) == false) {
      throw Exception('Invalid value for CPF');
    }
    ;
    final _$IECNPJCPF = [IE != null, CNPJ != null, CPF != null];
    if ((_$IECNPJCPF.every((e) => e == false) ||
            _$IECNPJCPF.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of IE, CNPJ, CPF');
    }
    ;
  }
  infConsComplexType_TConsCad.unsafe(
      {this.xmlns,
      required this.xServ,
      required this.UF,
      this.IE,
      this.CNPJ,
      this.CPF});
  String toXml({String name = 'infCons', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('xServ'), [], [xml.XmlText(xServ.value)]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infConsComplexType_TConsCad.fromXml(String xmlString,
      {String name = 'infCons'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infConsComplexType_TConsCad.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xServ: xServEnum.fromValue(element.findElements('xServ').first.text),
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      IE: element.findElements('IE').isNotEmpty
          ? element.findElements('IE').first.text
          : null,
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
    );
  }
  factory infConsComplexType_TConsCad.fromJson(Map<String, dynamic> json) =>
      _$infConsComplexType_TConsCadFromJson(json);
  Map<String, dynamic> toJson() => _$infConsComplexType_TConsCadToJson(this);
}

List<infConsComplexType_TConsCad> _infConsComplexType_TConsCadListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infConsComplexType_TConsCad.fromJson(e as Map<String, dynamic>))
        .toList();
List<infConsComplexType_TConsCad>?
    _infConsComplexType_TConsCadMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infConsComplexType_TConsCad.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infConsComplexType_TConsCadListToJson(
        List<infConsComplexType_TConsCad> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infConsComplexType_TConsCadMaybeListToJson(
        List<infConsComplexType_TConsCad>? list) =>
    list?.map((e) => e.toJson()).toList();
infConsComplexType_TConsCad _infConsComplexType_TConsCadFromJson(
        Map<String, dynamic> json) =>
    infConsComplexType_TConsCad.fromJson(json);
infConsComplexType_TConsCad? _infConsComplexType_TConsCadMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infConsComplexType_TConsCad.fromJson(json) : null;
Map<String, dynamic> _infConsComplexType_TConsCadToJson(
        infConsComplexType_TConsCad instance) =>
    instance.toJson();
Map<String, dynamic>? _infConsComplexType_TConsCadMaybeToJson(
        infConsComplexType_TConsCad? instance) =>
    instance?.toJson();

enum xServEnum {
  v_CONSCAD("CONS-CAD");

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

enum UFEnum {
  v_AC("AC"),
  v_AL("AL"),
  v_AM("AM"),
  v_AP("AP"),
  v_BA("BA"),
  v_CE("CE"),
  v_DF("DF"),
  v_ES("ES"),
  v_GO("GO"),
  v_MA("MA"),
  v_MG("MG"),
  v_MS("MS"),
  v_MT("MT"),
  v_PA("PA"),
  v_PB("PB"),
  v_PE("PE"),
  v_PI("PI"),
  v_PR("PR"),
  v_RJ("RJ"),
  v_RN("RN"),
  v_RO("RO"),
  v_RR("RR"),
  v_RS("RS"),
  v_SC("SC"),
  v_SE("SE"),
  v_SP("SP"),
  v_TO("TO"),
  v_SU("SU");

  final String value;
  const UFEnum(this.value);
  factory UFEnum.fromValue(String value) {
    for (final item in UFEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFEnum: $value");
  }
}

UFEnum? _UFEnumFromMaybeValue(String? value) =>
    value != null ? UFEnum.fromValue(value) : null;
String? _UFEnumToMaybeValue(UFEnum? value) =>
    value != null ? value.value : null;

UFEnum _UFEnumFromValue(String value) => UFEnum.fromValue(value);
String _UFEnumToValue(UFEnum value) => value.value;

List<UFEnum>? _UFEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFEnum.fromValue(e)).toList();
List<String>? _UFEnumToMaybeList(List<UFEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFEnum> _UFEnumFromList(List<String> value) =>
    value.map((e) => UFEnum.fromValue(e)).toList();
List<String> _UFEnumToList(List<UFEnum> value) =>
    value.map((e) => e.value).toList();
