// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retInutNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetInutNFeSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _infInutComplexType_TRetInutNFeFromJson,
      toJson: _infInutComplexType_TRetInutNFeToJson)
  infInutComplexType_TRetInutNFe infInut;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  _RetInutNFeSchema(
      {this.xmlns,
      required this.infInut,
      this.Signature,
      required this.versao}) {
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _RetInutNFeSchema.unsafe(
      {this.xmlns,
      required this.infInut,
      this.Signature,
      required this.versao});
  String toXml(
      {String name = 'retInutNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infInut.toXml(name: "infInut", pretty: pretty)),
      if (Signature != null)
        xml.XmlDocumentFragment.parse(
            Signature!.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetInutNFeSchema.fromXml(String xmlString,
      {String name = 'retInutNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetInutNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infInut: infInutComplexType_TRetInutNFe.fromXml(
          element.findElements('infInut').first.toString(),
          name: "infInut"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory _RetInutNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$RetInutNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetInutNFeSchemaToJson(this);
}

@JsonSerializable()
class infInutComplexType_TRetInutNFe {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String? ano;
  String? CNPJ;
  @JsonKey(fromJson: _modEnumFromMaybeValue, toJson: _modEnumToMaybeValue)
  modEnum? mod;
  String? serie;
  String? nNFIni;
  String? nNFFin;
  String dhRecbto;
  String? nProt;
  String? Id;

  infInutComplexType_TRetInutNFe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      this.ano,
      this.CNPJ,
      this.mod,
      this.serie,
      this.nNFIni,
      this.nNFFin,
      required this.dhRecbto,
      this.nProt,
      this.Id}) {
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
    if ((ano == null || RegExp(r'[0-9]{2}').hasMatch(ano.toString())) ==
        false) {
      throw Exception('Invalid value for ano - $ano');
    }
    ;
    if ((ano == null || ano.toString().trim() == ano.toString()) == false) {
      throw Exception('Invalid value for ano');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((CNPJ == null || RegExp(r'[0-9]{14}').hasMatch(CNPJ.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((mod == null || mod.toString().trim() == mod.toString()) == false) {
      throw Exception('Invalid value for mod');
    }
    ;
    if ((serie == null ||
            RegExp(r'0|[1-9]{1}[0-9]{0,2}').hasMatch(serie.toString())) ==
        false) {
      throw Exception('Invalid value for serie - $serie');
    }
    ;
    if ((serie == null || serie.toString().trim() == serie.toString()) ==
        false) {
      throw Exception('Invalid value for serie');
    }
    ;
    if ((nNFIni == null ||
            RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNFIni.toString())) ==
        false) {
      throw Exception('Invalid value for nNFIni - $nNFIni');
    }
    ;
    if ((nNFIni == null || nNFIni.toString().trim() == nNFIni.toString()) ==
        false) {
      throw Exception('Invalid value for nNFIni');
    }
    ;
    if ((nNFFin == null ||
            RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNFFin.toString())) ==
        false) {
      throw Exception('Invalid value for nNFFin - $nNFFin');
    }
    ;
    if ((nNFFin == null || nNFFin.toString().trim() == nNFFin.toString()) ==
        false) {
      throw Exception('Invalid value for nNFFin');
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
    if ((nProt == null || nProt.toString().length <= 15) == false) {
      throw Exception('Invalid value for nProt');
    }
    ;
    if ((nProt == null || RegExp(r'[0-9]{15}').hasMatch(nProt.toString())) ==
        false) {
      throw Exception('Invalid value for nProt - $nProt');
    }
    ;
    if ((nProt == null || nProt.toString().trim() == nProt.toString()) ==
        false) {
      throw Exception('Invalid value for nProt');
    }
    ;
  }
  infInutComplexType_TRetInutNFe.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      this.ano,
      this.CNPJ,
      this.mod,
      this.serie,
      this.nNFIni,
      this.nNFFin,
      required this.dhRecbto,
      this.nProt,
      this.Id});
  String toXml({String name = 'infInut', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      if (ano != null)
        xml.XmlElement(xml.XmlName('ano'), [], [xml.XmlText(ano.toString())]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (mod != null)
        xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod!.value)]),
      if (serie != null)
        xml.XmlElement(
            xml.XmlName('serie'), [], [xml.XmlText(serie.toString())]),
      if (nNFIni != null)
        xml.XmlElement(
            xml.XmlName('nNFIni'), [], [xml.XmlText(nNFIni.toString())]),
      if (nNFFin != null)
        xml.XmlElement(
            xml.XmlName('nNFFin'), [], [xml.XmlText(nNFFin.toString())]),
      xml.XmlElement(
          xml.XmlName('dhRecbto'), [], [xml.XmlText(dhRecbto.toString())]),
      if (nProt != null)
        xml.XmlElement(
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infInutComplexType_TRetInutNFe.fromXml(String xmlString,
      {String name = 'infInut'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infInutComplexType_TRetInutNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      ano: element.findElements('ano').isNotEmpty
          ? element.findElements('ano').first.text
          : null,
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      mod: element.findElements('mod').isNotEmpty
          ? modEnum.fromValue(element.findElements('mod').first.text)
          : null,
      serie: element.findElements('serie').isNotEmpty
          ? element.findElements('serie').first.text
          : null,
      nNFIni: element.findElements('nNFIni').isNotEmpty
          ? element.findElements('nNFIni').first.text
          : null,
      nNFFin: element.findElements('nNFFin').isNotEmpty
          ? element.findElements('nNFFin').first.text
          : null,
      dhRecbto: element.findElements('dhRecbto').first.text,
      nProt: element.findElements('nProt').isNotEmpty
          ? element.findElements('nProt').first.text
          : null,
    );
  }
  factory infInutComplexType_TRetInutNFe.fromJson(Map<String, dynamic> json) =>
      _$infInutComplexType_TRetInutNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infInutComplexType_TRetInutNFeToJson(this);
}

List<infInutComplexType_TRetInutNFe>
    _infInutComplexType_TRetInutNFeListFromJson(List<dynamic> json) => json
        .map((e) =>
            infInutComplexType_TRetInutNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infInutComplexType_TRetInutNFe>?
    _infInutComplexType_TRetInutNFeMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infInutComplexType_TRetInutNFe
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infInutComplexType_TRetInutNFeListToJson(
        List<infInutComplexType_TRetInutNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infInutComplexType_TRetInutNFeMaybeListToJson(
        List<infInutComplexType_TRetInutNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infInutComplexType_TRetInutNFe _infInutComplexType_TRetInutNFeFromJson(
        Map<String, dynamic> json) =>
    infInutComplexType_TRetInutNFe.fromJson(json);
infInutComplexType_TRetInutNFe? _infInutComplexType_TRetInutNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infInutComplexType_TRetInutNFe.fromJson(json) : null;
Map<String, dynamic> _infInutComplexType_TRetInutNFeToJson(
        infInutComplexType_TRetInutNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infInutComplexType_TRetInutNFeMaybeToJson(
        infInutComplexType_TRetInutNFe? instance) =>
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
