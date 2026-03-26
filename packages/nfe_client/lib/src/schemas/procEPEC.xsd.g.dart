// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procEPEC.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _ProcEpecSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _TEventoComplexTypeFromJson, toJson: _TEventoComplexTypeToJson)
  TEventoComplexType evento;
  @JsonKey(
      fromJson: _TRetEventoComplexTypeFromJson,
      toJson: _TRetEventoComplexTypeToJson)
  TRetEventoComplexType retEvento;
  String versao;

  _ProcEpecSchema(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
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
  _ProcEpecSchema.unsafe(
      {this.xmlns,
      required this.evento,
      required this.retEvento,
      required this.versao});
  String toXml(
      {String name = 'procEventoNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          evento.toXml(name: "evento", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          retEvento.toXml(name: "retEvento", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _ProcEpecSchema.fromXml(String xmlString,
      {String name = 'procEventoNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _ProcEpecSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      evento: TEventoComplexType.fromXml(
          element.findElements('evento').first.toString(),
          name: "evento"),
      retEvento: TRetEventoComplexType.fromXml(
          element.findElements('retEvento').first.toString(),
          name: "retEvento"),
    );
  }
  factory _ProcEpecSchema.fromJson(Map<String, dynamic> json) =>
      _$ProcEpecSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$ProcEpecSchemaToJson(this);
}

