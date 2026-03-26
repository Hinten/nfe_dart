// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConstStatServ.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetConsStatServSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String dhRecbto;
  String? tMed;
  String? dhRetorno;
  String? xObs;
  String versao;

  _RetConsStatServSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.tMed,
      this.dhRetorno,
      this.xObs,
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
    if ((tMed == null || RegExp(r'[0-9]{1,4}').hasMatch(tMed.toString())) ==
        false) {
      throw Exception('Invalid value for tMed - $tMed');
    }
    ;
    if ((tMed == null || tMed.toString().trim() == tMed.toString()) == false) {
      throw Exception('Invalid value for tMed');
    }
    ;
    if ((dhRetorno == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
                .hasMatch(dhRetorno.toString())) ==
        false) {
      throw Exception('Invalid value for dhRetorno - $dhRetorno');
    }
    ;
    if ((dhRetorno == null ||
            dhRetorno.toString().trim() == dhRetorno.toString()) ==
        false) {
      throw Exception('Invalid value for dhRetorno');
    }
    ;
    if ((xObs == null || xObs.toString().length <= 255) == false) {
      throw Exception('Invalid value for xObs');
    }
    ;
    if ((xObs == null || xObs.toString().length >= 1) == false) {
      throw Exception('Invalid value for xObs');
    }
    ;
    if ((xObs == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xObs.toString())) ==
        false) {
      throw Exception('Invalid value for xObs - $xObs');
    }
    ;
    if ((xObs == null || xObs.toString().trim() == xObs.toString()) == false) {
      throw Exception('Invalid value for xObs');
    }
    ;
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _RetConsStatServSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.tMed,
      this.dhRetorno,
      this.xObs,
      required this.versao});
  String toXml(
      {String name = 'retConsStatServ', bool pretty = false, String? xmlns}) {
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
      if (tMed != null)
        xml.XmlElement(xml.XmlName('tMed'), [], [xml.XmlText(tMed.toString())]),
      if (dhRetorno != null)
        xml.XmlElement(
            xml.XmlName('dhRetorno'), [], [xml.XmlText(dhRetorno.toString())]),
      if (xObs != null)
        xml.XmlElement(xml.XmlName('xObs'), [], [xml.XmlText(xObs.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetConsStatServSchema.fromXml(String xmlString,
      {String name = 'retConsStatServ'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetConsStatServSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      dhRecbto: element.findElements('dhRecbto').first.text,
      tMed: element.findElements('tMed').isNotEmpty
          ? element.findElements('tMed').first.text
          : null,
      dhRetorno: element.findElements('dhRetorno').isNotEmpty
          ? element.findElements('dhRetorno').first.text
          : null,
      xObs: element.findElements('xObs').isNotEmpty
          ? element.findElements('xObs').first.text
          : null,
    );
  }
  factory _RetConsStatServSchema.fromJson(Map<String, dynamic> json) =>
      _$RetConsStatServSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetConsStatServSchemaToJson(this);
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
