// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inutNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _InutNFeSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _infInutComplexType_TInutNFeFromJson,
      toJson: _infInutComplexType_TInutNFeToJson)
  infInutComplexType_TInutNFe infInut;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeFromJson,
      toJson: _SignatureTypeComplexTypeToJson)
  SignatureTypeComplexType Signature;
  String versao;

  _InutNFeSchema(
      {this.xmlns,
      required this.infInut,
      required this.Signature,
      required this.versao}) {
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _InutNFeSchema.unsafe(
      {this.xmlns,
      required this.infInut,
      required this.Signature,
      required this.versao});
  String toXml({String name = 'inutNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infInut.toXml(name: "infInut", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Signature.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _InutNFeSchema.fromXml(String xmlString, {String name = 'inutNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _InutNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infInut: infInutComplexType_TInutNFe.fromXml(
          element.findElements('infInut').first.toString(),
          name: "infInut"),
      Signature: SignatureTypeComplexType.fromXml(
          element.findElements('Signature').first.toString(),
          name: "Signature"),
    );
  }
  factory _InutNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$InutNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$InutNFeSchemaToJson(this);
}

@JsonSerializable()
class infInutComplexType_TInutNFe {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  @JsonKey(fromJson: _xServEnumFromValue, toJson: _xServEnumToValue)
  xServEnum xServ;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String ano;
  String CNPJ;
  @JsonKey(fromJson: _modEnumFromValue, toJson: _modEnumToValue)
  modEnum mod;
  String serie;
  String nNFIni;
  String nNFFin;
  String xJust;
  String Id;

  infInutComplexType_TInutNFe(
      {this.xmlns,
      required this.tpAmb,
      required this.xServ,
      required this.cUF,
      required this.ano,
      required this.CNPJ,
      required this.mod,
      required this.serie,
      required this.nNFIni,
      required this.nNFFin,
      required this.xJust,
      required this.Id}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'[0-9]{2}').hasMatch(ano.toString())) == false) {
      throw Exception('Invalid value for ano - $ano');
    }
    ;
    if ((ano.toString().trim() == ano.toString()) == false) {
      throw Exception('Invalid value for ano');
    }
    ;
    if ((CNPJ.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((RegExp(r'[0-9]{14}').hasMatch(CNPJ.toString())) == false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((mod.toString().trim() == mod.toString()) == false) {
      throw Exception('Invalid value for mod');
    }
    ;
    if ((RegExp(r'0|[1-9]{1}[0-9]{0,2}').hasMatch(serie.toString())) == false) {
      throw Exception('Invalid value for serie - $serie');
    }
    ;
    if ((serie.toString().trim() == serie.toString()) == false) {
      throw Exception('Invalid value for serie');
    }
    ;
    if ((RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNFIni.toString())) == false) {
      throw Exception('Invalid value for nNFIni - $nNFIni');
    }
    ;
    if ((nNFIni.toString().trim() == nNFIni.toString()) == false) {
      throw Exception('Invalid value for nNFIni');
    }
    ;
    if ((RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNFFin.toString())) == false) {
      throw Exception('Invalid value for nNFFin - $nNFFin');
    }
    ;
    if ((nNFFin.toString().trim() == nNFFin.toString()) == false) {
      throw Exception('Invalid value for nNFFin');
    }
    ;
    if ((xJust.toString().length <= 255) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((xJust.toString().length >= 15) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xJust.toString())) ==
        false) {
      throw Exception('Invalid value for xJust - $xJust');
    }
    ;
    if ((xJust.toString().trim() == xJust.toString()) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((RegExp(r'ID[0-9]{41}').hasMatch(Id.toString())) == false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infInutComplexType_TInutNFe.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.xServ,
      required this.cUF,
      required this.ano,
      required this.CNPJ,
      required this.mod,
      required this.serie,
      required this.nNFIni,
      required this.nNFFin,
      required this.xJust,
      required this.Id});
  String toXml({String name = 'infInut', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(xml.XmlName('xServ'), [], [xml.XmlText(xServ.value)]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(xml.XmlName('ano'), [], [xml.XmlText(ano.toString())]),
      xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod.value)]),
      xml.XmlElement(xml.XmlName('serie'), [], [xml.XmlText(serie.toString())]),
      xml.XmlElement(
          xml.XmlName('nNFIni'), [], [xml.XmlText(nNFIni.toString())]),
      xml.XmlElement(
          xml.XmlName('nNFFin'), [], [xml.XmlText(nNFFin.toString())]),
      xml.XmlElement(xml.XmlName('xJust'), [], [xml.XmlText(xJust.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infInutComplexType_TInutNFe.fromXml(String xmlString,
      {String name = 'infInut'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infInutComplexType_TInutNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute('Id')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      xServ: xServEnum.fromValue(element.findElements('xServ').first.text),
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      ano: element.findElements('ano').first.text,
      CNPJ: element.findElements('CNPJ').first.text,
      mod: modEnum.fromValue(element.findElements('mod').first.text),
      serie: element.findElements('serie').first.text,
      nNFIni: element.findElements('nNFIni').first.text,
      nNFFin: element.findElements('nNFFin').first.text,
      xJust: element.findElements('xJust').first.text,
    );
  }
  factory infInutComplexType_TInutNFe.fromJson(Map<String, dynamic> json) =>
      _$infInutComplexType_TInutNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infInutComplexType_TInutNFeToJson(this);
}

List<infInutComplexType_TInutNFe> _infInutComplexType_TInutNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infInutComplexType_TInutNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infInutComplexType_TInutNFe>?
    _infInutComplexType_TInutNFeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infInutComplexType_TInutNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infInutComplexType_TInutNFeListToJson(
        List<infInutComplexType_TInutNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infInutComplexType_TInutNFeMaybeListToJson(
        List<infInutComplexType_TInutNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infInutComplexType_TInutNFe _infInutComplexType_TInutNFeFromJson(
        Map<String, dynamic> json) =>
    infInutComplexType_TInutNFe.fromJson(json);
infInutComplexType_TInutNFe? _infInutComplexType_TInutNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infInutComplexType_TInutNFe.fromJson(json) : null;
Map<String, dynamic> _infInutComplexType_TInutNFeToJson(
        infInutComplexType_TInutNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infInutComplexType_TInutNFeMaybeToJson(
        infInutComplexType_TInutNFe? instance) =>
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
  v_INUTILIZAR("INUTILIZAR");

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

enum modEnum {
  v_55("55"),
  v_65("65");

  final String value;
  const modEnum(this.value);
  factory modEnum.fromValue(String value) {
    for (final item in modEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for modEnum: $value");
  }
}

modEnum? _modEnumFromMaybeValue(String? value) =>
    value != null ? modEnum.fromValue(value) : null;
String? _modEnumToMaybeValue(modEnum? value) =>
    value != null ? value.value : null;

modEnum _modEnumFromValue(String value) => modEnum.fromValue(value);
String _modEnumToValue(modEnum value) => value.value;

List<modEnum>? _modEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => modEnum.fromValue(e)).toList();
List<String>? _modEnumToMaybeList(List<modEnum>? value) =>
    value?.map((e) => e.value).toList();

List<modEnum> _modEnumFromList(List<String> value) =>
    value.map((e) => modEnum.fromValue(e)).toList();
List<String> _modEnumToList(List<modEnum> value) =>
    value.map((e) => e.value).toList();
