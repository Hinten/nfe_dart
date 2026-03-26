// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsReciNFe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetConsReciNFeSchema {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String nRec;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String dhRecbto;
  String? cMsg;
  String? xMsg;
  @JsonKey(
      fromJson: _TProtNFeComplexTypeMaybeListFromJson,
      toJson: _TProtNFeComplexTypeMaybeListToJson)
  List<TProtNFeComplexType>? protNFe;
  String versao;

  _RetConsReciNFeSchema(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.nRec,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.cMsg,
      this.xMsg,
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
    if ((cMsg == null || RegExp(r'[0-9]{1,4}').hasMatch(cMsg.toString())) ==
        false) {
      throw Exception('Invalid value for cMsg - $cMsg');
    }
    ;
    if ((cMsg == null || cMsg.toString().trim() == cMsg.toString()) == false) {
      throw Exception('Invalid value for cMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().length <= 200) == false) {
      throw Exception('Invalid value for xMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().length >= 1) == false) {
      throw Exception('Invalid value for xMsg');
    }
    ;
    if ((xMsg == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xMsg.toString())) ==
        false) {
      throw Exception('Invalid value for xMsg - $xMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().trim() == xMsg.toString()) == false) {
      throw Exception('Invalid value for xMsg');
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
  _RetConsReciNFeSchema.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.nRec,
      required this.cStat,
      required this.xMotivo,
      required this.cUF,
      required this.dhRecbto,
      this.cMsg,
      this.xMsg,
      this.protNFe,
      required this.versao});
  String toXml(
      {String name = 'retConsReciNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('nRec'), [], [xml.XmlText(nRec.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(
          xml.XmlName('dhRecbto'), [], [xml.XmlText(dhRecbto.toString())]),
      if (cMsg != null)
        xml.XmlElement(xml.XmlName('cMsg'), [], [xml.XmlText(cMsg.toString())]),
      if (xMsg != null)
        xml.XmlElement(xml.XmlName('xMsg'), [], [xml.XmlText(xMsg.toString())]),
      ...?protNFe
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "protNFe", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetConsReciNFeSchema.fromXml(String xmlString,
      {String name = 'retConsReciNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetConsReciNFeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      nRec: element.findElements('nRec').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      dhRecbto: element.findElements('dhRecbto').first.text,
      cMsg: element.findElements('cMsg').isNotEmpty
          ? element.findElements('cMsg').first.text
          : null,
      xMsg: element.findElements('xMsg').isNotEmpty
          ? element.findElements('xMsg').first.text
          : null,
      protNFe: element
          .findElements('protNFe')
          .map(
              (e) => TProtNFeComplexType.fromXml(e.toString(), name: "protNFe"))
          .toList(),
    );
  }
  factory _RetConsReciNFeSchema.fromJson(Map<String, dynamic> json) =>
      _$RetConsReciNFeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetConsReciNFeSchemaToJson(this);
}

@JsonSerializable()
class TProtNFeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infProtComplexType_TProtNFeFromJson,
      toJson: _infProtComplexType_TProtNFeToJson)
  infProtComplexType_TProtNFe infProt;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  TProtNFeComplexType(
      {this.xmlns,
      required this.infProt,
      this.Signature,
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
  TProtNFeComplexType.unsafe(
      {this.xmlns,
      required this.infProt,
      this.Signature,
      required this.versao});
  String toXml({String name = 'TProtNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infProt.toXml(name: "infProt", pretty: pretty)),
      if (Signature != null)
        xml.XmlDocumentFragment.parse(
            Signature!.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TProtNFeComplexType.fromXml(String xmlString,
      {String name = 'TProtNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TProtNFeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infProt: infProtComplexType_TProtNFe.fromXml(
          element.findElements('infProt').first.toString(),
          name: "infProt"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory TProtNFeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TProtNFeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TProtNFeComplexTypeToJson(this);
}

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

@JsonSerializable()
class infProtComplexType_TProtNFe {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  String chNFe;
  String dhRecbto;
  String? nProt;
  String? digVal;
  String cStat;
  String xMotivo;
  String? cMsg;
  String? xMsg;
  String? Id;

  infProtComplexType_TProtNFe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.chNFe,
      required this.dhRecbto,
      this.nProt,
      this.digVal,
      required this.cStat,
      required this.xMotivo,
      this.cMsg,
      this.xMsg,
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
    if ((cMsg == null || RegExp(r'[0-9]{1,4}').hasMatch(cMsg.toString())) ==
        false) {
      throw Exception('Invalid value for cMsg - $cMsg');
    }
    ;
    if ((cMsg == null || cMsg.toString().trim() == cMsg.toString()) == false) {
      throw Exception('Invalid value for cMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().length <= 200) == false) {
      throw Exception('Invalid value for xMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().length >= 1) == false) {
      throw Exception('Invalid value for xMsg');
    }
    ;
    if ((xMsg == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xMsg.toString())) ==
        false) {
      throw Exception('Invalid value for xMsg - $xMsg');
    }
    ;
    if ((xMsg == null || xMsg.toString().trim() == xMsg.toString()) == false) {
      throw Exception('Invalid value for xMsg');
    }
    ;
  }
  infProtComplexType_TProtNFe.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.chNFe,
      required this.dhRecbto,
      this.nProt,
      this.digVal,
      required this.cStat,
      required this.xMotivo,
      this.cMsg,
      this.xMsg,
      this.Id});
  String toXml({String name = 'infProt', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      xml.XmlElement(
          xml.XmlName('dhRecbto'), [], [xml.XmlText(dhRecbto.toString())]),
      if (nProt != null)
        xml.XmlElement(
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())]),
      if (digVal != null)
        xml.XmlElement(
            xml.XmlName('digVal'), [], [xml.XmlText(digVal.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      if (cMsg != null)
        xml.XmlElement(xml.XmlName('cMsg'), [], [xml.XmlText(cMsg.toString())]),
      if (xMsg != null)
        xml.XmlElement(xml.XmlName('xMsg'), [], [xml.XmlText(xMsg.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infProtComplexType_TProtNFe.fromXml(String xmlString,
      {String name = 'infProt'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infProtComplexType_TProtNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      chNFe: element.findElements('chNFe').first.text,
      dhRecbto: element.findElements('dhRecbto').first.text,
      nProt: element.findElements('nProt').isNotEmpty
          ? element.findElements('nProt').first.text
          : null,
      digVal: element.findElements('digVal').isNotEmpty
          ? element.findElements('digVal').first.text
          : null,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      cMsg: element.findElements('cMsg').isNotEmpty
          ? element.findElements('cMsg').first.text
          : null,
      xMsg: element.findElements('xMsg').isNotEmpty
          ? element.findElements('xMsg').first.text
          : null,
    );
  }
  factory infProtComplexType_TProtNFe.fromJson(Map<String, dynamic> json) =>
      _$infProtComplexType_TProtNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infProtComplexType_TProtNFeToJson(this);
}

List<infProtComplexType_TProtNFe> _infProtComplexType_TProtNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infProtComplexType_TProtNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infProtComplexType_TProtNFe>?
    _infProtComplexType_TProtNFeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infProtComplexType_TProtNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infProtComplexType_TProtNFeListToJson(
        List<infProtComplexType_TProtNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infProtComplexType_TProtNFeMaybeListToJson(
        List<infProtComplexType_TProtNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infProtComplexType_TProtNFe _infProtComplexType_TProtNFeFromJson(
        Map<String, dynamic> json) =>
    infProtComplexType_TProtNFe.fromJson(json);
infProtComplexType_TProtNFe? _infProtComplexType_TProtNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infProtComplexType_TProtNFe.fromJson(json) : null;
Map<String, dynamic> _infProtComplexType_TProtNFeToJson(
        infProtComplexType_TProtNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infProtComplexType_TProtNFeMaybeToJson(
        infProtComplexType_TProtNFe? instance) =>
    instance?.toJson();
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
