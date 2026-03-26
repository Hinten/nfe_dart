// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnviNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetEnviNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String dhRecbto;
  @JsonKey(
      fromJson: _infRecComplexType_TRetEnviNFeMaybeFromJson,
      toJson: _infRecComplexType_TRetEnviNFeMaybeToJson)
  infRecComplexType_TRetEnviNFe? infRec;
  @JsonKey(
      fromJson: _TProtNFeComplexTypeMaybeFromJson,
      toJson: _TProtNFeComplexTypeMaybeToJson)
  TProtNFeComplexType? protNFe;
  String versao;

  _RetEnviNFeSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.infRec,
      this.protNFe,
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
    final _$infRecprotNFe = [infRec != null, protNFe != null];
    if ((_$infRecprotNFe.every((e) => e == false) ||
            _$infRecprotNFe.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of infRec, protNFe');
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
  _RetEnviNFeSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.infRec,
      this.protNFe,
      required this.versao});
  String toXml(
      {String name = 'retEnviNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
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
      if (infRec != null)
        xml.XmlDocumentFragment.parse(
            infRec!.toXml(name: "infRec", pretty: pretty)),
      if (protNFe != null)
        xml.XmlDocumentFragment.parse(
            protNFe!.toXml(name: "protNFe", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetEnviNFeSchema.fromXml(String xmlString,
      {String name = 'retEnviNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetEnviNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      dhRecbto: element.findElements('dhRecbto').first.text,
      infRec: element.findElements('infRec').isNotEmpty
          ? infRecComplexType_TRetEnviNFe.fromXml(
              element.findElements('infRec').first.toString(),
              name: "infRec")
          : null,
      protNFe: element.findElements('protNFe').isNotEmpty
          ? TProtNFeComplexType.fromXml(
              element.findElements('protNFe').first.toString(),
              name: "protNFe")
          : null,
    );
  }
  factory _RetEnviNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$RetEnviNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetEnviNFeSchemaToJson(this);
}

@JsonSerializable()
class infRecComplexType_TRetEnviNFe {
  String? xmlns;
  String nRec;
  String tMed;
  infRecComplexType_TRetEnviNFe(
      {this.xmlns, required this.nRec, required this.tMed}) {
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
    if ((RegExp(r'[0-9]{1,4}').hasMatch(tMed.toString())) == false) {
      throw Exception('Invalid value for tMed - $tMed');
    }
    ;
    if ((tMed.toString().trim() == tMed.toString()) == false) {
      throw Exception('Invalid value for tMed');
    }
    ;
  }
  infRecComplexType_TRetEnviNFe.unsafe(
      {this.xmlns, required this.nRec, required this.tMed});
  String toXml({String name = 'infRec', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nRec'), [], [xml.XmlText(nRec.toString())]),
      xml.XmlElement(xml.XmlName('tMed'), [], [xml.XmlText(tMed.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infRecComplexType_TRetEnviNFe.fromXml(String xmlString,
      {String name = 'infRec'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infRecComplexType_TRetEnviNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nRec: element.findElements('nRec').first.text,
      tMed: element.findElements('tMed').first.text,
    );
  }
  factory infRecComplexType_TRetEnviNFe.fromJson(Map<String, dynamic> json) =>
      _$infRecComplexType_TRetEnviNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infRecComplexType_TRetEnviNFeToJson(this);
}

List<infRecComplexType_TRetEnviNFe> _infRecComplexType_TRetEnviNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infRecComplexType_TRetEnviNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infRecComplexType_TRetEnviNFe>?
    _infRecComplexType_TRetEnviNFeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infRecComplexType_TRetEnviNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infRecComplexType_TRetEnviNFeListToJson(
        List<infRecComplexType_TRetEnviNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infRecComplexType_TRetEnviNFeMaybeListToJson(
        List<infRecComplexType_TRetEnviNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infRecComplexType_TRetEnviNFe _infRecComplexType_TRetEnviNFeFromJson(
        Map<String, dynamic> json) =>
    infRecComplexType_TRetEnviNFe.fromJson(json);
infRecComplexType_TRetEnviNFe? _infRecComplexType_TRetEnviNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infRecComplexType_TRetEnviNFe.fromJson(json) : null;
Map<String, dynamic> _infRecComplexType_TRetEnviNFeToJson(
        infRecComplexType_TRetEnviNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infRecComplexType_TRetEnviNFeMaybeToJson(
        infRecComplexType_TRetEnviNFe? instance) =>
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