@JsonSerializable()
class TEventoComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _infEventoComplexType_TEventoFromJson,
      toJson: _infEventoComplexType_TEventoToJson)
  infEventoComplexType_TEvento infEvento;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeFromJson,
      toJson: _SignatureTypeComplexTypeToJson)
  SignatureTypeComplexType Signature;
  String versao;

  TEventoComplexType(
      {this.xmlns,
      required this.infEvento,
      required this.Signature,
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
  TEventoComplexType.unsafe(
      {this.xmlns,
      required this.infEvento,
      required this.Signature,
      required this.versao});
  String toXml({String name = 'TEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString())
    ], [
      xml.XmlDocumentFragment.parse(
          infEvento.toXml(name: "infEvento", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Signature.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TEventoComplexType.fromXml(String xmlString,
      {String name = 'TEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TEventoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infEvento: infEventoComplexType_TEvento.fromXml(
          element.findElements('infEvento').first.toString(),
          name: "infEvento"),
      Signature: SignatureTypeComplexType.fromXml(
          element.findElements('Signature').first.toString(),
          name: "Signature"),
    );
  }
  factory TEventoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TEventoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TEventoComplexTypeToJson(this);
}

List<TEventoComplexType> _TEventoComplexTypeListFromJson(List<dynamic> json) =>
    json
        .map((e) => TEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TEventoComplexType>? _TEventoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TEventoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TEventoComplexTypeListToJson(
        List<TEventoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TEventoComplexTypeMaybeListToJson(
        List<TEventoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TEventoComplexType _TEventoComplexTypeFromJson(Map<String, dynamic> json) =>
    TEventoComplexType.fromJson(json);
TEventoComplexType? _TEventoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TEventoComplexType.fromJson(json) : null;
Map<String, dynamic> _TEventoComplexTypeToJson(TEventoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TEventoComplexTypeMaybeToJson(
        TEventoComplexType? instance) =>
    instance?.toJson();

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
class infEventoComplexType_TEvento {
  String? xmlns;
  @JsonKey(fromJson: _cOrgaoEnumFromValue, toJson: _cOrgaoEnumToValue)
  cOrgaoEnum cOrgao;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  String? CNPJ;
  String? CPF;
  String chNFe;
  String dhEvento;
  @JsonKey(fromJson: _tpEventoEnumFromValue, toJson: _tpEventoEnumToValue)
  tpEventoEnum tpEvento;
  String nSeqEvento;
  @JsonKey(fromJson: _verEventoEnumFromValue, toJson: _verEventoEnumToValue)
  verEventoEnum verEvento;
  @JsonKey(
      fromJson: _detEventoComplexType_infEventoFromJson,
      toJson: _detEventoComplexType_infEventoToJson)
  detEventoComplexType_infEvento detEvento;
  String Id;

  infEventoComplexType_TEvento(
      {this.xmlns,
      required this.cOrgao,
      required this.tpAmb,
      this.CNPJ,
      this.CPF,
      required this.chNFe,
      required this.dhEvento,
      required this.tpEvento,
      required this.nSeqEvento,
      required this.verEvento,
      required this.detEvento,
      required this.Id}) {
    if ((cOrgao.toString().trim() == cOrgao.toString()) == false) {
      throw Exception('Invalid value for cOrgao');
    }
    ;
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((CNPJ == null ||
            RegExp(r'[0-9]{0}|[0-9]{14}').hasMatch(CNPJ.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ == null || CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
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
    if ((RegExp(r'[0-9]{44}').hasMatch(chNFe.toString())) == false) {
      throw Exception('Invalid value for chNFe - $chNFe');
    }
    ;
    if ((chNFe.toString().trim() == chNFe.toString()) == false) {
      throw Exception('Invalid value for chNFe');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhEvento.toString())) ==
        false) {
      throw Exception('Invalid value for dhEvento - $dhEvento');
    }
    ;
    if ((dhEvento.toString().trim() == dhEvento.toString()) == false) {
      throw Exception('Invalid value for dhEvento');
    }
    ;
    if ((RegExp(r'[0-9]{6}').hasMatch(tpEvento.toString())) == false) {
      throw Exception('Invalid value for tpEvento - $tpEvento');
    }
    ;
    if ((tpEvento.toString().trim() == tpEvento.toString()) == false) {
      throw Exception('Invalid value for tpEvento');
    }
    ;
    if ((RegExp(r'[1-9]|[1][0-9]{0,1}|20').hasMatch(nSeqEvento.toString())) ==
        false) {
      throw Exception('Invalid value for nSeqEvento - $nSeqEvento');
    }
    ;
    if ((nSeqEvento.toString().trim() == nSeqEvento.toString()) == false) {
      throw Exception('Invalid value for nSeqEvento');
    }
    ;
    if ((verEvento.toString().trim() == verEvento.toString()) == false) {
      throw Exception('Invalid value for verEvento');
    }
    ;
    if ((RegExp(r'ID[0-9]{52}').hasMatch(Id.toString())) == false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infEventoComplexType_TEvento.unsafe(
      {this.xmlns,
      required this.cOrgao,
      required this.tpAmb,
      this.CNPJ,
      this.CPF,
      required this.chNFe,
      required this.dhEvento,
      required this.tpEvento,
      required this.nSeqEvento,
      required this.verEvento,
      required this.detEvento,
      required this.Id});
  String toXml(
      {String name = 'infEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlElement(xml.XmlName('cOrgao'), [], [xml.XmlText(cOrgao.value)]),
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      xml.XmlElement(
          xml.XmlName('dhEvento'), [], [xml.XmlText(dhEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('tpEvento'), [], [xml.XmlText(tpEvento.value)]),
      xml.XmlElement(
          xml.XmlName('nSeqEvento'), [], [xml.XmlText(nSeqEvento.toString())]),
      xml.XmlElement(
          xml.XmlName('verEvento'), [], [xml.XmlText(verEvento.value)]),
      xml.XmlDocumentFragment.parse(
          detEvento.toXml(name: "detEvento", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infEventoComplexType_TEvento.fromXml(String xmlString,
      {String name = 'infEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infEventoComplexType_TEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute('Id')!,
      cOrgao: cOrgaoEnum.fromValue(element.findElements('cOrgao').first.text),
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      chNFe: element.findElements('chNFe').first.text,
      dhEvento: element.findElements('dhEvento').first.text,
      tpEvento:
          tpEventoEnum.fromValue(element.findElements('tpEvento').first.text),
      nSeqEvento: element.findElements('nSeqEvento').first.text,
      verEvento:
          verEventoEnum.fromValue(element.findElements('verEvento').first.text),
      detEvento: detEventoComplexType_infEvento.fromXml(
          element.findElements('detEvento').first.toString(),
          name: "detEvento"),
    );
  }
  factory infEventoComplexType_TEvento.fromJson(Map<String, dynamic> json) =>
      _$infEventoComplexType_TEventoFromJson(json);
  Map<String, dynamic> toJson() => _$infEventoComplexType_TEventoToJson(this);
}

List<infEventoComplexType_TEvento> _infEventoComplexType_TEventoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infEventoComplexType_TEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<infEventoComplexType_TEvento>?
    _infEventoComplexType_TEventoMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infEventoComplexType_TEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infEventoComplexType_TEventoListToJson(
        List<infEventoComplexType_TEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infEventoComplexType_TEventoMaybeListToJson(
        List<infEventoComplexType_TEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
infEventoComplexType_TEvento _infEventoComplexType_TEventoFromJson(
        Map<String, dynamic> json) =>
    infEventoComplexType_TEvento.fromJson(json);
infEventoComplexType_TEvento? _infEventoComplexType_TEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infEventoComplexType_TEvento.fromJson(json) : null;
Map<String, dynamic> _infEventoComplexType_TEventoToJson(
        infEventoComplexType_TEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _infEventoComplexType_TEventoMaybeToJson(
        infEventoComplexType_TEvento? instance) =>
    instance?.toJson();

@JsonSerializable()
class detEventoComplexType_infEvento {
  String? xmlns;
  @JsonKey(fromJson: _descEventoEnumFromValue, toJson: _descEventoEnumToValue)
  descEventoEnum descEvento;
  @JsonKey(fromJson: _cOrgaoAutorEnumFromValue, toJson: _cOrgaoAutorEnumToValue)
  cOrgaoAutorEnum cOrgaoAutor;
  @JsonKey(fromJson: _tpAutorEnumFromValue, toJson: _tpAutorEnumToValue)
  tpAutorEnum tpAutor;
  String verAplic;
  String dhEmi;
  @JsonKey(fromJson: _tpNFEnumFromValue, toJson: _tpNFEnumToValue)
  tpNFEnum tpNF;
  String IE;
  @JsonKey(
      fromJson: _destComplexType_detEventoFromJson,
      toJson: _destComplexType_detEventoToJson)
  destComplexType_detEvento dest;
  @JsonKey(fromJson: _versaoEnumFromValue, toJson: _versaoEnumToValue)
  versaoEnum versao;

  detEventoComplexType_infEvento(
      {this.xmlns,
      required this.descEvento,
      required this.cOrgaoAutor,
      required this.tpAutor,
      required this.verAplic,
      required this.dhEmi,
      required this.tpNF,
      required this.IE,
      required this.dest,
      required this.versao}) {
    if ((descEvento.toString().trim() == descEvento.toString()) == false) {
      throw Exception('Invalid value for descEvento');
    }
    ;
    if ((cOrgaoAutor.toString().trim() == cOrgaoAutor.toString()) == false) {
      throw Exception('Invalid value for cOrgaoAutor');
    }
    ;
    if ((tpAutor.toString().trim() == tpAutor.toString()) == false) {
      throw Exception('Invalid value for tpAutor');
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
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
            .hasMatch(dhEmi.toString())) ==
        false) {
      throw Exception('Invalid value for dhEmi - $dhEmi');
    }
    ;
    if ((dhEmi.toString().trim() == dhEmi.toString()) == false) {
      throw Exception('Invalid value for dhEmi');
    }
    ;
    if ((tpNF.toString().trim() == tpNF.toString()) == false) {
      throw Exception('Invalid value for tpNF');
    }
    ;
    if ((RegExp(r'[0-9]{2,14}').hasMatch(IE.toString())) == false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
  }
  detEventoComplexType_infEvento.unsafe(
      {this.xmlns,
      required this.descEvento,
      required this.cOrgaoAutor,
      required this.tpAutor,
      required this.verAplic,
      required this.dhEmi,
      required this.tpNF,
      required this.IE,
      required this.dest,
      required this.versao});
  String toXml(
      {String name = 'detEvento', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.value)
    ], [
      xml.XmlElement(
          xml.XmlName('descEvento'), [], [xml.XmlText(descEvento.value)]),
      xml.XmlElement(
          xml.XmlName('cOrgaoAutor'), [], [xml.XmlText(cOrgaoAutor.value)]),
      xml.XmlElement(xml.XmlName('tpAutor'), [], [xml.XmlText(tpAutor.value)]),
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('dhEmi'), [], [xml.XmlText(dhEmi.toString())]),
      xml.XmlElement(xml.XmlName('tpNF'), [], [xml.XmlText(tpNF.value)]),
      xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      xml.XmlDocumentFragment.parse(dest.toXml(name: "dest", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory detEventoComplexType_infEvento.fromXml(String xmlString,
      {String name = 'detEvento'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return detEventoComplexType_infEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: versaoEnum.fromValue(element.getAttribute('versao')!),
      descEvento: descEventoEnum
          .fromValue(element.findElements('descEvento').first.text),
      cOrgaoAutor: cOrgaoAutorEnum
          .fromValue(element.findElements('cOrgaoAutor').first.text),
      tpAutor:
          tpAutorEnum.fromValue(element.findElements('tpAutor').first.text),
      verAplic: element.findElements('verAplic').first.text,
      dhEmi: element.findElements('dhEmi').first.text,
      tpNF: tpNFEnum.fromValue(element.findElements('tpNF').first.text),
      IE: element.findElements('IE').first.text,
      dest: destComplexType_detEvento
          .fromXml(element.findElements('dest').first.toString(), name: "dest"),
    );
  }
  factory detEventoComplexType_infEvento.fromJson(Map<String, dynamic> json) =>
      _$detEventoComplexType_infEventoFromJson(json);
  Map<String, dynamic> toJson() => _$detEventoComplexType_infEventoToJson(this);
}

List<detEventoComplexType_infEvento>
    _detEventoComplexType_infEventoListFromJson(List<dynamic> json) => json
        .map((e) =>
            detEventoComplexType_infEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<detEventoComplexType_infEvento>?
    _detEventoComplexType_infEventoMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => detEventoComplexType_infEvento
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _detEventoComplexType_infEventoListToJson(
        List<detEventoComplexType_infEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _detEventoComplexType_infEventoMaybeListToJson(
        List<detEventoComplexType_infEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
detEventoComplexType_infEvento _detEventoComplexType_infEventoFromJson(
        Map<String, dynamic> json) =>
    detEventoComplexType_infEvento.fromJson(json);
detEventoComplexType_infEvento? _detEventoComplexType_infEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? detEventoComplexType_infEvento.fromJson(json) : null;
Map<String, dynamic> _detEventoComplexType_infEventoToJson(
        detEventoComplexType_infEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _detEventoComplexType_infEventoMaybeToJson(
        detEventoComplexType_infEvento? instance) =>
    instance?.toJson();

@JsonSerializable()
class destComplexType_detEvento {
  String? xmlns;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? CNPJ;
  String? CPF;
  String? idEstrangeiro;
  String? IE;
  String vNF;
  String vICMS;
  String vST;
  destComplexType_detEvento(
      {this.xmlns,
      required this.UF,
      this.CNPJ,
      this.CPF,
      this.idEstrangeiro,
      this.IE,
      required this.vNF,
      required this.vICMS,
      required this.vST}) {
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
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
    if ((CPF == null || RegExp(r'[0-9]{11}').hasMatch(CPF.toString())) ==
        false) {
      throw Exception('Invalid value for CPF - $CPF');
    }
    ;
    if ((CPF == null || CPF.toString().trim() == CPF.toString()) == false) {
      throw Exception('Invalid value for CPF');
    }
    ;
    if ((idEstrangeiro == null ||
            RegExp(r'([!-ÿ]{0}|[!-ÿ]{5,20})?')
                .hasMatch(idEstrangeiro.toString())) ==
        false) {
      throw Exception('Invalid value for idEstrangeiro - $idEstrangeiro');
    }
    ;
    if ((idEstrangeiro == null ||
            idEstrangeiro.toString().trim() == idEstrangeiro.toString()) ==
        false) {
      throw Exception('Invalid value for idEstrangeiro');
    }
    ;
    final _$CNPJCPFidEstrangeiro = [
      CNPJ != null,
      CPF != null,
      idEstrangeiro != null
    ];
    if ((_$CNPJCPFidEstrangeiro.every((e) => e == false) ||
            _$CNPJCPFidEstrangeiro.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJ, CPF, idEstrangeiro');
    }
    ;
    if ((IE == null || RegExp(r'[0-9]{2,14}').hasMatch(IE.toString())) ==
        false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE == null || IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vNF.toString())) ==
        false) {
      throw Exception('Invalid value for vNF - $vNF');
    }
    ;
    if ((vNF.toString().trim() == vNF.toString()) == false) {
      throw Exception('Invalid value for vNF');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMS.toString())) ==
        false) {
      throw Exception('Invalid value for vICMS - $vICMS');
    }
    ;
    if ((vICMS.toString().trim() == vICMS.toString()) == false) {
      throw Exception('Invalid value for vICMS');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vST.toString())) ==
        false) {
      throw Exception('Invalid value for vST - $vST');
    }
    ;
    if ((vST.toString().trim() == vST.toString()) == false) {
      throw Exception('Invalid value for vST');
    }
    ;
  }
  destComplexType_detEvento.unsafe(
      {this.xmlns,
      required this.UF,
      this.CNPJ,
      this.CPF,
      this.idEstrangeiro,
      this.IE,
      required this.vNF,
      required this.vICMS,
      required this.vST});
  String toXml({String name = 'dest', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (idEstrangeiro != null)
        xml.XmlElement(xml.XmlName('idEstrangeiro'), [],
            [xml.XmlText(idEstrangeiro.toString())]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      xml.XmlElement(xml.XmlName('vNF'), [], [xml.XmlText(vNF.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      xml.XmlElement(xml.XmlName('vST'), [], [xml.XmlText(vST.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory destComplexType_detEvento.fromXml(String xmlString,
      {String name = 'dest'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return destComplexType_detEvento.unsafe(
      xmlns: element.getAttribute('xmlns'),
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      idEstrangeiro: element.findElements('idEstrangeiro').isNotEmpty
          ? element.findElements('idEstrangeiro').first.text
          : null,
      IE: element.findElements('IE').isNotEmpty
          ? element.findElements('IE').first.text
          : null,
      vNF: element.findElements('vNF').first.text,
      vICMS: element.findElements('vICMS').first.text,
      vST: element.findElements('vST').first.text,
    );
  }
  factory destComplexType_detEvento.fromJson(Map<String, dynamic> json) =>
      _$destComplexType_detEventoFromJson(json);
  Map<String, dynamic> toJson() => _$destComplexType_detEventoToJson(this);
}

List<destComplexType_detEvento> _destComplexType_detEventoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            destComplexType_detEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<destComplexType_detEvento>? _destComplexType_detEventoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            destComplexType_detEvento.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _destComplexType_detEventoListToJson(
        List<destComplexType_detEvento> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _destComplexType_detEventoMaybeListToJson(
        List<destComplexType_detEvento>? list) =>
    list?.map((e) => e.toJson()).toList();
destComplexType_detEvento _destComplexType_detEventoFromJson(
        Map<String, dynamic> json) =>
    destComplexType_detEvento.fromJson(json);
destComplexType_detEvento? _destComplexType_detEventoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? destComplexType_detEvento.fromJson(json) : null;
Map<String, dynamic> _destComplexType_detEventoToJson(
        destComplexType_detEvento instance) =>
    instance.toJson();
Map<String, dynamic>? _destComplexType_detEventoMaybeToJson(
        destComplexType_detEvento? instance) =>
    instance?.toJson();
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

enum tpEventoEnum {
  v_110140("110140");

  final String value;
  const tpEventoEnum(this.value);
  factory tpEventoEnum.fromValue(String value) {
    for (final item in tpEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpEventoEnum: $value");
  }
}

tpEventoEnum? _tpEventoEnumFromMaybeValue(String? value) =>
    value != null ? tpEventoEnum.fromValue(value) : null;
String? _tpEventoEnumToMaybeValue(tpEventoEnum? value) =>
    value != null ? value.value : null;

tpEventoEnum _tpEventoEnumFromValue(String value) =>
    tpEventoEnum.fromValue(value);
String _tpEventoEnumToValue(tpEventoEnum value) => value.value;

List<tpEventoEnum>? _tpEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpEventoEnum.fromValue(e)).toList();
List<String>? _tpEventoEnumToMaybeList(List<tpEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpEventoEnum> _tpEventoEnumFromList(List<String> value) =>
    value.map((e) => tpEventoEnum.fromValue(e)).toList();
List<String> _tpEventoEnumToList(List<tpEventoEnum> value) =>
    value.map((e) => e.value).toList();

enum verEventoEnum {
  v_100("1.00");

  final String value;
  const verEventoEnum(this.value);
  factory verEventoEnum.fromValue(String value) {
    for (final item in verEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for verEventoEnum: $value");
  }
}

verEventoEnum? _verEventoEnumFromMaybeValue(String? value) =>
    value != null ? verEventoEnum.fromValue(value) : null;
String? _verEventoEnumToMaybeValue(verEventoEnum? value) =>
    value != null ? value.value : null;

verEventoEnum _verEventoEnumFromValue(String value) =>
    verEventoEnum.fromValue(value);
String _verEventoEnumToValue(verEventoEnum value) => value.value;

List<verEventoEnum>? _verEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => verEventoEnum.fromValue(e)).toList();
List<String>? _verEventoEnumToMaybeList(List<verEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<verEventoEnum> _verEventoEnumFromList(List<String> value) =>
    value.map((e) => verEventoEnum.fromValue(e)).toList();
List<String> _verEventoEnumToList(List<verEventoEnum> value) =>
    value.map((e) => e.value).toList();

enum descEventoEnum {
  v_EPEC("EPEC");

  final String value;
  const descEventoEnum(this.value);
  factory descEventoEnum.fromValue(String value) {
    for (final item in descEventoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for descEventoEnum: $value");
  }
}

descEventoEnum? _descEventoEnumFromMaybeValue(String? value) =>
    value != null ? descEventoEnum.fromValue(value) : null;
String? _descEventoEnumToMaybeValue(descEventoEnum? value) =>
    value != null ? value.value : null;

descEventoEnum _descEventoEnumFromValue(String value) =>
    descEventoEnum.fromValue(value);
String _descEventoEnumToValue(descEventoEnum value) => value.value;

List<descEventoEnum>? _descEventoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => descEventoEnum.fromValue(e)).toList();
List<String>? _descEventoEnumToMaybeList(List<descEventoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<descEventoEnum> _descEventoEnumFromList(List<String> value) =>
    value.map((e) => descEventoEnum.fromValue(e)).toList();
List<String> _descEventoEnumToList(List<descEventoEnum> value) =>
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

enum tpAutorEnum {
  v_1("1");

  final String value;
  const tpAutorEnum(this.value);
  factory tpAutorEnum.fromValue(String value) {
    for (final item in tpAutorEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpAutorEnum: $value");
  }
}

tpAutorEnum? _tpAutorEnumFromMaybeValue(String? value) =>
    value != null ? tpAutorEnum.fromValue(value) : null;
String? _tpAutorEnumToMaybeValue(tpAutorEnum? value) =>
    value != null ? value.value : null;

tpAutorEnum _tpAutorEnumFromValue(String value) => tpAutorEnum.fromValue(value);
String _tpAutorEnumToValue(tpAutorEnum value) => value.value;

List<tpAutorEnum>? _tpAutorEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpAutorEnum.fromValue(e)).toList();
List<String>? _tpAutorEnumToMaybeList(List<tpAutorEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpAutorEnum> _tpAutorEnumFromList(List<String> value) =>
    value.map((e) => tpAutorEnum.fromValue(e)).toList();
List<String> _tpAutorEnumToList(List<tpAutorEnum> value) =>
    value.map((e) => e.value).toList();

tpNFEnum? _tpNFEnumFromMaybeValue(String? value) =>
    value != null ? tpNFEnum.fromValue(value) : null;
String? _tpNFEnumToMaybeValue(tpNFEnum? value) =>
    value != null ? value.value : null;

tpNFEnum _tpNFEnumFromValue(String value) => tpNFEnum.fromValue(value);
String _tpNFEnumToValue(tpNFEnum value) => value.value;

List<tpNFEnum>? _tpNFEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpNFEnum.fromValue(e)).toList();
List<String>? _tpNFEnumToMaybeList(List<tpNFEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpNFEnum> _tpNFEnumFromList(List<String> value) =>
    value.map((e) => tpNFEnum.fromValue(e)).toList();
List<String> _tpNFEnumToList(List<tpNFEnum> value) =>
    value.map((e) => e.value).toList();

enum versaoEnum {
  v_100("1.00");

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
