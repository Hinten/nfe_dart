// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnvCCe.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetEnvCCeSchema {
  String? xmlns;
  String idLote;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  @JsonKey(fromJson: _cOrgaoEnumFromValue, toJson: _cOrgaoEnumToValue)
  cOrgaoEnum cOrgao;
  String cStat;
  String xMotivo;
  @JsonKey(
      fromJson: _TretEventoComplexTypeMaybeListFromJson,
      toJson: _TretEventoComplexTypeMaybeListToJson)
  List<TretEventoComplexType>? retEvento;
  String versao;

  _RetEnvCCeSchema(
      {this.xmlns,
      required this.idLote,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.retEvento,
      required this.versao}) {
    if ((RegExp(r'[0-9]{1,15}').hasMatch(idLote.toString())) == false) {
      throw Exception('Invalid value for idLote - $idLote');
    }
    ;
    if ((idLote.toString().trim() == idLote.toString()) == false) {
      throw Exception('Invalid value for idLote');
    }
    ;
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
    if ((cOrgao.toString().trim() == cOrgao.toString()) == false) {
      throw Exception('Invalid value for cOrgao');
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
    if ((RegExp(r'1\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  _RetEnvCCeSchema.unsafe(
      {this.xmlns,
      required this.idLote,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.retEvento,
      required this.versao});
  String toXml(
      {String name = 'retEnvEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('idLote'), [], [xml.XmlText(idLote.toString())]),
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cOrgao'), [], [xml.XmlText(cOrgao.value)]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      ...?retEvento
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "retEvento", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _RetEnvCCeSchema.fromXml(String xmlString,
      {String name = 'retEnvEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetEnvCCeSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      idLote: element.findElements('idLote').first.text,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cOrgao: cOrgaoEnum.fromValue(element.findElements('cOrgao').first.text),
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      retEvento: element
          .findElements('retEvento')
          .map((e) =>
              TretEventoComplexType.fromXml(e.toString(), name: "retEvento"))
          .toList(),
    );
  }
  factory _RetEnvCCeSchema.fromJson(Map<String, dynamic> json) =>
      _$RetEnvCCeSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetEnvCCeSchemaToJson(this);
}

@JsonSerializable()
class TretEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infEventoComplexType_TretEventoFromJson,
      toJson: _infEventoComplexType_TretEventoToJson)
  infEventoComplexType_TretEvento infEvento;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  TretEventoComplexType(
      {this.xmlns,
      required this.infEvento,
      this.Signature,
      required this.versao}) {
    if ((RegExp(r'1\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  TretEventoComplexType.unsafe(
      {this.xmlns,
      required this.infEvento,
      this.Signature,
      required this.versao});
  String toXml(
      {String name = 'TretEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infEvento.toXml(name: "infEvento", pretty: pretty)),
      if (Signature != null)
        xml.XmlDocumentFragment.parse(
            Signature!.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TretEventoComplexType.fromXml(String xmlString,
      {String name = 'TretEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TretEventoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infEvento: infEventoComplexType_TretEvento.fromXml(
          element.findElements('infEvento').first.toString(),
          name: "infEvento"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory TretEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TretEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TretEventoComplexTypeToJson(this);
}

List<TretEventoComplexType> _TretEventoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TretEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TretEventoComplexType>? _TretEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TretEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TretEventoComplexTypeListToJson(
        List<TretEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TretEventoComplexTypeMaybeListToJson(
        List<TretEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TretEventoComplexType _TretEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TretEventoComplexType.fromJson(json);
TretEventoComplexType? _TretEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TretEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TretEventoComplexTypeToJson(
        TretEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TretEventoComplexTypeMaybeToJson(
        TretEventoComplexType? instance) =>
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
class infEventoComplexType_TretEvento {
  String? xmlns;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String verAplic;
  @JsonKey(fromJson: _cOrgaoEnumFromValue, toJson: _cOrgaoEnumToValue)
  cOrgaoEnum cOrgao;
  String cStat;
  String xMotivo;
  String? chNFe;
  String? tpEvento;
  String? xEvento;
  String? nSeqEvento;
  String? CNPJDest;
  String? CPFDest;
  String? emailDest;
  String dhRegEvento;
  String? nProt;
  String? Id;

  infEventoComplexType_TretEvento(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.chNFe,
      this.tpEvento,
      this.xEvento,
      this.nSeqEvento,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
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
    if ((cOrgao.toString().trim() == cOrgao.toString()) == false) {
      throw Exception('Invalid value for cOrgao');
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
    if ((chNFe == null || RegExp(r'[0-9]{44}').hasMatch(chNFe.toString())) ==
        false) {
      throw Exception('Invalid value for chNFe - $chNFe');
    }
    ;
    if ((chNFe == null || chNFe.toString().trim() == chNFe.toString()) ==
        false) {
      throw Exception('Invalid value for chNFe');
    }
    ;
    if ((tpEvento == null ||
            RegExp(r'[0-9]{6}').hasMatch(tpEvento.toString())) ==
        false) {
      throw Exception('Invalid value for tpEvento - $tpEvento');
    }
    ;
    if ((tpEvento == null ||
            tpEvento.toString().trim() == tpEvento.toString()) ==
        false) {
      throw Exception('Invalid value for tpEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().length <= 60) == false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().length >= 5) == false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((xEvento == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xEvento.toString())) ==
        false) {
      throw Exception('Invalid value for xEvento - $xEvento');
    }
    ;
    if ((xEvento == null || xEvento.toString().trim() == xEvento.toString()) ==
        false) {
      throw Exception('Invalid value for xEvento');
    }
    ;
    if ((nSeqEvento == null ||
            RegExp(r'[1-9][0-9]{0,1}').hasMatch(nSeqEvento.toString())) ==
        false) {
      throw Exception('Invalid value for nSeqEvento - $nSeqEvento');
    }
    ;
    if ((nSeqEvento == null ||
            nSeqEvento.toString().trim() == nSeqEvento.toString()) ==
        false) {
      throw Exception('Invalid value for nSeqEvento');
    }
    ;
    if ((CNPJDest == null || CNPJDest.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJDest');
    }
    ;
    if ((CNPJDest == null ||
            RegExp(r'[0-9]{0}|[0-9]{14}').hasMatch(CNPJDest.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJDest - $CNPJDest');
    }
    ;
    if ((CNPJDest == null ||
            CNPJDest.toString().trim() == CNPJDest.toString()) ==
        false) {
      throw Exception('Invalid value for CNPJDest');
    }
    ;
    if ((CPFDest == null ||
            RegExp(r'[0-9]{11}').hasMatch(CPFDest.toString())) ==
        false) {
      throw Exception('Invalid value for CPFDest - $CPFDest');
    }
    ;
    if ((CPFDest == null || CPFDest.toString().trim() == CPFDest.toString()) ==
        false) {
      throw Exception('Invalid value for CPFDest');
    }
    ;
    final _$CNPJDestCPFDest = [CNPJDest != null, CPFDest != null];
    if ((_$CNPJDestCPFDest.every((e) => e == false) ||
            _$CNPJDestCPFDest.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJDest, CPFDest');
    }
    ;
    if ((emailDest == null || emailDest.toString().length <= 60) == false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((emailDest == null || emailDest.toString().length >= 1) == false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((emailDest == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(emailDest.toString())) ==
        false) {
      throw Exception('Invalid value for emailDest - $emailDest');
    }
    ;
    if ((emailDest == null ||
            emailDest.toString().trim() == emailDest.toString()) ==
        false) {
      throw Exception('Invalid value for emailDest');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d-0[1-4]:00')
            .hasMatch(dhRegEvento.toString())) ==
        false) {
      throw Exception('Invalid value for dhRegEvento - $dhRegEvento');
    }
    ;
    if ((dhRegEvento.toString().trim() == dhRegEvento.toString()) == false) {
      throw Exception('Invalid value for dhRegEvento');
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
    if ((Id == null || RegExp(r'ID[0-9]{15}').hasMatch(Id.toString())) ==
        false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infEventoComplexType_TretEvento.unsafe(
      {this.xmlns,
      required this.tpAmb,
      required this.verAplic,
      required this.cOrgao,
      required this.cStat,
      required this.xMotivo,
      this.chNFe,
      this.tpEvento,
      this.xEvento,
      this.nSeqEvento,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
      this.nProt,
      this.Id});
  String toXml(
      {String name = 'infEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cOrgao'), [], [xml.XmlText(cOrgao.value)]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      if (chNFe != null)
        xml.XmlElement(
            xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      if (tpEvento != null)
        xml.XmlElement(
            xml.XmlName('tpEvento'), [], [xml.XmlText(tpEvento.toString())]),
      if (xEvento != null)
        xml.XmlElement(
            xml.XmlName('xEvento'), [], [xml.XmlText(xEvento.toString())]),
      if (nSeqEvento != null)
        xml.XmlElement(xml.XmlName('nSeqEvento'), [],
            [xml.XmlText(nSeqEvento.toString())]),
      if (CNPJDest != null)
        xml.XmlElement(
            xml.XmlName('CNPJDest'), [], [xml.XmlText(CNPJDest.toString())]),
      if (CPFDest != null)
        xml.XmlElement(
            xml.XmlName('CPFDest'), [], [xml.XmlText(CPFDest.toString())]),
      if (emailDest != null)
        xml.XmlElement(
            xml.XmlName('emailDest'), [], [xml.XmlText(emailDest.toString())]),
      xml.XmlElement(xml.XmlName('dhRegEvento'), [],
          [xml.XmlText(dhRegEvento.toString())]),
      if (nProt != null)
        xml.XmlElement(
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infEventoComplexType_TretEvento.fromXml(String xmlString,
      {String name = 'infEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infEventoComplexType_TretEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute('Id'),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      verAplic: element.findElements('verAplic').first.text,
      cOrgao: cOrgaoEnum.fromValue(element.findElements('cOrgao').first.text),
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
      chNFe: element.findElements('chNFe').isNotEmpty
          ? element.findElements('chNFe').first.text
          : null,
      tpEvento: element.findElements('tpEvento').isNotEmpty
          ? element.findElements('tpEvento').first.text
          : null,
      xEvento: element.findElements('xEvento').isNotEmpty
          ? element.findElements('xEvento').first.text
          : null,
      nSeqEvento: element.findElements('nSeqEvento').isNotEmpty
          ? element.findElements('nSeqEvento').first.text
          : null,
      CNPJDest: element.findElements('CNPJDest').isNotEmpty
          ? element.findElements('CNPJDest').first.text
          : null,
      CPFDest: element.findElements('CPFDest').isNotEmpty
          ? element.findElements('CPFDest').first.text
          : null,
      emailDest: element.findElements('emailDest').isNotEmpty
          ? element.findElements('emailDest').first.text
          : null,
      dhRegEvento: element.findElements('dhRegEvento').first.text,
      nProt: element.findElements('nProt').isNotEmpty
          ? element.findElements('nProt').first.text
          : null,
    );
  }
  factory infEventoComplexType_TretEvento.fromJson(Map<String, dynamic> json) =>
      _$infEventoComplexType_TretEventoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$infEventoComplexType_TretEventoToJson(this);
}

List<infEventoComplexType_TretEvento>
    _infEventoComplexType_TretEventoListFromJson(List<dynamic> json) => json
        .map((e) =>
            infEventoComplexType_TretEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<infEventoComplexType_TretEvento>?
    _infEventoComplexType_TretEventoMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infEventoComplexType_TretEvento
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infEventoComplexType_TretEventoListToJson(
        List<infEventoComplexType_TretEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infEventoComplexType_TretEventoMaybeListToJson(
        List<infEventoComplexType_TretEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
infEventoComplexType_TretEvento _infEventoComplexType_TretEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TretEvento.fromJson(json);
infEventoComplexType_TretEvento? _infEventoComplexType_TretEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infEventoComplexType_TretEvento.fromJson(json) : null;
Map<String, dynamic> _infEventoComplexType_TretEventoToJson(
        infEventoComplexType_TretEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _infEventoComplexType_TretEventoMaybeToJson(
        infEventoComplexType_TretEvento? instance) =>
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

cOrgaoEnum? _cOrgaoEnumFromMaybeValue(String? value) =>
    value != null ? cOrgaoEnum.fromValue(value) : null;
String? _cOrgaoEnumToMaybeValue(cOrgaoEnum? value) =>
    value != null ? value.value : null;

cOrgaoEnum _cOrgaoEnumFromValue(String value) => cOrgaoEnum.fromValue(value);
String _cOrgaoEnumToValue(cOrgaoEnum value) => value.value;

List<cOrgaoEnum>? _cOrgaoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cOrgaoEnum.fromValue(e)).toList();
List<String>? _cOrgaoEnumToMaybeList(List<cOrgaoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cOrgaoEnum> _cOrgaoEnumFromList(List<String> value) =>
    value.map((e) => cOrgaoEnum.fromValue(e)).toList();
List<String> _cOrgaoEnumToList(List<cOrgaoEnum> value) =>
    value.map((e) => e.value).toList();
