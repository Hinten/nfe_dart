// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distDFeInt.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _DistDFeIntSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  @JsonKey(
      fromJson: _cUFAutorEnumFromMaybeValue, toJson: _cUFAutorEnumToMaybeValue)
  cUFAutorEnum? cUFAutor;
  String? CNPJ;
  String? CPF;
  @JsonKey(
      fromJson: _distNSUComplexType_distDFeIntMaybeFromJson,
      toJson: _distNSUComplexType_distDFeIntMaybeToJson)
  distNSUComplexType_distDFeInt? distNSU;
  @JsonKey(
      fromJson: _consNSUComplexType_distDFeIntMaybeFromJson,
      toJson: _consNSUComplexType_distDFeIntMaybeToJson)
  consNSUComplexType_distDFeInt? consNSU;
  @JsonKey(
      fromJson: _consChNFeComplexType_distDFeIntMaybeFromJson,
      toJson: _consChNFeComplexType_distDFeIntMaybeToJson)
  consChNFeComplexType_distDFeInt? consChNFe;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  _DistDFeIntSchema(
      {this.xmlns,
      required this.tpAmb,
      this.cUFAutor,
      this.CNPJ,
      this.CPF,
      this.distNSU,
      this.consNSU,
      this.consChNFe,
      required this.versao}) {
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((cUFAutor == null ||
            cUFAutor.toString().trim() == cUFAutor.toString()) ==
        false) {
      throw Exception('Invalid value for cUFAutor');
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
    if ((CPF == null || CPF.toString().length <= 11) == false) {
      throw Exception('Invalid value for CPF');
    }
    ;
    if ((CPF == null || RegExp(r'[0-9]{11}').hasMatch(CPF.toString())) ==
        false) {
      throw Exception('Invalid value for CPF - $CPF');
    }
    ;
    if ((CPF == null || CPF.toString().trim() == CPF.toString()) == false) {
      throw Exception('Invalid value for CPF');
    }
    ;
    final _$CNPJCPF = [CNPJ != null, CPF != null];
    if ((_$CNPJCPF.every((e) => e == false) ||
            _$CNPJCPF.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJ, CPF');
    }
    ;
    final _$distNSUconsNSUconsChNFe = [
      distNSU != null,
      consNSU != null,
      consChNFe != null
    ];
    if ((_$distNSUconsNSUconsChNFe.every((e) => e == false) ||
            _$distNSUconsNSUconsChNFe.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of distNSU, consNSU, consChNFe');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _DistDFeIntSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      this.cUFAutor,
      this.CNPJ,
      this.CPF,
      this.distNSU,
      this.consNSU,
      this.consChNFe,
      required this.versao});
  String toXml(
      {String name = 'distDFeInt', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.value)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      if (cUFAutor != null)
        xml.XmlElement(
            xml.XmlName('cUFAutor'), [], [xml.XmlText(cUFAutor!.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (distNSU != null)
        xml.XmlDocumentFragment.parse(
            distNSU!.toXml(name: "distNSU", pretty: pretty)),
      if (consNSU != null)
        xml.XmlDocumentFragment.parse(
            consNSU!.toXml(name: "consNSU", pretty: pretty)),
      if (consChNFe != null)
        xml.XmlDocumentFragment.parse(
            consChNFe!.toXml(name: "consChNFe", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _DistDFeIntSchema.fromXml(String xmlString,
      {String name = 'distDFeInt'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _DistDFeIntSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      cUFAutor: element.findElements('cUFAutor').isNotEmpty
          ? cUFAutorEnum.fromValue(element.findElements('cUFAutor').first.text)
          : null,
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      distNSU: element.findElements('distNSU').isNotEmpty
          ? distNSUComplexType_distDFeInt.fromXml(
              element.findElements('distNSU').first.toString(),
              name: "distNSU")
          : null,
      consNSU: element.findElements('consNSU').isNotEmpty
          ? consNSUComplexType_distDFeInt.fromXml(
              element.findElements('consNSU').first.toString(),
              name: "consNSU")
          : null,
      consChNFe: element.findElements('consChNFe').isNotEmpty
          ? consChNFeComplexType_distDFeInt.fromXml(
              element.findElements('consChNFe').first.toString(),
              name: "consChNFe")
          : null,
    );
  }
  factory _DistDFeIntSchema.fromJson(Map<String, dynamic> json) =>
      _$DistDFeIntSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$DistDFeIntSchemaToJson(this);
}

@JsonSerializable()
class distNSUComplexType_distDFeInt {
  String? xmlns;
  String ultNSU;
  distNSUComplexType_distDFeInt({this.xmlns, required this.ultNSU}) {
    if ((RegExp(r'[0-9]{15}').hasMatch(ultNSU.toString())) == false) {
      throw Exception('Invalid value for ultNSU - $ultNSU');
    }
    ;
  }
  distNSUComplexType_distDFeInt.unsafe({this.xmlns, required this.ultNSU});
  String toXml({String name = 'distNSU', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('ultNSU'), [], [xml.XmlText(ultNSU.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory distNSUComplexType_distDFeInt.fromXml(String xmlString,
      {String name = 'distNSU'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return distNSUComplexType_distDFeInt.unsafe(
      xmlns: element.getAttribute('xmlns'),
      ultNSU: element.findElements('ultNSU').first.text,
    );
  }
  factory distNSUComplexType_distDFeInt.fromJson(Map<String, dynamic> json) =>
      _$distNSUComplexType_distDFeIntFromJson(json);
  Map<String, dynamic> toJson() => _$distNSUComplexType_distDFeIntToJson(this);
}

List<distNSUComplexType_distDFeInt> _distNSUComplexType_distDFeIntListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            distNSUComplexType_distDFeInt.fromJson(e as Map<String, dynamic>))
        .toList();
List<distNSUComplexType_distDFeInt>?
    _distNSUComplexType_distDFeIntMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            distNSUComplexType_distDFeInt.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _distNSUComplexType_distDFeIntListToJson(
        List<distNSUComplexType_distDFeInt> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _distNSUComplexType_distDFeIntMaybeListToJson(
        List<distNSUComplexType_distDFeInt>? list) =>
    list?.map((e) => e.toJson()).toList();
distNSUComplexType_distDFeInt _distNSUComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    distNSUComplexType_distDFeInt.fromJson(json);
distNSUComplexType_distDFeInt? _distNSUComplexType_distDFeIntMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? distNSUComplexType_distDFeInt.fromJson(json) : null;
Map<String, dynamic> _distNSUComplexType_distDFeIntToJson(
        distNSUComplexType_distDFeInt instance) =>
    instance.toJson();
Map<String, dynamic>? _distNSUComplexType_distDFeIntMaybeToJson(
        distNSUComplexType_distDFeInt? instance) =>
    instance?.toJson();

@JsonSerializable()
class consNSUComplexType_distDFeInt {
  String? xmlns;
  String NSU;
  consNSUComplexType_distDFeInt({this.xmlns, required this.NSU}) {
    if ((RegExp(r'[0-9]{15}').hasMatch(NSU.toString())) == false) {
      throw Exception('Invalid value for NSU - $NSU');
    }
    ;
  }
  consNSUComplexType_distDFeInt.unsafe({this.xmlns, required this.NSU});
  String toXml({String name = 'consNSU', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('NSU'), [], [xml.XmlText(NSU.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory consNSUComplexType_distDFeInt.fromXml(String xmlString,
      {String name = 'consNSU'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return consNSUComplexType_distDFeInt.unsafe(
      xmlns: element.getAttribute('xmlns'),
      NSU: element.findElements('NSU').first.text,
    );
  }
  factory consNSUComplexType_distDFeInt.fromJson(Map<String, dynamic> json) =>
      _$consNSUComplexType_distDFeIntFromJson(json);
  Map<String, dynamic> toJson() => _$consNSUComplexType_distDFeIntToJson(this);
}

List<consNSUComplexType_distDFeInt> _consNSUComplexType_distDFeIntListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            consNSUComplexType_distDFeInt.fromJson(e as Map<String, dynamic>))
        .toList();
List<consNSUComplexType_distDFeInt>?
    _consNSUComplexType_distDFeIntMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            consNSUComplexType_distDFeInt.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _consNSUComplexType_distDFeIntListToJson(
        List<consNSUComplexType_distDFeInt> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _consNSUComplexType_distDFeIntMaybeListToJson(
        List<consNSUComplexType_distDFeInt>? list) =>
    list?.map((e) => e.toJson()).toList();
consNSUComplexType_distDFeInt _consNSUComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    consNSUComplexType_distDFeInt.fromJson(json);
consNSUComplexType_distDFeInt? _consNSUComplexType_distDFeIntMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? consNSUComplexType_distDFeInt.fromJson(json) : null;
Map<String, dynamic> _consNSUComplexType_distDFeIntToJson(
        consNSUComplexType_distDFeInt instance) =>
    instance.toJson();
Map<String, dynamic>? _consNSUComplexType_distDFeIntMaybeToJson(
        consNSUComplexType_distDFeInt? instance) =>
    instance?.toJson();

@JsonSerializable()
class consChNFeComplexType_distDFeInt {
  String? xmlns;
  String chNFe;
  consChNFeComplexType_distDFeInt({this.xmlns, required this.chNFe}) {
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
  }
  consChNFeComplexType_distDFeInt.unsafe({this.xmlns, required this.chNFe});
  String toXml(
      {String name = 'consChNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory consChNFeComplexType_distDFeInt.fromXml(String xmlString,
      {String name = 'consChNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return consChNFeComplexType_distDFeInt.unsafe(
      xmlns: element.getAttribute('xmlns'),
      chNFe: element.findElements('chNFe').first.text,
    );
  }
  factory consChNFeComplexType_distDFeInt.fromJson(Map<String, dynamic> json) =>
      _$consChNFeComplexType_distDFeIntFromJson(json);
  Map<String, dynamic> toJson() =>
      _$consChNFeComplexType_distDFeIntToJson(this);
}

List<consChNFeComplexType_distDFeInt>
    _consChNFeComplexType_distDFeIntListFromJson(List<dynamic> json) => json
        .map((e) =>
            consChNFeComplexType_distDFeInt.fromJson(e as Map<String, dynamic>))
        .toList();
List<consChNFeComplexType_distDFeInt>?
    _consChNFeComplexType_distDFeIntMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => consChNFeComplexType_distDFeInt
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _consChNFeComplexType_distDFeIntListToJson(
        List<consChNFeComplexType_distDFeInt> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _consChNFeComplexType_distDFeIntMaybeListToJson(
        List<consChNFeComplexType_distDFeInt>? list) =>
    list?.map((e) => e.toJson()).toList();
consChNFeComplexType_distDFeInt _consChNFeComplexType_distDFeIntFromJson(
        Map<String, dynamic> json) =>
    consChNFeComplexType_distDFeInt.fromJson(json);
consChNFeComplexType_distDFeInt? _consChNFeComplexType_distDFeIntMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? consChNFeComplexType_distDFeInt.fromJson(json) : null;
Map<String, dynamic> _consChNFeComplexType_distDFeIntToJson(
        consChNFeComplexType_distDFeInt instance) =>
    instance.toJson();
Map<String, dynamic>? _consChNFeComplexType_distDFeIntMaybeToJson(
        consChNFeComplexType_distDFeInt? instance) =>
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

enum cUFAutorEnum {
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
  const cUFAutorEnum(this.value);
  factory cUFAutorEnum.fromValue(String value) {
    for (final item in cUFAutorEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cUFAutorEnum: $value");
  }
}

cUFAutorEnum? _cUFAutorEnumFromMaybeValue(String? value) =>
    value != null ? cUFAutorEnum.fromValue(value) : null;
String? _cUFAutorEnumToMaybeValue(cUFAutorEnum? value) =>
    value != null ? value.value : null;

cUFAutorEnum _cUFAutorEnumFromValue(String value) =>
    cUFAutorEnum.fromValue(value);
String _cUFAutorEnumToValue(cUFAutorEnum value) => value.value;

List<cUFAutorEnum>? _cUFAutorEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cUFAutorEnum.fromValue(e)).toList();
List<String>? _cUFAutorEnumToMaybeList(List<cUFAutorEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cUFAutorEnum> _cUFAutorEnumFromList(List<String> value) =>
    value.map((e) => cUFAutorEnum.fromValue(e)).toList();
List<String> _cUFAutorEnumToList(List<cUFAutorEnum> value) =>
    value.map((e) => e.value).toList();

enum versaoEnum {
  v_101("1.01");

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
