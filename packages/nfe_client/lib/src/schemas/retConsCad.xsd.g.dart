// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retConsCad.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _RetConsCadSchema {
  String? xmlns;
  @JsonKey(
      fromJson: _infConsComplexType_TRetConsCadFromJson,
      toJson: _infConsComplexType_TRetConsCadToJson)
  infConsComplexType_TRetConsCad infCons;
  String versao;

  _RetConsCadSchema({this.xmlns, required this.infCons, required this.versao}) {
    if ((RegExp(r'2\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
  }
  _RetConsCadSchema.unsafe(
      {this.xmlns, required this.infCons, required this.versao});
  String toXml(
      {String name = 'retConsCad', bool pretty = false, String? xmlns}) {
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

  factory _RetConsCadSchema.fromXml(String xmlString,
      {String name = 'retConsCad'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _RetConsCadSchema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      infCons: infConsComplexType_TRetConsCad.fromXml(
          element.findElements('infCons').first.toString(),
          name: "infCons"),
    );
  }
  factory _RetConsCadSchema.fromJson(Map<String, dynamic> json) =>
      _$RetConsCadSchemaFromJson(json);
  Map<String, dynamic> toJson() => _$RetConsCadSchemaToJson(this);
}

@JsonSerializable()
class infConsComplexType_TRetConsCad {
  String? xmlns;
  String verAplic;
  String cStat;
  String xMotivo;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? IE;
  String? CNPJ;
  String? CPF;
  String? dhCons;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  @JsonKey(
      fromJson: _infCadComplexType_infConsMaybeFromJson,
      toJson: _infCadComplexType_infConsMaybeToJson)
  infCadComplexType_infCons? infCad;
  infConsComplexType_TRetConsCad(
      {this.xmlns,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.UF,
      this.IE,
      this.CNPJ,
      this.CPF,
      this.dhCons,
      required this.cUF,
      this.infCad}) {
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
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
  }
  infConsComplexType_TRetConsCad.unsafe(
      {this.xmlns,
      required this.verAplic,
      required this.cStat,
      required this.xMotivo,
      required this.UF,
      this.IE,
      this.CNPJ,
      this.CPF,
      this.dhCons,
      required this.cUF,
      this.infCad});
  String toXml({String name = 'infCons', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('verAplic'), [], [xml.XmlText(verAplic.toString())]),
      xml.XmlElement(xml.XmlName('cStat'), [], [xml.XmlText(cStat.toString())]),
      xml.XmlElement(
          xml.XmlName('xMotivo'), [], [xml.XmlText(xMotivo.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (dhCons?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('dhCons'), [], [xml.XmlText(dhCons!)]),
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      if (infCad != null)
        xml.XmlDocumentFragment.parse(
            infCad!.toXml(name: "infCad", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infConsComplexType_TRetConsCad.fromXml(String xmlString,
      {String name = 'infCons'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infConsComplexType_TRetConsCad.unsafe(
      xmlns: element.getAttribute('xmlns'),
      verAplic: element.findElements('verAplic').first.text,
      cStat: element.findElements('cStat').first.text,
      xMotivo: element.findElements('xMotivo').first.text,
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
      dhCons: element.getElement('dhCons')?.text,
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      infCad: element.findElements('infCad').isNotEmpty
          ? infCadComplexType_infCons.fromXml(
              element.findElements('infCad').first.toString(),
              name: "infCad")
          : null,
    );
  }
  factory infConsComplexType_TRetConsCad.fromJson(Map<String, dynamic> json) =>
      _$infConsComplexType_TRetConsCadFromJson(json);
  Map<String, dynamic> toJson() => _$infConsComplexType_TRetConsCadToJson(this);
}

List<infConsComplexType_TRetConsCad>
    _infConsComplexType_TRetConsCadListFromJson(List<dynamic> json) => json
        .map((e) =>
            infConsComplexType_TRetConsCad.fromJson(e as Map<String, dynamic>))
        .toList();
List<infConsComplexType_TRetConsCad>?
    _infConsComplexType_TRetConsCadMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => infConsComplexType_TRetConsCad
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _infConsComplexType_TRetConsCadListToJson(
        List<infConsComplexType_TRetConsCad> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infConsComplexType_TRetConsCadMaybeListToJson(
        List<infConsComplexType_TRetConsCad>? list) =>
    list?.map((e) => e.toJson()).toList();
infConsComplexType_TRetConsCad _infConsComplexType_TRetConsCadFromJson(
        Map<String, dynamic> json) =>
    infConsComplexType_TRetConsCad.fromJson(json);
infConsComplexType_TRetConsCad? _infConsComplexType_TRetConsCadMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infConsComplexType_TRetConsCad.fromJson(json) : null;
Map<String, dynamic> _infConsComplexType_TRetConsCadToJson(
        infConsComplexType_TRetConsCad instance) =>
    instance.toJson();
Map<String, dynamic>? _infConsComplexType_TRetConsCadMaybeToJson(
        infConsComplexType_TRetConsCad? instance) =>
    instance?.toJson();

@JsonSerializable()
class infCadComplexType_infCons {
  String? xmlns;
  String IE;
  String? CNPJ;
  String? CPF;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  @JsonKey(fromJson: _cSitEnumFromValue, toJson: _cSitEnumToValue)
  cSitEnum cSit;
  @JsonKey(fromJson: _indCredNFeEnumFromValue, toJson: _indCredNFeEnumToValue)
  indCredNFeEnum indCredNFe;
  @JsonKey(fromJson: _indCredCTeEnumFromValue, toJson: _indCredCTeEnumToValue)
  indCredCTeEnum indCredCTe;
  String xNome;
  String? xFant;
  String? xRegApur;
  String? CNAE;
  String? dIniAtiv;
  String? dUltSit;
  String? dBaixa;
  String? IEUnica;
  String? IEAtual;
  @JsonKey(
      fromJson: _TEnderecoComplexTypeMaybeFromJson,
      toJson: _TEnderecoComplexTypeMaybeToJson)
  TEnderecoComplexType? ender;
  infCadComplexType_infCons(
      {this.xmlns,
      required this.IE,
      this.CNPJ,
      this.CPF,
      required this.UF,
      required this.cSit,
      required this.indCredNFe,
      required this.indCredCTe,
      required this.xNome,
      this.xFant,
      this.xRegApur,
      this.CNAE,
      this.dIniAtiv,
      this.dUltSit,
      this.dBaixa,
      this.IEUnica,
      this.IEAtual,
      this.ender}) {
    if ((RegExp(r'[0-9]{2,14}|ISENTO').hasMatch(IE.toString())) == false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE.toString().trim() == IE.toString()) == false) {
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
    final _$CNPJCPF = [CNPJ != null, CPF != null];
    if ((_$CNPJCPF.every((e) => e == false) ||
            _$CNPJCPF.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of CNPJ, CPF');
    }
    ;
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((indCredNFe.toString().trim() == indCredNFe.toString()) == false) {
      throw Exception('Invalid value for indCredNFe');
    }
    ;
    if ((indCredCTe.toString().trim() == indCredCTe.toString()) == false) {
      throw Exception('Invalid value for indCredCTe');
    }
    ;
    if ((xNome.toString().length <= 60) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome.toString().length >= 1) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xNome.toString())) ==
        false) {
      throw Exception('Invalid value for xNome - $xNome');
    }
    ;
    if ((xNome.toString().trim() == xNome.toString()) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xFant == null || xFant.toString().length <= 60) == false) {
      throw Exception('Invalid value for xFant');
    }
    ;
    if ((xFant == null || xFant.toString().length >= 1) == false) {
      throw Exception('Invalid value for xFant');
    }
    ;
    if ((xFant == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xFant.toString())) ==
        false) {
      throw Exception('Invalid value for xFant - $xFant');
    }
    ;
    if ((xFant == null || xFant.toString().trim() == xFant.toString()) ==
        false) {
      throw Exception('Invalid value for xFant');
    }
    ;
    if ((xRegApur == null || xRegApur.toString().length <= 60) == false) {
      throw Exception('Invalid value for xRegApur');
    }
    ;
    if ((xRegApur == null || xRegApur.toString().length >= 1) == false) {
      throw Exception('Invalid value for xRegApur');
    }
    ;
    if ((CNAE == null || RegExp(r'[0-9]{6,7}').hasMatch(CNAE.toString())) ==
        false) {
      throw Exception('Invalid value for CNAE - $CNAE');
    }
    ;
    if ((IEUnica == null ||
            RegExp(r'[0-9]{2,14}|ISENTO').hasMatch(IEUnica.toString())) ==
        false) {
      throw Exception('Invalid value for IEUnica - $IEUnica');
    }
    ;
    if ((IEUnica == null || IEUnica.toString().trim() == IEUnica.toString()) ==
        false) {
      throw Exception('Invalid value for IEUnica');
    }
    ;
    if ((IEAtual == null ||
            RegExp(r'[0-9]{2,14}|ISENTO').hasMatch(IEAtual.toString())) ==
        false) {
      throw Exception('Invalid value for IEAtual - $IEAtual');
    }
    ;
    if ((IEAtual == null || IEAtual.toString().trim() == IEAtual.toString()) ==
        false) {
      throw Exception('Invalid value for IEAtual');
    }
    ;
  }
  infCadComplexType_infCons.unsafe(
      {this.xmlns,
      required this.IE,
      this.CNPJ,
      this.CPF,
      required this.UF,
      required this.cSit,
      required this.indCredNFe,
      required this.indCredCTe,
      required this.xNome,
      this.xFant,
      this.xRegApur,
      this.CNAE,
      this.dIniAtiv,
      this.dUltSit,
      this.dBaixa,
      this.IEUnica,
      this.IEAtual,
      this.ender});
  String toXml({String name = 'infCad', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      xml.XmlElement(xml.XmlName('cSit'), [], [xml.XmlText(cSit.value)]),
      xml.XmlElement(
          xml.XmlName('indCredNFe'), [], [xml.XmlText(indCredNFe.value)]),
      xml.XmlElement(
          xml.XmlName('indCredCTe'), [], [xml.XmlText(indCredCTe.value)]),
      xml.XmlElement(xml.XmlName('xNome'), [], [xml.XmlText(xNome.toString())]),
      if (xFant != null)
        xml.XmlElement(
            xml.XmlName('xFant'), [], [xml.XmlText(xFant.toString())]),
      if (xRegApur != null)
        xml.XmlElement(
            xml.XmlName('xRegApur'), [], [xml.XmlText(xRegApur.toString())]),
      if (CNAE != null)
        xml.XmlElement(xml.XmlName('CNAE'), [], [xml.XmlText(CNAE.toString())]),
      if (dIniAtiv?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('dIniAtiv'), [], [xml.XmlText(dIniAtiv!)]),
      if (dUltSit?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('dUltSit'), [], [xml.XmlText(dUltSit!)]),
      if (dBaixa?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('dBaixa'), [], [xml.XmlText(dBaixa!)]),
      if (IEUnica != null)
        xml.XmlElement(
            xml.XmlName('IEUnica'), [], [xml.XmlText(IEUnica.toString())]),
      if (IEAtual != null)
        xml.XmlElement(
            xml.XmlName('IEAtual'), [], [xml.XmlText(IEAtual.toString())]),
      if (ender != null)
        xml.XmlDocumentFragment.parse(
            ender!.toXml(name: "ender", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infCadComplexType_infCons.fromXml(String xmlString,
      {String name = 'infCad'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infCadComplexType_infCons.unsafe(
      xmlns: element.getAttribute('xmlns'),
      IE: element.findElements('IE').first.text,
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      cSit: cSitEnum.fromValue(element.findElements('cSit').first.text),
      indCredNFe: indCredNFeEnum
          .fromValue(element.findElements('indCredNFe').first.text),
      indCredCTe: indCredCTeEnum
          .fromValue(element.findElements('indCredCTe').first.text),
      xNome: element.findElements('xNome').first.text,
      xFant: element.findElements('xFant').isNotEmpty
          ? element.findElements('xFant').first.text
          : null,
      xRegApur: element.findElements('xRegApur').isNotEmpty
          ? element.findElements('xRegApur').first.text
          : null,
      CNAE: element.findElements('CNAE').isNotEmpty
          ? element.findElements('CNAE').first.text
          : null,
      dIniAtiv: element.getElement('dIniAtiv')?.text,
      dUltSit: element.getElement('dUltSit')?.text,
      dBaixa: element.getElement('dBaixa')?.text,
      IEUnica: element.findElements('IEUnica').isNotEmpty
          ? element.findElements('IEUnica').first.text
          : null,
      IEAtual: element.findElements('IEAtual').isNotEmpty
          ? element.findElements('IEAtual').first.text
          : null,
      ender: element.findElements('ender').isNotEmpty
          ? TEnderecoComplexType.fromXml(
              element.findElements('ender').first.toString(),
              name: "ender")
          : null,
    );
  }
  factory infCadComplexType_infCons.fromJson(Map<String, dynamic> json) =>
      _$infCadComplexType_infConsFromJson(json);
  Map<String, dynamic> toJson() => _$infCadComplexType_infConsToJson(this);
}

List<infCadComplexType_infCons> _infCadComplexType_infConsListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infCadComplexType_infCons.fromJson(e as Map<String, dynamic>))
        .toList();
List<infCadComplexType_infCons>? _infCadComplexType_infConsMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            infCadComplexType_infCons.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infCadComplexType_infConsListToJson(
        List<infCadComplexType_infCons> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infCadComplexType_infConsMaybeListToJson(
        List<infCadComplexType_infCons>? list) =>
    list?.map((e) => e.toJson()).toList();
infCadComplexType_infCons _infCadComplexType_infConsFromJson(
        Map<String, dynamic> json) =>
    infCadComplexType_infCons.fromJson(json);
infCadComplexType_infCons? _infCadComplexType_infConsMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infCadComplexType_infCons.fromJson(json) : null;
Map<String, dynamic> _infCadComplexType_infConsToJson(
        infCadComplexType_infCons instance) =>
    instance.toJson();
Map<String, dynamic>? _infCadComplexType_infConsMaybeToJson(
        infCadComplexType_infCons? instance) =>
    instance?.toJson();

@JsonSerializable()
class TEnderecoComplexType {
  String? xmlns;
  String? xLgr;
  String? nro;
  String? xCpl;
  String? xBairro;
  String? cMun;
  String? xMun;
  String? CEP;
  TEnderecoComplexType(
      {this.xmlns,
      this.xLgr,
      this.nro,
      this.xCpl,
      this.xBairro,
      this.cMun,
      this.xMun,
      this.CEP}) {
    if ((xLgr == null || xLgr.toString().length <= 255) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((xLgr == null || xLgr.toString().length >= 1) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((xLgr == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xLgr.toString())) ==
        false) {
      throw Exception('Invalid value for xLgr - $xLgr');
    }
    ;
    if ((xLgr == null || xLgr.toString().trim() == xLgr.toString()) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((nro == null || nro.toString().length <= 60) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((nro == null || nro.toString().length >= 1) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((nro == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nro.toString())) ==
        false) {
      throw Exception('Invalid value for nro - $nro');
    }
    ;
    if ((nro == null || nro.toString().trim() == nro.toString()) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((xCpl == null || xCpl.toString().length <= 60) == false) {
      throw Exception('Invalid value for xCpl');
    }
    ;
    if ((xCpl == null || xCpl.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCpl');
    }
    ;
    if ((xCpl == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xCpl.toString())) ==
        false) {
      throw Exception('Invalid value for xCpl - $xCpl');
    }
    ;
    if ((xCpl == null || xCpl.toString().trim() == xCpl.toString()) == false) {
      throw Exception('Invalid value for xCpl');
    }
    ;
    if ((xBairro == null || xBairro.toString().length <= 60) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((xBairro == null || xBairro.toString().length >= 1) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((xBairro == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xBairro.toString())) ==
        false) {
      throw Exception('Invalid value for xBairro - $xBairro');
    }
    ;
    if ((xBairro == null || xBairro.toString().trim() == xBairro.toString()) ==
        false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((cMun == null || RegExp(r'[0-9]{7}').hasMatch(cMun.toString())) ==
        false) {
      throw Exception('Invalid value for cMun - $cMun');
    }
    ;
    if ((cMun == null || cMun.toString().trim() == cMun.toString()) == false) {
      throw Exception('Invalid value for cMun');
    }
    ;
    if ((xMun == null || xMun.toString().length <= 60) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((xMun == null || xMun.toString().length >= 1) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((xMun == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xMun.toString())) ==
        false) {
      throw Exception('Invalid value for xMun - $xMun');
    }
    ;
    if ((xMun == null || xMun.toString().trim() == xMun.toString()) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((CEP == null || RegExp(r'[0-9]{7,8}').hasMatch(CEP.toString())) ==
        false) {
      throw Exception('Invalid value for CEP - $CEP');
    }
    ;
  }
  TEnderecoComplexType.unsafe(
      {this.xmlns,
      this.xLgr,
      this.nro,
      this.xCpl,
      this.xBairro,
      this.cMun,
      this.xMun,
      this.CEP});
  String toXml(
      {String name = 'TEndereco', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (xLgr != null)
        xml.XmlElement(xml.XmlName('xLgr'), [], [xml.XmlText(xLgr.toString())]),
      if (nro != null)
        xml.XmlElement(xml.XmlName('nro'), [], [xml.XmlText(nro.toString())]),
      if (xCpl != null)
        xml.XmlElement(xml.XmlName('xCpl'), [], [xml.XmlText(xCpl.toString())]),
      if (xBairro != null)
        xml.XmlElement(
            xml.XmlName('xBairro'), [], [xml.XmlText(xBairro.toString())]),
      if (cMun != null)
        xml.XmlElement(xml.XmlName('cMun'), [], [xml.XmlText(cMun.toString())]),
      if (xMun != null)
        xml.XmlElement(xml.XmlName('xMun'), [], [xml.XmlText(xMun.toString())]),
      if (CEP != null)
        xml.XmlElement(xml.XmlName('CEP'), [], [xml.XmlText(CEP.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TEnderecoComplexType.fromXml(String xmlString,
      {String name = 'TEndereco'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TEnderecoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xLgr: element.findElements('xLgr').isNotEmpty
          ? element.findElements('xLgr').first.text
          : null,
      nro: element.findElements('nro').isNotEmpty
          ? element.findElements('nro').first.text
          : null,
      xCpl: element.findElements('xCpl').isNotEmpty
          ? element.findElements('xCpl').first.text
          : null,
      xBairro: element.findElements('xBairro').isNotEmpty
          ? element.findElements('xBairro').first.text
          : null,
      cMun: element.findElements('cMun').isNotEmpty
          ? element.findElements('cMun').first.text
          : null,
      xMun: element.findElements('xMun').isNotEmpty
          ? element.findElements('xMun').first.text
          : null,
      CEP: element.findElements('CEP').isNotEmpty
          ? element.findElements('CEP').first.text
          : null,
    );
  }
  factory TEnderecoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TEnderecoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TEnderecoComplexTypeToJson(this);
}

List<TEnderecoComplexType> _TEnderecoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TEnderecoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TEnderecoComplexType>? _TEnderecoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TEnderecoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TEnderecoComplexTypeListToJson(
        List<TEnderecoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TEnderecoComplexTypeMaybeListToJson(
        List<TEnderecoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TEnderecoComplexType _TEnderecoComplexTypeFromJson(Map<String, dynamic> json) =>
    TEnderecoComplexType.fromJson(json);
TEnderecoComplexType? _TEnderecoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TEnderecoComplexType.fromJson(json) : null;
Map<String, dynamic> _TEnderecoComplexTypeToJson(
        TEnderecoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TEnderecoComplexTypeMaybeToJson(
        TEnderecoComplexType? instance) =>
    instance?.toJson();

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
  v_SU("SU"),
  v_EX("EX");

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

enum cSitEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const cSitEnum(this.value);
  factory cSitEnum.fromValue(String value) {
    for (final item in cSitEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cSitEnum: $value");
  }
}

cSitEnum? _cSitEnumFromMaybeValue(String? value) =>
    value != null ? cSitEnum.fromValue(value) : null;
String? _cSitEnumToMaybeValue(cSitEnum? value) =>
    value != null ? value.value : null;

cSitEnum _cSitEnumFromValue(String value) => cSitEnum.fromValue(value);
String _cSitEnumToValue(cSitEnum value) => value.value;

List<cSitEnum>? _cSitEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cSitEnum.fromValue(e)).toList();
List<String>? _cSitEnumToMaybeList(List<cSitEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cSitEnum> _cSitEnumFromList(List<String> value) =>
    value.map((e) => cSitEnum.fromValue(e)).toList();
List<String> _cSitEnumToList(List<cSitEnum> value) =>
    value.map((e) => e.value).toList();

enum indCredNFeEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4");

  final String value;
  const indCredNFeEnum(this.value);
  factory indCredNFeEnum.fromValue(String value) {
    for (final item in indCredNFeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indCredNFeEnum: $value");
  }
}

indCredNFeEnum? _indCredNFeEnumFromMaybeValue(String? value) =>
    value != null ? indCredNFeEnum.fromValue(value) : null;
String? _indCredNFeEnumToMaybeValue(indCredNFeEnum? value) =>
    value != null ? value.value : null;

indCredNFeEnum _indCredNFeEnumFromValue(String value) =>
    indCredNFeEnum.fromValue(value);
String _indCredNFeEnumToValue(indCredNFeEnum value) => value.value;

List<indCredNFeEnum>? _indCredNFeEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indCredNFeEnum.fromValue(e)).toList();
List<String>? _indCredNFeEnumToMaybeList(List<indCredNFeEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indCredNFeEnum> _indCredNFeEnumFromList(List<String> value) =>
    value.map((e) => indCredNFeEnum.fromValue(e)).toList();
List<String> _indCredNFeEnumToList(List<indCredNFeEnum> value) =>
    value.map((e) => e.value).toList();

enum indCredCTeEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4");

  final String value;
  const indCredCTeEnum(this.value);
  factory indCredCTeEnum.fromValue(String value) {
    for (final item in indCredCTeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indCredCTeEnum: $value");
  }
}

indCredCTeEnum? _indCredCTeEnumFromMaybeValue(String? value) =>
    value != null ? indCredCTeEnum.fromValue(value) : null;
String? _indCredCTeEnumToMaybeValue(indCredCTeEnum? value) =>
    value != null ? value.value : null;

indCredCTeEnum _indCredCTeEnumFromValue(String value) =>
    indCredCTeEnum.fromValue(value);
String _indCredCTeEnumToValue(indCredCTeEnum value) => value.value;

List<indCredCTeEnum>? _indCredCTeEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indCredCTeEnum.fromValue(e)).toList();
List<String>? _indCredCTeEnumToMaybeList(List<indCredCTeEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indCredCTeEnum> _indCredCTeEnumFromList(List<String> value) =>
    value.map((e) => indCredCTeEnum.fromValue(e)).toList();
List<String> _indCredCTeEnumToList(List<indCredCTeEnum> value) =>
    value.map((e) => e.value).toList();
