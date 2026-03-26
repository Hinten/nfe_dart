// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retEnvEPEC.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetEnvEPECSchema {
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
      fromJson: _TRetEventoComplexTypeMaybeListFromJson,
      toJson: _TRetEventoComplexTypeMaybeListToJson)
  List<TRetEventoComplexType>? retEvento;
  String versao;

  _RetEnvEPECSchema(
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
  _RetEnvEPECSchema.unsafe(
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

  factory _RetEnvEPECSchema.fromXml(String xmlString,
      {String name = 'retEnvEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetEnvEPECSchema.unsafe(
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
              TRetEventoComplexType.fromXml(e.toString(), name: "retEvento"))
          .toList(),
    );
  }
  factory _RetEnvEPECSchema.fromJson(Map<String, dynamic> json) =>
      _$RetEnvEPECSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetEnvEPECSchemaToJson(this);
}

@JsonSerializable()
class TRetEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infEventoComplexType_TRetEventoFromJson,
      toJson: _infEventoComplexType_TRetEventoToJson)
  infEventoComplexType_TRetEvento infEvento;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeMaybeFromJson,
      toJson: _SignatureTypeComplexTypeMaybeToJson)
  SignatureTypeComplexType? Signature;
  String versao;

  TRetEventoComplexType(
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
  TRetEventoComplexType.unsafe(
      {this.xmlns,
      required this.infEvento,
      this.Signature,
      required this.versao});
  String toXml(
      {String name = 'TRetEvento', bool pretty = false, String? xmlns}) {
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

  factory TRetEventoComplexType.fromXml(String xmlString,
      {String name = 'TRetEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TRetEventoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infEvento: infEventoComplexType_TRetEvento.fromXml(
          element.findElements('infEvento').first.toString(),
          name: "infEvento"),
      Signature: element.findElements('Signature').isNotEmpty
          ? SignatureTypeComplexType.fromXml(
              element.findElements('Signature').first.toString(),
              name: "Signature")
          : null,
    );
  }
  factory TRetEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TRetEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TRetEventoComplexTypeToJson(this);
}

List<TRetEventoComplexType> _TRetEventoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TRetEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TRetEventoComplexType>? _TRetEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TRetEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TRetEventoComplexTypeListToJson(
        List<TRetEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TRetEventoComplexTypeMaybeListToJson(
        List<TRetEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TRetEventoComplexType _TRetEventoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TRetEventoComplexType.fromJson(json);
TRetEventoComplexType? _TRetEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TRetEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TRetEventoComplexTypeToJson(
        TRetEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TRetEventoComplexTypeMaybeToJson(
        TRetEventoComplexType? instance) =>
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
class infEventoComplexType_TRetEvento {
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
  @JsonKey(
      fromJson: _cOrgaoAutorEnumFromMaybeValue,
      toJson: _cOrgaoAutorEnumToMaybeValue)
  cOrgaoAutorEnum? cOrgaoAutor;
  String? CNPJDest;
  String? CPFDest;
  String? emailDest;
  String dhRegEvento;
  String? nProt;
  List<String>? chNFePend;
  String? Id;

  infEventoComplexType_TRetEvento(
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
      this.cOrgaoAutor,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
      this.nProt,
      this.chNFePend,
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
    if ((cOrgaoAutor == null ||
            cOrgaoAutor.toString().trim() == cOrgaoAutor.toString()) ==
        false) {
      throw Exception('Invalid value for cOrgaoAutor');
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
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d[\-,\+](0[0-9]|10|11|12):00')
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
    if ((chNFePend == null ||
            chNFePend!
                .every((e) => RegExp(r'[0-9]{44}').hasMatch(e.toString()))) ==
        false) {
      throw Exception('Invalid value for chNFePend - $chNFePend');
    }
    ;
    if ((chNFePend == null ||
            chNFePend!.every((e) => e.toString().trim() == e.toString())) ==
        false) {
      throw Exception('Invalid value for chNFePend');
    }
    ;
    if ((Id == null || RegExp(r'ID[0-9]{15}').hasMatch(Id.toString())) ==
        false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infEventoComplexType_TRetEvento.unsafe(
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
      this.cOrgaoAutor,
      this.CNPJDest,
      this.CPFDest,
      this.emailDest,
      required this.dhRegEvento,
      this.nProt,
      this.chNFePend,
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
      if (cOrgaoAutor != null)
        xml.XmlElement(
            xml.XmlName('cOrgaoAutor'), [], [xml.XmlText(cOrgaoAutor!.value)]),
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
            xml.XmlName('nProt'), [], [xml.XmlText(nProt.toString())]),
      ...?chNFePend?.map((e) => xml.XmlElement(
          xml.XmlName('chNFePend'), [], [xml.XmlText(e.toString())]))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infEventoComplexType_TRetEvento.fromXml(String xmlString,
      {String name = 'infEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infEventoComplexType_TRetEvento.unsafe(
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
      cOrgaoAutor: element.findElements('cOrgaoAutor').isNotEmpty
          ? cOrgaoAutorEnum
              .fromValue(element.findElements('cOrgaoAutor').first.text)
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
      chNFePend: element.findElements('chNFePend').map((e) => e.text).toList(),
    );
  }
  factory infEventoComplexType_TRetEvento.fromJson(Map<String, dynamic> json) =>
      _$infEventoComplexType_TRetEventoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$infEventoComplexType_TRetEventoToJson(this);
}

List<infEventoComplexType_TRetEvento>
    _infEventoComplexType_TRetEventoListFromJson(List<dynamic> json) => json
        .map((e) =>
            infEventoComplexType_TRetEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<infEventoComplexType_TRetEvento>?
    _infEventoComplexType_TRetEventoMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infEventoComplexType_TRetEvento
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infEventoComplexType_TRetEventoListToJson(
        List<infEventoComplexType_TRetEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infEventoComplexType_TRetEventoMaybeListToJson(
        List<infEventoComplexType_TRetEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
infEventoComplexType_TRetEvento _infEventoComplexType_TRetEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TRetEvento.fromJson(json);
infEventoComplexType_TRetEvento? _infEventoComplexType_TRetEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infEventoComplexType_TRetEvento.fromJson(json) : null;
Map<String, dynamic> _infEventoComplexType_TRetEventoToJson(
        infEventoComplexType_TRetEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _infEventoComplexType_TRetEventoMaybeToJson(
        infEventoComplexType_TRetEvento? instance) =>
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

cOrgaoAutorEnum? _cOrgaoAutorEnumFromMaybeValue(String? value) =>
    value != null ? cOrgaoAutorEnum.fromValue(value) : null;
String? _cOrgaoAutorEnumToMaybeValue(cOrgaoAutorEnum? value) =>
    value != null ? value.value : null;

cOrgaoAutorEnum _cOrgaoAutorEnumFromValue(String value) =>
    cOrgaoAutorEnum.fromValue(value);
String _cOrgaoAutorEnumToValue(cOrgaoAutorEnum value) => value.value;

List<cOrgaoAutorEnum>? _cOrgaoAutorEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cOrgaoAutorEnum.fromValue(e)).toList();
List<String>? _cOrgaoAutorEnumToMaybeList(List<cOrgaoAutorEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cOrgaoAutorEnum> _cOrgaoAutorEnumFromList(List<String> value) =>
    value.map((e) => cOrgaoAutorEnum.fromValue(e)).toList();
List<String> _cOrgaoAutorEnumToList(List<cOrgaoAutorEnum> value) =>
    value.map((e) => e.value).toList();
