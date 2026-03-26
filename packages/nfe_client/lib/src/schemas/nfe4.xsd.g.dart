// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfe4.dart';

// **************************************************************************
// XsdSchemaGenerator
// **************************************************************************

@JsonSerializable()
class _NFe4Schema {
  String? xmlns;
  @JsonKey(
      fromJson: _infNFeComplexType_TNFeFromJson,
      toJson: _infNFeComplexType_TNFeToJson)
  infNFeComplexType_TNFe infNFe;
  @JsonKey(
      fromJson: _infNFeSuplComplexType_TNFeMaybeFromJson,
      toJson: _infNFeSuplComplexType_TNFeMaybeToJson)
  infNFeSuplComplexType_TNFe? infNFeSupl;
  @JsonKey(
      fromJson: _SignatureTypeComplexTypeFromJson,
      toJson: _SignatureTypeComplexTypeToJson)
  SignatureTypeComplexType Signature;

  _NFe4Schema(
      {this.xmlns,
      required this.infNFe,
      this.infNFeSupl,
      required this.Signature});
  _NFe4Schema.unsafe(
      {this.xmlns,
      required this.infNFe,
      this.infNFeSupl,
      required this.Signature});
  String toXml({String name = 'NFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlDocumentFragment.parse(
          infNFe.toXml(name: "infNFe", pretty: pretty)),
      if (infNFeSupl != null)
        xml.XmlDocumentFragment.parse(
            infNFeSupl!.toXml(name: "infNFeSupl", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Signature.toXml(name: "Signature", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory _NFe4Schema.fromXml(String xmlString, {String name = 'NFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    ;
    return _NFe4Schema.unsafe(
      xmlns: element.getAttribute('xmlns'),
      infNFe: infNFeComplexType_TNFe.fromXml(
          element.findElements('infNFe').first.toString(),
          name: "infNFe"),
      infNFeSupl: element.findElements('infNFeSupl').isNotEmpty
          ? infNFeSuplComplexType_TNFe.fromXml(
              element.findElements('infNFeSupl').first.toString(),
              name: "infNFeSupl")
          : null,
      Signature: SignatureTypeComplexType.fromXml(
          element.findElements('Signature').first.toString(),
          name: "Signature"),
    );
  }
  factory _NFe4Schema.fromJson(Map<String, dynamic> json) =>
      _$NFe4SchemaFromJson(json);
  Map<String, dynamic> toJson() => _$NFe4SchemaToJson(this);
}

@JsonSerializable()
class infNFeComplexType_TNFe {
  String? xmlns;
  @JsonKey(
      fromJson: _ideComplexType_infNFeFromJson,
      toJson: _ideComplexType_infNFeToJson)
  ideComplexType_infNFe ide;
  @JsonKey(
      fromJson: _emitComplexType_infNFeFromJson,
      toJson: _emitComplexType_infNFeToJson)
  emitComplexType_infNFe emit;
  @JsonKey(
      fromJson: _avulsaComplexType_infNFeMaybeFromJson,
      toJson: _avulsaComplexType_infNFeMaybeToJson)
  avulsaComplexType_infNFe? avulsa;
  @JsonKey(
      fromJson: _destComplexType_infNFeMaybeFromJson,
      toJson: _destComplexType_infNFeMaybeToJson)
  destComplexType_infNFe? dest;
  @JsonKey(
      fromJson: _TLocalComplexTypeMaybeFromJson,
      toJson: _TLocalComplexTypeMaybeToJson)
  TLocalComplexType? retirada;
  @JsonKey(
      fromJson: _TLocalComplexTypeMaybeFromJson,
      toJson: _TLocalComplexTypeMaybeToJson)
  TLocalComplexType? entrega;
  @JsonKey(
      fromJson: _autXMLComplexType_infNFeMaybeListFromJson,
      toJson: _autXMLComplexType_infNFeMaybeListToJson)
  List<autXMLComplexType_infNFe>? autXML;
  @JsonKey(
      fromJson: _detComplexType_infNFeListFromJson,
      toJson: _detComplexType_infNFeListToJson)
  List<detComplexType_infNFe> det;
  @JsonKey(
      fromJson: _totalComplexType_infNFeFromJson,
      toJson: _totalComplexType_infNFeToJson)
  totalComplexType_infNFe total;
  @JsonKey(
      fromJson: _transpComplexType_infNFeFromJson,
      toJson: _transpComplexType_infNFeToJson)
  transpComplexType_infNFe transp;
  @JsonKey(
      fromJson: _cobrComplexType_infNFeMaybeFromJson,
      toJson: _cobrComplexType_infNFeMaybeToJson)
  cobrComplexType_infNFe? cobr;
  @JsonKey(
      fromJson: _pagComplexType_infNFeFromJson,
      toJson: _pagComplexType_infNFeToJson)
  pagComplexType_infNFe pag;
  @JsonKey(
      fromJson: _infIntermedComplexType_infNFeMaybeFromJson,
      toJson: _infIntermedComplexType_infNFeMaybeToJson)
  infIntermedComplexType_infNFe? infIntermed;
  @JsonKey(
      fromJson: _infAdicComplexType_infNFeMaybeFromJson,
      toJson: _infAdicComplexType_infNFeMaybeToJson)
  infAdicComplexType_infNFe? infAdic;
  @JsonKey(
      fromJson: _exportaComplexType_infNFeMaybeFromJson,
      toJson: _exportaComplexType_infNFeMaybeToJson)
  exportaComplexType_infNFe? exporta;
  @JsonKey(
      fromJson: _compraComplexType_infNFeMaybeFromJson,
      toJson: _compraComplexType_infNFeMaybeToJson)
  compraComplexType_infNFe? compra;
  @JsonKey(
      fromJson: _canaComplexType_infNFeMaybeFromJson,
      toJson: _canaComplexType_infNFeMaybeToJson)
  canaComplexType_infNFe? cana;
  @JsonKey(
      fromJson: _TInfRespTecComplexTypeMaybeFromJson,
      toJson: _TInfRespTecComplexTypeMaybeToJson)
  TInfRespTecComplexType? infRespTec;
  @JsonKey(
      fromJson: _infSolicNFFComplexType_infNFeMaybeFromJson,
      toJson: _infSolicNFFComplexType_infNFeMaybeToJson)
  infSolicNFFComplexType_infNFe? infSolicNFF;
  String versao;

  String Id;

  infNFeComplexType_TNFe(
      {this.xmlns,
      required this.ide,
      required this.emit,
      this.avulsa,
      this.dest,
      this.retirada,
      this.entrega,
      this.autXML,
      required this.det,
      required this.total,
      required this.transp,
      this.cobr,
      required this.pag,
      this.infIntermed,
      this.infAdic,
      this.exporta,
      this.compra,
      this.cana,
      this.infRespTec,
      this.infSolicNFF,
      required this.versao,
      required this.Id}) {
    if ((RegExp(r'4\.00').hasMatch(versao.toString())) == false) {
      throw Exception('Invalid value for versao - $versao');
    }
    ;
    if ((versao.toString().trim() == versao.toString()) == false) {
      throw Exception('Invalid value for versao');
    }
    ;
    if ((RegExp(r'NFe[0-9]{44}').hasMatch(Id.toString())) == false) {
      throw Exception('Invalid value for Id - $Id');
    }
    ;
  }
  infNFeComplexType_TNFe.unsafe(
      {this.xmlns,
      required this.ide,
      required this.emit,
      this.avulsa,
      this.dest,
      this.retirada,
      this.entrega,
      this.autXML,
      required this.det,
      required this.total,
      required this.transp,
      this.cobr,
      required this.pag,
      this.infIntermed,
      this.infAdic,
      this.exporta,
      this.compra,
      this.cana,
      this.infRespTec,
      this.infSolicNFF,
      required this.versao,
      required this.Id});
  String toXml({String name = 'infNFe', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('versao'), versao.toString()),
      xml.XmlAttribute(xml.XmlName('Id'), Id.toString())
    ], [
      xml.XmlDocumentFragment.parse(ide.toXml(name: "ide", pretty: pretty)),
      xml.XmlDocumentFragment.parse(emit.toXml(name: "emit", pretty: pretty)),
      if (avulsa != null)
        xml.XmlDocumentFragment.parse(
            avulsa!.toXml(name: "avulsa", pretty: pretty)),
      if (dest != null)
        xml.XmlDocumentFragment.parse(
            dest!.toXml(name: "dest", pretty: pretty)),
      if (retirada != null)
        xml.XmlDocumentFragment.parse(
            retirada!.toXml(name: "retirada", pretty: pretty)),
      if (entrega != null)
        xml.XmlDocumentFragment.parse(
            entrega!.toXml(name: "entrega", pretty: pretty)),
      ...?autXML
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "autXML", pretty: pretty)))
          .toList(),
      ...det
          .map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "det", pretty: pretty)))
          .toList(),
      xml.XmlDocumentFragment.parse(total.toXml(name: "total", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          transp.toXml(name: "transp", pretty: pretty)),
      if (cobr != null)
        xml.XmlDocumentFragment.parse(
            cobr!.toXml(name: "cobr", pretty: pretty)),
      xml.XmlDocumentFragment.parse(pag.toXml(name: "pag", pretty: pretty)),
      if (infIntermed != null)
        xml.XmlDocumentFragment.parse(
            infIntermed!.toXml(name: "infIntermed", pretty: pretty)),
      if (infAdic != null)
        xml.XmlDocumentFragment.parse(
            infAdic!.toXml(name: "infAdic", pretty: pretty)),
      if (exporta != null)
        xml.XmlDocumentFragment.parse(
            exporta!.toXml(name: "exporta", pretty: pretty)),
      if (compra != null)
        xml.XmlDocumentFragment.parse(
            compra!.toXml(name: "compra", pretty: pretty)),
      if (cana != null)
        xml.XmlDocumentFragment.parse(
            cana!.toXml(name: "cana", pretty: pretty)),
      if (infRespTec != null)
        xml.XmlDocumentFragment.parse(
            infRespTec!.toXml(name: "infRespTec", pretty: pretty)),
      if (infSolicNFF != null)
        xml.XmlDocumentFragment.parse(
            infSolicNFF!.toXml(name: "infSolicNFF", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infNFeComplexType_TNFe.fromXml(String xmlString,
      {String name = 'infNFe'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infNFeComplexType_TNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      versao: element.getAttribute('versao')!,
      Id: element.getAttribute('Id')!,
      ide: ideComplexType_infNFe
          .fromXml(element.findElements('ide').first.toString(), name: "ide"),
      emit: emitComplexType_infNFe
          .fromXml(element.findElements('emit').first.toString(), name: "emit"),
      avulsa: element.findElements('avulsa').isNotEmpty
          ? avulsaComplexType_infNFe.fromXml(
              element.findElements('avulsa').first.toString(),
              name: "avulsa")
          : null,
      dest: element.findElements('dest').isNotEmpty
          ? destComplexType_infNFe.fromXml(
              element.findElements('dest').first.toString(),
              name: "dest")
          : null,
      retirada: element.findElements('retirada').isNotEmpty
          ? TLocalComplexType.fromXml(
              element.findElements('retirada').first.toString(),
              name: "retirada")
          : null,
      entrega: element.findElements('entrega').isNotEmpty
          ? TLocalComplexType.fromXml(
              element.findElements('entrega').first.toString(),
              name: "entrega")
          : null,
      autXML: element
          .findElements('autXML')
          .map((e) =>
              autXMLComplexType_infNFe.fromXml(e.toString(), name: "autXML"))
          .toList(),
      det: element
          .findElements('det')
          .map((e) => detComplexType_infNFe.fromXml(e.toString(), name: "det"))
          .toList(),
      total: totalComplexType_infNFe.fromXml(
          element.findElements('total').first.toString(),
          name: "total"),
      transp: transpComplexType_infNFe.fromXml(
          element.findElements('transp').first.toString(),
          name: "transp"),
      cobr: element.findElements('cobr').isNotEmpty
          ? cobrComplexType_infNFe.fromXml(
              element.findElements('cobr').first.toString(),
              name: "cobr")
          : null,
      pag: pagComplexType_infNFe
          .fromXml(element.findElements('pag').first.toString(), name: "pag"),
      infIntermed: element.findElements('infIntermed').isNotEmpty
          ? infIntermedComplexType_infNFe.fromXml(
              element.findElements('infIntermed').first.toString(),
              name: "infIntermed")
          : null,
      infAdic: element.findElements('infAdic').isNotEmpty
          ? infAdicComplexType_infNFe.fromXml(
              element.findElements('infAdic').first.toString(),
              name: "infAdic")
          : null,
      exporta: element.findElements('exporta').isNotEmpty
          ? exportaComplexType_infNFe.fromXml(
              element.findElements('exporta').first.toString(),
              name: "exporta")
          : null,
      compra: element.findElements('compra').isNotEmpty
          ? compraComplexType_infNFe.fromXml(
              element.findElements('compra').first.toString(),
              name: "compra")
          : null,
      cana: element.findElements('cana').isNotEmpty
          ? canaComplexType_infNFe.fromXml(
              element.findElements('cana').first.toString(),
              name: "cana")
          : null,
      infRespTec: element.findElements('infRespTec').isNotEmpty
          ? TInfRespTecComplexType.fromXml(
              element.findElements('infRespTec').first.toString(),
              name: "infRespTec")
          : null,
      infSolicNFF: element.findElements('infSolicNFF').isNotEmpty
          ? infSolicNFFComplexType_infNFe.fromXml(
              element.findElements('infSolicNFF').first.toString(),
              name: "infSolicNFF")
          : null,
    );
  }
  factory infNFeComplexType_TNFe.fromJson(Map<String, dynamic> json) =>
      _$infNFeComplexType_TNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infNFeComplexType_TNFeToJson(this);
}

List<infNFeComplexType_TNFe> _infNFeComplexType_TNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => infNFeComplexType_TNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infNFeComplexType_TNFe>? _infNFeComplexType_TNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => infNFeComplexType_TNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infNFeComplexType_TNFeListToJson(
        List<infNFeComplexType_TNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infNFeComplexType_TNFeMaybeListToJson(
        List<infNFeComplexType_TNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infNFeComplexType_TNFe _infNFeComplexType_TNFeFromJson(
        Map<String, dynamic> json) =>
    infNFeComplexType_TNFe.fromJson(json);
infNFeComplexType_TNFe? _infNFeComplexType_TNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infNFeComplexType_TNFe.fromJson(json) : null;
Map<String, dynamic> _infNFeComplexType_TNFeToJson(
        infNFeComplexType_TNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infNFeComplexType_TNFeMaybeToJson(
        infNFeComplexType_TNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class infNFeSuplComplexType_TNFe {
  String? xmlns;
  String qrCode;
  String urlChave;
  infNFeSuplComplexType_TNFe(
      {this.xmlns, required this.qrCode, required this.urlChave}) {
    if ((qrCode.toString().length <= 600) == false) {
      throw Exception('Invalid value for qrCode');
    }
    ;
    if ((qrCode.toString().length >= 100) == false) {
      throw Exception('Invalid value for qrCode');
    }
    ;
    if ((RegExp(r'(((HTTPS?|https?)://.*\?chNFe=[0-9]{44}&nVersao=100&tpAmb=[1-2](&cDest=([A-Za-z0-9.:+-/)(]{0}|[A-Za-z0-9.:+-/)(]{5,20})?)?&dhEmi=[A-Fa-f0-9]{50}&vNF=(0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?)&vICMS=(0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?)&digVal=[A-Fa-f0-9]{56}&cIdToken=[0-9]{6}&cHashQRCode=[A-Fa-f0-9]{40})|((HTTPS?|https?)://.*\?p=([0-9]{34}(1|3|4)[0-9]{9})\|[2]\|[1-2]\|(0|[1-9]{1}([0-9]{1,5})?)\|[A-Fa-f0-9]{40})|((HTTPS?|https?)://.*\?p=([0-9]{34}9[0-9]{9})\|[2]\|[1-2]\|([0]{1}[1-9]{1}|[1-2]{1}[0-9]{1}|[3]{1}[0-1]{1})\|(0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?)\|[A-Fa-f0-9]{56}\|(0|[1-9]{1}([0-9]{1,5})?)\|[A-Fa-f0-9]{40}))')
            .hasMatch(qrCode.toString())) ==
        false) {
      throw Exception('Invalid value for qrCode - $qrCode');
    }
    ;
    if ((qrCode.toString().trim() == qrCode.toString()) == false) {
      throw Exception('Invalid value for qrCode');
    }
    ;
    if ((urlChave.toString().length <= 85) == false) {
      throw Exception('Invalid value for urlChave');
    }
    ;
    if ((urlChave.toString().length >= 21) == false) {
      throw Exception('Invalid value for urlChave');
    }
    ;
  }
  infNFeSuplComplexType_TNFe.unsafe(
      {this.xmlns, required this.qrCode, required this.urlChave});
  String toXml(
      {String name = 'infNFeSupl', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('qrCode'), [], [xml.XmlText(qrCode.toString())]),
      xml.XmlElement(
          xml.XmlName('urlChave'), [], [xml.XmlText(urlChave.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infNFeSuplComplexType_TNFe.fromXml(String xmlString,
      {String name = 'infNFeSupl'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infNFeSuplComplexType_TNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      qrCode: element.findElements('qrCode').first.text,
      urlChave: element.findElements('urlChave').first.text,
    );
  }
  factory infNFeSuplComplexType_TNFe.fromJson(Map<String, dynamic> json) =>
      _$infNFeSuplComplexType_TNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infNFeSuplComplexType_TNFeToJson(this);
}

List<infNFeSuplComplexType_TNFe> _infNFeSuplComplexType_TNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infNFeSuplComplexType_TNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infNFeSuplComplexType_TNFe>? _infNFeSuplComplexType_TNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            infNFeSuplComplexType_TNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infNFeSuplComplexType_TNFeListToJson(
        List<infNFeSuplComplexType_TNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infNFeSuplComplexType_TNFeMaybeListToJson(
        List<infNFeSuplComplexType_TNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infNFeSuplComplexType_TNFe _infNFeSuplComplexType_TNFeFromJson(
        Map<String, dynamic> json) =>
    infNFeSuplComplexType_TNFe.fromJson(json);
infNFeSuplComplexType_TNFe? _infNFeSuplComplexType_TNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infNFeSuplComplexType_TNFe.fromJson(json) : null;
Map<String, dynamic> _infNFeSuplComplexType_TNFeToJson(
        infNFeSuplComplexType_TNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infNFeSuplComplexType_TNFeMaybeToJson(
        infNFeSuplComplexType_TNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class ideComplexType_infNFe {
  String? xmlns;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String cNF;
  String natOp;
  @JsonKey(fromJson: _modEnumFromValue, toJson: _modEnumToValue)
  modEnum mod;
  String serie;
  String nNF;
  String dhEmi;
  String? dhSaiEnt;
  @JsonKey(fromJson: _tpNFEnumFromValue, toJson: _tpNFEnumToValue)
  tpNFEnum tpNF;
  @JsonKey(fromJson: _idDestEnumFromValue, toJson: _idDestEnumToValue)
  idDestEnum idDest;
  String cMunFG;
  @JsonKey(fromJson: _tpImpEnumFromValue, toJson: _tpImpEnumToValue)
  tpImpEnum tpImp;
  @JsonKey(fromJson: _tpEmisEnumFromValue, toJson: _tpEmisEnumToValue)
  tpEmisEnum tpEmis;
  String cDV;
  @JsonKey(fromJson: _tpAmbEnumFromValue, toJson: _tpAmbEnumToValue)
  tpAmbEnum tpAmb;
  @JsonKey(fromJson: _finNFeEnumFromValue, toJson: _finNFeEnumToValue)
  finNFeEnum finNFe;
  @JsonKey(fromJson: _indFinalEnumFromValue, toJson: _indFinalEnumToValue)
  indFinalEnum indFinal;
  @JsonKey(fromJson: _indPresEnumFromValue, toJson: _indPresEnumToValue)
  indPresEnum indPres;
  @JsonKey(
      fromJson: _indIntermedEnumFromMaybeValue,
      toJson: _indIntermedEnumToMaybeValue)
  indIntermedEnum? indIntermed;
  @JsonKey(fromJson: _procEmiEnumFromValue, toJson: _procEmiEnumToValue)
  procEmiEnum procEmi;
  String verProc;
  String? dhCont;
  String? xJust;
  @JsonKey(
      fromJson: _NFrefComplexType_ideMaybeListFromJson,
      toJson: _NFrefComplexType_ideMaybeListToJson)
  List<NFrefComplexType_ide>? NFref;
  ideComplexType_infNFe(
      {this.xmlns,
      required this.cUF,
      required this.cNF,
      required this.natOp,
      required this.mod,
      required this.serie,
      required this.nNF,
      required this.dhEmi,
      this.dhSaiEnt,
      required this.tpNF,
      required this.idDest,
      required this.cMunFG,
      required this.tpImp,
      required this.tpEmis,
      required this.cDV,
      required this.tpAmb,
      required this.finNFe,
      required this.indFinal,
      required this.indPres,
      this.indIntermed,
      required this.procEmi,
      required this.verProc,
      this.dhCont,
      this.xJust,
      this.NFref}) {
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'[0-9]{8}').hasMatch(cNF.toString())) == false) {
      throw Exception('Invalid value for cNF - $cNF');
    }
    ;
    if ((cNF.toString().trim() == cNF.toString()) == false) {
      throw Exception('Invalid value for cNF');
    }
    ;
    if ((natOp.toString().length <= 60) == false) {
      throw Exception('Invalid value for natOp');
    }
    ;
    if ((natOp.toString().length >= 1) == false) {
      throw Exception('Invalid value for natOp');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(natOp.toString())) ==
        false) {
      throw Exception('Invalid value for natOp - $natOp');
    }
    ;
    if ((natOp.toString().trim() == natOp.toString()) == false) {
      throw Exception('Invalid value for natOp');
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
    if ((RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNF.toString())) == false) {
      throw Exception('Invalid value for nNF - $nNF');
    }
    ;
    if ((nNF.toString().trim() == nNF.toString()) == false) {
      throw Exception('Invalid value for nNF');
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
    if ((dhSaiEnt == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
                .hasMatch(dhSaiEnt.toString())) ==
        false) {
      throw Exception('Invalid value for dhSaiEnt - $dhSaiEnt');
    }
    ;
    if ((dhSaiEnt == null ||
            dhSaiEnt.toString().trim() == dhSaiEnt.toString()) ==
        false) {
      throw Exception('Invalid value for dhSaiEnt');
    }
    ;
    if ((tpNF.toString().trim() == tpNF.toString()) == false) {
      throw Exception('Invalid value for tpNF');
    }
    ;
    if ((idDest.toString().trim() == idDest.toString()) == false) {
      throw Exception('Invalid value for idDest');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMunFG.toString())) == false) {
      throw Exception('Invalid value for cMunFG - $cMunFG');
    }
    ;
    if ((cMunFG.toString().trim() == cMunFG.toString()) == false) {
      throw Exception('Invalid value for cMunFG');
    }
    ;
    if ((tpImp.toString().trim() == tpImp.toString()) == false) {
      throw Exception('Invalid value for tpImp');
    }
    ;
    if ((tpEmis.toString().trim() == tpEmis.toString()) == false) {
      throw Exception('Invalid value for tpEmis');
    }
    ;
    if ((RegExp(r'[0-9]{1}').hasMatch(cDV.toString())) == false) {
      throw Exception('Invalid value for cDV - $cDV');
    }
    ;
    if ((cDV.toString().trim() == cDV.toString()) == false) {
      throw Exception('Invalid value for cDV');
    }
    ;
    if ((tpAmb.toString().trim() == tpAmb.toString()) == false) {
      throw Exception('Invalid value for tpAmb');
    }
    ;
    if ((finNFe.toString().trim() == finNFe.toString()) == false) {
      throw Exception('Invalid value for finNFe');
    }
    ;
    if ((indFinal.toString().trim() == indFinal.toString()) == false) {
      throw Exception('Invalid value for indFinal');
    }
    ;
    if ((indPres.toString().trim() == indPres.toString()) == false) {
      throw Exception('Invalid value for indPres');
    }
    ;
    if ((indIntermed == null ||
            indIntermed.toString().trim() == indIntermed.toString()) ==
        false) {
      throw Exception('Invalid value for indIntermed');
    }
    ;
    if ((procEmi.toString().trim() == procEmi.toString()) == false) {
      throw Exception('Invalid value for procEmi');
    }
    ;
    if ((verProc.toString().length <= 20) == false) {
      throw Exception('Invalid value for verProc');
    }
    ;
    if ((verProc.toString().length >= 1) == false) {
      throw Exception('Invalid value for verProc');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(verProc.toString())) ==
        false) {
      throw Exception('Invalid value for verProc - $verProc');
    }
    ;
    if ((verProc.toString().trim() == verProc.toString()) == false) {
      throw Exception('Invalid value for verProc');
    }
    ;
    if ((dhCont == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d([\-,\+](0[0-9]|10|11):00|([\+](12):00))')
                .hasMatch(dhCont.toString())) ==
        false) {
      throw Exception('Invalid value for dhCont - $dhCont');
    }
    ;
    if ((dhCont == null || dhCont.toString().trim() == dhCont.toString()) ==
        false) {
      throw Exception('Invalid value for dhCont');
    }
    ;
    if ((xJust == null || xJust.toString().length <= 256) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((xJust == null || xJust.toString().length >= 15) == false) {
      throw Exception('Invalid value for xJust');
    }
    ;
    if ((xJust == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xJust.toString())) ==
        false) {
      throw Exception('Invalid value for xJust - $xJust');
    }
    ;
    if ((xJust == null || xJust.toString().trim() == xJust.toString()) ==
        false) {
      throw Exception('Invalid value for xJust');
    }
    ;
  }
  ideComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.cUF,
      required this.cNF,
      required this.natOp,
      required this.mod,
      required this.serie,
      required this.nNF,
      required this.dhEmi,
      this.dhSaiEnt,
      required this.tpNF,
      required this.idDest,
      required this.cMunFG,
      required this.tpImp,
      required this.tpEmis,
      required this.cDV,
      required this.tpAmb,
      required this.finNFe,
      required this.indFinal,
      required this.indPres,
      this.indIntermed,
      required this.procEmi,
      required this.verProc,
      this.dhCont,
      this.xJust,
      this.NFref});
  String toXml({String name = 'ide', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(xml.XmlName('cNF'), [], [xml.XmlText(cNF.toString())]),
      xml.XmlElement(xml.XmlName('natOp'), [], [xml.XmlText(natOp.toString())]),
      xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod.value)]),
      xml.XmlElement(xml.XmlName('serie'), [], [xml.XmlText(serie.toString())]),
      xml.XmlElement(xml.XmlName('nNF'), [], [xml.XmlText(nNF.toString())]),
      xml.XmlElement(xml.XmlName('dhEmi'), [], [xml.XmlText(dhEmi.toString())]),
      if (dhSaiEnt != null)
        xml.XmlElement(
            xml.XmlName('dhSaiEnt'), [], [xml.XmlText(dhSaiEnt.toString())]),
      xml.XmlElement(xml.XmlName('tpNF'), [], [xml.XmlText(tpNF.value)]),
      xml.XmlElement(xml.XmlName('idDest'), [], [xml.XmlText(idDest.value)]),
      xml.XmlElement(
          xml.XmlName('cMunFG'), [], [xml.XmlText(cMunFG.toString())]),
      xml.XmlElement(xml.XmlName('tpImp'), [], [xml.XmlText(tpImp.value)]),
      xml.XmlElement(xml.XmlName('tpEmis'), [], [xml.XmlText(tpEmis.value)]),
      xml.XmlElement(xml.XmlName('cDV'), [], [xml.XmlText(cDV.toString())]),
      xml.XmlElement(xml.XmlName('tpAmb'), [], [xml.XmlText(tpAmb.value)]),
      xml.XmlElement(xml.XmlName('finNFe'), [], [xml.XmlText(finNFe.value)]),
      xml.XmlElement(
          xml.XmlName('indFinal'), [], [xml.XmlText(indFinal.value)]),
      xml.XmlElement(xml.XmlName('indPres'), [], [xml.XmlText(indPres.value)]),
      if (indIntermed != null)
        xml.XmlElement(
            xml.XmlName('indIntermed'), [], [xml.XmlText(indIntermed!.value)]),
      xml.XmlElement(xml.XmlName('procEmi'), [], [xml.XmlText(procEmi.value)]),
      xml.XmlElement(
          xml.XmlName('verProc'), [], [xml.XmlText(verProc.toString())]),
      if (dhCont != null)
        xml.XmlElement(
            xml.XmlName('dhCont'), [], [xml.XmlText(dhCont.toString())]),
      if (xJust != null)
        xml.XmlElement(
            xml.XmlName('xJust'), [], [xml.XmlText(xJust.toString())]),
      ...?NFref?.map((e) => xml.XmlDocumentFragment.parse(
          e.toXml(name: "NFref", pretty: pretty))).toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ideComplexType_infNFe.fromXml(String xmlString,
      {String name = 'ide'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ideComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      cNF: element.findElements('cNF').first.text,
      natOp: element.findElements('natOp').first.text,
      mod: modEnum.fromValue(element.findElements('mod').first.text),
      serie: element.findElements('serie').first.text,
      nNF: element.findElements('nNF').first.text,
      dhEmi: element.findElements('dhEmi').first.text,
      dhSaiEnt: element.findElements('dhSaiEnt').isNotEmpty
          ? element.findElements('dhSaiEnt').first.text
          : null,
      tpNF: tpNFEnum.fromValue(element.findElements('tpNF').first.text),
      idDest: idDestEnum.fromValue(element.findElements('idDest').first.text),
      cMunFG: element.findElements('cMunFG').first.text,
      tpImp: tpImpEnum.fromValue(element.findElements('tpImp').first.text),
      tpEmis: tpEmisEnum.fromValue(element.findElements('tpEmis').first.text),
      cDV: element.findElements('cDV').first.text,
      tpAmb: tpAmbEnum.fromValue(element.findElements('tpAmb').first.text),
      finNFe: finNFeEnum.fromValue(element.findElements('finNFe').first.text),
      indFinal:
          indFinalEnum.fromValue(element.findElements('indFinal').first.text),
      indPres:
          indPresEnum.fromValue(element.findElements('indPres').first.text),
      indIntermed: element.findElements('indIntermed').isNotEmpty
          ? indIntermedEnum
              .fromValue(element.findElements('indIntermed').first.text)
          : null,
      procEmi:
          procEmiEnum.fromValue(element.findElements('procEmi').first.text),
      verProc: element.findElements('verProc').first.text,
      dhCont: element.findElements('dhCont').isNotEmpty
          ? element.findElements('dhCont').first.text
          : null,
      xJust: element.findElements('xJust').isNotEmpty
          ? element.findElements('xJust').first.text
          : null,
      NFref: element
          .findElements('NFref')
          .map((e) => NFrefComplexType_ide.fromXml(e.toString(), name: "NFref"))
          .toList(),
    );
  }
  factory ideComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$ideComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$ideComplexType_infNFeToJson(this);
}

List<ideComplexType_infNFe> _ideComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ideComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<ideComplexType_infNFe>? _ideComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ideComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ideComplexType_infNFeListToJson(
        List<ideComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ideComplexType_infNFeMaybeListToJson(
        List<ideComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
ideComplexType_infNFe _ideComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    ideComplexType_infNFe.fromJson(json);
ideComplexType_infNFe? _ideComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ideComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _ideComplexType_infNFeToJson(
        ideComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _ideComplexType_infNFeMaybeToJson(
        ideComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class emitComplexType_infNFe {
  String? xmlns;
  String? CNPJ;
  String? CPF;
  String xNome;
  String? xFant;
  @JsonKey(
      fromJson: _TEnderEmiComplexTypeFromJson,
      toJson: _TEnderEmiComplexTypeToJson)
  TEnderEmiComplexType enderEmit;
  String IE;
  String? IEST;
  String? IM;
  String? CNAE;
  @JsonKey(fromJson: _CRTEnumFromValue, toJson: _CRTEnumToValue)
  CRTEnum CRT;
  emitComplexType_infNFe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      required this.xNome,
      this.xFant,
      required this.enderEmit,
      required this.IE,
      this.IEST,
      this.IM,
      this.CNAE,
      required this.CRT}) {
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
    if ((xNome.toString().length <= 60) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome.toString().length >= 2) == false) {
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
    if ((IE.toString().length <= 14) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((RegExp(r'[0-9]{2,14}|ISENTO').hasMatch(IE.toString())) == false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((IEST == null || IEST.toString().length <= 14) == false) {
      throw Exception('Invalid value for IEST');
    }
    ;
    if ((IEST == null || RegExp(r'[0-9]{2,14}').hasMatch(IEST.toString())) ==
        false) {
      throw Exception('Invalid value for IEST - $IEST');
    }
    ;
    if ((IEST == null || IEST.toString().trim() == IEST.toString()) == false) {
      throw Exception('Invalid value for IEST');
    }
    ;
    if ((IM == null || IM.toString().length <= 15) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((IM == null || IM.toString().length >= 1) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((IM == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(IM.toString())) ==
        false) {
      throw Exception('Invalid value for IM - $IM');
    }
    ;
    if ((IM == null || IM.toString().trim() == IM.toString()) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((CNAE == null || RegExp(r'[0-9]{7}').hasMatch(CNAE.toString())) ==
        false) {
      throw Exception('Invalid value for CNAE - $CNAE');
    }
    ;
    if ((CNAE == null || CNAE.toString().trim() == CNAE.toString()) == false) {
      throw Exception('Invalid value for CNAE');
    }
    ;
    if ((CRT.toString().trim() == CRT.toString()) == false) {
      throw Exception('Invalid value for CRT');
    }
    ;
  }
  emitComplexType_infNFe.unsafe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      required this.xNome,
      this.xFant,
      required this.enderEmit,
      required this.IE,
      this.IEST,
      this.IM,
      this.CNAE,
      required this.CRT});
  String toXml({String name = 'emit', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      xml.XmlElement(xml.XmlName('xNome'), [], [xml.XmlText(xNome.toString())]),
      if (xFant != null)
        xml.XmlElement(
            xml.XmlName('xFant'), [], [xml.XmlText(xFant.toString())]),
      xml.XmlDocumentFragment.parse(
          enderEmit.toXml(name: "enderEmit", pretty: pretty)),
      xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (IEST != null)
        xml.XmlElement(xml.XmlName('IEST'), [], [xml.XmlText(IEST.toString())]),
      if (IM != null)
        xml.XmlElement(xml.XmlName('IM'), [], [xml.XmlText(IM.toString())]),
      if (CNAE != null)
        xml.XmlElement(xml.XmlName('CNAE'), [], [xml.XmlText(CNAE.toString())]),
      xml.XmlElement(xml.XmlName('CRT'), [], [xml.XmlText(CRT.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory emitComplexType_infNFe.fromXml(String xmlString,
      {String name = 'emit'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return emitComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      xNome: element.findElements('xNome').first.text,
      xFant: element.findElements('xFant').isNotEmpty
          ? element.findElements('xFant').first.text
          : null,
      enderEmit: TEnderEmiComplexType.fromXml(
          element.findElements('enderEmit').first.toString(),
          name: "enderEmit"),
      IE: element.findElements('IE').first.text,
      IEST: element.findElements('IEST').isNotEmpty
          ? element.findElements('IEST').first.text
          : null,
      IM: element.findElements('IM').isNotEmpty
          ? element.findElements('IM').first.text
          : null,
      CNAE: element.findElements('CNAE').isNotEmpty
          ? element.findElements('CNAE').first.text
          : null,
      CRT: CRTEnum.fromValue(element.findElements('CRT').first.text),
    );
  }
  factory emitComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$emitComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$emitComplexType_infNFeToJson(this);
}

List<emitComplexType_infNFe> _emitComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => emitComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<emitComplexType_infNFe>? _emitComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => emitComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _emitComplexType_infNFeListToJson(
        List<emitComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _emitComplexType_infNFeMaybeListToJson(
        List<emitComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
emitComplexType_infNFe _emitComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    emitComplexType_infNFe.fromJson(json);
emitComplexType_infNFe? _emitComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? emitComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _emitComplexType_infNFeToJson(
        emitComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _emitComplexType_infNFeMaybeToJson(
        emitComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class avulsaComplexType_infNFe {
  String? xmlns;
  String CNPJ;
  String xOrgao;
  String matr;
  String xAgente;
  String? fone;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? nDAR;
  String? dEmi;
  String? vDAR;
  String repEmi;
  String? dPag;
  avulsaComplexType_infNFe(
      {this.xmlns,
      required this.CNPJ,
      required this.xOrgao,
      required this.matr,
      required this.xAgente,
      this.fone,
      required this.UF,
      this.nDAR,
      this.dEmi,
      this.vDAR,
      required this.repEmi,
      this.dPag}) {
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
    if ((xOrgao.toString().length <= 60) == false) {
      throw Exception('Invalid value for xOrgao');
    }
    ;
    if ((xOrgao.toString().length >= 1) == false) {
      throw Exception('Invalid value for xOrgao');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xOrgao.toString())) ==
        false) {
      throw Exception('Invalid value for xOrgao - $xOrgao');
    }
    ;
    if ((xOrgao.toString().trim() == xOrgao.toString()) == false) {
      throw Exception('Invalid value for xOrgao');
    }
    ;
    if ((matr.toString().length <= 60) == false) {
      throw Exception('Invalid value for matr');
    }
    ;
    if ((matr.toString().length >= 1) == false) {
      throw Exception('Invalid value for matr');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(matr.toString())) ==
        false) {
      throw Exception('Invalid value for matr - $matr');
    }
    ;
    if ((matr.toString().trim() == matr.toString()) == false) {
      throw Exception('Invalid value for matr');
    }
    ;
    if ((xAgente.toString().length <= 60) == false) {
      throw Exception('Invalid value for xAgente');
    }
    ;
    if ((xAgente.toString().length >= 1) == false) {
      throw Exception('Invalid value for xAgente');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xAgente.toString())) ==
        false) {
      throw Exception('Invalid value for xAgente - $xAgente');
    }
    ;
    if ((xAgente.toString().trim() == xAgente.toString()) == false) {
      throw Exception('Invalid value for xAgente');
    }
    ;
    if ((fone == null || RegExp(r'[0-9]{6,14}').hasMatch(fone.toString())) ==
        false) {
      throw Exception('Invalid value for fone - $fone');
    }
    ;
    if ((fone == null || fone.toString().trim() == fone.toString()) == false) {
      throw Exception('Invalid value for fone');
    }
    ;
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((nDAR == null || nDAR.toString().length <= 60) == false) {
      throw Exception('Invalid value for nDAR');
    }
    ;
    if ((nDAR == null || nDAR.toString().length >= 1) == false) {
      throw Exception('Invalid value for nDAR');
    }
    ;
    if ((nDAR == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nDAR.toString())) ==
        false) {
      throw Exception('Invalid value for nDAR - $nDAR');
    }
    ;
    if ((nDAR == null || nDAR.toString().trim() == nDAR.toString()) == false) {
      throw Exception('Invalid value for nDAR');
    }
    ;
    if ((dEmi == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
                .hasMatch(dEmi.toString())) ==
        false) {
      throw Exception('Invalid value for dEmi - $dEmi');
    }
    ;
    if ((dEmi == null || dEmi.toString().trim() == dEmi.toString()) == false) {
      throw Exception('Invalid value for dEmi');
    }
    ;
    if ((vDAR == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDAR.toString())) ==
        false) {
      throw Exception('Invalid value for vDAR - $vDAR');
    }
    ;
    if ((vDAR == null || vDAR.toString().trim() == vDAR.toString()) == false) {
      throw Exception('Invalid value for vDAR');
    }
    ;
    if ((repEmi.toString().length <= 60) == false) {
      throw Exception('Invalid value for repEmi');
    }
    ;
    if ((repEmi.toString().length >= 1) == false) {
      throw Exception('Invalid value for repEmi');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(repEmi.toString())) ==
        false) {
      throw Exception('Invalid value for repEmi - $repEmi');
    }
    ;
    if ((repEmi.toString().trim() == repEmi.toString()) == false) {
      throw Exception('Invalid value for repEmi');
    }
    ;
    if ((dPag == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
                .hasMatch(dPag.toString())) ==
        false) {
      throw Exception('Invalid value for dPag - $dPag');
    }
    ;
    if ((dPag == null || dPag.toString().trim() == dPag.toString()) == false) {
      throw Exception('Invalid value for dPag');
    }
    ;
  }
  avulsaComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.CNPJ,
      required this.xOrgao,
      required this.matr,
      required this.xAgente,
      this.fone,
      required this.UF,
      this.nDAR,
      this.dEmi,
      this.vDAR,
      required this.repEmi,
      this.dPag});
  String toXml({String name = 'avulsa', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      xml.XmlElement(
          xml.XmlName('xOrgao'), [], [xml.XmlText(xOrgao.toString())]),
      xml.XmlElement(xml.XmlName('matr'), [], [xml.XmlText(matr.toString())]),
      xml.XmlElement(
          xml.XmlName('xAgente'), [], [xml.XmlText(xAgente.toString())]),
      if (fone != null)
        xml.XmlElement(xml.XmlName('fone'), [], [xml.XmlText(fone.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (nDAR != null)
        xml.XmlElement(xml.XmlName('nDAR'), [], [xml.XmlText(nDAR.toString())]),
      if (dEmi != null)
        xml.XmlElement(xml.XmlName('dEmi'), [], [xml.XmlText(dEmi.toString())]),
      if (vDAR != null)
        xml.XmlElement(xml.XmlName('vDAR'), [], [xml.XmlText(vDAR.toString())]),
      xml.XmlElement(
          xml.XmlName('repEmi'), [], [xml.XmlText(repEmi.toString())]),
      if (dPag != null)
        xml.XmlElement(xml.XmlName('dPag'), [], [xml.XmlText(dPag.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory avulsaComplexType_infNFe.fromXml(String xmlString,
      {String name = 'avulsa'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return avulsaComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').first.text,
      xOrgao: element.findElements('xOrgao').first.text,
      matr: element.findElements('matr').first.text,
      xAgente: element.findElements('xAgente').first.text,
      fone: element.findElements('fone').isNotEmpty
          ? element.findElements('fone').first.text
          : null,
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      nDAR: element.findElements('nDAR').isNotEmpty
          ? element.findElements('nDAR').first.text
          : null,
      dEmi: element.findElements('dEmi').isNotEmpty
          ? element.findElements('dEmi').first.text
          : null,
      vDAR: element.findElements('vDAR').isNotEmpty
          ? element.findElements('vDAR').first.text
          : null,
      repEmi: element.findElements('repEmi').first.text,
      dPag: element.findElements('dPag').isNotEmpty
          ? element.findElements('dPag').first.text
          : null,
    );
  }
  factory avulsaComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$avulsaComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$avulsaComplexType_infNFeToJson(this);
}

List<avulsaComplexType_infNFe> _avulsaComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => avulsaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<avulsaComplexType_infNFe>? _avulsaComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => avulsaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _avulsaComplexType_infNFeListToJson(
        List<avulsaComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _avulsaComplexType_infNFeMaybeListToJson(
        List<avulsaComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
avulsaComplexType_infNFe _avulsaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    avulsaComplexType_infNFe.fromJson(json);
avulsaComplexType_infNFe? _avulsaComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? avulsaComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _avulsaComplexType_infNFeToJson(
        avulsaComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _avulsaComplexType_infNFeMaybeToJson(
        avulsaComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class destComplexType_infNFe {
  String? xmlns;
  String? CNPJ;
  String? CPF;
  String? idEstrangeiro;
  String? xNome;
  @JsonKey(
      fromJson: _TEnderecoComplexTypeMaybeFromJson,
      toJson: _TEnderecoComplexTypeMaybeToJson)
  TEnderecoComplexType? enderDest;
  @JsonKey(fromJson: _indIEDestEnumFromValue, toJson: _indIEDestEnumToValue)
  indIEDestEnum indIEDest;
  String? IE;
  String? ISUF;
  String? IM;
  String? email;
  destComplexType_infNFe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.idEstrangeiro,
      this.xNome,
      this.enderDest,
      required this.indIEDest,
      this.IE,
      this.ISUF,
      this.IM,
      this.email}) {
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
    if ((xNome == null || xNome.toString().length <= 60) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null || xNome.toString().length >= 2) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xNome.toString())) ==
        false) {
      throw Exception('Invalid value for xNome - $xNome');
    }
    ;
    if ((xNome == null || xNome.toString().trim() == xNome.toString()) ==
        false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((indIEDest.toString().trim() == indIEDest.toString()) == false) {
      throw Exception('Invalid value for indIEDest');
    }
    ;
    if ((IE == null || IE.toString().length <= 14) == false) {
      throw Exception('Invalid value for IE');
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
    if ((ISUF == null || RegExp(r'[0-9]{8,9}').hasMatch(ISUF.toString())) ==
        false) {
      throw Exception('Invalid value for ISUF - $ISUF');
    }
    ;
    if ((ISUF == null || ISUF.toString().trim() == ISUF.toString()) == false) {
      throw Exception('Invalid value for ISUF');
    }
    ;
    if ((IM == null || IM.toString().length <= 15) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((IM == null || IM.toString().length >= 1) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((IM == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(IM.toString())) ==
        false) {
      throw Exception('Invalid value for IM - $IM');
    }
    ;
    if ((IM == null || IM.toString().trim() == IM.toString()) == false) {
      throw Exception('Invalid value for IM');
    }
    ;
    if ((email == null || email.toString().length <= 60) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null || email.toString().length >= 1) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null || email.toString().trim() == email.toString()) ==
        false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(email.toString())) ==
        false) {
      throw Exception('Invalid value for email - $email');
    }
    ;
  }
  destComplexType_infNFe.unsafe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.idEstrangeiro,
      this.xNome,
      this.enderDest,
      required this.indIEDest,
      this.IE,
      this.ISUF,
      this.IM,
      this.email});
  String toXml({String name = 'dest', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (idEstrangeiro != null)
        xml.XmlElement(xml.XmlName('idEstrangeiro'), [],
            [xml.XmlText(idEstrangeiro.toString())]),
      if (xNome != null)
        xml.XmlElement(
            xml.XmlName('xNome'), [], [xml.XmlText(xNome.toString())]),
      if (enderDest != null)
        xml.XmlDocumentFragment.parse(
            enderDest!.toXml(name: "enderDest", pretty: pretty)),
      xml.XmlElement(
          xml.XmlName('indIEDest'), [], [xml.XmlText(indIEDest.value)]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (ISUF != null)
        xml.XmlElement(xml.XmlName('ISUF'), [], [xml.XmlText(ISUF.toString())]),
      if (IM != null)
        xml.XmlElement(xml.XmlName('IM'), [], [xml.XmlText(IM.toString())]),
      if (email != null)
        xml.XmlElement(
            xml.XmlName('email'), [], [xml.XmlText(email.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory destComplexType_infNFe.fromXml(String xmlString,
      {String name = 'dest'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return destComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      idEstrangeiro: element.findElements('idEstrangeiro').isNotEmpty
          ? element.findElements('idEstrangeiro').first.text
          : null,
      xNome: element.findElements('xNome').isNotEmpty
          ? element.findElements('xNome').first.text
          : null,
      enderDest: element.findElements('enderDest').isNotEmpty
          ? TEnderecoComplexType.fromXml(
              element.findElements('enderDest').first.toString(),
              name: "enderDest")
          : null,
      indIEDest:
          indIEDestEnum.fromValue(element.findElements('indIEDest').first.text),
      IE: element.findElements('IE').isNotEmpty
          ? element.findElements('IE').first.text
          : null,
      ISUF: element.findElements('ISUF').isNotEmpty
          ? element.findElements('ISUF').first.text
          : null,
      IM: element.findElements('IM').isNotEmpty
          ? element.findElements('IM').first.text
          : null,
      email: element.findElements('email').isNotEmpty
          ? element.findElements('email').first.text
          : null,
    );
  }
  factory destComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$destComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$destComplexType_infNFeToJson(this);
}

List<destComplexType_infNFe> _destComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => destComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<destComplexType_infNFe>? _destComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => destComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _destComplexType_infNFeListToJson(
        List<destComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _destComplexType_infNFeMaybeListToJson(
        List<destComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
destComplexType_infNFe _destComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    destComplexType_infNFe.fromJson(json);
destComplexType_infNFe? _destComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? destComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _destComplexType_infNFeToJson(
        destComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _destComplexType_infNFeMaybeToJson(
        destComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class autXMLComplexType_infNFe {
  String? xmlns;
  String? CNPJ;
  String? CPF;
  autXMLComplexType_infNFe({this.xmlns, this.CNPJ, this.CPF}) {
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
  }
  autXMLComplexType_infNFe.unsafe({this.xmlns, this.CNPJ, this.CPF});
  String toXml({String name = 'autXML', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory autXMLComplexType_infNFe.fromXml(String xmlString,
      {String name = 'autXML'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return autXMLComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
    );
  }
  factory autXMLComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$autXMLComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$autXMLComplexType_infNFeToJson(this);
}

List<autXMLComplexType_infNFe> _autXMLComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => autXMLComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<autXMLComplexType_infNFe>? _autXMLComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => autXMLComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _autXMLComplexType_infNFeListToJson(
        List<autXMLComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _autXMLComplexType_infNFeMaybeListToJson(
        List<autXMLComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
autXMLComplexType_infNFe _autXMLComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    autXMLComplexType_infNFe.fromJson(json);
autXMLComplexType_infNFe? _autXMLComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? autXMLComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _autXMLComplexType_infNFeToJson(
        autXMLComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _autXMLComplexType_infNFeMaybeToJson(
        autXMLComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class detComplexType_infNFe {
  String? xmlns;
  @JsonKey(
      fromJson: _prodComplexType_detFromJson,
      toJson: _prodComplexType_detToJson)
  prodComplexType_det prod;
  @JsonKey(
      fromJson: _impostoComplexType_detFromJson,
      toJson: _impostoComplexType_detToJson)
  impostoComplexType_det imposto;
  @JsonKey(
      fromJson: _impostoDevolComplexType_detMaybeFromJson,
      toJson: _impostoDevolComplexType_detMaybeToJson)
  impostoDevolComplexType_det? impostoDevol;
  String? infAdProd;
  @JsonKey(
      fromJson: _obsItemComplexType_detMaybeFromJson,
      toJson: _obsItemComplexType_detMaybeToJson)
  obsItemComplexType_det? obsItem;
  String nItem;

  detComplexType_infNFe(
      {this.xmlns,
      required this.prod,
      required this.imposto,
      this.impostoDevol,
      this.infAdProd,
      this.obsItem,
      required this.nItem}) {
    if ((infAdProd == null || infAdProd.toString().length <= 500) == false) {
      throw Exception('Invalid value for infAdProd');
    }
    ;
    if ((infAdProd == null || infAdProd.toString().length >= 1) == false) {
      throw Exception('Invalid value for infAdProd');
    }
    ;
    if ((infAdProd == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(infAdProd.toString())) ==
        false) {
      throw Exception('Invalid value for infAdProd - $infAdProd');
    }
    ;
    if ((infAdProd == null ||
            infAdProd.toString().trim() == infAdProd.toString()) ==
        false) {
      throw Exception('Invalid value for infAdProd');
    }
    ;
    if ((RegExp(r'[1-9]{1}[0-9]{0,1}|[1-8]{1}[0-9]{2}|[9]{1}[0-8]{1}[0-9]{1}|[9]{1}[9]{1}[0]{1}')
            .hasMatch(nItem.toString())) ==
        false) {
      throw Exception('Invalid value for nItem - $nItem');
    }
    ;
    if ((nItem.toString().trim() == nItem.toString()) == false) {
      throw Exception('Invalid value for nItem');
    }
    ;
  }
  detComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.prod,
      required this.imposto,
      this.impostoDevol,
      this.infAdProd,
      this.obsItem,
      required this.nItem});
  String toXml({String name = 'det', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('nItem'), nItem.toString())
    ], [
      xml.XmlDocumentFragment.parse(prod.toXml(name: "prod", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          imposto.toXml(name: "imposto", pretty: pretty)),
      if (impostoDevol != null)
        xml.XmlDocumentFragment.parse(
            impostoDevol!.toXml(name: "impostoDevol", pretty: pretty)),
      if (infAdProd != null)
        xml.XmlElement(
            xml.XmlName('infAdProd'), [], [xml.XmlText(infAdProd.toString())]),
      if (obsItem != null)
        xml.XmlDocumentFragment.parse(
            obsItem!.toXml(name: "obsItem", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory detComplexType_infNFe.fromXml(String xmlString,
      {String name = 'det'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return detComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nItem: element.getAttribute('nItem')!,
      prod: prodComplexType_det
          .fromXml(element.findElements('prod').first.toString(), name: "prod"),
      imposto: impostoComplexType_det.fromXml(
          element.findElements('imposto').first.toString(),
          name: "imposto"),
      impostoDevol: element.findElements('impostoDevol').isNotEmpty
          ? impostoDevolComplexType_det.fromXml(
              element.findElements('impostoDevol').first.toString(),
              name: "impostoDevol")
          : null,
      infAdProd: element.findElements('infAdProd').isNotEmpty
          ? element.findElements('infAdProd').first.text
          : null,
      obsItem: element.findElements('obsItem').isNotEmpty
          ? obsItemComplexType_det.fromXml(
              element.findElements('obsItem').first.toString(),
              name: "obsItem")
          : null,
    );
  }
  factory detComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$detComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$detComplexType_infNFeToJson(this);
}

List<detComplexType_infNFe> _detComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => detComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<detComplexType_infNFe>? _detComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => detComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _detComplexType_infNFeListToJson(
        List<detComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _detComplexType_infNFeMaybeListToJson(
        List<detComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
detComplexType_infNFe _detComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    detComplexType_infNFe.fromJson(json);
detComplexType_infNFe? _detComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? detComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _detComplexType_infNFeToJson(
        detComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _detComplexType_infNFeMaybeToJson(
        detComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class totalComplexType_infNFe {
  String? xmlns;
  @JsonKey(
      fromJson: _ICMSTotComplexType_totalFromJson,
      toJson: _ICMSTotComplexType_totalToJson)
  ICMSTotComplexType_total ICMSTot;
  @JsonKey(
      fromJson: _ISSQNtotComplexType_totalMaybeFromJson,
      toJson: _ISSQNtotComplexType_totalMaybeToJson)
  ISSQNtotComplexType_total? ISSQNtot;
  @JsonKey(
      fromJson: _retTribComplexType_totalMaybeFromJson,
      toJson: _retTribComplexType_totalMaybeToJson)
  retTribComplexType_total? retTrib;
  totalComplexType_infNFe(
      {this.xmlns, required this.ICMSTot, this.ISSQNtot, this.retTrib});
  totalComplexType_infNFe.unsafe(
      {this.xmlns, required this.ICMSTot, this.ISSQNtot, this.retTrib});
  String toXml({String name = 'total', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlDocumentFragment.parse(
          ICMSTot.toXml(name: "ICMSTot", pretty: pretty)),
      if (ISSQNtot != null)
        xml.XmlDocumentFragment.parse(
            ISSQNtot!.toXml(name: "ISSQNtot", pretty: pretty)),
      if (retTrib != null)
        xml.XmlDocumentFragment.parse(
            retTrib!.toXml(name: "retTrib", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory totalComplexType_infNFe.fromXml(String xmlString,
      {String name = 'total'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return totalComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      ICMSTot: ICMSTotComplexType_total.fromXml(
          element.findElements('ICMSTot').first.toString(),
          name: "ICMSTot"),
      ISSQNtot: element.findElements('ISSQNtot').isNotEmpty
          ? ISSQNtotComplexType_total.fromXml(
              element.findElements('ISSQNtot').first.toString(),
              name: "ISSQNtot")
          : null,
      retTrib: element.findElements('retTrib').isNotEmpty
          ? retTribComplexType_total.fromXml(
              element.findElements('retTrib').first.toString(),
              name: "retTrib")
          : null,
    );
  }
  factory totalComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$totalComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$totalComplexType_infNFeToJson(this);
}

List<totalComplexType_infNFe> _totalComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => totalComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<totalComplexType_infNFe>? _totalComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => totalComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _totalComplexType_infNFeListToJson(
        List<totalComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _totalComplexType_infNFeMaybeListToJson(
        List<totalComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
totalComplexType_infNFe _totalComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    totalComplexType_infNFe.fromJson(json);
totalComplexType_infNFe? _totalComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? totalComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _totalComplexType_infNFeToJson(
        totalComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _totalComplexType_infNFeMaybeToJson(
        totalComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class transpComplexType_infNFe {
  String? xmlns;
  @JsonKey(fromJson: _modFreteEnumFromValue, toJson: _modFreteEnumToValue)
  modFreteEnum modFrete;
  @JsonKey(
      fromJson: _transportaComplexType_transpMaybeFromJson,
      toJson: _transportaComplexType_transpMaybeToJson)
  transportaComplexType_transp? transporta;
  @JsonKey(
      fromJson: _retTranspComplexType_transpMaybeFromJson,
      toJson: _retTranspComplexType_transpMaybeToJson)
  retTranspComplexType_transp? retTransp;
  String? vagao;
  String? balsa;
  @JsonKey(
      fromJson: _TVeiculoComplexTypeMaybeFromJson,
      toJson: _TVeiculoComplexTypeMaybeToJson)
  TVeiculoComplexType? veicTransp;
  @JsonKey(
      fromJson: _TVeiculoComplexTypeMaybeListFromJson,
      toJson: _TVeiculoComplexTypeMaybeListToJson)
  List<TVeiculoComplexType>? reboque;
  @JsonKey(
      fromJson: _volComplexType_transpMaybeListFromJson,
      toJson: _volComplexType_transpMaybeListToJson)
  List<volComplexType_transp>? vol;
  transpComplexType_infNFe(
      {this.xmlns,
      required this.modFrete,
      this.transporta,
      this.retTransp,
      this.vagao,
      this.balsa,
      this.veicTransp,
      this.reboque,
      this.vol}) {
    if ((modFrete.toString().trim() == modFrete.toString()) == false) {
      throw Exception('Invalid value for modFrete');
    }
    ;
    if ((vagao == null || vagao.toString().length <= 20) == false) {
      throw Exception('Invalid value for vagao');
    }
    ;
    if ((vagao == null || vagao.toString().length >= 1) == false) {
      throw Exception('Invalid value for vagao');
    }
    ;
    if ((vagao == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(vagao.toString())) ==
        false) {
      throw Exception('Invalid value for vagao - $vagao');
    }
    ;
    if ((vagao == null || vagao.toString().trim() == vagao.toString()) ==
        false) {
      throw Exception('Invalid value for vagao');
    }
    ;
    if ((balsa == null || balsa.toString().length <= 20) == false) {
      throw Exception('Invalid value for balsa');
    }
    ;
    if ((balsa == null || balsa.toString().length >= 1) == false) {
      throw Exception('Invalid value for balsa');
    }
    ;
    if ((balsa == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(balsa.toString())) ==
        false) {
      throw Exception('Invalid value for balsa - $balsa');
    }
    ;
    if ((balsa == null || balsa.toString().trim() == balsa.toString()) ==
        false) {
      throw Exception('Invalid value for balsa');
    }
    ;
    final _$vagaobalsa = [vagao != null, balsa != null];
    if ((_$vagaobalsa.every((e) => e == false) ||
            _$vagaobalsa.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of vagao, balsa');
    }
    ;
  }
  transpComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.modFrete,
      this.transporta,
      this.retTransp,
      this.vagao,
      this.balsa,
      this.veicTransp,
      this.reboque,
      this.vol});
  String toXml({String name = 'transp', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('modFrete'), [], [xml.XmlText(modFrete.value)]),
      if (transporta != null)
        xml.XmlDocumentFragment.parse(
            transporta!.toXml(name: "transporta", pretty: pretty)),
      if (retTransp != null)
        xml.XmlDocumentFragment.parse(
            retTransp!.toXml(name: "retTransp", pretty: pretty)),
      if (vagao != null)
        xml.XmlElement(
            xml.XmlName('vagao'), [], [xml.XmlText(vagao.toString())]),
      if (balsa != null)
        xml.XmlElement(
            xml.XmlName('balsa'), [], [xml.XmlText(balsa.toString())]),
      if (veicTransp != null)
        xml.XmlDocumentFragment.parse(
            veicTransp!.toXml(name: "veicTransp", pretty: pretty)),
      ...?reboque
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "reboque", pretty: pretty)))
          .toList(),
      ...?vol
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "vol", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory transpComplexType_infNFe.fromXml(String xmlString,
      {String name = 'transp'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return transpComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      modFrete:
          modFreteEnum.fromValue(element.findElements('modFrete').first.text),
      transporta: element.findElements('transporta').isNotEmpty
          ? transportaComplexType_transp.fromXml(
              element.findElements('transporta').first.toString(),
              name: "transporta")
          : null,
      retTransp: element.findElements('retTransp').isNotEmpty
          ? retTranspComplexType_transp.fromXml(
              element.findElements('retTransp').first.toString(),
              name: "retTransp")
          : null,
      vagao: element.findElements('vagao').isNotEmpty
          ? element.findElements('vagao').first.text
          : null,
      balsa: element.findElements('balsa').isNotEmpty
          ? element.findElements('balsa').first.text
          : null,
      veicTransp: element.findElements('veicTransp').isNotEmpty
          ? TVeiculoComplexType.fromXml(
              element.findElements('veicTransp').first.toString(),
              name: "veicTransp")
          : null,
      reboque: element
          .findElements('reboque')
          .map(
              (e) => TVeiculoComplexType.fromXml(e.toString(), name: "reboque"))
          .toList(),
      vol: element
          .findElements('vol')
          .map((e) => volComplexType_transp.fromXml(e.toString(), name: "vol"))
          .toList(),
    );
  }
  factory transpComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$transpComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$transpComplexType_infNFeToJson(this);
}

List<transpComplexType_infNFe> _transpComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => transpComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<transpComplexType_infNFe>? _transpComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => transpComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _transpComplexType_infNFeListToJson(
        List<transpComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _transpComplexType_infNFeMaybeListToJson(
        List<transpComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
transpComplexType_infNFe _transpComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    transpComplexType_infNFe.fromJson(json);
transpComplexType_infNFe? _transpComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? transpComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _transpComplexType_infNFeToJson(
        transpComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _transpComplexType_infNFeMaybeToJson(
        transpComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class cobrComplexType_infNFe {
  String? xmlns;
  @JsonKey(
      fromJson: _fatComplexType_cobrMaybeFromJson,
      toJson: _fatComplexType_cobrMaybeToJson)
  fatComplexType_cobr? fat;
  @JsonKey(
      fromJson: _dupComplexType_cobrMaybeListFromJson,
      toJson: _dupComplexType_cobrMaybeListToJson)
  List<dupComplexType_cobr>? dup;
  cobrComplexType_infNFe({this.xmlns, this.fat, this.dup});
  cobrComplexType_infNFe.unsafe({this.xmlns, this.fat, this.dup});
  String toXml({String name = 'cobr', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (fat != null)
        xml.XmlDocumentFragment.parse(fat!.toXml(name: "fat", pretty: pretty)),
      ...?dup
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "dup", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory cobrComplexType_infNFe.fromXml(String xmlString,
      {String name = 'cobr'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return cobrComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      fat: element.findElements('fat').isNotEmpty
          ? fatComplexType_cobr.fromXml(
              element.findElements('fat').first.toString(),
              name: "fat")
          : null,
      dup: element
          .findElements('dup')
          .map((e) => dupComplexType_cobr.fromXml(e.toString(), name: "dup"))
          .toList(),
    );
  }
  factory cobrComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$cobrComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$cobrComplexType_infNFeToJson(this);
}

List<cobrComplexType_infNFe> _cobrComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => cobrComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<cobrComplexType_infNFe>? _cobrComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => cobrComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _cobrComplexType_infNFeListToJson(
        List<cobrComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _cobrComplexType_infNFeMaybeListToJson(
        List<cobrComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
cobrComplexType_infNFe _cobrComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    cobrComplexType_infNFe.fromJson(json);
cobrComplexType_infNFe? _cobrComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? cobrComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _cobrComplexType_infNFeToJson(
        cobrComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _cobrComplexType_infNFeMaybeToJson(
        cobrComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class pagComplexType_infNFe {
  String? xmlns;
  @JsonKey(
      fromJson: _detPagComplexType_pagListFromJson,
      toJson: _detPagComplexType_pagListToJson)
  List<detPagComplexType_pag> detPag;
  String? vTroco;
  pagComplexType_infNFe({this.xmlns, required this.detPag, this.vTroco}) {
    if ((vTroco == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vTroco.toString())) ==
        false) {
      throw Exception('Invalid value for vTroco - $vTroco');
    }
    ;
    if ((vTroco == null || vTroco.toString().trim() == vTroco.toString()) ==
        false) {
      throw Exception('Invalid value for vTroco');
    }
    ;
  }
  pagComplexType_infNFe.unsafe({this.xmlns, required this.detPag, this.vTroco});
  String toXml({String name = 'pag', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      ...detPag
          .map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "detPag", pretty: pretty)))
          .toList(),
      if (vTroco != null)
        xml.XmlElement(
            xml.XmlName('vTroco'), [], [xml.XmlText(vTroco.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory pagComplexType_infNFe.fromXml(String xmlString,
      {String name = 'pag'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return pagComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      detPag: element
          .findElements('detPag')
          .map((e) =>
              detPagComplexType_pag.fromXml(e.toString(), name: "detPag"))
          .toList(),
      vTroco: element.findElements('vTroco').isNotEmpty
          ? element.findElements('vTroco').first.text
          : null,
    );
  }
  factory pagComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$pagComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$pagComplexType_infNFeToJson(this);
}

List<pagComplexType_infNFe> _pagComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => pagComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<pagComplexType_infNFe>? _pagComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => pagComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _pagComplexType_infNFeListToJson(
        List<pagComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _pagComplexType_infNFeMaybeListToJson(
        List<pagComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
pagComplexType_infNFe _pagComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    pagComplexType_infNFe.fromJson(json);
pagComplexType_infNFe? _pagComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? pagComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _pagComplexType_infNFeToJson(
        pagComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _pagComplexType_infNFeMaybeToJson(
        pagComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class infIntermedComplexType_infNFe {
  String? xmlns;
  String CNPJ;
  String idCadIntTran;
  infIntermedComplexType_infNFe(
      {this.xmlns, required this.CNPJ, required this.idCadIntTran}) {
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
    if ((idCadIntTran.toString().length <= 60) == false) {
      throw Exception('Invalid value for idCadIntTran');
    }
    ;
    if ((idCadIntTran.toString().length >= 2) == false) {
      throw Exception('Invalid value for idCadIntTran');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(idCadIntTran.toString())) ==
        false) {
      throw Exception('Invalid value for idCadIntTran - $idCadIntTran');
    }
    ;
    if ((idCadIntTran.toString().trim() == idCadIntTran.toString()) == false) {
      throw Exception('Invalid value for idCadIntTran');
    }
    ;
  }
  infIntermedComplexType_infNFe.unsafe(
      {this.xmlns, required this.CNPJ, required this.idCadIntTran});
  String toXml(
      {String name = 'infIntermed', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      xml.XmlElement(xml.XmlName('idCadIntTran'), [],
          [xml.XmlText(idCadIntTran.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infIntermedComplexType_infNFe.fromXml(String xmlString,
      {String name = 'infIntermed'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infIntermedComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').first.text,
      idCadIntTran: element.findElements('idCadIntTran').first.text,
    );
  }
  factory infIntermedComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$infIntermedComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infIntermedComplexType_infNFeToJson(this);
}

List<infIntermedComplexType_infNFe> _infIntermedComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infIntermedComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infIntermedComplexType_infNFe>?
    _infIntermedComplexType_infNFeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infIntermedComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infIntermedComplexType_infNFeListToJson(
        List<infIntermedComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infIntermedComplexType_infNFeMaybeListToJson(
        List<infIntermedComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infIntermedComplexType_infNFe _infIntermedComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infIntermedComplexType_infNFe.fromJson(json);
infIntermedComplexType_infNFe? _infIntermedComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infIntermedComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _infIntermedComplexType_infNFeToJson(
        infIntermedComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infIntermedComplexType_infNFeMaybeToJson(
        infIntermedComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class infAdicComplexType_infNFe {
  String? xmlns;
  String? infAdFisco;
  String? infCpl;
  @JsonKey(
      fromJson: _obsContComplexType_infAdicMaybeListFromJson,
      toJson: _obsContComplexType_infAdicMaybeListToJson)
  List<obsContComplexType_infAdic>? obsCont;
  @JsonKey(
      fromJson: _obsFiscoComplexType_infAdicMaybeListFromJson,
      toJson: _obsFiscoComplexType_infAdicMaybeListToJson)
  List<obsFiscoComplexType_infAdic>? obsFisco;
  @JsonKey(
      fromJson: _procRefComplexType_infAdicMaybeListFromJson,
      toJson: _procRefComplexType_infAdicMaybeListToJson)
  List<procRefComplexType_infAdic>? procRef;
  infAdicComplexType_infNFe(
      {this.xmlns,
      this.infAdFisco,
      this.infCpl,
      this.obsCont,
      this.obsFisco,
      this.procRef}) {
    if ((infAdFisco == null || infAdFisco.toString().length <= 2000) == false) {
      throw Exception('Invalid value for infAdFisco');
    }
    ;
    if ((infAdFisco == null || infAdFisco.toString().length >= 1) == false) {
      throw Exception('Invalid value for infAdFisco');
    }
    ;
    if ((infAdFisco == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(infAdFisco.toString())) ==
        false) {
      throw Exception('Invalid value for infAdFisco - $infAdFisco');
    }
    ;
    if ((infAdFisco == null ||
            infAdFisco.toString().trim() == infAdFisco.toString()) ==
        false) {
      throw Exception('Invalid value for infAdFisco');
    }
    ;
    if ((infCpl == null || infCpl.toString().length <= 5000) == false) {
      throw Exception('Invalid value for infCpl');
    }
    ;
    if ((infCpl == null || infCpl.toString().length >= 1) == false) {
      throw Exception('Invalid value for infCpl');
    }
    ;
    if ((infCpl == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(infCpl.toString())) ==
        false) {
      throw Exception('Invalid value for infCpl - $infCpl');
    }
    ;
    if ((infCpl == null || infCpl.toString().trim() == infCpl.toString()) ==
        false) {
      throw Exception('Invalid value for infCpl');
    }
    ;
  }
  infAdicComplexType_infNFe.unsafe(
      {this.xmlns,
      this.infAdFisco,
      this.infCpl,
      this.obsCont,
      this.obsFisco,
      this.procRef});
  String toXml({String name = 'infAdic', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (infAdFisco != null)
        xml.XmlElement(xml.XmlName('infAdFisco'), [],
            [xml.XmlText(infAdFisco.toString())]),
      if (infCpl != null)
        xml.XmlElement(
            xml.XmlName('infCpl'), [], [xml.XmlText(infCpl.toString())]),
      ...?obsCont
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "obsCont", pretty: pretty)))
          .toList(),
      ...?obsFisco
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "obsFisco", pretty: pretty)))
          .toList(),
      ...?procRef
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "procRef", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infAdicComplexType_infNFe.fromXml(String xmlString,
      {String name = 'infAdic'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infAdicComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      infAdFisco: element.findElements('infAdFisco').isNotEmpty
          ? element.findElements('infAdFisco').first.text
          : null,
      infCpl: element.findElements('infCpl').isNotEmpty
          ? element.findElements('infCpl').first.text
          : null,
      obsCont: element
          .findElements('obsCont')
          .map((e) =>
              obsContComplexType_infAdic.fromXml(e.toString(), name: "obsCont"))
          .toList(),
      obsFisco: element
          .findElements('obsFisco')
          .map((e) => obsFiscoComplexType_infAdic.fromXml(e.toString(),
              name: "obsFisco"))
          .toList(),
      procRef: element
          .findElements('procRef')
          .map((e) =>
              procRefComplexType_infAdic.fromXml(e.toString(), name: "procRef"))
          .toList(),
    );
  }
  factory infAdicComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$infAdicComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infAdicComplexType_infNFeToJson(this);
}

List<infAdicComplexType_infNFe> _infAdicComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infAdicComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infAdicComplexType_infNFe>? _infAdicComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            infAdicComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infAdicComplexType_infNFeListToJson(
        List<infAdicComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infAdicComplexType_infNFeMaybeListToJson(
        List<infAdicComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infAdicComplexType_infNFe _infAdicComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infAdicComplexType_infNFe.fromJson(json);
infAdicComplexType_infNFe? _infAdicComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infAdicComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _infAdicComplexType_infNFeToJson(
        infAdicComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infAdicComplexType_infNFeMaybeToJson(
        infAdicComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class exportaComplexType_infNFe {
  String? xmlns;
  @JsonKey(fromJson: _UFSaidaPaisEnumFromValue, toJson: _UFSaidaPaisEnumToValue)
  UFSaidaPaisEnum UFSaidaPais;
  String xLocExporta;
  String? xLocDespacho;
  exportaComplexType_infNFe(
      {this.xmlns,
      required this.UFSaidaPais,
      required this.xLocExporta,
      this.xLocDespacho}) {
    if ((UFSaidaPais.toString().trim() == UFSaidaPais.toString()) == false) {
      throw Exception('Invalid value for UFSaidaPais');
    }
    ;
    if ((xLocExporta.toString().length <= 60) == false) {
      throw Exception('Invalid value for xLocExporta');
    }
    ;
    if ((xLocExporta.toString().length >= 1) == false) {
      throw Exception('Invalid value for xLocExporta');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xLocExporta.toString())) ==
        false) {
      throw Exception('Invalid value for xLocExporta - $xLocExporta');
    }
    ;
    if ((xLocExporta.toString().trim() == xLocExporta.toString()) == false) {
      throw Exception('Invalid value for xLocExporta');
    }
    ;
    if ((xLocDespacho == null || xLocDespacho.toString().length <= 60) ==
        false) {
      throw Exception('Invalid value for xLocDespacho');
    }
    ;
    if ((xLocDespacho == null || xLocDespacho.toString().length >= 1) ==
        false) {
      throw Exception('Invalid value for xLocDespacho');
    }
    ;
    if ((xLocDespacho == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xLocDespacho.toString())) ==
        false) {
      throw Exception('Invalid value for xLocDespacho - $xLocDespacho');
    }
    ;
    if ((xLocDespacho == null ||
            xLocDespacho.toString().trim() == xLocDespacho.toString()) ==
        false) {
      throw Exception('Invalid value for xLocDespacho');
    }
    ;
  }
  exportaComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.UFSaidaPais,
      required this.xLocExporta,
      this.xLocDespacho});
  String toXml({String name = 'exporta', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('UFSaidaPais'), [], [xml.XmlText(UFSaidaPais.value)]),
      xml.XmlElement(xml.XmlName('xLocExporta'), [],
          [xml.XmlText(xLocExporta.toString())]),
      if (xLocDespacho != null)
        xml.XmlElement(xml.XmlName('xLocDespacho'), [],
            [xml.XmlText(xLocDespacho.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory exportaComplexType_infNFe.fromXml(String xmlString,
      {String name = 'exporta'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return exportaComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      UFSaidaPais: UFSaidaPaisEnum.fromValue(
          element.findElements('UFSaidaPais').first.text),
      xLocExporta: element.findElements('xLocExporta').first.text,
      xLocDespacho: element.findElements('xLocDespacho').isNotEmpty
          ? element.findElements('xLocDespacho').first.text
          : null,
    );
  }
  factory exportaComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$exportaComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$exportaComplexType_infNFeToJson(this);
}

List<exportaComplexType_infNFe> _exportaComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            exportaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<exportaComplexType_infNFe>? _exportaComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            exportaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _exportaComplexType_infNFeListToJson(
        List<exportaComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _exportaComplexType_infNFeMaybeListToJson(
        List<exportaComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
exportaComplexType_infNFe _exportaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    exportaComplexType_infNFe.fromJson(json);
exportaComplexType_infNFe? _exportaComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? exportaComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _exportaComplexType_infNFeToJson(
        exportaComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _exportaComplexType_infNFeMaybeToJson(
        exportaComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class compraComplexType_infNFe {
  String? xmlns;
  String? xNEmp;
  String? xPed;
  String? xCont;
  compraComplexType_infNFe({this.xmlns, this.xNEmp, this.xPed, this.xCont}) {
    if ((xNEmp == null || xNEmp.toString().length <= 22) == false) {
      throw Exception('Invalid value for xNEmp');
    }
    ;
    if ((xNEmp == null || xNEmp.toString().length >= 1) == false) {
      throw Exception('Invalid value for xNEmp');
    }
    ;
    if ((xNEmp == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xNEmp.toString())) ==
        false) {
      throw Exception('Invalid value for xNEmp - $xNEmp');
    }
    ;
    if ((xNEmp == null || xNEmp.toString().trim() == xNEmp.toString()) ==
        false) {
      throw Exception('Invalid value for xNEmp');
    }
    ;
    if ((xPed == null || xPed.toString().length <= 60) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((xPed == null || xPed.toString().length >= 1) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((xPed == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPed.toString())) ==
        false) {
      throw Exception('Invalid value for xPed - $xPed');
    }
    ;
    if ((xPed == null || xPed.toString().trim() == xPed.toString()) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((xCont == null || xCont.toString().length <= 60) == false) {
      throw Exception('Invalid value for xCont');
    }
    ;
    if ((xCont == null || xCont.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCont');
    }
    ;
    if ((xCont == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xCont.toString())) ==
        false) {
      throw Exception('Invalid value for xCont - $xCont');
    }
    ;
    if ((xCont == null || xCont.toString().trim() == xCont.toString()) ==
        false) {
      throw Exception('Invalid value for xCont');
    }
    ;
  }
  compraComplexType_infNFe.unsafe(
      {this.xmlns, this.xNEmp, this.xPed, this.xCont});
  String toXml({String name = 'compra', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (xNEmp != null)
        xml.XmlElement(
            xml.XmlName('xNEmp'), [], [xml.XmlText(xNEmp.toString())]),
      if (xPed != null)
        xml.XmlElement(xml.XmlName('xPed'), [], [xml.XmlText(xPed.toString())]),
      if (xCont != null)
        xml.XmlElement(
            xml.XmlName('xCont'), [], [xml.XmlText(xCont.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory compraComplexType_infNFe.fromXml(String xmlString,
      {String name = 'compra'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return compraComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xNEmp: element.findElements('xNEmp').isNotEmpty
          ? element.findElements('xNEmp').first.text
          : null,
      xPed: element.findElements('xPed').isNotEmpty
          ? element.findElements('xPed').first.text
          : null,
      xCont: element.findElements('xCont').isNotEmpty
          ? element.findElements('xCont').first.text
          : null,
    );
  }
  factory compraComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$compraComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$compraComplexType_infNFeToJson(this);
}

List<compraComplexType_infNFe> _compraComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => compraComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<compraComplexType_infNFe>? _compraComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => compraComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _compraComplexType_infNFeListToJson(
        List<compraComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _compraComplexType_infNFeMaybeListToJson(
        List<compraComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
compraComplexType_infNFe _compraComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    compraComplexType_infNFe.fromJson(json);
compraComplexType_infNFe? _compraComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? compraComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _compraComplexType_infNFeToJson(
        compraComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _compraComplexType_infNFeMaybeToJson(
        compraComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class canaComplexType_infNFe {
  String? xmlns;
  String safra;
  String ref;
  @JsonKey(
      fromJson: _forDiaComplexType_canaListFromJson,
      toJson: _forDiaComplexType_canaListToJson)
  List<forDiaComplexType_cana> forDia;
  String qTotMes;
  String qTotAnt;
  String qTotGer;
  @JsonKey(
      fromJson: _deducComplexType_canaMaybeListFromJson,
      toJson: _deducComplexType_canaMaybeListToJson)
  List<deducComplexType_cana>? deduc;
  String vFor;
  String vTotDed;
  String vLiqFor;
  canaComplexType_infNFe(
      {this.xmlns,
      required this.safra,
      required this.ref,
      required this.forDia,
      required this.qTotMes,
      required this.qTotAnt,
      required this.qTotGer,
      this.deduc,
      required this.vFor,
      required this.vTotDed,
      required this.vLiqFor}) {
    if ((safra.toString().length <= 9) == false) {
      throw Exception('Invalid value for safra');
    }
    ;
    if ((safra.toString().length >= 4) == false) {
      throw Exception('Invalid value for safra');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(safra.toString())) ==
        false) {
      throw Exception('Invalid value for safra - $safra');
    }
    ;
    if ((safra.toString().trim() == safra.toString()) == false) {
      throw Exception('Invalid value for safra');
    }
    ;
    if ((RegExp(r'(0[1-9]|1[0-2])([/][2][0-9][0-9][0-9])')
            .hasMatch(ref.toString())) ==
        false) {
      throw Exception('Invalid value for ref - $ref');
    }
    ;
    if ((ref.toString().trim() == ref.toString()) == false) {
      throw Exception('Invalid value for ref');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(qTotMes.toString())) ==
        false) {
      throw Exception('Invalid value for qTotMes - $qTotMes');
    }
    ;
    if ((qTotMes.toString().trim() == qTotMes.toString()) == false) {
      throw Exception('Invalid value for qTotMes');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(qTotAnt.toString())) ==
        false) {
      throw Exception('Invalid value for qTotAnt - $qTotAnt');
    }
    ;
    if ((qTotAnt.toString().trim() == qTotAnt.toString()) == false) {
      throw Exception('Invalid value for qTotAnt');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(qTotGer.toString())) ==
        false) {
      throw Exception('Invalid value for qTotGer - $qTotGer');
    }
    ;
    if ((qTotGer.toString().trim() == qTotGer.toString()) == false) {
      throw Exception('Invalid value for qTotGer');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vFor.toString())) ==
        false) {
      throw Exception('Invalid value for vFor - $vFor');
    }
    ;
    if ((vFor.toString().trim() == vFor.toString()) == false) {
      throw Exception('Invalid value for vFor');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vTotDed.toString())) ==
        false) {
      throw Exception('Invalid value for vTotDed - $vTotDed');
    }
    ;
    if ((vTotDed.toString().trim() == vTotDed.toString()) == false) {
      throw Exception('Invalid value for vTotDed');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vLiqFor.toString())) ==
        false) {
      throw Exception('Invalid value for vLiqFor - $vLiqFor');
    }
    ;
    if ((vLiqFor.toString().trim() == vLiqFor.toString()) == false) {
      throw Exception('Invalid value for vLiqFor');
    }
    ;
  }
  canaComplexType_infNFe.unsafe(
      {this.xmlns,
      required this.safra,
      required this.ref,
      required this.forDia,
      required this.qTotMes,
      required this.qTotAnt,
      required this.qTotGer,
      this.deduc,
      required this.vFor,
      required this.vTotDed,
      required this.vLiqFor});
  String toXml({String name = 'cana', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('safra'), [], [xml.XmlText(safra.toString())]),
      xml.XmlElement(xml.XmlName('ref'), [], [xml.XmlText(ref.toString())]),
      ...forDia
          .map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "forDia", pretty: pretty)))
          .toList(),
      xml.XmlElement(
          xml.XmlName('qTotMes'), [], [xml.XmlText(qTotMes.toString())]),
      xml.XmlElement(
          xml.XmlName('qTotAnt'), [], [xml.XmlText(qTotAnt.toString())]),
      xml.XmlElement(
          xml.XmlName('qTotGer'), [], [xml.XmlText(qTotGer.toString())]),
      ...?deduc
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "deduc", pretty: pretty)))
          .toList(),
      xml.XmlElement(xml.XmlName('vFor'), [], [xml.XmlText(vFor.toString())]),
      xml.XmlElement(
          xml.XmlName('vTotDed'), [], [xml.XmlText(vTotDed.toString())]),
      xml.XmlElement(
          xml.XmlName('vLiqFor'), [], [xml.XmlText(vLiqFor.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory canaComplexType_infNFe.fromXml(String xmlString,
      {String name = 'cana'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return canaComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      safra: element.findElements('safra').first.text,
      ref: element.findElements('ref').first.text,
      forDia: element
          .findElements('forDia')
          .map((e) =>
              forDiaComplexType_cana.fromXml(e.toString(), name: "forDia"))
          .toList(),
      qTotMes: element.findElements('qTotMes').first.text,
      qTotAnt: element.findElements('qTotAnt').first.text,
      qTotGer: element.findElements('qTotGer').first.text,
      deduc: element
          .findElements('deduc')
          .map(
              (e) => deducComplexType_cana.fromXml(e.toString(), name: "deduc"))
          .toList(),
      vFor: element.findElements('vFor').first.text,
      vTotDed: element.findElements('vTotDed').first.text,
      vLiqFor: element.findElements('vLiqFor').first.text,
    );
  }
  factory canaComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$canaComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$canaComplexType_infNFeToJson(this);
}

List<canaComplexType_infNFe> _canaComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => canaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<canaComplexType_infNFe>? _canaComplexType_infNFeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => canaComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _canaComplexType_infNFeListToJson(
        List<canaComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _canaComplexType_infNFeMaybeListToJson(
        List<canaComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
canaComplexType_infNFe _canaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    canaComplexType_infNFe.fromJson(json);
canaComplexType_infNFe? _canaComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? canaComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _canaComplexType_infNFeToJson(
        canaComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _canaComplexType_infNFeMaybeToJson(
        canaComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class infSolicNFFComplexType_infNFe {
  String? xmlns;
  String xSolic;
  infSolicNFFComplexType_infNFe({this.xmlns, required this.xSolic}) {
    if ((xSolic.toString().length <= 5000) == false) {
      throw Exception('Invalid value for xSolic');
    }
    ;
    if ((xSolic.toString().length >= 2) == false) {
      throw Exception('Invalid value for xSolic');
    }
    ;
  }
  infSolicNFFComplexType_infNFe.unsafe({this.xmlns, required this.xSolic});
  String toXml(
      {String name = 'infSolicNFF', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('xSolic'), [], [xml.XmlText(xSolic.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infSolicNFFComplexType_infNFe.fromXml(String xmlString,
      {String name = 'infSolicNFF'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infSolicNFFComplexType_infNFe.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xSolic: element.findElements('xSolic').first.text,
    );
  }
  factory infSolicNFFComplexType_infNFe.fromJson(Map<String, dynamic> json) =>
      _$infSolicNFFComplexType_infNFeFromJson(json);
  Map<String, dynamic> toJson() => _$infSolicNFFComplexType_infNFeToJson(this);
}

List<infSolicNFFComplexType_infNFe> _infSolicNFFComplexType_infNFeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infSolicNFFComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<infSolicNFFComplexType_infNFe>?
    _infSolicNFFComplexType_infNFeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            infSolicNFFComplexType_infNFe.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infSolicNFFComplexType_infNFeListToJson(
        List<infSolicNFFComplexType_infNFe> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infSolicNFFComplexType_infNFeMaybeListToJson(
        List<infSolicNFFComplexType_infNFe>? list) =>
    list?.map((e) => e.toJson()).toList();
infSolicNFFComplexType_infNFe _infSolicNFFComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infSolicNFFComplexType_infNFe.fromJson(json);
infSolicNFFComplexType_infNFe? _infSolicNFFComplexType_infNFeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infSolicNFFComplexType_infNFe.fromJson(json) : null;
Map<String, dynamic> _infSolicNFFComplexType_infNFeToJson(
        infSolicNFFComplexType_infNFe instance) =>
    instance.toJson();
Map<String, dynamic>? _infSolicNFFComplexType_infNFeMaybeToJson(
        infSolicNFFComplexType_infNFe? instance) =>
    instance?.toJson();

@JsonSerializable()
class NFrefComplexType_ide {
  String? xmlns;
  String? refNFe;
  @JsonKey(
      fromJson: _refNFComplexType_NFrefMaybeFromJson,
      toJson: _refNFComplexType_NFrefMaybeToJson)
  refNFComplexType_NFref? refNF;
  @JsonKey(
      fromJson: _refNFPComplexType_NFrefMaybeFromJson,
      toJson: _refNFPComplexType_NFrefMaybeToJson)
  refNFPComplexType_NFref? refNFP;
  String? refCTe;
  @JsonKey(
      fromJson: _refECFComplexType_NFrefMaybeFromJson,
      toJson: _refECFComplexType_NFrefMaybeToJson)
  refECFComplexType_NFref? refECF;
  NFrefComplexType_ide(
      {this.xmlns,
      this.refNFe,
      this.refNF,
      this.refNFP,
      this.refCTe,
      this.refECF}) {
    if ((refNFe == null || refNFe.toString().length <= 44) == false) {
      throw Exception('Invalid value for refNFe');
    }
    ;
    if ((refNFe == null || RegExp(r'[0-9]{44}').hasMatch(refNFe.toString())) ==
        false) {
      throw Exception('Invalid value for refNFe - $refNFe');
    }
    ;
    if ((refNFe == null || refNFe.toString().trim() == refNFe.toString()) ==
        false) {
      throw Exception('Invalid value for refNFe');
    }
    ;
    if ((refCTe == null || refCTe.toString().length <= 44) == false) {
      throw Exception('Invalid value for refCTe');
    }
    ;
    if ((refCTe == null || RegExp(r'[0-9]{44}').hasMatch(refCTe.toString())) ==
        false) {
      throw Exception('Invalid value for refCTe - $refCTe');
    }
    ;
    if ((refCTe == null || refCTe.toString().trim() == refCTe.toString()) ==
        false) {
      throw Exception('Invalid value for refCTe');
    }
    ;
    final _$refNFerefNFrefNFPrefCTerefECF = [
      refNFe != null,
      refNF != null,
      refNFP != null,
      refCTe != null,
      refECF != null
    ];
    if ((_$refNFerefNFrefNFPrefCTerefECF.every((e) => e == false) ||
            _$refNFerefNFrefNFPrefCTerefECF.where((e) => e == true).length ==
                1) ==
        false) {
      throw Exception('Choose one of refNFe, refNF, refNFP, refCTe, refECF');
    }
    ;
  }
  NFrefComplexType_ide.unsafe(
      {this.xmlns,
      this.refNFe,
      this.refNF,
      this.refNFP,
      this.refCTe,
      this.refECF});
  String toXml({String name = 'NFref', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (refNFe != null)
        xml.XmlElement(
            xml.XmlName('refNFe'), [], [xml.XmlText(refNFe.toString())]),
      if (refNF != null)
        xml.XmlDocumentFragment.parse(
            refNF!.toXml(name: "refNF", pretty: pretty)),
      if (refNFP != null)
        xml.XmlDocumentFragment.parse(
            refNFP!.toXml(name: "refNFP", pretty: pretty)),
      if (refCTe != null)
        xml.XmlElement(
            xml.XmlName('refCTe'), [], [xml.XmlText(refCTe.toString())]),
      if (refECF != null)
        xml.XmlDocumentFragment.parse(
            refECF!.toXml(name: "refECF", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory NFrefComplexType_ide.fromXml(String xmlString,
      {String name = 'NFref'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return NFrefComplexType_ide.unsafe(
      xmlns: element.getAttribute('xmlns'),
      refNFe: element.findElements('refNFe').isNotEmpty
          ? element.findElements('refNFe').first.text
          : null,
      refNF: element.findElements('refNF').isNotEmpty
          ? refNFComplexType_NFref.fromXml(
              element.findElements('refNF').first.toString(),
              name: "refNF")
          : null,
      refNFP: element.findElements('refNFP').isNotEmpty
          ? refNFPComplexType_NFref.fromXml(
              element.findElements('refNFP').first.toString(),
              name: "refNFP")
          : null,
      refCTe: element.findElements('refCTe').isNotEmpty
          ? element.findElements('refCTe').first.text
          : null,
      refECF: element.findElements('refECF').isNotEmpty
          ? refECFComplexType_NFref.fromXml(
              element.findElements('refECF').first.toString(),
              name: "refECF")
          : null,
    );
  }
  factory NFrefComplexType_ide.fromJson(Map<String, dynamic> json) =>
      _$NFrefComplexType_ideFromJson(json);
  Map<String, dynamic> toJson() => _$NFrefComplexType_ideToJson(this);
}

List<NFrefComplexType_ide> _NFrefComplexType_ideListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => NFrefComplexType_ide.fromJson(e as Map<String, dynamic>))
        .toList();
List<NFrefComplexType_ide>? _NFrefComplexType_ideMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => NFrefComplexType_ide.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _NFrefComplexType_ideListToJson(
        List<NFrefComplexType_ide> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _NFrefComplexType_ideMaybeListToJson(
        List<NFrefComplexType_ide>? list) =>
    list?.map((e) => e.toJson()).toList();
NFrefComplexType_ide _NFrefComplexType_ideFromJson(Map<String, dynamic> json) =>
    NFrefComplexType_ide.fromJson(json);
NFrefComplexType_ide? _NFrefComplexType_ideMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? NFrefComplexType_ide.fromJson(json) : null;
Map<String, dynamic> _NFrefComplexType_ideToJson(
        NFrefComplexType_ide instance) =>
    instance.toJson();
Map<String, dynamic>? _NFrefComplexType_ideMaybeToJson(
        NFrefComplexType_ide? instance) =>
    instance?.toJson();

@JsonSerializable()
class prodComplexType_det {
  String? xmlns;
  String cProd;
  String cEAN;
  String? cBarra;
  String xProd;
  String NCM;
  List<String>? NVE;
  String? CEST;
  @JsonKey(
      fromJson: _indEscalaEnumFromMaybeValue,
      toJson: _indEscalaEnumToMaybeValue)
  indEscalaEnum? indEscala;
  String? CNPJFab;
  String? cBenef;
  String? EXTIPI;
  String CFOP;
  String uCom;
  String qCom;
  String vUnCom;
  String vProd;
  String cEANTrib;
  String? cBarraTrib;
  String uTrib;
  String qTrib;
  String vUnTrib;
  String? vFrete;
  String? vSeg;
  String? vDesc;
  String? vOutro;
  @JsonKey(fromJson: _indTotEnumFromValue, toJson: _indTotEnumToValue)
  indTotEnum indTot;
  @JsonKey(
      fromJson: _DIComplexType_prodMaybeListFromJson,
      toJson: _DIComplexType_prodMaybeListToJson)
  List<DIComplexType_prod>? DI;
  @JsonKey(
      fromJson: _detExportComplexType_prodMaybeListFromJson,
      toJson: _detExportComplexType_prodMaybeListToJson)
  List<detExportComplexType_prod>? detExport;
  String? xPed;
  String? nItemPed;
  String? nFCI;
  @JsonKey(
      fromJson: _rastroComplexType_prodMaybeListFromJson,
      toJson: _rastroComplexType_prodMaybeListToJson)
  List<rastroComplexType_prod>? rastro;
  @JsonKey(
      fromJson: _infProdNFFComplexType_prodMaybeFromJson,
      toJson: _infProdNFFComplexType_prodMaybeToJson)
  infProdNFFComplexType_prod? infProdNFF;
  @JsonKey(
      fromJson: _infProdEmbComplexType_prodMaybeFromJson,
      toJson: _infProdEmbComplexType_prodMaybeToJson)
  infProdEmbComplexType_prod? infProdEmb;
  @JsonKey(
      fromJson: _veicProdComplexType_prodMaybeFromJson,
      toJson: _veicProdComplexType_prodMaybeToJson)
  veicProdComplexType_prod? veicProd;
  @JsonKey(
      fromJson: _medComplexType_prodMaybeFromJson,
      toJson: _medComplexType_prodMaybeToJson)
  medComplexType_prod? med;
  @JsonKey(
      fromJson: _armaComplexType_prodMaybeFromJson,
      toJson: _armaComplexType_prodMaybeToJson)
  armaComplexType_prod? arma;
  @JsonKey(
      fromJson: _combComplexType_prodMaybeFromJson,
      toJson: _combComplexType_prodMaybeToJson)
  combComplexType_prod? comb;
  String? nRECOPI;
  prodComplexType_det(
      {this.xmlns,
      required this.cProd,
      required this.cEAN,
      this.cBarra,
      required this.xProd,
      required this.NCM,
      this.NVE,
      this.CEST,
      this.indEscala,
      this.CNPJFab,
      this.cBenef,
      this.EXTIPI,
      required this.CFOP,
      required this.uCom,
      required this.qCom,
      required this.vUnCom,
      required this.vProd,
      required this.cEANTrib,
      this.cBarraTrib,
      required this.uTrib,
      required this.qTrib,
      required this.vUnTrib,
      this.vFrete,
      this.vSeg,
      this.vDesc,
      this.vOutro,
      required this.indTot,
      this.DI,
      this.detExport,
      this.xPed,
      this.nItemPed,
      this.nFCI,
      this.rastro,
      this.infProdNFF,
      this.infProdEmb,
      this.veicProd,
      this.med,
      this.arma,
      this.comb,
      this.nRECOPI}) {
    if ((cProd.toString().length <= 60) == false) {
      throw Exception('Invalid value for cProd');
    }
    ;
    if ((cProd.toString().length >= 1) == false) {
      throw Exception('Invalid value for cProd');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cProd.toString())) ==
        false) {
      throw Exception('Invalid value for cProd - $cProd');
    }
    ;
    if ((cProd.toString().trim() == cProd.toString()) == false) {
      throw Exception('Invalid value for cProd');
    }
    ;
    if ((RegExp(r'SEM GTIN|[0-9]{0}|[0-9]{8}|[0-9]{12,14}')
            .hasMatch(cEAN.toString())) ==
        false) {
      throw Exception('Invalid value for cEAN - $cEAN');
    }
    ;
    if ((cEAN.toString().trim() == cEAN.toString()) == false) {
      throw Exception('Invalid value for cEAN');
    }
    ;
    if ((cBarra == null || cBarra.toString().length <= 30) == false) {
      throw Exception('Invalid value for cBarra');
    }
    ;
    if ((cBarra == null || cBarra.toString().length >= 3) == false) {
      throw Exception('Invalid value for cBarra');
    }
    ;
    if ((cBarra == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cBarra.toString())) ==
        false) {
      throw Exception('Invalid value for cBarra - $cBarra');
    }
    ;
    if ((cBarra == null || cBarra.toString().trim() == cBarra.toString()) ==
        false) {
      throw Exception('Invalid value for cBarra');
    }
    ;
    if ((xProd.toString().length <= 120) == false) {
      throw Exception('Invalid value for xProd');
    }
    ;
    if ((xProd.toString().length >= 1) == false) {
      throw Exception('Invalid value for xProd');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xProd.toString())) ==
        false) {
      throw Exception('Invalid value for xProd - $xProd');
    }
    ;
    if ((xProd.toString().trim() == xProd.toString()) == false) {
      throw Exception('Invalid value for xProd');
    }
    ;
    if ((RegExp(r'[0-9]{2}|[0-9]{8}').hasMatch(NCM.toString())) == false) {
      throw Exception('Invalid value for NCM - $NCM');
    }
    ;
    if ((NCM.toString().trim() == NCM.toString()) == false) {
      throw Exception('Invalid value for NCM');
    }
    ;
    if ((NVE == null ||
            NVE!.every(
                (e) => RegExp(r'[A-Z]{2}[0-9]{4}').hasMatch(e.toString()))) ==
        false) {
      throw Exception('Invalid value for NVE - $NVE');
    }
    ;
    if ((NVE == null ||
            NVE!.every((e) => e.toString().trim() == e.toString())) ==
        false) {
      throw Exception('Invalid value for NVE');
    }
    ;
    if ((CEST == null || RegExp(r'[0-9]{7}').hasMatch(CEST.toString())) ==
        false) {
      throw Exception('Invalid value for CEST - $CEST');
    }
    ;
    if ((CEST == null || CEST.toString().trim() == CEST.toString()) == false) {
      throw Exception('Invalid value for CEST');
    }
    ;
    if ((CNPJFab == null || CNPJFab.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJFab');
    }
    ;
    if ((CNPJFab == null ||
            RegExp(r'[0-9]{14}').hasMatch(CNPJFab.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJFab - $CNPJFab');
    }
    ;
    if ((CNPJFab == null || CNPJFab.toString().trim() == CNPJFab.toString()) ==
        false) {
      throw Exception('Invalid value for CNPJFab');
    }
    ;
    if ((cBenef == null ||
            RegExp(r'([!-ÿ]{8}|[!-ÿ]{10}|SEM CBENEF)?')
                .hasMatch(cBenef.toString())) ==
        false) {
      throw Exception('Invalid value for cBenef - $cBenef');
    }
    ;
    if ((cBenef == null || cBenef.toString().trim() == cBenef.toString()) ==
        false) {
      throw Exception('Invalid value for cBenef');
    }
    ;
    if ((EXTIPI == null || RegExp(r'[0-9]{2,3}').hasMatch(EXTIPI.toString())) ==
        false) {
      throw Exception('Invalid value for EXTIPI - $EXTIPI');
    }
    ;
    if ((EXTIPI == null || EXTIPI.toString().trim() == EXTIPI.toString()) ==
        false) {
      throw Exception('Invalid value for EXTIPI');
    }
    ;
    if ((RegExp(r'[1,2,3,5,6,7]{1}[0-9]{3}').hasMatch(CFOP.toString())) ==
        false) {
      throw Exception('Invalid value for CFOP - $CFOP');
    }
    ;
    if ((CFOP.toString().trim() == CFOP.toString()) == false) {
      throw Exception('Invalid value for CFOP');
    }
    ;
    if ((uCom.toString().length <= 6) == false) {
      throw Exception('Invalid value for uCom');
    }
    ;
    if ((uCom.toString().length >= 1) == false) {
      throw Exception('Invalid value for uCom');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(uCom.toString())) ==
        false) {
      throw Exception('Invalid value for uCom - $uCom');
    }
    ;
    if ((uCom.toString().trim() == uCom.toString()) == false) {
      throw Exception('Invalid value for uCom');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
            .hasMatch(qCom.toString())) ==
        false) {
      throw Exception('Invalid value for qCom - $qCom');
    }
    ;
    if ((qCom.toString().trim() == qCom.toString()) == false) {
      throw Exception('Invalid value for qCom');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(vUnCom.toString())) ==
        false) {
      throw Exception('Invalid value for vUnCom - $vUnCom');
    }
    ;
    if ((vUnCom.toString().trim() == vUnCom.toString()) == false) {
      throw Exception('Invalid value for vUnCom');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vProd.toString())) ==
        false) {
      throw Exception('Invalid value for vProd - $vProd');
    }
    ;
    if ((vProd.toString().trim() == vProd.toString()) == false) {
      throw Exception('Invalid value for vProd');
    }
    ;
    if ((RegExp(r'SEM GTIN|[0-9]{0}|[0-9]{8}|[0-9]{12,14}')
            .hasMatch(cEANTrib.toString())) ==
        false) {
      throw Exception('Invalid value for cEANTrib - $cEANTrib');
    }
    ;
    if ((cEANTrib.toString().trim() == cEANTrib.toString()) == false) {
      throw Exception('Invalid value for cEANTrib');
    }
    ;
    if ((cBarraTrib == null || cBarraTrib.toString().length <= 30) == false) {
      throw Exception('Invalid value for cBarraTrib');
    }
    ;
    if ((cBarraTrib == null || cBarraTrib.toString().length >= 3) == false) {
      throw Exception('Invalid value for cBarraTrib');
    }
    ;
    if ((cBarraTrib == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cBarraTrib.toString())) ==
        false) {
      throw Exception('Invalid value for cBarraTrib - $cBarraTrib');
    }
    ;
    if ((cBarraTrib == null ||
            cBarraTrib.toString().trim() == cBarraTrib.toString()) ==
        false) {
      throw Exception('Invalid value for cBarraTrib');
    }
    ;
    if ((uTrib.toString().length <= 6) == false) {
      throw Exception('Invalid value for uTrib');
    }
    ;
    if ((uTrib.toString().length >= 1) == false) {
      throw Exception('Invalid value for uTrib');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(uTrib.toString())) ==
        false) {
      throw Exception('Invalid value for uTrib - $uTrib');
    }
    ;
    if ((uTrib.toString().trim() == uTrib.toString()) == false) {
      throw Exception('Invalid value for uTrib');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
            .hasMatch(qTrib.toString())) ==
        false) {
      throw Exception('Invalid value for qTrib - $qTrib');
    }
    ;
    if ((qTrib.toString().trim() == qTrib.toString()) == false) {
      throw Exception('Invalid value for qTrib');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(vUnTrib.toString())) ==
        false) {
      throw Exception('Invalid value for vUnTrib - $vUnTrib');
    }
    ;
    if ((vUnTrib.toString().trim() == vUnTrib.toString()) == false) {
      throw Exception('Invalid value for vUnTrib');
    }
    ;
    if ((vFrete == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFrete.toString())) ==
        false) {
      throw Exception('Invalid value for vFrete - $vFrete');
    }
    ;
    if ((vFrete == null || vFrete.toString().trim() == vFrete.toString()) ==
        false) {
      throw Exception('Invalid value for vFrete');
    }
    ;
    if ((vSeg == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vSeg.toString())) ==
        false) {
      throw Exception('Invalid value for vSeg - $vSeg');
    }
    ;
    if ((vSeg == null || vSeg.toString().trim() == vSeg.toString()) == false) {
      throw Exception('Invalid value for vSeg');
    }
    ;
    if ((vDesc == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDesc.toString())) ==
        false) {
      throw Exception('Invalid value for vDesc - $vDesc');
    }
    ;
    if ((vDesc == null || vDesc.toString().trim() == vDesc.toString()) ==
        false) {
      throw Exception('Invalid value for vDesc');
    }
    ;
    if ((vOutro == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vOutro.toString())) ==
        false) {
      throw Exception('Invalid value for vOutro - $vOutro');
    }
    ;
    if ((vOutro == null || vOutro.toString().trim() == vOutro.toString()) ==
        false) {
      throw Exception('Invalid value for vOutro');
    }
    ;
    if ((indTot.toString().trim() == indTot.toString()) == false) {
      throw Exception('Invalid value for indTot');
    }
    ;
    if ((xPed == null || xPed.toString().length <= 15) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((xPed == null || xPed.toString().length >= 1) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((xPed == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPed.toString())) ==
        false) {
      throw Exception('Invalid value for xPed - $xPed');
    }
    ;
    if ((xPed == null || xPed.toString().trim() == xPed.toString()) == false) {
      throw Exception('Invalid value for xPed');
    }
    ;
    if ((nItemPed == null ||
            RegExp(r'[0-9]{1,6}').hasMatch(nItemPed.toString())) ==
        false) {
      throw Exception('Invalid value for nItemPed - $nItemPed');
    }
    ;
    if ((nItemPed == null ||
            nItemPed.toString().trim() == nItemPed.toString()) ==
        false) {
      throw Exception('Invalid value for nItemPed');
    }
    ;
    if ((nFCI == null ||
            RegExp(r'[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}')
                .hasMatch(nFCI.toString())) ==
        false) {
      throw Exception('Invalid value for nFCI - $nFCI');
    }
    ;
    if ((nFCI == null || nFCI.toString().trim() == nFCI.toString()) == false) {
      throw Exception('Invalid value for nFCI');
    }
    ;
    if ((nRECOPI == null || nRECOPI.toString().length <= 20) == false) {
      throw Exception('Invalid value for nRECOPI');
    }
    ;
    if ((nRECOPI == null ||
            RegExp(r'[0-9]{20}').hasMatch(nRECOPI.toString())) ==
        false) {
      throw Exception('Invalid value for nRECOPI - $nRECOPI');
    }
    ;
    if ((nRECOPI == null || nRECOPI.toString().trim() == nRECOPI.toString()) ==
        false) {
      throw Exception('Invalid value for nRECOPI');
    }
    ;
    final _$veicProdmedarmacombnRECOPI = [
      veicProd != null,
      med != null,
      arma != null,
      comb != null,
      nRECOPI != null
    ];
    if ((_$veicProdmedarmacombnRECOPI.every((e) => e == false) ||
            _$veicProdmedarmacombnRECOPI.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of veicProd, med, arma, comb, nRECOPI');
    }
    ;
  }
  prodComplexType_det.unsafe(
      {this.xmlns,
      required this.cProd,
      required this.cEAN,
      this.cBarra,
      required this.xProd,
      required this.NCM,
      this.NVE,
      this.CEST,
      this.indEscala,
      this.CNPJFab,
      this.cBenef,
      this.EXTIPI,
      required this.CFOP,
      required this.uCom,
      required this.qCom,
      required this.vUnCom,
      required this.vProd,
      required this.cEANTrib,
      this.cBarraTrib,
      required this.uTrib,
      required this.qTrib,
      required this.vUnTrib,
      this.vFrete,
      this.vSeg,
      this.vDesc,
      this.vOutro,
      required this.indTot,
      this.DI,
      this.detExport,
      this.xPed,
      this.nItemPed,
      this.nFCI,
      this.rastro,
      this.infProdNFF,
      this.infProdEmb,
      this.veicProd,
      this.med,
      this.arma,
      this.comb,
      this.nRECOPI});
  String toXml({String name = 'prod', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('cProd'), [], [xml.XmlText(cProd.toString())]),
      xml.XmlElement(xml.XmlName('cEAN'), [], [xml.XmlText(cEAN.toString())]),
      if (cBarra != null)
        xml.XmlElement(
            xml.XmlName('cBarra'), [], [xml.XmlText(cBarra.toString())]),
      xml.XmlElement(xml.XmlName('xProd'), [], [xml.XmlText(xProd.toString())]),
      xml.XmlElement(xml.XmlName('NCM'), [], [xml.XmlText(NCM.toString())]),
      ...?NVE?.map((e) =>
          xml.XmlElement(xml.XmlName('NVE'), [], [xml.XmlText(e.toString())])),
      if (CEST != null)
        xml.XmlElement(xml.XmlName('CEST'), [], [xml.XmlText(CEST.toString())]),
      if (indEscala != null)
        xml.XmlElement(
            xml.XmlName('indEscala'), [], [xml.XmlText(indEscala!.value)]),
      if (CNPJFab != null)
        xml.XmlElement(
            xml.XmlName('CNPJFab'), [], [xml.XmlText(CNPJFab.toString())]),
      if (cBenef != null)
        xml.XmlElement(
            xml.XmlName('cBenef'), [], [xml.XmlText(cBenef.toString())]),
      if (EXTIPI != null)
        xml.XmlElement(
            xml.XmlName('EXTIPI'), [], [xml.XmlText(EXTIPI.toString())]),
      xml.XmlElement(xml.XmlName('CFOP'), [], [xml.XmlText(CFOP.toString())]),
      xml.XmlElement(xml.XmlName('uCom'), [], [xml.XmlText(uCom.toString())]),
      xml.XmlElement(xml.XmlName('qCom'), [], [xml.XmlText(qCom.toString())]),
      xml.XmlElement(
          xml.XmlName('vUnCom'), [], [xml.XmlText(vUnCom.toString())]),
      xml.XmlElement(xml.XmlName('vProd'), [], [xml.XmlText(vProd.toString())]),
      xml.XmlElement(
          xml.XmlName('cEANTrib'), [], [xml.XmlText(cEANTrib.toString())]),
      if (cBarraTrib != null)
        xml.XmlElement(xml.XmlName('cBarraTrib'), [],
            [xml.XmlText(cBarraTrib.toString())]),
      xml.XmlElement(xml.XmlName('uTrib'), [], [xml.XmlText(uTrib.toString())]),
      xml.XmlElement(xml.XmlName('qTrib'), [], [xml.XmlText(qTrib.toString())]),
      xml.XmlElement(
          xml.XmlName('vUnTrib'), [], [xml.XmlText(vUnTrib.toString())]),
      if (vFrete != null)
        xml.XmlElement(
            xml.XmlName('vFrete'), [], [xml.XmlText(vFrete.toString())]),
      if (vSeg != null)
        xml.XmlElement(xml.XmlName('vSeg'), [], [xml.XmlText(vSeg.toString())]),
      if (vDesc != null)
        xml.XmlElement(
            xml.XmlName('vDesc'), [], [xml.XmlText(vDesc.toString())]),
      if (vOutro != null)
        xml.XmlElement(
            xml.XmlName('vOutro'), [], [xml.XmlText(vOutro.toString())]),
      xml.XmlElement(xml.XmlName('indTot'), [], [xml.XmlText(indTot.value)]),
      ...?DI
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "DI", pretty: pretty)))
          .toList(),
      ...?detExport
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "detExport", pretty: pretty)))
          .toList(),
      if (xPed != null)
        xml.XmlElement(xml.XmlName('xPed'), [], [xml.XmlText(xPed.toString())]),
      if (nItemPed != null)
        xml.XmlElement(
            xml.XmlName('nItemPed'), [], [xml.XmlText(nItemPed.toString())]),
      if (nFCI != null)
        xml.XmlElement(xml.XmlName('nFCI'), [], [xml.XmlText(nFCI.toString())]),
      ...?rastro
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "rastro", pretty: pretty)))
          .toList(),
      if (infProdNFF != null)
        xml.XmlDocumentFragment.parse(
            infProdNFF!.toXml(name: "infProdNFF", pretty: pretty)),
      if (infProdEmb != null)
        xml.XmlDocumentFragment.parse(
            infProdEmb!.toXml(name: "infProdEmb", pretty: pretty)),
      if (veicProd != null)
        xml.XmlDocumentFragment.parse(
            veicProd!.toXml(name: "veicProd", pretty: pretty)),
      if (med != null)
        xml.XmlDocumentFragment.parse(med!.toXml(name: "med", pretty: pretty)),
      if (arma != null)
        xml.XmlDocumentFragment.parse(
            arma!.toXml(name: "arma", pretty: pretty)),
      if (comb != null)
        xml.XmlDocumentFragment.parse(
            comb!.toXml(name: "comb", pretty: pretty)),
      if (nRECOPI != null)
        xml.XmlElement(
            xml.XmlName('nRECOPI'), [], [xml.XmlText(nRECOPI.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory prodComplexType_det.fromXml(String xmlString,
      {String name = 'prod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return prodComplexType_det.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cProd: element.findElements('cProd').first.text,
      cEAN: element.findElements('cEAN').first.text,
      cBarra: element.findElements('cBarra').isNotEmpty
          ? element.findElements('cBarra').first.text
          : null,
      xProd: element.findElements('xProd').first.text,
      NCM: element.findElements('NCM').first.text,
      NVE: element.findElements('NVE').map((e) => e.text).toList(),
      CEST: element.findElements('CEST').isNotEmpty
          ? element.findElements('CEST').first.text
          : null,
      indEscala: element.findElements('indEscala').isNotEmpty
          ? indEscalaEnum
              .fromValue(element.findElements('indEscala').first.text)
          : null,
      CNPJFab: element.findElements('CNPJFab').isNotEmpty
          ? element.findElements('CNPJFab').first.text
          : null,
      cBenef: element.findElements('cBenef').isNotEmpty
          ? element.findElements('cBenef').first.text
          : null,
      EXTIPI: element.findElements('EXTIPI').isNotEmpty
          ? element.findElements('EXTIPI').first.text
          : null,
      CFOP: element.findElements('CFOP').first.text,
      uCom: element.findElements('uCom').first.text,
      qCom: element.findElements('qCom').first.text,
      vUnCom: element.findElements('vUnCom').first.text,
      vProd: element.findElements('vProd').first.text,
      cEANTrib: element.findElements('cEANTrib').first.text,
      cBarraTrib: element.findElements('cBarraTrib').isNotEmpty
          ? element.findElements('cBarraTrib').first.text
          : null,
      uTrib: element.findElements('uTrib').first.text,
      qTrib: element.findElements('qTrib').first.text,
      vUnTrib: element.findElements('vUnTrib').first.text,
      vFrete: element.findElements('vFrete').isNotEmpty
          ? element.findElements('vFrete').first.text
          : null,
      vSeg: element.findElements('vSeg').isNotEmpty
          ? element.findElements('vSeg').first.text
          : null,
      vDesc: element.findElements('vDesc').isNotEmpty
          ? element.findElements('vDesc').first.text
          : null,
      vOutro: element.findElements('vOutro').isNotEmpty
          ? element.findElements('vOutro').first.text
          : null,
      indTot: indTotEnum.fromValue(element.findElements('indTot').first.text),
      DI: element
          .findElements('DI')
          .map((e) => DIComplexType_prod.fromXml(e.toString(), name: "DI"))
          .toList(),
      detExport: element
          .findElements('detExport')
          .map((e) => detExportComplexType_prod.fromXml(e.toString(),
              name: "detExport"))
          .toList(),
      xPed: element.findElements('xPed').isNotEmpty
          ? element.findElements('xPed').first.text
          : null,
      nItemPed: element.findElements('nItemPed').isNotEmpty
          ? element.findElements('nItemPed').first.text
          : null,
      nFCI: element.findElements('nFCI').isNotEmpty
          ? element.findElements('nFCI').first.text
          : null,
      rastro: element
          .findElements('rastro')
          .map((e) =>
              rastroComplexType_prod.fromXml(e.toString(), name: "rastro"))
          .toList(),
      infProdNFF: element.findElements('infProdNFF').isNotEmpty
          ? infProdNFFComplexType_prod.fromXml(
              element.findElements('infProdNFF').first.toString(),
              name: "infProdNFF")
          : null,
      infProdEmb: element.findElements('infProdEmb').isNotEmpty
          ? infProdEmbComplexType_prod.fromXml(
              element.findElements('infProdEmb').first.toString(),
              name: "infProdEmb")
          : null,
      veicProd: element.findElements('veicProd').isNotEmpty
          ? veicProdComplexType_prod.fromXml(
              element.findElements('veicProd').first.toString(),
              name: "veicProd")
          : null,
      med: element.findElements('med').isNotEmpty
          ? medComplexType_prod.fromXml(
              element.findElements('med').first.toString(),
              name: "med")
          : null,
      arma: element.findElements('arma').isNotEmpty
          ? armaComplexType_prod.fromXml(
              element.findElements('arma').first.toString(),
              name: "arma")
          : null,
      comb: element.findElements('comb').isNotEmpty
          ? combComplexType_prod.fromXml(
              element.findElements('comb').first.toString(),
              name: "comb")
          : null,
      nRECOPI: element.findElements('nRECOPI').isNotEmpty
          ? element.findElements('nRECOPI').first.text
          : null,
    );
  }
  factory prodComplexType_det.fromJson(Map<String, dynamic> json) =>
      _$prodComplexType_detFromJson(json);
  Map<String, dynamic> toJson() => _$prodComplexType_detToJson(this);
}

List<prodComplexType_det> _prodComplexType_detListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => prodComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<prodComplexType_det>? _prodComplexType_detMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => prodComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _prodComplexType_detListToJson(
        List<prodComplexType_det> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _prodComplexType_detMaybeListToJson(
        List<prodComplexType_det>? list) =>
    list?.map((e) => e.toJson()).toList();
prodComplexType_det _prodComplexType_detFromJson(Map<String, dynamic> json) =>
    prodComplexType_det.fromJson(json);
prodComplexType_det? _prodComplexType_detMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? prodComplexType_det.fromJson(json) : null;
Map<String, dynamic> _prodComplexType_detToJson(prodComplexType_det instance) =>
    instance.toJson();
Map<String, dynamic>? _prodComplexType_detMaybeToJson(
        prodComplexType_det? instance) =>
    instance?.toJson();

@JsonSerializable()
class impostoComplexType_det {
  String? xmlns;
  String? vTotTrib;
  @JsonKey(
      fromJson: _ICMSComplexType_impostoMaybeFromJson,
      toJson: _ICMSComplexType_impostoMaybeToJson)
  ICMSComplexType_imposto? ICMS;
  @JsonKey(
      fromJson: _TIpiComplexTypeMaybeFromJson,
      toJson: _TIpiComplexTypeMaybeToJson)
  TIpiComplexType? IPI;
  @JsonKey(
      fromJson: _IIComplexType_impostoMaybeFromJson,
      toJson: _IIComplexType_impostoMaybeToJson)
  IIComplexType_imposto? II;
  @JsonKey(
      fromJson: _ISSQNComplexType_impostoMaybeFromJson,
      toJson: _ISSQNComplexType_impostoMaybeToJson)
  ISSQNComplexType_imposto? ISSQN;
  @JsonKey(
      fromJson: _PISComplexType_impostoMaybeFromJson,
      toJson: _PISComplexType_impostoMaybeToJson)
  PISComplexType_imposto? PIS;
  @JsonKey(
      fromJson: _PISSTComplexType_impostoMaybeFromJson,
      toJson: _PISSTComplexType_impostoMaybeToJson)
  PISSTComplexType_imposto? PISST;
  @JsonKey(
      fromJson: _COFINSComplexType_impostoMaybeFromJson,
      toJson: _COFINSComplexType_impostoMaybeToJson)
  COFINSComplexType_imposto? COFINS;
  @JsonKey(
      fromJson: _COFINSSTComplexType_impostoMaybeFromJson,
      toJson: _COFINSSTComplexType_impostoMaybeToJson)
  COFINSSTComplexType_imposto? COFINSST;
  @JsonKey(
      fromJson: _ICMSUFDestComplexType_impostoMaybeFromJson,
      toJson: _ICMSUFDestComplexType_impostoMaybeToJson)
  ICMSUFDestComplexType_imposto? ICMSUFDest;
  impostoComplexType_det(
      {this.xmlns,
      this.vTotTrib,
      this.ICMS,
      this.IPI,
      this.II,
      this.ISSQN,
      this.PIS,
      this.PISST,
      this.COFINS,
      this.COFINSST,
      this.ICMSUFDest}) {
    if ((vTotTrib == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vTotTrib.toString())) ==
        false) {
      throw Exception('Invalid value for vTotTrib - $vTotTrib');
    }
    ;
    if ((vTotTrib == null ||
            vTotTrib.toString().trim() == vTotTrib.toString()) ==
        false) {
      throw Exception('Invalid value for vTotTrib');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
  }
  impostoComplexType_det.unsafe(
      {this.xmlns,
      this.vTotTrib,
      this.ICMS,
      this.IPI,
      this.II,
      this.ISSQN,
      this.PIS,
      this.PISST,
      this.COFINS,
      this.COFINSST,
      this.ICMSUFDest});
  String toXml({String name = 'imposto', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (vTotTrib != null)
        xml.XmlElement(
            xml.XmlName('vTotTrib'), [], [xml.XmlText(vTotTrib.toString())]),
      if (ICMS != null)
        xml.XmlDocumentFragment.parse(
            ICMS!.toXml(name: "ICMS", pretty: pretty)),
      if (IPI != null)
        xml.XmlDocumentFragment.parse(IPI!.toXml(name: "IPI", pretty: pretty)),
      if (II != null)
        xml.XmlDocumentFragment.parse(II!.toXml(name: "II", pretty: pretty)),
      if (ISSQN != null)
        xml.XmlDocumentFragment.parse(
            ISSQN!.toXml(name: "ISSQN", pretty: pretty)),
      if (PIS != null)
        xml.XmlDocumentFragment.parse(PIS!.toXml(name: "PIS", pretty: pretty)),
      if (PISST != null)
        xml.XmlDocumentFragment.parse(
            PISST!.toXml(name: "PISST", pretty: pretty)),
      if (COFINS != null)
        xml.XmlDocumentFragment.parse(
            COFINS!.toXml(name: "COFINS", pretty: pretty)),
      if (COFINSST != null)
        xml.XmlDocumentFragment.parse(
            COFINSST!.toXml(name: "COFINSST", pretty: pretty)),
      if (ICMSUFDest != null)
        xml.XmlDocumentFragment.parse(
            ICMSUFDest!.toXml(name: "ICMSUFDest", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory impostoComplexType_det.fromXml(String xmlString,
      {String name = 'imposto'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return impostoComplexType_det.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vTotTrib: element.findElements('vTotTrib').isNotEmpty
          ? element.findElements('vTotTrib').first.text
          : null,
      ICMS: element.findElements('ICMS').isNotEmpty
          ? ICMSComplexType_imposto.fromXml(
              element.findElements('ICMS').first.toString(),
              name: "ICMS")
          : null,
      IPI: element.findElements('IPI').isNotEmpty
          ? TIpiComplexType.fromXml(
              element.findElements('IPI').first.toString(),
              name: "IPI")
          : null,
      II: element.findElements('II').isNotEmpty
          ? IIComplexType_imposto.fromXml(
              element.findElements('II').first.toString(),
              name: "II")
          : null,
      ISSQN: element.findElements('ISSQN').isNotEmpty
          ? ISSQNComplexType_imposto.fromXml(
              element.findElements('ISSQN').first.toString(),
              name: "ISSQN")
          : null,
      PIS: element.findElements('PIS').isNotEmpty
          ? PISComplexType_imposto.fromXml(
              element.findElements('PIS').first.toString(),
              name: "PIS")
          : null,
      PISST: element.findElements('PISST').isNotEmpty
          ? PISSTComplexType_imposto.fromXml(
              element.findElements('PISST').first.toString(),
              name: "PISST")
          : null,
      COFINS: element.findElements('COFINS').isNotEmpty
          ? COFINSComplexType_imposto.fromXml(
              element.findElements('COFINS').first.toString(),
              name: "COFINS")
          : null,
      COFINSST: element.findElements('COFINSST').isNotEmpty
          ? COFINSSTComplexType_imposto.fromXml(
              element.findElements('COFINSST').first.toString(),
              name: "COFINSST")
          : null,
      ICMSUFDest: element.findElements('ICMSUFDest').isNotEmpty
          ? ICMSUFDestComplexType_imposto.fromXml(
              element.findElements('ICMSUFDest').first.toString(),
              name: "ICMSUFDest")
          : null,
    );
  }
  factory impostoComplexType_det.fromJson(Map<String, dynamic> json) =>
      _$impostoComplexType_detFromJson(json);
  Map<String, dynamic> toJson() => _$impostoComplexType_detToJson(this);
}

List<impostoComplexType_det> _impostoComplexType_detListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => impostoComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<impostoComplexType_det>? _impostoComplexType_detMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => impostoComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _impostoComplexType_detListToJson(
        List<impostoComplexType_det> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _impostoComplexType_detMaybeListToJson(
        List<impostoComplexType_det>? list) =>
    list?.map((e) => e.toJson()).toList();
impostoComplexType_det _impostoComplexType_detFromJson(
        Map<String, dynamic> json) =>
    impostoComplexType_det.fromJson(json);
impostoComplexType_det? _impostoComplexType_detMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? impostoComplexType_det.fromJson(json) : null;
Map<String, dynamic> _impostoComplexType_detToJson(
        impostoComplexType_det instance) =>
    instance.toJson();
Map<String, dynamic>? _impostoComplexType_detMaybeToJson(
        impostoComplexType_det? instance) =>
    instance?.toJson();

@JsonSerializable()
class impostoDevolComplexType_det {
  String? xmlns;
  String pDevol;
  @JsonKey(
      fromJson: _IPIComplexType_impostoDevolFromJson,
      toJson: _IPIComplexType_impostoDevolToJson)
  IPIComplexType_impostoDevol IPI;
  impostoDevolComplexType_det(
      {this.xmlns, required this.pDevol, required this.IPI}) {
    if ((RegExp(r'0(\.[0-9]{2})?|100(\.00)?|[1-9]{1}[0-9]{0,1}(\.[0-9]{2})?')
            .hasMatch(pDevol.toString())) ==
        false) {
      throw Exception('Invalid value for pDevol - $pDevol');
    }
    ;
    if ((pDevol.toString().trim() == pDevol.toString()) == false) {
      throw Exception('Invalid value for pDevol');
    }
    ;
  }
  impostoDevolComplexType_det.unsafe(
      {this.xmlns, required this.pDevol, required this.IPI});
  String toXml(
      {String name = 'impostoDevol', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('pDevol'), [], [xml.XmlText(pDevol.toString())]),
      xml.XmlDocumentFragment.parse(IPI.toXml(name: "IPI", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory impostoDevolComplexType_det.fromXml(String xmlString,
      {String name = 'impostoDevol'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return impostoDevolComplexType_det.unsafe(
      xmlns: element.getAttribute('xmlns'),
      pDevol: element.findElements('pDevol').first.text,
      IPI: IPIComplexType_impostoDevol.fromXml(
          element.findElements('IPI').first.toString(),
          name: "IPI"),
    );
  }
  factory impostoDevolComplexType_det.fromJson(Map<String, dynamic> json) =>
      _$impostoDevolComplexType_detFromJson(json);
  Map<String, dynamic> toJson() => _$impostoDevolComplexType_detToJson(this);
}

List<impostoDevolComplexType_det> _impostoDevolComplexType_detListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            impostoDevolComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<impostoDevolComplexType_det>?
    _impostoDevolComplexType_detMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            impostoDevolComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _impostoDevolComplexType_detListToJson(
        List<impostoDevolComplexType_det> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _impostoDevolComplexType_detMaybeListToJson(
        List<impostoDevolComplexType_det>? list) =>
    list?.map((e) => e.toJson()).toList();
impostoDevolComplexType_det _impostoDevolComplexType_detFromJson(
        Map<String, dynamic> json) =>
    impostoDevolComplexType_det.fromJson(json);
impostoDevolComplexType_det? _impostoDevolComplexType_detMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? impostoDevolComplexType_det.fromJson(json) : null;
Map<String, dynamic> _impostoDevolComplexType_detToJson(
        impostoDevolComplexType_det instance) =>
    instance.toJson();
Map<String, dynamic>? _impostoDevolComplexType_detMaybeToJson(
        impostoDevolComplexType_det? instance) =>
    instance?.toJson();

@JsonSerializable()
class obsItemComplexType_det {
  String? xmlns;
  @JsonKey(
      fromJson: _obsContComplexType_obsItemMaybeFromJson,
      toJson: _obsContComplexType_obsItemMaybeToJson)
  obsContComplexType_obsItem? obsCont;
  @JsonKey(
      fromJson: _obsFiscoComplexType_obsItemMaybeFromJson,
      toJson: _obsFiscoComplexType_obsItemMaybeToJson)
  obsFiscoComplexType_obsItem? obsFisco;
  obsItemComplexType_det({this.xmlns, this.obsCont, this.obsFisco});
  obsItemComplexType_det.unsafe({this.xmlns, this.obsCont, this.obsFisco});
  String toXml({String name = 'obsItem', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (obsCont != null)
        xml.XmlDocumentFragment.parse(
            obsCont!.toXml(name: "obsCont", pretty: pretty)),
      if (obsFisco != null)
        xml.XmlDocumentFragment.parse(
            obsFisco!.toXml(name: "obsFisco", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory obsItemComplexType_det.fromXml(String xmlString,
      {String name = 'obsItem'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return obsItemComplexType_det.unsafe(
      xmlns: element.getAttribute('xmlns'),
      obsCont: element.findElements('obsCont').isNotEmpty
          ? obsContComplexType_obsItem.fromXml(
              element.findElements('obsCont').first.toString(),
              name: "obsCont")
          : null,
      obsFisco: element.findElements('obsFisco').isNotEmpty
          ? obsFiscoComplexType_obsItem.fromXml(
              element.findElements('obsFisco').first.toString(),
              name: "obsFisco")
          : null,
    );
  }
  factory obsItemComplexType_det.fromJson(Map<String, dynamic> json) =>
      _$obsItemComplexType_detFromJson(json);
  Map<String, dynamic> toJson() => _$obsItemComplexType_detToJson(this);
}

List<obsItemComplexType_det> _obsItemComplexType_detListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => obsItemComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<obsItemComplexType_det>? _obsItemComplexType_detMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => obsItemComplexType_det.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _obsItemComplexType_detListToJson(
        List<obsItemComplexType_det> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _obsItemComplexType_detMaybeListToJson(
        List<obsItemComplexType_det>? list) =>
    list?.map((e) => e.toJson()).toList();
obsItemComplexType_det _obsItemComplexType_detFromJson(
        Map<String, dynamic> json) =>
    obsItemComplexType_det.fromJson(json);
obsItemComplexType_det? _obsItemComplexType_detMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? obsItemComplexType_det.fromJson(json) : null;
Map<String, dynamic> _obsItemComplexType_detToJson(
        obsItemComplexType_det instance) =>
    instance.toJson();
Map<String, dynamic>? _obsItemComplexType_detMaybeToJson(
        obsItemComplexType_det? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSTotComplexType_total {
  String? xmlns;
  String vBC;
  String vICMS;
  String vICMSDeson;
  String? vFCPUFDest;
  String? vICMSUFDest;
  String? vICMSUFRemet;
  String vFCP;
  String vBCST;
  String vST;
  String vFCPST;
  String vFCPSTRet;
  String vProd;
  String vFrete;
  String vSeg;
  String vDesc;
  String vII;
  String vIPI;
  String vIPIDevol;
  String vPIS;
  String vCOFINS;
  String vOutro;
  String vNF;
  String? vTotTrib;
  ICMSTotComplexType_total(
      {this.xmlns,
      required this.vBC,
      required this.vICMS,
      required this.vICMSDeson,
      this.vFCPUFDest,
      this.vICMSUFDest,
      this.vICMSUFRemet,
      required this.vFCP,
      required this.vBCST,
      required this.vST,
      required this.vFCPST,
      required this.vFCPSTRet,
      required this.vProd,
      required this.vFrete,
      required this.vSeg,
      required this.vDesc,
      required this.vII,
      required this.vIPI,
      required this.vIPIDevol,
      required this.vPIS,
      required this.vCOFINS,
      required this.vOutro,
      required this.vNF,
      this.vTotTrib}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
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
            .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson.toString().trim() == vICMSDeson.toString()) == false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((vFCPUFDest == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPUFDest - $vFCPUFDest');
    }
    ;
    if ((vFCPUFDest == null ||
            vFCPUFDest.toString().trim() == vFCPUFDest.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPUFDest');
    }
    ;
    if ((vICMSUFDest == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSUFDest - $vICMSUFDest');
    }
    ;
    if ((vICMSUFDest == null ||
            vICMSUFDest.toString().trim() == vICMSUFDest.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSUFDest');
    }
    ;
    if ((vICMSUFRemet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSUFRemet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSUFRemet - $vICMSUFRemet');
    }
    ;
    if ((vICMSUFRemet == null ||
            vICMSUFRemet.toString().trim() == vICMSUFRemet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSUFRemet');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
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
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST.toString().trim() == vFCPST.toString()) == false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet - $vFCPSTRet');
    }
    ;
    if ((vFCPSTRet.toString().trim() == vFCPSTRet.toString()) == false) {
      throw Exception('Invalid value for vFCPSTRet');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vProd.toString())) ==
        false) {
      throw Exception('Invalid value for vProd - $vProd');
    }
    ;
    if ((vProd.toString().trim() == vProd.toString()) == false) {
      throw Exception('Invalid value for vProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vFrete.toString())) ==
        false) {
      throw Exception('Invalid value for vFrete - $vFrete');
    }
    ;
    if ((vFrete.toString().trim() == vFrete.toString()) == false) {
      throw Exception('Invalid value for vFrete');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vSeg.toString())) ==
        false) {
      throw Exception('Invalid value for vSeg - $vSeg');
    }
    ;
    if ((vSeg.toString().trim() == vSeg.toString()) == false) {
      throw Exception('Invalid value for vSeg');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vDesc.toString())) ==
        false) {
      throw Exception('Invalid value for vDesc - $vDesc');
    }
    ;
    if ((vDesc.toString().trim() == vDesc.toString()) == false) {
      throw Exception('Invalid value for vDesc');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vII.toString())) ==
        false) {
      throw Exception('Invalid value for vII - $vII');
    }
    ;
    if ((vII.toString().trim() == vII.toString()) == false) {
      throw Exception('Invalid value for vII');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vIPI.toString())) ==
        false) {
      throw Exception('Invalid value for vIPI - $vIPI');
    }
    ;
    if ((vIPI.toString().trim() == vIPI.toString()) == false) {
      throw Exception('Invalid value for vIPI');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vIPIDevol.toString())) ==
        false) {
      throw Exception('Invalid value for vIPIDevol - $vIPIDevol');
    }
    ;
    if ((vIPIDevol.toString().trim() == vIPIDevol.toString()) == false) {
      throw Exception('Invalid value for vIPIDevol');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS.toString().trim() == vCOFINS.toString()) == false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vOutro.toString())) ==
        false) {
      throw Exception('Invalid value for vOutro - $vOutro');
    }
    ;
    if ((vOutro.toString().trim() == vOutro.toString()) == false) {
      throw Exception('Invalid value for vOutro');
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
    if ((vTotTrib == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vTotTrib.toString())) ==
        false) {
      throw Exception('Invalid value for vTotTrib - $vTotTrib');
    }
    ;
    if ((vTotTrib == null ||
            vTotTrib.toString().trim() == vTotTrib.toString()) ==
        false) {
      throw Exception('Invalid value for vTotTrib');
    }
    ;
  }
  ICMSTotComplexType_total.unsafe(
      {this.xmlns,
      required this.vBC,
      required this.vICMS,
      required this.vICMSDeson,
      this.vFCPUFDest,
      this.vICMSUFDest,
      this.vICMSUFRemet,
      required this.vFCP,
      required this.vBCST,
      required this.vST,
      required this.vFCPST,
      required this.vFCPSTRet,
      required this.vProd,
      required this.vFrete,
      required this.vSeg,
      required this.vDesc,
      required this.vII,
      required this.vIPI,
      required this.vIPIDevol,
      required this.vPIS,
      required this.vCOFINS,
      required this.vOutro,
      required this.vNF,
      this.vTotTrib});
  String toXml({String name = 'ICMSTot', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSDeson'), [], [xml.XmlText(vICMSDeson.toString())]),
      if (vFCPUFDest != null)
        xml.XmlElement(xml.XmlName('vFCPUFDest'), [],
            [xml.XmlText(vFCPUFDest.toString())]),
      if (vICMSUFDest != null)
        xml.XmlElement(xml.XmlName('vICMSUFDest'), [],
            [xml.XmlText(vICMSUFDest.toString())]),
      if (vICMSUFRemet != null)
        xml.XmlElement(xml.XmlName('vICMSUFRemet'), [],
            [xml.XmlText(vICMSUFRemet.toString())]),
      xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(xml.XmlName('vST'), [], [xml.XmlText(vST.toString())]),
      xml.XmlElement(
          xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      xml.XmlElement(
          xml.XmlName('vFCPSTRet'), [], [xml.XmlText(vFCPSTRet.toString())]),
      xml.XmlElement(xml.XmlName('vProd'), [], [xml.XmlText(vProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vFrete'), [], [xml.XmlText(vFrete.toString())]),
      xml.XmlElement(xml.XmlName('vSeg'), [], [xml.XmlText(vSeg.toString())]),
      xml.XmlElement(xml.XmlName('vDesc'), [], [xml.XmlText(vDesc.toString())]),
      xml.XmlElement(xml.XmlName('vII'), [], [xml.XmlText(vII.toString())]),
      xml.XmlElement(xml.XmlName('vIPI'), [], [xml.XmlText(vIPI.toString())]),
      xml.XmlElement(
          xml.XmlName('vIPIDevol'), [], [xml.XmlText(vIPIDevol.toString())]),
      xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())]),
      xml.XmlElement(
          xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())]),
      xml.XmlElement(
          xml.XmlName('vOutro'), [], [xml.XmlText(vOutro.toString())]),
      xml.XmlElement(xml.XmlName('vNF'), [], [xml.XmlText(vNF.toString())]),
      if (vTotTrib != null)
        xml.XmlElement(
            xml.XmlName('vTotTrib'), [], [xml.XmlText(vTotTrib.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSTotComplexType_total.fromXml(String xmlString,
      {String name = 'ICMSTot'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSTotComplexType_total.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBC: element.findElements('vBC').first.text,
      vICMS: element.findElements('vICMS').first.text,
      vICMSDeson: element.findElements('vICMSDeson').first.text,
      vFCPUFDest: element.findElements('vFCPUFDest').isNotEmpty
          ? element.findElements('vFCPUFDest').first.text
          : null,
      vICMSUFDest: element.findElements('vICMSUFDest').isNotEmpty
          ? element.findElements('vICMSUFDest').first.text
          : null,
      vICMSUFRemet: element.findElements('vICMSUFRemet').isNotEmpty
          ? element.findElements('vICMSUFRemet').first.text
          : null,
      vFCP: element.findElements('vFCP').first.text,
      vBCST: element.findElements('vBCST').first.text,
      vST: element.findElements('vST').first.text,
      vFCPST: element.findElements('vFCPST').first.text,
      vFCPSTRet: element.findElements('vFCPSTRet').first.text,
      vProd: element.findElements('vProd').first.text,
      vFrete: element.findElements('vFrete').first.text,
      vSeg: element.findElements('vSeg').first.text,
      vDesc: element.findElements('vDesc').first.text,
      vII: element.findElements('vII').first.text,
      vIPI: element.findElements('vIPI').first.text,
      vIPIDevol: element.findElements('vIPIDevol').first.text,
      vPIS: element.findElements('vPIS').first.text,
      vCOFINS: element.findElements('vCOFINS').first.text,
      vOutro: element.findElements('vOutro').first.text,
      vNF: element.findElements('vNF').first.text,
      vTotTrib: element.findElements('vTotTrib').isNotEmpty
          ? element.findElements('vTotTrib').first.text
          : null,
    );
  }
  factory ICMSTotComplexType_total.fromJson(Map<String, dynamic> json) =>
      _$ICMSTotComplexType_totalFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSTotComplexType_totalToJson(this);
}

List<ICMSTotComplexType_total> _ICMSTotComplexType_totalListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => ICMSTotComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSTotComplexType_total>? _ICMSTotComplexType_totalMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ICMSTotComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSTotComplexType_totalListToJson(
        List<ICMSTotComplexType_total> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSTotComplexType_totalMaybeListToJson(
        List<ICMSTotComplexType_total>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSTotComplexType_total _ICMSTotComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    ICMSTotComplexType_total.fromJson(json);
ICMSTotComplexType_total? _ICMSTotComplexType_totalMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSTotComplexType_total.fromJson(json) : null;
Map<String, dynamic> _ICMSTotComplexType_totalToJson(
        ICMSTotComplexType_total instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSTotComplexType_totalMaybeToJson(
        ICMSTotComplexType_total? instance) =>
    instance?.toJson();

@JsonSerializable()
class ISSQNtotComplexType_total {
  String? xmlns;
  String? vServ;
  String? vBC;
  String? vISS;
  String? vPIS;
  String? vCOFINS;
  String dCompet;
  String? vDeducao;
  String? vOutro;
  String? vDescIncond;
  String? vDescCond;
  String? vISSRet;
  @JsonKey(
      fromJson: _cRegTribEnumFromMaybeValue, toJson: _cRegTribEnumToMaybeValue)
  cRegTribEnum? cRegTrib;
  ISSQNtotComplexType_total(
      {this.xmlns,
      this.vServ,
      this.vBC,
      this.vISS,
      this.vPIS,
      this.vCOFINS,
      required this.dCompet,
      this.vDeducao,
      this.vOutro,
      this.vDescIncond,
      this.vDescCond,
      this.vISSRet,
      this.cRegTrib}) {
    if ((vServ == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vServ.toString())) ==
        false) {
      throw Exception('Invalid value for vServ - $vServ');
    }
    ;
    if ((vServ == null || vServ.toString().trim() == vServ.toString()) ==
        false) {
      throw Exception('Invalid value for vServ');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((vISS == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vISS.toString())) ==
        false) {
      throw Exception('Invalid value for vISS - $vISS');
    }
    ;
    if ((vISS == null || vISS.toString().trim() == vISS.toString()) == false) {
      throw Exception('Invalid value for vISS');
    }
    ;
    if ((vPIS == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS == null || vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
    if ((vCOFINS == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS == null || vCOFINS.toString().trim() == vCOFINS.toString()) ==
        false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
            .hasMatch(dCompet.toString())) ==
        false) {
      throw Exception('Invalid value for dCompet - $dCompet');
    }
    ;
    if ((dCompet.toString().trim() == dCompet.toString()) == false) {
      throw Exception('Invalid value for dCompet');
    }
    ;
    if ((vDeducao == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDeducao.toString())) ==
        false) {
      throw Exception('Invalid value for vDeducao - $vDeducao');
    }
    ;
    if ((vDeducao == null ||
            vDeducao.toString().trim() == vDeducao.toString()) ==
        false) {
      throw Exception('Invalid value for vDeducao');
    }
    ;
    if ((vOutro == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vOutro.toString())) ==
        false) {
      throw Exception('Invalid value for vOutro - $vOutro');
    }
    ;
    if ((vOutro == null || vOutro.toString().trim() == vOutro.toString()) ==
        false) {
      throw Exception('Invalid value for vOutro');
    }
    ;
    if ((vDescIncond == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDescIncond.toString())) ==
        false) {
      throw Exception('Invalid value for vDescIncond - $vDescIncond');
    }
    ;
    if ((vDescIncond == null ||
            vDescIncond.toString().trim() == vDescIncond.toString()) ==
        false) {
      throw Exception('Invalid value for vDescIncond');
    }
    ;
    if ((vDescCond == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDescCond.toString())) ==
        false) {
      throw Exception('Invalid value for vDescCond - $vDescCond');
    }
    ;
    if ((vDescCond == null ||
            vDescCond.toString().trim() == vDescCond.toString()) ==
        false) {
      throw Exception('Invalid value for vDescCond');
    }
    ;
    if ((vISSRet == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vISSRet.toString())) ==
        false) {
      throw Exception('Invalid value for vISSRet - $vISSRet');
    }
    ;
    if ((vISSRet == null || vISSRet.toString().trim() == vISSRet.toString()) ==
        false) {
      throw Exception('Invalid value for vISSRet');
    }
    ;
    if ((cRegTrib == null ||
            cRegTrib.toString().trim() == cRegTrib.toString()) ==
        false) {
      throw Exception('Invalid value for cRegTrib');
    }
    ;
  }
  ISSQNtotComplexType_total.unsafe(
      {this.xmlns,
      this.vServ,
      this.vBC,
      this.vISS,
      this.vPIS,
      this.vCOFINS,
      required this.dCompet,
      this.vDeducao,
      this.vOutro,
      this.vDescIncond,
      this.vDescCond,
      this.vISSRet,
      this.cRegTrib});
  String toXml({String name = 'ISSQNtot', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (vServ != null)
        xml.XmlElement(
            xml.XmlName('vServ'), [], [xml.XmlText(vServ.toString())]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (vISS != null)
        xml.XmlElement(xml.XmlName('vISS'), [], [xml.XmlText(vISS.toString())]),
      if (vPIS != null)
        xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())]),
      if (vCOFINS != null)
        xml.XmlElement(
            xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())]),
      xml.XmlElement(
          xml.XmlName('dCompet'), [], [xml.XmlText(dCompet.toString())]),
      if (vDeducao != null)
        xml.XmlElement(
            xml.XmlName('vDeducao'), [], [xml.XmlText(vDeducao.toString())]),
      if (vOutro != null)
        xml.XmlElement(
            xml.XmlName('vOutro'), [], [xml.XmlText(vOutro.toString())]),
      if (vDescIncond != null)
        xml.XmlElement(xml.XmlName('vDescIncond'), [],
            [xml.XmlText(vDescIncond.toString())]),
      if (vDescCond != null)
        xml.XmlElement(
            xml.XmlName('vDescCond'), [], [xml.XmlText(vDescCond.toString())]),
      if (vISSRet != null)
        xml.XmlElement(
            xml.XmlName('vISSRet'), [], [xml.XmlText(vISSRet.toString())]),
      if (cRegTrib != null)
        xml.XmlElement(
            xml.XmlName('cRegTrib'), [], [xml.XmlText(cRegTrib!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ISSQNtotComplexType_total.fromXml(String xmlString,
      {String name = 'ISSQNtot'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ISSQNtotComplexType_total.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vServ: element.findElements('vServ').isNotEmpty
          ? element.findElements('vServ').first.text
          : null,
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      vISS: element.findElements('vISS').isNotEmpty
          ? element.findElements('vISS').first.text
          : null,
      vPIS: element.findElements('vPIS').isNotEmpty
          ? element.findElements('vPIS').first.text
          : null,
      vCOFINS: element.findElements('vCOFINS').isNotEmpty
          ? element.findElements('vCOFINS').first.text
          : null,
      dCompet: element.findElements('dCompet').first.text,
      vDeducao: element.findElements('vDeducao').isNotEmpty
          ? element.findElements('vDeducao').first.text
          : null,
      vOutro: element.findElements('vOutro').isNotEmpty
          ? element.findElements('vOutro').first.text
          : null,
      vDescIncond: element.findElements('vDescIncond').isNotEmpty
          ? element.findElements('vDescIncond').first.text
          : null,
      vDescCond: element.findElements('vDescCond').isNotEmpty
          ? element.findElements('vDescCond').first.text
          : null,
      vISSRet: element.findElements('vISSRet').isNotEmpty
          ? element.findElements('vISSRet').first.text
          : null,
      cRegTrib: element.findElements('cRegTrib').isNotEmpty
          ? cRegTribEnum.fromValue(element.findElements('cRegTrib').first.text)
          : null,
    );
  }
  factory ISSQNtotComplexType_total.fromJson(Map<String, dynamic> json) =>
      _$ISSQNtotComplexType_totalFromJson(json);
  Map<String, dynamic> toJson() => _$ISSQNtotComplexType_totalToJson(this);
}

List<ISSQNtotComplexType_total> _ISSQNtotComplexType_totalListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ISSQNtotComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<ISSQNtotComplexType_total>? _ISSQNtotComplexType_totalMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ISSQNtotComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ISSQNtotComplexType_totalListToJson(
        List<ISSQNtotComplexType_total> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ISSQNtotComplexType_totalMaybeListToJson(
        List<ISSQNtotComplexType_total>? list) =>
    list?.map((e) => e.toJson()).toList();
ISSQNtotComplexType_total _ISSQNtotComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    ISSQNtotComplexType_total.fromJson(json);
ISSQNtotComplexType_total? _ISSQNtotComplexType_totalMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ISSQNtotComplexType_total.fromJson(json) : null;
Map<String, dynamic> _ISSQNtotComplexType_totalToJson(
        ISSQNtotComplexType_total instance) =>
    instance.toJson();
Map<String, dynamic>? _ISSQNtotComplexType_totalMaybeToJson(
        ISSQNtotComplexType_total? instance) =>
    instance?.toJson();

@JsonSerializable()
class retTribComplexType_total {
  String? xmlns;
  String? vRetPIS;
  String? vRetCOFINS;
  String? vRetCSLL;
  String? vBCIRRF;
  String? vIRRF;
  String? vBCRetPrev;
  String? vRetPrev;
  retTribComplexType_total(
      {this.xmlns,
      this.vRetPIS,
      this.vRetCOFINS,
      this.vRetCSLL,
      this.vBCIRRF,
      this.vIRRF,
      this.vBCRetPrev,
      this.vRetPrev}) {
    if ((vRetPIS == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vRetPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vRetPIS - $vRetPIS');
    }
    ;
    if ((vRetPIS == null || vRetPIS.toString().trim() == vRetPIS.toString()) ==
        false) {
      throw Exception('Invalid value for vRetPIS');
    }
    ;
    if ((vRetCOFINS == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vRetCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vRetCOFINS - $vRetCOFINS');
    }
    ;
    if ((vRetCOFINS == null ||
            vRetCOFINS.toString().trim() == vRetCOFINS.toString()) ==
        false) {
      throw Exception('Invalid value for vRetCOFINS');
    }
    ;
    if ((vRetCSLL == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vRetCSLL.toString())) ==
        false) {
      throw Exception('Invalid value for vRetCSLL - $vRetCSLL');
    }
    ;
    if ((vRetCSLL == null ||
            vRetCSLL.toString().trim() == vRetCSLL.toString()) ==
        false) {
      throw Exception('Invalid value for vRetCSLL');
    }
    ;
    if ((vBCIRRF == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCIRRF.toString())) ==
        false) {
      throw Exception('Invalid value for vBCIRRF - $vBCIRRF');
    }
    ;
    if ((vBCIRRF == null || vBCIRRF.toString().trim() == vBCIRRF.toString()) ==
        false) {
      throw Exception('Invalid value for vBCIRRF');
    }
    ;
    if ((vIRRF == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vIRRF.toString())) ==
        false) {
      throw Exception('Invalid value for vIRRF - $vIRRF');
    }
    ;
    if ((vIRRF == null || vIRRF.toString().trim() == vIRRF.toString()) ==
        false) {
      throw Exception('Invalid value for vIRRF');
    }
    ;
    if ((vBCRetPrev == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCRetPrev.toString())) ==
        false) {
      throw Exception('Invalid value for vBCRetPrev - $vBCRetPrev');
    }
    ;
    if ((vBCRetPrev == null ||
            vBCRetPrev.toString().trim() == vBCRetPrev.toString()) ==
        false) {
      throw Exception('Invalid value for vBCRetPrev');
    }
    ;
    if ((vRetPrev == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vRetPrev.toString())) ==
        false) {
      throw Exception('Invalid value for vRetPrev - $vRetPrev');
    }
    ;
    if ((vRetPrev == null ||
            vRetPrev.toString().trim() == vRetPrev.toString()) ==
        false) {
      throw Exception('Invalid value for vRetPrev');
    }
    ;
  }
  retTribComplexType_total.unsafe(
      {this.xmlns,
      this.vRetPIS,
      this.vRetCOFINS,
      this.vRetCSLL,
      this.vBCIRRF,
      this.vIRRF,
      this.vBCRetPrev,
      this.vRetPrev});
  String toXml({String name = 'retTrib', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (vRetPIS != null)
        xml.XmlElement(
            xml.XmlName('vRetPIS'), [], [xml.XmlText(vRetPIS.toString())]),
      if (vRetCOFINS != null)
        xml.XmlElement(xml.XmlName('vRetCOFINS'), [],
            [xml.XmlText(vRetCOFINS.toString())]),
      if (vRetCSLL != null)
        xml.XmlElement(
            xml.XmlName('vRetCSLL'), [], [xml.XmlText(vRetCSLL.toString())]),
      if (vBCIRRF != null)
        xml.XmlElement(
            xml.XmlName('vBCIRRF'), [], [xml.XmlText(vBCIRRF.toString())]),
      if (vIRRF != null)
        xml.XmlElement(
            xml.XmlName('vIRRF'), [], [xml.XmlText(vIRRF.toString())]),
      if (vBCRetPrev != null)
        xml.XmlElement(xml.XmlName('vBCRetPrev'), [],
            [xml.XmlText(vBCRetPrev.toString())]),
      if (vRetPrev != null)
        xml.XmlElement(
            xml.XmlName('vRetPrev'), [], [xml.XmlText(vRetPrev.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory retTribComplexType_total.fromXml(String xmlString,
      {String name = 'retTrib'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return retTribComplexType_total.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vRetPIS: element.findElements('vRetPIS').isNotEmpty
          ? element.findElements('vRetPIS').first.text
          : null,
      vRetCOFINS: element.findElements('vRetCOFINS').isNotEmpty
          ? element.findElements('vRetCOFINS').first.text
          : null,
      vRetCSLL: element.findElements('vRetCSLL').isNotEmpty
          ? element.findElements('vRetCSLL').first.text
          : null,
      vBCIRRF: element.findElements('vBCIRRF').isNotEmpty
          ? element.findElements('vBCIRRF').first.text
          : null,
      vIRRF: element.findElements('vIRRF').isNotEmpty
          ? element.findElements('vIRRF').first.text
          : null,
      vBCRetPrev: element.findElements('vBCRetPrev').isNotEmpty
          ? element.findElements('vBCRetPrev').first.text
          : null,
      vRetPrev: element.findElements('vRetPrev').isNotEmpty
          ? element.findElements('vRetPrev').first.text
          : null,
    );
  }
  factory retTribComplexType_total.fromJson(Map<String, dynamic> json) =>
      _$retTribComplexType_totalFromJson(json);
  Map<String, dynamic> toJson() => _$retTribComplexType_totalToJson(this);
}

List<retTribComplexType_total> _retTribComplexType_totalListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => retTribComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<retTribComplexType_total>? _retTribComplexType_totalMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => retTribComplexType_total.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _retTribComplexType_totalListToJson(
        List<retTribComplexType_total> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _retTribComplexType_totalMaybeListToJson(
        List<retTribComplexType_total>? list) =>
    list?.map((e) => e.toJson()).toList();
retTribComplexType_total _retTribComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    retTribComplexType_total.fromJson(json);
retTribComplexType_total? _retTribComplexType_totalMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? retTribComplexType_total.fromJson(json) : null;
Map<String, dynamic> _retTribComplexType_totalToJson(
        retTribComplexType_total instance) =>
    instance.toJson();
Map<String, dynamic>? _retTribComplexType_totalMaybeToJson(
        retTribComplexType_total? instance) =>
    instance?.toJson();

@JsonSerializable()
class transportaComplexType_transp {
  String? xmlns;
  String? CNPJ;
  String? CPF;
  String? xNome;
  String? IE;
  String? xEnder;
  String? xMun;
  @JsonKey(fromJson: _UFEnumFromMaybeValue, toJson: _UFEnumToMaybeValue)
  UFEnum? UF;
  transportaComplexType_transp(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.xNome,
      this.IE,
      this.xEnder,
      this.xMun,
      this.UF}) {
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
    if ((xNome == null || xNome.toString().length <= 60) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null || xNome.toString().length >= 2) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xNome.toString())) ==
        false) {
      throw Exception('Invalid value for xNome - $xNome');
    }
    ;
    if ((xNome == null || xNome.toString().trim() == xNome.toString()) ==
        false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((IE == null || IE.toString().length <= 14) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((IE == null || RegExp(r'ISENTO|[0-9]{2,14}').hasMatch(IE.toString())) ==
        false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE == null || IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((xEnder == null || xEnder.toString().length <= 60) == false) {
      throw Exception('Invalid value for xEnder');
    }
    ;
    if ((xEnder == null || xEnder.toString().length >= 1) == false) {
      throw Exception('Invalid value for xEnder');
    }
    ;
    if ((xEnder == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xEnder.toString())) ==
        false) {
      throw Exception('Invalid value for xEnder - $xEnder');
    }
    ;
    if ((xEnder == null || xEnder.toString().trim() == xEnder.toString()) ==
        false) {
      throw Exception('Invalid value for xEnder');
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
    if ((UF == null || UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
  }
  transportaComplexType_transp.unsafe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.xNome,
      this.IE,
      this.xEnder,
      this.xMun,
      this.UF});
  String toXml(
      {String name = 'transporta', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (xNome != null)
        xml.XmlElement(
            xml.XmlName('xNome'), [], [xml.XmlText(xNome.toString())]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      if (xEnder != null)
        xml.XmlElement(
            xml.XmlName('xEnder'), [], [xml.XmlText(xEnder.toString())]),
      if (xMun != null)
        xml.XmlElement(xml.XmlName('xMun'), [], [xml.XmlText(xMun.toString())]),
      if (UF != null)
        xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory transportaComplexType_transp.fromXml(String xmlString,
      {String name = 'transporta'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return transportaComplexType_transp.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      xNome: element.findElements('xNome').isNotEmpty
          ? element.findElements('xNome').first.text
          : null,
      IE: element.findElements('IE').isNotEmpty
          ? element.findElements('IE').first.text
          : null,
      xEnder: element.findElements('xEnder').isNotEmpty
          ? element.findElements('xEnder').first.text
          : null,
      xMun: element.findElements('xMun').isNotEmpty
          ? element.findElements('xMun').first.text
          : null,
      UF: element.findElements('UF').isNotEmpty
          ? UFEnum.fromValue(element.findElements('UF').first.text)
          : null,
    );
  }
  factory transportaComplexType_transp.fromJson(Map<String, dynamic> json) =>
      _$transportaComplexType_transpFromJson(json);
  Map<String, dynamic> toJson() => _$transportaComplexType_transpToJson(this);
}

List<transportaComplexType_transp> _transportaComplexType_transpListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            transportaComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<transportaComplexType_transp>?
    _transportaComplexType_transpMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            transportaComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _transportaComplexType_transpListToJson(
        List<transportaComplexType_transp> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _transportaComplexType_transpMaybeListToJson(
        List<transportaComplexType_transp>? list) =>
    list?.map((e) => e.toJson()).toList();
transportaComplexType_transp _transportaComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    transportaComplexType_transp.fromJson(json);
transportaComplexType_transp? _transportaComplexType_transpMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? transportaComplexType_transp.fromJson(json) : null;
Map<String, dynamic> _transportaComplexType_transpToJson(
        transportaComplexType_transp instance) =>
    instance.toJson();
Map<String, dynamic>? _transportaComplexType_transpMaybeToJson(
        transportaComplexType_transp? instance) =>
    instance?.toJson();

@JsonSerializable()
class retTranspComplexType_transp {
  String? xmlns;
  String vServ;
  String vBCRet;
  String pICMSRet;
  String vICMSRet;
  String CFOP;
  String cMunFG;
  retTranspComplexType_transp(
      {this.xmlns,
      required this.vServ,
      required this.vBCRet,
      required this.pICMSRet,
      required this.vICMSRet,
      required this.CFOP,
      required this.cMunFG}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vServ.toString())) ==
        false) {
      throw Exception('Invalid value for vServ - $vServ');
    }
    ;
    if ((vServ.toString().trim() == vServ.toString()) == false) {
      throw Exception('Invalid value for vServ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCRet - $vBCRet');
    }
    ;
    if ((vBCRet.toString().trim() == vBCRet.toString()) == false) {
      throw Exception('Invalid value for vBCRet');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSRet.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSRet - $pICMSRet');
    }
    ;
    if ((pICMSRet.toString().trim() == pICMSRet.toString()) == false) {
      throw Exception('Invalid value for pICMSRet');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSRet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSRet - $vICMSRet');
    }
    ;
    if ((vICMSRet.toString().trim() == vICMSRet.toString()) == false) {
      throw Exception('Invalid value for vICMSRet');
    }
    ;
    if ((RegExp(r'[1,2,3,5,6,7]{1}[0-9]{3}').hasMatch(CFOP.toString())) ==
        false) {
      throw Exception('Invalid value for CFOP - $CFOP');
    }
    ;
    if ((CFOP.toString().trim() == CFOP.toString()) == false) {
      throw Exception('Invalid value for CFOP');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMunFG.toString())) == false) {
      throw Exception('Invalid value for cMunFG - $cMunFG');
    }
    ;
    if ((cMunFG.toString().trim() == cMunFG.toString()) == false) {
      throw Exception('Invalid value for cMunFG');
    }
    ;
  }
  retTranspComplexType_transp.unsafe(
      {this.xmlns,
      required this.vServ,
      required this.vBCRet,
      required this.pICMSRet,
      required this.vICMSRet,
      required this.CFOP,
      required this.cMunFG});
  String toXml(
      {String name = 'retTransp', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('vServ'), [], [xml.XmlText(vServ.toString())]),
      xml.XmlElement(
          xml.XmlName('vBCRet'), [], [xml.XmlText(vBCRet.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSRet'), [], [xml.XmlText(pICMSRet.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSRet'), [], [xml.XmlText(vICMSRet.toString())]),
      xml.XmlElement(xml.XmlName('CFOP'), [], [xml.XmlText(CFOP.toString())]),
      xml.XmlElement(
          xml.XmlName('cMunFG'), [], [xml.XmlText(cMunFG.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory retTranspComplexType_transp.fromXml(String xmlString,
      {String name = 'retTransp'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return retTranspComplexType_transp.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vServ: element.findElements('vServ').first.text,
      vBCRet: element.findElements('vBCRet').first.text,
      pICMSRet: element.findElements('pICMSRet').first.text,
      vICMSRet: element.findElements('vICMSRet').first.text,
      CFOP: element.findElements('CFOP').first.text,
      cMunFG: element.findElements('cMunFG').first.text,
    );
  }
  factory retTranspComplexType_transp.fromJson(Map<String, dynamic> json) =>
      _$retTranspComplexType_transpFromJson(json);
  Map<String, dynamic> toJson() => _$retTranspComplexType_transpToJson(this);
}

List<retTranspComplexType_transp> _retTranspComplexType_transpListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            retTranspComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<retTranspComplexType_transp>?
    _retTranspComplexType_transpMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            retTranspComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _retTranspComplexType_transpListToJson(
        List<retTranspComplexType_transp> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _retTranspComplexType_transpMaybeListToJson(
        List<retTranspComplexType_transp>? list) =>
    list?.map((e) => e.toJson()).toList();
retTranspComplexType_transp _retTranspComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    retTranspComplexType_transp.fromJson(json);
retTranspComplexType_transp? _retTranspComplexType_transpMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? retTranspComplexType_transp.fromJson(json) : null;
Map<String, dynamic> _retTranspComplexType_transpToJson(
        retTranspComplexType_transp instance) =>
    instance.toJson();
Map<String, dynamic>? _retTranspComplexType_transpMaybeToJson(
        retTranspComplexType_transp? instance) =>
    instance?.toJson();

@JsonSerializable()
class volComplexType_transp {
  String? xmlns;
  String? qVol;
  String? esp;
  String? marca;
  String? nVol;
  String? pesoL;
  String? pesoB;
  @JsonKey(
      fromJson: _lacresComplexType_volMaybeListFromJson,
      toJson: _lacresComplexType_volMaybeListToJson)
  List<lacresComplexType_vol>? lacres;
  volComplexType_transp(
      {this.xmlns,
      this.qVol,
      this.esp,
      this.marca,
      this.nVol,
      this.pesoL,
      this.pesoB,
      this.lacres}) {
    if ((qVol == null || RegExp(r'[0-9]{1,15}').hasMatch(qVol.toString())) ==
        false) {
      throw Exception('Invalid value for qVol - $qVol');
    }
    ;
    if ((qVol == null || qVol.toString().trim() == qVol.toString()) == false) {
      throw Exception('Invalid value for qVol');
    }
    ;
    if ((esp == null || esp.toString().length <= 60) == false) {
      throw Exception('Invalid value for esp');
    }
    ;
    if ((esp == null || esp.toString().length >= 1) == false) {
      throw Exception('Invalid value for esp');
    }
    ;
    if ((esp == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(esp.toString())) ==
        false) {
      throw Exception('Invalid value for esp - $esp');
    }
    ;
    if ((esp == null || esp.toString().trim() == esp.toString()) == false) {
      throw Exception('Invalid value for esp');
    }
    ;
    if ((marca == null || marca.toString().length <= 60) == false) {
      throw Exception('Invalid value for marca');
    }
    ;
    if ((marca == null || marca.toString().length >= 1) == false) {
      throw Exception('Invalid value for marca');
    }
    ;
    if ((marca == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(marca.toString())) ==
        false) {
      throw Exception('Invalid value for marca - $marca');
    }
    ;
    if ((marca == null || marca.toString().trim() == marca.toString()) ==
        false) {
      throw Exception('Invalid value for marca');
    }
    ;
    if ((nVol == null || nVol.toString().length <= 60) == false) {
      throw Exception('Invalid value for nVol');
    }
    ;
    if ((nVol == null || nVol.toString().length >= 1) == false) {
      throw Exception('Invalid value for nVol');
    }
    ;
    if ((nVol == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nVol.toString())) ==
        false) {
      throw Exception('Invalid value for nVol - $nVol');
    }
    ;
    if ((nVol == null || nVol.toString().trim() == nVol.toString()) == false) {
      throw Exception('Invalid value for nVol');
    }
    ;
    if ((pesoL == null ||
            RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,11}(\.[0-9]{3})?')
                .hasMatch(pesoL.toString())) ==
        false) {
      throw Exception('Invalid value for pesoL - $pesoL');
    }
    ;
    if ((pesoL == null || pesoL.toString().trim() == pesoL.toString()) ==
        false) {
      throw Exception('Invalid value for pesoL');
    }
    ;
    if ((pesoB == null ||
            RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,11}(\.[0-9]{3})?')
                .hasMatch(pesoB.toString())) ==
        false) {
      throw Exception('Invalid value for pesoB - $pesoB');
    }
    ;
    if ((pesoB == null || pesoB.toString().trim() == pesoB.toString()) ==
        false) {
      throw Exception('Invalid value for pesoB');
    }
    ;
  }
  volComplexType_transp.unsafe(
      {this.xmlns,
      this.qVol,
      this.esp,
      this.marca,
      this.nVol,
      this.pesoL,
      this.pesoB,
      this.lacres});
  String toXml({String name = 'vol', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (qVol != null)
        xml.XmlElement(xml.XmlName('qVol'), [], [xml.XmlText(qVol.toString())]),
      if (esp != null)
        xml.XmlElement(xml.XmlName('esp'), [], [xml.XmlText(esp.toString())]),
      if (marca != null)
        xml.XmlElement(
            xml.XmlName('marca'), [], [xml.XmlText(marca.toString())]),
      if (nVol != null)
        xml.XmlElement(xml.XmlName('nVol'), [], [xml.XmlText(nVol.toString())]),
      if (pesoL != null)
        xml.XmlElement(
            xml.XmlName('pesoL'), [], [xml.XmlText(pesoL.toString())]),
      if (pesoB != null)
        xml.XmlElement(
            xml.XmlName('pesoB'), [], [xml.XmlText(pesoB.toString())]),
      ...?lacres
          ?.map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "lacres", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory volComplexType_transp.fromXml(String xmlString,
      {String name = 'vol'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return volComplexType_transp.unsafe(
      xmlns: element.getAttribute('xmlns'),
      qVol: element.findElements('qVol').isNotEmpty
          ? element.findElements('qVol').first.text
          : null,
      esp: element.findElements('esp').isNotEmpty
          ? element.findElements('esp').first.text
          : null,
      marca: element.findElements('marca').isNotEmpty
          ? element.findElements('marca').first.text
          : null,
      nVol: element.findElements('nVol').isNotEmpty
          ? element.findElements('nVol').first.text
          : null,
      pesoL: element.findElements('pesoL').isNotEmpty
          ? element.findElements('pesoL').first.text
          : null,
      pesoB: element.findElements('pesoB').isNotEmpty
          ? element.findElements('pesoB').first.text
          : null,
      lacres: element
          .findElements('lacres')
          .map((e) =>
              lacresComplexType_vol.fromXml(e.toString(), name: "lacres"))
          .toList(),
    );
  }
  factory volComplexType_transp.fromJson(Map<String, dynamic> json) =>
      _$volComplexType_transpFromJson(json);
  Map<String, dynamic> toJson() => _$volComplexType_transpToJson(this);
}

List<volComplexType_transp> _volComplexType_transpListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => volComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<volComplexType_transp>? _volComplexType_transpMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => volComplexType_transp.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _volComplexType_transpListToJson(
        List<volComplexType_transp> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _volComplexType_transpMaybeListToJson(
        List<volComplexType_transp>? list) =>
    list?.map((e) => e.toJson()).toList();
volComplexType_transp _volComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    volComplexType_transp.fromJson(json);
volComplexType_transp? _volComplexType_transpMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? volComplexType_transp.fromJson(json) : null;
Map<String, dynamic> _volComplexType_transpToJson(
        volComplexType_transp instance) =>
    instance.toJson();
Map<String, dynamic>? _volComplexType_transpMaybeToJson(
        volComplexType_transp? instance) =>
    instance?.toJson();

@JsonSerializable()
class fatComplexType_cobr {
  String? xmlns;
  String? nFat;
  String? vOrig;
  String? vDesc;
  String? vLiq;
  fatComplexType_cobr(
      {this.xmlns, this.nFat, this.vOrig, this.vDesc, this.vLiq}) {
    if ((nFat == null || nFat.toString().length <= 60) == false) {
      throw Exception('Invalid value for nFat');
    }
    ;
    if ((nFat == null || nFat.toString().length >= 1) == false) {
      throw Exception('Invalid value for nFat');
    }
    ;
    if ((nFat == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nFat.toString())) ==
        false) {
      throw Exception('Invalid value for nFat - $nFat');
    }
    ;
    if ((nFat == null || nFat.toString().trim() == nFat.toString()) == false) {
      throw Exception('Invalid value for nFat');
    }
    ;
    if ((vOrig == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vOrig.toString())) ==
        false) {
      throw Exception('Invalid value for vOrig - $vOrig');
    }
    ;
    if ((vOrig == null || vOrig.toString().trim() == vOrig.toString()) ==
        false) {
      throw Exception('Invalid value for vOrig');
    }
    ;
    if ((vDesc == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDesc.toString())) ==
        false) {
      throw Exception('Invalid value for vDesc - $vDesc');
    }
    ;
    if ((vDesc == null || vDesc.toString().trim() == vDesc.toString()) ==
        false) {
      throw Exception('Invalid value for vDesc');
    }
    ;
    if ((vLiq == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vLiq.toString())) ==
        false) {
      throw Exception('Invalid value for vLiq - $vLiq');
    }
    ;
    if ((vLiq == null || vLiq.toString().trim() == vLiq.toString()) == false) {
      throw Exception('Invalid value for vLiq');
    }
    ;
  }
  fatComplexType_cobr.unsafe(
      {this.xmlns, this.nFat, this.vOrig, this.vDesc, this.vLiq});
  String toXml({String name = 'fat', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (nFat != null)
        xml.XmlElement(xml.XmlName('nFat'), [], [xml.XmlText(nFat.toString())]),
      if (vOrig != null)
        xml.XmlElement(
            xml.XmlName('vOrig'), [], [xml.XmlText(vOrig.toString())]),
      if (vDesc != null)
        xml.XmlElement(
            xml.XmlName('vDesc'), [], [xml.XmlText(vDesc.toString())]),
      if (vLiq != null)
        xml.XmlElement(xml.XmlName('vLiq'), [], [xml.XmlText(vLiq.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory fatComplexType_cobr.fromXml(String xmlString, {String name = 'fat'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return fatComplexType_cobr.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nFat: element.findElements('nFat').isNotEmpty
          ? element.findElements('nFat').first.text
          : null,
      vOrig: element.findElements('vOrig').isNotEmpty
          ? element.findElements('vOrig').first.text
          : null,
      vDesc: element.findElements('vDesc').isNotEmpty
          ? element.findElements('vDesc').first.text
          : null,
      vLiq: element.findElements('vLiq').isNotEmpty
          ? element.findElements('vLiq').first.text
          : null,
    );
  }
  factory fatComplexType_cobr.fromJson(Map<String, dynamic> json) =>
      _$fatComplexType_cobrFromJson(json);
  Map<String, dynamic> toJson() => _$fatComplexType_cobrToJson(this);
}

List<fatComplexType_cobr> _fatComplexType_cobrListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => fatComplexType_cobr.fromJson(e as Map<String, dynamic>))
        .toList();
List<fatComplexType_cobr>? _fatComplexType_cobrMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => fatComplexType_cobr.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _fatComplexType_cobrListToJson(
        List<fatComplexType_cobr> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _fatComplexType_cobrMaybeListToJson(
        List<fatComplexType_cobr>? list) =>
    list?.map((e) => e.toJson()).toList();
fatComplexType_cobr _fatComplexType_cobrFromJson(Map<String, dynamic> json) =>
    fatComplexType_cobr.fromJson(json);
fatComplexType_cobr? _fatComplexType_cobrMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? fatComplexType_cobr.fromJson(json) : null;
Map<String, dynamic> _fatComplexType_cobrToJson(fatComplexType_cobr instance) =>
    instance.toJson();
Map<String, dynamic>? _fatComplexType_cobrMaybeToJson(
        fatComplexType_cobr? instance) =>
    instance?.toJson();

@JsonSerializable()
class dupComplexType_cobr {
  String? xmlns;
  String? nDup;
  String? dVenc;
  String vDup;
  dupComplexType_cobr({this.xmlns, this.nDup, this.dVenc, required this.vDup}) {
    if ((nDup == null || nDup.toString().length <= 60) == false) {
      throw Exception('Invalid value for nDup');
    }
    ;
    if ((nDup == null || nDup.toString().length >= 1) == false) {
      throw Exception('Invalid value for nDup');
    }
    ;
    if ((nDup == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nDup.toString())) ==
        false) {
      throw Exception('Invalid value for nDup - $nDup');
    }
    ;
    if ((nDup == null || nDup.toString().trim() == nDup.toString()) == false) {
      throw Exception('Invalid value for nDup');
    }
    ;
    if ((dVenc == null ||
            RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
                .hasMatch(dVenc.toString())) ==
        false) {
      throw Exception('Invalid value for dVenc - $dVenc');
    }
    ;
    if ((dVenc == null || dVenc.toString().trim() == dVenc.toString()) ==
        false) {
      throw Exception('Invalid value for dVenc');
    }
    ;
    if ((RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vDup.toString())) ==
        false) {
      throw Exception('Invalid value for vDup - $vDup');
    }
    ;
    if ((vDup.toString().trim() == vDup.toString()) == false) {
      throw Exception('Invalid value for vDup');
    }
    ;
  }
  dupComplexType_cobr.unsafe(
      {this.xmlns, this.nDup, this.dVenc, required this.vDup});
  String toXml({String name = 'dup', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (nDup != null)
        xml.XmlElement(xml.XmlName('nDup'), [], [xml.XmlText(nDup.toString())]),
      if (dVenc != null)
        xml.XmlElement(
            xml.XmlName('dVenc'), [], [xml.XmlText(dVenc.toString())]),
      xml.XmlElement(xml.XmlName('vDup'), [], [xml.XmlText(vDup.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory dupComplexType_cobr.fromXml(String xmlString, {String name = 'dup'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return dupComplexType_cobr.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nDup: element.findElements('nDup').isNotEmpty
          ? element.findElements('nDup').first.text
          : null,
      dVenc: element.findElements('dVenc').isNotEmpty
          ? element.findElements('dVenc').first.text
          : null,
      vDup: element.findElements('vDup').first.text,
    );
  }
  factory dupComplexType_cobr.fromJson(Map<String, dynamic> json) =>
      _$dupComplexType_cobrFromJson(json);
  Map<String, dynamic> toJson() => _$dupComplexType_cobrToJson(this);
}

List<dupComplexType_cobr> _dupComplexType_cobrListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => dupComplexType_cobr.fromJson(e as Map<String, dynamic>))
        .toList();
List<dupComplexType_cobr>? _dupComplexType_cobrMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => dupComplexType_cobr.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _dupComplexType_cobrListToJson(
        List<dupComplexType_cobr> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _dupComplexType_cobrMaybeListToJson(
        List<dupComplexType_cobr>? list) =>
    list?.map((e) => e.toJson()).toList();
dupComplexType_cobr _dupComplexType_cobrFromJson(Map<String, dynamic> json) =>
    dupComplexType_cobr.fromJson(json);
dupComplexType_cobr? _dupComplexType_cobrMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? dupComplexType_cobr.fromJson(json) : null;
Map<String, dynamic> _dupComplexType_cobrToJson(dupComplexType_cobr instance) =>
    instance.toJson();
Map<String, dynamic>? _dupComplexType_cobrMaybeToJson(
        dupComplexType_cobr? instance) =>
    instance?.toJson();

@JsonSerializable()
class detPagComplexType_pag {
  String? xmlns;
  @JsonKey(fromJson: _indPagEnumFromMaybeValue, toJson: _indPagEnumToMaybeValue)
  indPagEnum? indPag;
  String tPag;
  String? xPag;
  String vPag;
  @JsonKey(
      fromJson: _cardComplexType_detPagMaybeFromJson,
      toJson: _cardComplexType_detPagMaybeToJson)
  cardComplexType_detPag? card;
  detPagComplexType_pag(
      {this.xmlns,
      this.indPag,
      required this.tPag,
      this.xPag,
      required this.vPag,
      this.card}) {
    if ((indPag == null || indPag.toString().trim() == indPag.toString()) ==
        false) {
      throw Exception('Invalid value for indPag');
    }
    ;
    if ((RegExp(r'[0-9]{2}').hasMatch(tPag.toString())) == false) {
      throw Exception('Invalid value for tPag - $tPag');
    }
    ;
    if ((tPag.toString().trim() == tPag.toString()) == false) {
      throw Exception('Invalid value for tPag');
    }
    ;
    if ((xPag == null || xPag.toString().length <= 60) == false) {
      throw Exception('Invalid value for xPag');
    }
    ;
    if ((xPag == null || xPag.toString().length >= 2) == false) {
      throw Exception('Invalid value for xPag');
    }
    ;
    if ((xPag == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPag.toString())) ==
        false) {
      throw Exception('Invalid value for xPag - $xPag');
    }
    ;
    if ((xPag == null || xPag.toString().trim() == xPag.toString()) == false) {
      throw Exception('Invalid value for xPag');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPag.toString())) ==
        false) {
      throw Exception('Invalid value for vPag - $vPag');
    }
    ;
    if ((vPag.toString().trim() == vPag.toString()) == false) {
      throw Exception('Invalid value for vPag');
    }
    ;
  }
  detPagComplexType_pag.unsafe(
      {this.xmlns,
      this.indPag,
      required this.tPag,
      this.xPag,
      required this.vPag,
      this.card});
  String toXml({String name = 'detPag', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (indPag != null)
        xml.XmlElement(xml.XmlName('indPag'), [], [xml.XmlText(indPag!.value)]),
      xml.XmlElement(xml.XmlName('tPag'), [], [xml.XmlText(tPag.toString())]),
      if (xPag != null)
        xml.XmlElement(xml.XmlName('xPag'), [], [xml.XmlText(xPag.toString())]),
      xml.XmlElement(xml.XmlName('vPag'), [], [xml.XmlText(vPag.toString())]),
      if (card != null)
        xml.XmlDocumentFragment.parse(card!.toXml(name: "card", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory detPagComplexType_pag.fromXml(String xmlString,
      {String name = 'detPag'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return detPagComplexType_pag.unsafe(
      xmlns: element.getAttribute('xmlns'),
      indPag: element.findElements('indPag').isNotEmpty
          ? indPagEnum.fromValue(element.findElements('indPag').first.text)
          : null,
      tPag: element.findElements('tPag').first.text,
      xPag: element.findElements('xPag').isNotEmpty
          ? element.findElements('xPag').first.text
          : null,
      vPag: element.findElements('vPag').first.text,
      card: element.findElements('card').isNotEmpty
          ? cardComplexType_detPag.fromXml(
              element.findElements('card').first.toString(),
              name: "card")
          : null,
    );
  }
  factory detPagComplexType_pag.fromJson(Map<String, dynamic> json) =>
      _$detPagComplexType_pagFromJson(json);
  Map<String, dynamic> toJson() => _$detPagComplexType_pagToJson(this);
}

List<detPagComplexType_pag> _detPagComplexType_pagListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => detPagComplexType_pag.fromJson(e as Map<String, dynamic>))
        .toList();
List<detPagComplexType_pag>? _detPagComplexType_pagMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => detPagComplexType_pag.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _detPagComplexType_pagListToJson(
        List<detPagComplexType_pag> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _detPagComplexType_pagMaybeListToJson(
        List<detPagComplexType_pag>? list) =>
    list?.map((e) => e.toJson()).toList();
detPagComplexType_pag _detPagComplexType_pagFromJson(
        Map<String, dynamic> json) =>
    detPagComplexType_pag.fromJson(json);
detPagComplexType_pag? _detPagComplexType_pagMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? detPagComplexType_pag.fromJson(json) : null;
Map<String, dynamic> _detPagComplexType_pagToJson(
        detPagComplexType_pag instance) =>
    instance.toJson();
Map<String, dynamic>? _detPagComplexType_pagMaybeToJson(
        detPagComplexType_pag? instance) =>
    instance?.toJson();

@JsonSerializable()
class obsContComplexType_infAdic {
  String? xmlns;
  String xTexto;
  String xCampo;

  obsContComplexType_infAdic(
      {this.xmlns, required this.xTexto, required this.xCampo}) {
    if ((xTexto.toString().length <= 60) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xTexto.toString().length >= 1) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xTexto.toString())) ==
        false) {
      throw Exception('Invalid value for xTexto - $xTexto');
    }
    ;
    if ((xTexto.toString().trim() == xTexto.toString()) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xCampo.toString().length <= 20) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((xCampo.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xCampo.toString())) ==
        false) {
      throw Exception('Invalid value for xCampo - $xCampo');
    }
    ;
    if ((xCampo.toString().trim() == xCampo.toString()) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
  }
  obsContComplexType_infAdic.unsafe(
      {this.xmlns, required this.xTexto, required this.xCampo});
  String toXml({String name = 'obsCont', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('xCampo'), xCampo.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('xTexto'), [], [xml.XmlText(xTexto.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory obsContComplexType_infAdic.fromXml(String xmlString,
      {String name = 'obsCont'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return obsContComplexType_infAdic.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xCampo: element.getAttribute('xCampo')!,
      xTexto: element.findElements('xTexto').first.text,
    );
  }
  factory obsContComplexType_infAdic.fromJson(Map<String, dynamic> json) =>
      _$obsContComplexType_infAdicFromJson(json);
  Map<String, dynamic> toJson() => _$obsContComplexType_infAdicToJson(this);
}

List<obsContComplexType_infAdic> _obsContComplexType_infAdicListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            obsContComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<obsContComplexType_infAdic>? _obsContComplexType_infAdicMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            obsContComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _obsContComplexType_infAdicListToJson(
        List<obsContComplexType_infAdic> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _obsContComplexType_infAdicMaybeListToJson(
        List<obsContComplexType_infAdic>? list) =>
    list?.map((e) => e.toJson()).toList();
obsContComplexType_infAdic _obsContComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    obsContComplexType_infAdic.fromJson(json);
obsContComplexType_infAdic? _obsContComplexType_infAdicMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? obsContComplexType_infAdic.fromJson(json) : null;
Map<String, dynamic> _obsContComplexType_infAdicToJson(
        obsContComplexType_infAdic instance) =>
    instance.toJson();
Map<String, dynamic>? _obsContComplexType_infAdicMaybeToJson(
        obsContComplexType_infAdic? instance) =>
    instance?.toJson();

@JsonSerializable()
class obsFiscoComplexType_infAdic {
  String? xmlns;
  String xTexto;
  String xCampo;

  obsFiscoComplexType_infAdic(
      {this.xmlns, required this.xTexto, required this.xCampo}) {
    if ((xTexto.toString().length <= 60) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xTexto.toString().length >= 1) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xTexto.toString())) ==
        false) {
      throw Exception('Invalid value for xTexto - $xTexto');
    }
    ;
    if ((xTexto.toString().trim() == xTexto.toString()) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xCampo.toString().length <= 20) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((xCampo.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xCampo.toString())) ==
        false) {
      throw Exception('Invalid value for xCampo - $xCampo');
    }
    ;
    if ((xCampo.toString().trim() == xCampo.toString()) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
  }
  obsFiscoComplexType_infAdic.unsafe(
      {this.xmlns, required this.xTexto, required this.xCampo});
  String toXml({String name = 'obsFisco', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('xCampo'), xCampo.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('xTexto'), [], [xml.XmlText(xTexto.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory obsFiscoComplexType_infAdic.fromXml(String xmlString,
      {String name = 'obsFisco'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return obsFiscoComplexType_infAdic.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xCampo: element.getAttribute('xCampo')!,
      xTexto: element.findElements('xTexto').first.text,
    );
  }
  factory obsFiscoComplexType_infAdic.fromJson(Map<String, dynamic> json) =>
      _$obsFiscoComplexType_infAdicFromJson(json);
  Map<String, dynamic> toJson() => _$obsFiscoComplexType_infAdicToJson(this);
}

List<obsFiscoComplexType_infAdic> _obsFiscoComplexType_infAdicListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            obsFiscoComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<obsFiscoComplexType_infAdic>?
    _obsFiscoComplexType_infAdicMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            obsFiscoComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _obsFiscoComplexType_infAdicListToJson(
        List<obsFiscoComplexType_infAdic> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _obsFiscoComplexType_infAdicMaybeListToJson(
        List<obsFiscoComplexType_infAdic>? list) =>
    list?.map((e) => e.toJson()).toList();
obsFiscoComplexType_infAdic _obsFiscoComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    obsFiscoComplexType_infAdic.fromJson(json);
obsFiscoComplexType_infAdic? _obsFiscoComplexType_infAdicMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? obsFiscoComplexType_infAdic.fromJson(json) : null;
Map<String, dynamic> _obsFiscoComplexType_infAdicToJson(
        obsFiscoComplexType_infAdic instance) =>
    instance.toJson();
Map<String, dynamic>? _obsFiscoComplexType_infAdicMaybeToJson(
        obsFiscoComplexType_infAdic? instance) =>
    instance?.toJson();

@JsonSerializable()
class procRefComplexType_infAdic {
  String? xmlns;
  String nProc;
  @JsonKey(fromJson: _indProcEnumFromValue, toJson: _indProcEnumToValue)
  indProcEnum indProc;
  @JsonKey(fromJson: _tpAtoEnumFromMaybeValue, toJson: _tpAtoEnumToMaybeValue)
  tpAtoEnum? tpAto;
  procRefComplexType_infAdic(
      {this.xmlns, required this.nProc, required this.indProc, this.tpAto}) {
    if ((nProc.toString().length <= 60) == false) {
      throw Exception('Invalid value for nProc');
    }
    ;
    if ((nProc.toString().length >= 1) == false) {
      throw Exception('Invalid value for nProc');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nProc.toString())) ==
        false) {
      throw Exception('Invalid value for nProc - $nProc');
    }
    ;
    if ((nProc.toString().trim() == nProc.toString()) == false) {
      throw Exception('Invalid value for nProc');
    }
    ;
    if ((indProc.toString().trim() == indProc.toString()) == false) {
      throw Exception('Invalid value for indProc');
    }
    ;
    if ((tpAto == null || tpAto.toString().trim() == tpAto.toString()) ==
        false) {
      throw Exception('Invalid value for tpAto');
    }
    ;
  }
  procRefComplexType_infAdic.unsafe(
      {this.xmlns, required this.nProc, required this.indProc, this.tpAto});
  String toXml({String name = 'procRef', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nProc'), [], [xml.XmlText(nProc.toString())]),
      xml.XmlElement(xml.XmlName('indProc'), [], [xml.XmlText(indProc.value)]),
      if (tpAto != null)
        xml.XmlElement(xml.XmlName('tpAto'), [], [xml.XmlText(tpAto!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory procRefComplexType_infAdic.fromXml(String xmlString,
      {String name = 'procRef'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return procRefComplexType_infAdic.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nProc: element.findElements('nProc').first.text,
      indProc:
          indProcEnum.fromValue(element.findElements('indProc').first.text),
      tpAto: element.findElements('tpAto').isNotEmpty
          ? tpAtoEnum.fromValue(element.findElements('tpAto').first.text)
          : null,
    );
  }
  factory procRefComplexType_infAdic.fromJson(Map<String, dynamic> json) =>
      _$procRefComplexType_infAdicFromJson(json);
  Map<String, dynamic> toJson() => _$procRefComplexType_infAdicToJson(this);
}

List<procRefComplexType_infAdic> _procRefComplexType_infAdicListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            procRefComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<procRefComplexType_infAdic>? _procRefComplexType_infAdicMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            procRefComplexType_infAdic.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _procRefComplexType_infAdicListToJson(
        List<procRefComplexType_infAdic> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _procRefComplexType_infAdicMaybeListToJson(
        List<procRefComplexType_infAdic>? list) =>
    list?.map((e) => e.toJson()).toList();
procRefComplexType_infAdic _procRefComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    procRefComplexType_infAdic.fromJson(json);
procRefComplexType_infAdic? _procRefComplexType_infAdicMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? procRefComplexType_infAdic.fromJson(json) : null;
Map<String, dynamic> _procRefComplexType_infAdicToJson(
        procRefComplexType_infAdic instance) =>
    instance.toJson();
Map<String, dynamic>? _procRefComplexType_infAdicMaybeToJson(
        procRefComplexType_infAdic? instance) =>
    instance?.toJson();

@JsonSerializable()
class forDiaComplexType_cana {
  String? xmlns;
  String qtde;
  String dia;

  forDiaComplexType_cana({this.xmlns, required this.qtde, required this.dia}) {
    if ((RegExp(r'0|0\.[0-9]{1,10}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,10})?')
            .hasMatch(qtde.toString())) ==
        false) {
      throw Exception('Invalid value for qtde - $qtde');
    }
    ;
    if ((qtde.toString().trim() == qtde.toString()) == false) {
      throw Exception('Invalid value for qtde');
    }
    ;
    if ((RegExp(r'[1-9]|[1][0-9]|[2][0-9]|[3][0-1]')
            .hasMatch(dia.toString())) ==
        false) {
      throw Exception('Invalid value for dia - $dia');
    }
    ;
    if ((dia.toString().trim() == dia.toString()) == false) {
      throw Exception('Invalid value for dia');
    }
    ;
  }
  forDiaComplexType_cana.unsafe(
      {this.xmlns, required this.qtde, required this.dia});
  String toXml({String name = 'forDia', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('dia'), dia.toString())
    ], [
      xml.XmlElement(xml.XmlName('qtde'), [], [xml.XmlText(qtde.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory forDiaComplexType_cana.fromXml(String xmlString,
      {String name = 'forDia'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return forDiaComplexType_cana.unsafe(
      xmlns: element.getAttribute('xmlns'),
      dia: element.getAttribute('dia')!,
      qtde: element.findElements('qtde').first.text,
    );
  }
  factory forDiaComplexType_cana.fromJson(Map<String, dynamic> json) =>
      _$forDiaComplexType_canaFromJson(json);
  Map<String, dynamic> toJson() => _$forDiaComplexType_canaToJson(this);
}

List<forDiaComplexType_cana> _forDiaComplexType_canaListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => forDiaComplexType_cana.fromJson(e as Map<String, dynamic>))
        .toList();
List<forDiaComplexType_cana>? _forDiaComplexType_canaMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => forDiaComplexType_cana.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _forDiaComplexType_canaListToJson(
        List<forDiaComplexType_cana> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _forDiaComplexType_canaMaybeListToJson(
        List<forDiaComplexType_cana>? list) =>
    list?.map((e) => e.toJson()).toList();
forDiaComplexType_cana _forDiaComplexType_canaFromJson(
        Map<String, dynamic> json) =>
    forDiaComplexType_cana.fromJson(json);
forDiaComplexType_cana? _forDiaComplexType_canaMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? forDiaComplexType_cana.fromJson(json) : null;
Map<String, dynamic> _forDiaComplexType_canaToJson(
        forDiaComplexType_cana instance) =>
    instance.toJson();
Map<String, dynamic>? _forDiaComplexType_canaMaybeToJson(
        forDiaComplexType_cana? instance) =>
    instance?.toJson();

@JsonSerializable()
class deducComplexType_cana {
  String? xmlns;
  String xDed;
  String vDed;
  deducComplexType_cana({this.xmlns, required this.xDed, required this.vDed}) {
    if ((xDed.toString().length <= 60) == false) {
      throw Exception('Invalid value for xDed');
    }
    ;
    if ((xDed.toString().length >= 1) == false) {
      throw Exception('Invalid value for xDed');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xDed.toString())) ==
        false) {
      throw Exception('Invalid value for xDed - $xDed');
    }
    ;
    if ((xDed.toString().trim() == xDed.toString()) == false) {
      throw Exception('Invalid value for xDed');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vDed.toString())) ==
        false) {
      throw Exception('Invalid value for vDed - $vDed');
    }
    ;
    if ((vDed.toString().trim() == vDed.toString()) == false) {
      throw Exception('Invalid value for vDed');
    }
    ;
  }
  deducComplexType_cana.unsafe(
      {this.xmlns, required this.xDed, required this.vDed});
  String toXml({String name = 'deduc', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('xDed'), [], [xml.XmlText(xDed.toString())]),
      xml.XmlElement(xml.XmlName('vDed'), [], [xml.XmlText(vDed.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory deducComplexType_cana.fromXml(String xmlString,
      {String name = 'deduc'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return deducComplexType_cana.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xDed: element.findElements('xDed').first.text,
      vDed: element.findElements('vDed').first.text,
    );
  }
  factory deducComplexType_cana.fromJson(Map<String, dynamic> json) =>
      _$deducComplexType_canaFromJson(json);
  Map<String, dynamic> toJson() => _$deducComplexType_canaToJson(this);
}

List<deducComplexType_cana> _deducComplexType_canaListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => deducComplexType_cana.fromJson(e as Map<String, dynamic>))
        .toList();
List<deducComplexType_cana>? _deducComplexType_canaMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => deducComplexType_cana.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _deducComplexType_canaListToJson(
        List<deducComplexType_cana> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _deducComplexType_canaMaybeListToJson(
        List<deducComplexType_cana>? list) =>
    list?.map((e) => e.toJson()).toList();
deducComplexType_cana _deducComplexType_canaFromJson(
        Map<String, dynamic> json) =>
    deducComplexType_cana.fromJson(json);
deducComplexType_cana? _deducComplexType_canaMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? deducComplexType_cana.fromJson(json) : null;
Map<String, dynamic> _deducComplexType_canaToJson(
        deducComplexType_cana instance) =>
    instance.toJson();
Map<String, dynamic>? _deducComplexType_canaMaybeToJson(
        deducComplexType_cana? instance) =>
    instance?.toJson();

@JsonSerializable()
class refNFComplexType_NFref {
  String? xmlns;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String AAMM;
  String CNPJ;
  @JsonKey(fromJson: _modEnumFromValue, toJson: _modEnumToValue)
  modEnum mod;
  String serie;
  String nNF;
  refNFComplexType_NFref(
      {this.xmlns,
      required this.cUF,
      required this.AAMM,
      required this.CNPJ,
      required this.mod,
      required this.serie,
      required this.nNF}) {
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'[0-9]{2}[0]{1}[1-9]{1}|[0-9]{2}[1]{1}[0-2]{1}')
            .hasMatch(AAMM.toString())) ==
        false) {
      throw Exception('Invalid value for AAMM - $AAMM');
    }
    ;
    if ((AAMM.toString().trim() == AAMM.toString()) == false) {
      throw Exception('Invalid value for AAMM');
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
    if ((RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNF.toString())) == false) {
      throw Exception('Invalid value for nNF - $nNF');
    }
    ;
    if ((nNF.toString().trim() == nNF.toString()) == false) {
      throw Exception('Invalid value for nNF');
    }
    ;
  }
  refNFComplexType_NFref.unsafe(
      {this.xmlns,
      required this.cUF,
      required this.AAMM,
      required this.CNPJ,
      required this.mod,
      required this.serie,
      required this.nNF});
  String toXml({String name = 'refNF', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(xml.XmlName('AAMM'), [], [xml.XmlText(AAMM.toString())]),
      xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod.value)]),
      xml.XmlElement(xml.XmlName('serie'), [], [xml.XmlText(serie.toString())]),
      xml.XmlElement(xml.XmlName('nNF'), [], [xml.XmlText(nNF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory refNFComplexType_NFref.fromXml(String xmlString,
      {String name = 'refNF'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return refNFComplexType_NFref.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      AAMM: element.findElements('AAMM').first.text,
      CNPJ: element.findElements('CNPJ').first.text,
      mod: modEnum.fromValue(element.findElements('mod').first.text),
      serie: element.findElements('serie').first.text,
      nNF: element.findElements('nNF').first.text,
    );
  }
  factory refNFComplexType_NFref.fromJson(Map<String, dynamic> json) =>
      _$refNFComplexType_NFrefFromJson(json);
  Map<String, dynamic> toJson() => _$refNFComplexType_NFrefToJson(this);
}

List<refNFComplexType_NFref> _refNFComplexType_NFrefListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => refNFComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<refNFComplexType_NFref>? _refNFComplexType_NFrefMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => refNFComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _refNFComplexType_NFrefListToJson(
        List<refNFComplexType_NFref> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _refNFComplexType_NFrefMaybeListToJson(
        List<refNFComplexType_NFref>? list) =>
    list?.map((e) => e.toJson()).toList();
refNFComplexType_NFref _refNFComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refNFComplexType_NFref.fromJson(json);
refNFComplexType_NFref? _refNFComplexType_NFrefMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? refNFComplexType_NFref.fromJson(json) : null;
Map<String, dynamic> _refNFComplexType_NFrefToJson(
        refNFComplexType_NFref instance) =>
    instance.toJson();
Map<String, dynamic>? _refNFComplexType_NFrefMaybeToJson(
        refNFComplexType_NFref? instance) =>
    instance?.toJson();

@JsonSerializable()
class refNFPComplexType_NFref {
  String? xmlns;
  @JsonKey(fromJson: _cUFEnumFromValue, toJson: _cUFEnumToValue)
  cUFEnum cUF;
  String AAMM;
  String? CNPJ;
  String? CPF;
  String IE;
  @JsonKey(fromJson: _modEnumFromValue, toJson: _modEnumToValue)
  modEnum mod;
  String serie;
  String nNF;
  refNFPComplexType_NFref(
      {this.xmlns,
      required this.cUF,
      required this.AAMM,
      this.CNPJ,
      this.CPF,
      required this.IE,
      required this.mod,
      required this.serie,
      required this.nNF}) {
    if ((cUF.toString().trim() == cUF.toString()) == false) {
      throw Exception('Invalid value for cUF');
    }
    ;
    if ((RegExp(r'[0-9]{2}[0]{1}[1-9]{1}|[0-9]{2}[1]{1}[0-2]{1}')
            .hasMatch(AAMM.toString())) ==
        false) {
      throw Exception('Invalid value for AAMM - $AAMM');
    }
    ;
    if ((AAMM.toString().trim() == AAMM.toString()) == false) {
      throw Exception('Invalid value for AAMM');
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
    if ((IE.toString().length <= 14) == false) {
      throw Exception('Invalid value for IE');
    }
    ;
    if ((RegExp(r'ISENTO|[0-9]{2,14}').hasMatch(IE.toString())) == false) {
      throw Exception('Invalid value for IE - $IE');
    }
    ;
    if ((IE.toString().trim() == IE.toString()) == false) {
      throw Exception('Invalid value for IE');
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
    if ((RegExp(r'[1-9]{1}[0-9]{0,8}').hasMatch(nNF.toString())) == false) {
      throw Exception('Invalid value for nNF - $nNF');
    }
    ;
    if ((nNF.toString().trim() == nNF.toString()) == false) {
      throw Exception('Invalid value for nNF');
    }
    ;
  }
  refNFPComplexType_NFref.unsafe(
      {this.xmlns,
      required this.cUF,
      required this.AAMM,
      this.CNPJ,
      this.CPF,
      required this.IE,
      required this.mod,
      required this.serie,
      required this.nNF});
  String toXml({String name = 'refNFP', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('cUF'), [], [xml.XmlText(cUF.value)]),
      xml.XmlElement(xml.XmlName('AAMM'), [], [xml.XmlText(AAMM.toString())]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())]),
      xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod.value)]),
      xml.XmlElement(xml.XmlName('serie'), [], [xml.XmlText(serie.toString())]),
      xml.XmlElement(xml.XmlName('nNF'), [], [xml.XmlText(nNF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory refNFPComplexType_NFref.fromXml(String xmlString,
      {String name = 'refNFP'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return refNFPComplexType_NFref.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cUF: cUFEnum.fromValue(element.findElements('cUF').first.text),
      AAMM: element.findElements('AAMM').first.text,
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      IE: element.findElements('IE').first.text,
      mod: modEnum.fromValue(element.findElements('mod').first.text),
      serie: element.findElements('serie').first.text,
      nNF: element.findElements('nNF').first.text,
    );
  }
  factory refNFPComplexType_NFref.fromJson(Map<String, dynamic> json) =>
      _$refNFPComplexType_NFrefFromJson(json);
  Map<String, dynamic> toJson() => _$refNFPComplexType_NFrefToJson(this);
}

List<refNFPComplexType_NFref> _refNFPComplexType_NFrefListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => refNFPComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<refNFPComplexType_NFref>? _refNFPComplexType_NFrefMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => refNFPComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _refNFPComplexType_NFrefListToJson(
        List<refNFPComplexType_NFref> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _refNFPComplexType_NFrefMaybeListToJson(
        List<refNFPComplexType_NFref>? list) =>
    list?.map((e) => e.toJson()).toList();
refNFPComplexType_NFref _refNFPComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refNFPComplexType_NFref.fromJson(json);
refNFPComplexType_NFref? _refNFPComplexType_NFrefMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? refNFPComplexType_NFref.fromJson(json) : null;
Map<String, dynamic> _refNFPComplexType_NFrefToJson(
        refNFPComplexType_NFref instance) =>
    instance.toJson();
Map<String, dynamic>? _refNFPComplexType_NFrefMaybeToJson(
        refNFPComplexType_NFref? instance) =>
    instance?.toJson();

@JsonSerializable()
class refECFComplexType_NFref {
  String? xmlns;
  @JsonKey(fromJson: _modEnumFromValue, toJson: _modEnumToValue)
  modEnum mod;
  String nECF;
  String nCOO;
  refECFComplexType_NFref(
      {this.xmlns, required this.mod, required this.nECF, required this.nCOO}) {
    if ((mod.toString().trim() == mod.toString()) == false) {
      throw Exception('Invalid value for mod');
    }
    ;
    if ((RegExp(r'[0-9]{1,3}').hasMatch(nECF.toString())) == false) {
      throw Exception('Invalid value for nECF - $nECF');
    }
    ;
    if ((nECF.toString().trim() == nECF.toString()) == false) {
      throw Exception('Invalid value for nECF');
    }
    ;
    if ((RegExp(r'[0-9]{1,6}').hasMatch(nCOO.toString())) == false) {
      throw Exception('Invalid value for nCOO - $nCOO');
    }
    ;
    if ((nCOO.toString().trim() == nCOO.toString()) == false) {
      throw Exception('Invalid value for nCOO');
    }
    ;
  }
  refECFComplexType_NFref.unsafe(
      {this.xmlns, required this.mod, required this.nECF, required this.nCOO});
  String toXml({String name = 'refECF', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('mod'), [], [xml.XmlText(mod.value)]),
      xml.XmlElement(xml.XmlName('nECF'), [], [xml.XmlText(nECF.toString())]),
      xml.XmlElement(xml.XmlName('nCOO'), [], [xml.XmlText(nCOO.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory refECFComplexType_NFref.fromXml(String xmlString,
      {String name = 'refECF'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return refECFComplexType_NFref.unsafe(
      xmlns: element.getAttribute('xmlns'),
      mod: modEnum.fromValue(element.findElements('mod').first.text),
      nECF: element.findElements('nECF').first.text,
      nCOO: element.findElements('nCOO').first.text,
    );
  }
  factory refECFComplexType_NFref.fromJson(Map<String, dynamic> json) =>
      _$refECFComplexType_NFrefFromJson(json);
  Map<String, dynamic> toJson() => _$refECFComplexType_NFrefToJson(this);
}

List<refECFComplexType_NFref> _refECFComplexType_NFrefListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => refECFComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<refECFComplexType_NFref>? _refECFComplexType_NFrefMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => refECFComplexType_NFref.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _refECFComplexType_NFrefListToJson(
        List<refECFComplexType_NFref> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _refECFComplexType_NFrefMaybeListToJson(
        List<refECFComplexType_NFref>? list) =>
    list?.map((e) => e.toJson()).toList();
refECFComplexType_NFref _refECFComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refECFComplexType_NFref.fromJson(json);
refECFComplexType_NFref? _refECFComplexType_NFrefMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? refECFComplexType_NFref.fromJson(json) : null;
Map<String, dynamic> _refECFComplexType_NFrefToJson(
        refECFComplexType_NFref instance) =>
    instance.toJson();
Map<String, dynamic>? _refECFComplexType_NFrefMaybeToJson(
        refECFComplexType_NFref? instance) =>
    instance?.toJson();

@JsonSerializable()
class DIComplexType_prod {
  String? xmlns;
  String nDI;
  String dDI;
  String xLocDesemb;
  @JsonKey(fromJson: _UFDesembEnumFromValue, toJson: _UFDesembEnumToValue)
  UFDesembEnum UFDesemb;
  String dDesemb;
  @JsonKey(fromJson: _tpViaTranspEnumFromValue, toJson: _tpViaTranspEnumToValue)
  tpViaTranspEnum tpViaTransp;
  String? vAFRMM;
  @JsonKey(
      fromJson: _tpIntermedioEnumFromValue, toJson: _tpIntermedioEnumToValue)
  tpIntermedioEnum tpIntermedio;
  String? CNPJ;
  @JsonKey(
      fromJson: _UFTerceiroEnumFromMaybeValue,
      toJson: _UFTerceiroEnumToMaybeValue)
  UFTerceiroEnum? UFTerceiro;
  String cExportador;
  @JsonKey(
      fromJson: _adiComplexType_DIListFromJson,
      toJson: _adiComplexType_DIListToJson)
  List<adiComplexType_DI> adi;
  DIComplexType_prod(
      {this.xmlns,
      required this.nDI,
      required this.dDI,
      required this.xLocDesemb,
      required this.UFDesemb,
      required this.dDesemb,
      required this.tpViaTransp,
      this.vAFRMM,
      required this.tpIntermedio,
      this.CNPJ,
      this.UFTerceiro,
      required this.cExportador,
      required this.adi}) {
    if ((nDI.toString().length <= 15) == false) {
      throw Exception('Invalid value for nDI');
    }
    ;
    if ((nDI.toString().length >= 1) == false) {
      throw Exception('Invalid value for nDI');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nDI.toString())) ==
        false) {
      throw Exception('Invalid value for nDI - $nDI');
    }
    ;
    if ((nDI.toString().trim() == nDI.toString()) == false) {
      throw Exception('Invalid value for nDI');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
            .hasMatch(dDI.toString())) ==
        false) {
      throw Exception('Invalid value for dDI - $dDI');
    }
    ;
    if ((dDI.toString().trim() == dDI.toString()) == false) {
      throw Exception('Invalid value for dDI');
    }
    ;
    if ((xLocDesemb.toString().length <= 60) == false) {
      throw Exception('Invalid value for xLocDesemb');
    }
    ;
    if ((xLocDesemb.toString().length >= 1) == false) {
      throw Exception('Invalid value for xLocDesemb');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xLocDesemb.toString())) ==
        false) {
      throw Exception('Invalid value for xLocDesemb - $xLocDesemb');
    }
    ;
    if ((xLocDesemb.toString().trim() == xLocDesemb.toString()) == false) {
      throw Exception('Invalid value for xLocDesemb');
    }
    ;
    if ((UFDesemb.toString().trim() == UFDesemb.toString()) == false) {
      throw Exception('Invalid value for UFDesemb');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
            .hasMatch(dDesemb.toString())) ==
        false) {
      throw Exception('Invalid value for dDesemb - $dDesemb');
    }
    ;
    if ((dDesemb.toString().trim() == dDesemb.toString()) == false) {
      throw Exception('Invalid value for dDesemb');
    }
    ;
    if ((tpViaTransp.toString().trim() == tpViaTransp.toString()) == false) {
      throw Exception('Invalid value for tpViaTransp');
    }
    ;
    if ((vAFRMM == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vAFRMM.toString())) ==
        false) {
      throw Exception('Invalid value for vAFRMM - $vAFRMM');
    }
    ;
    if ((vAFRMM == null || vAFRMM.toString().trim() == vAFRMM.toString()) ==
        false) {
      throw Exception('Invalid value for vAFRMM');
    }
    ;
    if ((tpIntermedio.toString().trim() == tpIntermedio.toString()) == false) {
      throw Exception('Invalid value for tpIntermedio');
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
    if ((UFTerceiro == null ||
            UFTerceiro.toString().trim() == UFTerceiro.toString()) ==
        false) {
      throw Exception('Invalid value for UFTerceiro');
    }
    ;
    if ((cExportador.toString().length <= 60) == false) {
      throw Exception('Invalid value for cExportador');
    }
    ;
    if ((cExportador.toString().length >= 1) == false) {
      throw Exception('Invalid value for cExportador');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cExportador.toString())) ==
        false) {
      throw Exception('Invalid value for cExportador - $cExportador');
    }
    ;
    if ((cExportador.toString().trim() == cExportador.toString()) == false) {
      throw Exception('Invalid value for cExportador');
    }
    ;
  }
  DIComplexType_prod.unsafe(
      {this.xmlns,
      required this.nDI,
      required this.dDI,
      required this.xLocDesemb,
      required this.UFDesemb,
      required this.dDesemb,
      required this.tpViaTransp,
      this.vAFRMM,
      required this.tpIntermedio,
      this.CNPJ,
      this.UFTerceiro,
      required this.cExportador,
      required this.adi});
  String toXml({String name = 'DI', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nDI'), [], [xml.XmlText(nDI.toString())]),
      xml.XmlElement(xml.XmlName('dDI'), [], [xml.XmlText(dDI.toString())]),
      xml.XmlElement(
          xml.XmlName('xLocDesemb'), [], [xml.XmlText(xLocDesemb.toString())]),
      xml.XmlElement(
          xml.XmlName('UFDesemb'), [], [xml.XmlText(UFDesemb.value)]),
      xml.XmlElement(
          xml.XmlName('dDesemb'), [], [xml.XmlText(dDesemb.toString())]),
      xml.XmlElement(
          xml.XmlName('tpViaTransp'), [], [xml.XmlText(tpViaTransp.value)]),
      if (vAFRMM != null)
        xml.XmlElement(
            xml.XmlName('vAFRMM'), [], [xml.XmlText(vAFRMM.toString())]),
      xml.XmlElement(
          xml.XmlName('tpIntermedio'), [], [xml.XmlText(tpIntermedio.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (UFTerceiro != null)
        xml.XmlElement(
            xml.XmlName('UFTerceiro'), [], [xml.XmlText(UFTerceiro!.value)]),
      xml.XmlElement(xml.XmlName('cExportador'), [],
          [xml.XmlText(cExportador.toString())]),
      ...adi
          .map((e) => xml.XmlDocumentFragment.parse(
              e.toXml(name: "adi", pretty: pretty)))
          .toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory DIComplexType_prod.fromXml(String xmlString, {String name = 'DI'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return DIComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nDI: element.findElements('nDI').first.text,
      dDI: element.findElements('dDI').first.text,
      xLocDesemb: element.findElements('xLocDesemb').first.text,
      UFDesemb:
          UFDesembEnum.fromValue(element.findElements('UFDesemb').first.text),
      dDesemb: element.findElements('dDesemb').first.text,
      tpViaTransp: tpViaTranspEnum
          .fromValue(element.findElements('tpViaTransp').first.text),
      vAFRMM: element.findElements('vAFRMM').isNotEmpty
          ? element.findElements('vAFRMM').first.text
          : null,
      tpIntermedio: tpIntermedioEnum
          .fromValue(element.findElements('tpIntermedio').first.text),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      UFTerceiro: element.findElements('UFTerceiro').isNotEmpty
          ? UFTerceiroEnum.fromValue(
              element.findElements('UFTerceiro').first.text)
          : null,
      cExportador: element.findElements('cExportador').first.text,
      adi: element
          .findElements('adi')
          .map((e) => adiComplexType_DI.fromXml(e.toString(), name: "adi"))
          .toList(),
    );
  }
  factory DIComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$DIComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$DIComplexType_prodToJson(this);
}

List<DIComplexType_prod> _DIComplexType_prodListFromJson(List<dynamic> json) =>
    json
        .map((e) => DIComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<DIComplexType_prod>? _DIComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => DIComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _DIComplexType_prodListToJson(
        List<DIComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _DIComplexType_prodMaybeListToJson(
        List<DIComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
DIComplexType_prod _DIComplexType_prodFromJson(Map<String, dynamic> json) =>
    DIComplexType_prod.fromJson(json);
DIComplexType_prod? _DIComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? DIComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _DIComplexType_prodToJson(DIComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _DIComplexType_prodMaybeToJson(
        DIComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class detExportComplexType_prod {
  String? xmlns;
  String? nDraw;
  @JsonKey(
      fromJson: _exportIndComplexType_detExportMaybeFromJson,
      toJson: _exportIndComplexType_detExportMaybeToJson)
  exportIndComplexType_detExport? exportInd;
  detExportComplexType_prod({this.xmlns, this.nDraw, this.exportInd}) {
    if ((nDraw == null || nDraw.toString().length <= 20) == false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
    if ((nDraw == null || nDraw.toString().length >= 1) == false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
    if ((nDraw == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nDraw.toString())) ==
        false) {
      throw Exception('Invalid value for nDraw - $nDraw');
    }
    ;
    if ((nDraw == null || nDraw.toString().trim() == nDraw.toString()) ==
        false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
  }
  detExportComplexType_prod.unsafe({this.xmlns, this.nDraw, this.exportInd});
  String toXml(
      {String name = 'detExport', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (nDraw != null)
        xml.XmlElement(
            xml.XmlName('nDraw'), [], [xml.XmlText(nDraw.toString())]),
      if (exportInd != null)
        xml.XmlDocumentFragment.parse(
            exportInd!.toXml(name: "exportInd", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory detExportComplexType_prod.fromXml(String xmlString,
      {String name = 'detExport'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return detExportComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nDraw: element.findElements('nDraw').isNotEmpty
          ? element.findElements('nDraw').first.text
          : null,
      exportInd: element.findElements('exportInd').isNotEmpty
          ? exportIndComplexType_detExport.fromXml(
              element.findElements('exportInd').first.toString(),
              name: "exportInd")
          : null,
    );
  }
  factory detExportComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$detExportComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$detExportComplexType_prodToJson(this);
}

List<detExportComplexType_prod> _detExportComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            detExportComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<detExportComplexType_prod>? _detExportComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            detExportComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _detExportComplexType_prodListToJson(
        List<detExportComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _detExportComplexType_prodMaybeListToJson(
        List<detExportComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
detExportComplexType_prod _detExportComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    detExportComplexType_prod.fromJson(json);
detExportComplexType_prod? _detExportComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? detExportComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _detExportComplexType_prodToJson(
        detExportComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _detExportComplexType_prodMaybeToJson(
        detExportComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class rastroComplexType_prod {
  String? xmlns;
  String nLote;
  String qLote;
  String dFab;
  String dVal;
  String? cAgreg;
  rastroComplexType_prod(
      {this.xmlns,
      required this.nLote,
      required this.qLote,
      required this.dFab,
      required this.dVal,
      this.cAgreg}) {
    if ((nLote.toString().length <= 20) == false) {
      throw Exception('Invalid value for nLote');
    }
    ;
    if ((nLote.toString().length >= 1) == false) {
      throw Exception('Invalid value for nLote');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,7}(\.[0-9]{1,3})?')
            .hasMatch(qLote.toString())) ==
        false) {
      throw Exception('Invalid value for qLote - $qLote');
    }
    ;
    if ((qLote.toString().trim() == qLote.toString()) == false) {
      throw Exception('Invalid value for qLote');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
            .hasMatch(dFab.toString())) ==
        false) {
      throw Exception('Invalid value for dFab - $dFab');
    }
    ;
    if ((dFab.toString().trim() == dFab.toString()) == false) {
      throw Exception('Invalid value for dFab');
    }
    ;
    if ((RegExp(r'(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))')
            .hasMatch(dVal.toString())) ==
        false) {
      throw Exception('Invalid value for dVal - $dVal');
    }
    ;
    if ((dVal.toString().trim() == dVal.toString()) == false) {
      throw Exception('Invalid value for dVal');
    }
    ;
    if ((cAgreg == null || cAgreg.toString().length <= 20) == false) {
      throw Exception('Invalid value for cAgreg');
    }
    ;
    if ((cAgreg == null || cAgreg.toString().length >= 1) == false) {
      throw Exception('Invalid value for cAgreg');
    }
    ;
    if ((cAgreg == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cAgreg.toString())) ==
        false) {
      throw Exception('Invalid value for cAgreg - $cAgreg');
    }
    ;
    if ((cAgreg == null || cAgreg.toString().trim() == cAgreg.toString()) ==
        false) {
      throw Exception('Invalid value for cAgreg');
    }
    ;
  }
  rastroComplexType_prod.unsafe(
      {this.xmlns,
      required this.nLote,
      required this.qLote,
      required this.dFab,
      required this.dVal,
      this.cAgreg});
  String toXml({String name = 'rastro', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nLote'), [], [xml.XmlText(nLote.toString())]),
      xml.XmlElement(xml.XmlName('qLote'), [], [xml.XmlText(qLote.toString())]),
      xml.XmlElement(xml.XmlName('dFab'), [], [xml.XmlText(dFab.toString())]),
      xml.XmlElement(xml.XmlName('dVal'), [], [xml.XmlText(dVal.toString())]),
      if (cAgreg != null)
        xml.XmlElement(
            xml.XmlName('cAgreg'), [], [xml.XmlText(cAgreg.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory rastroComplexType_prod.fromXml(String xmlString,
      {String name = 'rastro'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return rastroComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nLote: element.findElements('nLote').first.text,
      qLote: element.findElements('qLote').first.text,
      dFab: element.findElements('dFab').first.text,
      dVal: element.findElements('dVal').first.text,
      cAgreg: element.findElements('cAgreg').isNotEmpty
          ? element.findElements('cAgreg').first.text
          : null,
    );
  }
  factory rastroComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$rastroComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$rastroComplexType_prodToJson(this);
}

List<rastroComplexType_prod> _rastroComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => rastroComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<rastroComplexType_prod>? _rastroComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => rastroComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _rastroComplexType_prodListToJson(
        List<rastroComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _rastroComplexType_prodMaybeListToJson(
        List<rastroComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
rastroComplexType_prod _rastroComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    rastroComplexType_prod.fromJson(json);
rastroComplexType_prod? _rastroComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? rastroComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _rastroComplexType_prodToJson(
        rastroComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _rastroComplexType_prodMaybeToJson(
        rastroComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class infProdNFFComplexType_prod {
  String? xmlns;
  String cProdFisco;
  String cOperNFF;
  infProdNFFComplexType_prod(
      {this.xmlns, required this.cProdFisco, required this.cOperNFF}) {
    if ((cProdFisco.toString().length == 14) == false) {
      throw Exception('Invalid value for cProdFisco');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cProdFisco.toString())) ==
        false) {
      throw Exception('Invalid value for cProdFisco - $cProdFisco');
    }
    ;
    if ((cProdFisco.toString().trim() == cProdFisco.toString()) == false) {
      throw Exception('Invalid value for cProdFisco');
    }
    ;
    if ((RegExp(r'[0-9]{1,5}').hasMatch(cOperNFF.toString())) == false) {
      throw Exception('Invalid value for cOperNFF - $cOperNFF');
    }
    ;
    if ((cOperNFF.toString().trim() == cOperNFF.toString()) == false) {
      throw Exception('Invalid value for cOperNFF');
    }
    ;
  }
  infProdNFFComplexType_prod.unsafe(
      {this.xmlns, required this.cProdFisco, required this.cOperNFF});
  String toXml(
      {String name = 'infProdNFF', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('cProdFisco'), [], [xml.XmlText(cProdFisco.toString())]),
      xml.XmlElement(
          xml.XmlName('cOperNFF'), [], [xml.XmlText(cOperNFF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infProdNFFComplexType_prod.fromXml(String xmlString,
      {String name = 'infProdNFF'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infProdNFFComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cProdFisco: element.findElements('cProdFisco').first.text,
      cOperNFF: element.findElements('cOperNFF').first.text,
    );
  }
  factory infProdNFFComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$infProdNFFComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$infProdNFFComplexType_prodToJson(this);
}

List<infProdNFFComplexType_prod> _infProdNFFComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infProdNFFComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<infProdNFFComplexType_prod>? _infProdNFFComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            infProdNFFComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infProdNFFComplexType_prodListToJson(
        List<infProdNFFComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infProdNFFComplexType_prodMaybeListToJson(
        List<infProdNFFComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
infProdNFFComplexType_prod _infProdNFFComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    infProdNFFComplexType_prod.fromJson(json);
infProdNFFComplexType_prod? _infProdNFFComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infProdNFFComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _infProdNFFComplexType_prodToJson(
        infProdNFFComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _infProdNFFComplexType_prodMaybeToJson(
        infProdNFFComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class infProdEmbComplexType_prod {
  String? xmlns;
  String xEmb;
  String qVolEmb;
  String uEmb;
  infProdEmbComplexType_prod(
      {this.xmlns,
      required this.xEmb,
      required this.qVolEmb,
      required this.uEmb}) {
    if ((xEmb.toString().length <= 8) == false) {
      throw Exception('Invalid value for xEmb');
    }
    ;
    if ((xEmb.toString().length >= 1) == false) {
      throw Exception('Invalid value for xEmb');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xEmb.toString())) ==
        false) {
      throw Exception('Invalid value for xEmb - $xEmb');
    }
    ;
    if ((xEmb.toString().trim() == xEmb.toString()) == false) {
      throw Exception('Invalid value for xEmb');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,7}(\.[0-9]{1,3})?')
            .hasMatch(qVolEmb.toString())) ==
        false) {
      throw Exception('Invalid value for qVolEmb - $qVolEmb');
    }
    ;
    if ((qVolEmb.toString().trim() == qVolEmb.toString()) == false) {
      throw Exception('Invalid value for qVolEmb');
    }
    ;
    if ((uEmb.toString().length <= 8) == false) {
      throw Exception('Invalid value for uEmb');
    }
    ;
    if ((uEmb.toString().length >= 1) == false) {
      throw Exception('Invalid value for uEmb');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(uEmb.toString())) ==
        false) {
      throw Exception('Invalid value for uEmb - $uEmb');
    }
    ;
    if ((uEmb.toString().trim() == uEmb.toString()) == false) {
      throw Exception('Invalid value for uEmb');
    }
    ;
  }
  infProdEmbComplexType_prod.unsafe(
      {this.xmlns,
      required this.xEmb,
      required this.qVolEmb,
      required this.uEmb});
  String toXml(
      {String name = 'infProdEmb', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('xEmb'), [], [xml.XmlText(xEmb.toString())]),
      xml.XmlElement(
          xml.XmlName('qVolEmb'), [], [xml.XmlText(qVolEmb.toString())]),
      xml.XmlElement(xml.XmlName('uEmb'), [], [xml.XmlText(uEmb.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory infProdEmbComplexType_prod.fromXml(String xmlString,
      {String name = 'infProdEmb'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return infProdEmbComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xEmb: element.findElements('xEmb').first.text,
      qVolEmb: element.findElements('qVolEmb').first.text,
      uEmb: element.findElements('uEmb').first.text,
    );
  }
  factory infProdEmbComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$infProdEmbComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$infProdEmbComplexType_prodToJson(this);
}

List<infProdEmbComplexType_prod> _infProdEmbComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            infProdEmbComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<infProdEmbComplexType_prod>? _infProdEmbComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            infProdEmbComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _infProdEmbComplexType_prodListToJson(
        List<infProdEmbComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _infProdEmbComplexType_prodMaybeListToJson(
        List<infProdEmbComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
infProdEmbComplexType_prod _infProdEmbComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    infProdEmbComplexType_prod.fromJson(json);
infProdEmbComplexType_prod? _infProdEmbComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? infProdEmbComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _infProdEmbComplexType_prodToJson(
        infProdEmbComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _infProdEmbComplexType_prodMaybeToJson(
        infProdEmbComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class veicProdComplexType_prod {
  String? xmlns;
  @JsonKey(fromJson: _tpOpEnumFromValue, toJson: _tpOpEnumToValue)
  tpOpEnum tpOp;
  String chassi;
  String cCor;
  String xCor;
  String pot;
  String cilin;
  String pesoL;
  String pesoB;
  String nSerie;
  String tpComb;
  String nMotor;
  String CMT;
  String dist;
  String anoMod;
  String anoFab;
  String tpPint;
  String tpVeic;
  String espVeic;
  @JsonKey(fromJson: _VINEnumFromValue, toJson: _VINEnumToValue)
  VINEnum VIN;
  @JsonKey(fromJson: _condVeicEnumFromValue, toJson: _condVeicEnumToValue)
  condVeicEnum condVeic;
  String cMod;
  String cCorDENATRAN;
  String lota;
  @JsonKey(fromJson: _tpRestEnumFromValue, toJson: _tpRestEnumToValue)
  tpRestEnum tpRest;
  veicProdComplexType_prod(
      {this.xmlns,
      required this.tpOp,
      required this.chassi,
      required this.cCor,
      required this.xCor,
      required this.pot,
      required this.cilin,
      required this.pesoL,
      required this.pesoB,
      required this.nSerie,
      required this.tpComb,
      required this.nMotor,
      required this.CMT,
      required this.dist,
      required this.anoMod,
      required this.anoFab,
      required this.tpPint,
      required this.tpVeic,
      required this.espVeic,
      required this.VIN,
      required this.condVeic,
      required this.cMod,
      required this.cCorDENATRAN,
      required this.lota,
      required this.tpRest}) {
    if ((tpOp.toString().trim() == tpOp.toString()) == false) {
      throw Exception('Invalid value for tpOp');
    }
    ;
    if ((chassi.toString().length == 17) == false) {
      throw Exception('Invalid value for chassi');
    }
    ;
    if ((RegExp(r'[A-Z0-9]+').hasMatch(chassi.toString())) == false) {
      throw Exception('Invalid value for chassi - $chassi');
    }
    ;
    if ((chassi.toString().trim() == chassi.toString()) == false) {
      throw Exception('Invalid value for chassi');
    }
    ;
    if ((cCor.toString().length <= 4) == false) {
      throw Exception('Invalid value for cCor');
    }
    ;
    if ((cCor.toString().length >= 1) == false) {
      throw Exception('Invalid value for cCor');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cCor.toString())) ==
        false) {
      throw Exception('Invalid value for cCor - $cCor');
    }
    ;
    if ((cCor.toString().trim() == cCor.toString()) == false) {
      throw Exception('Invalid value for cCor');
    }
    ;
    if ((xCor.toString().length <= 40) == false) {
      throw Exception('Invalid value for xCor');
    }
    ;
    if ((xCor.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCor');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xCor.toString())) ==
        false) {
      throw Exception('Invalid value for xCor - $xCor');
    }
    ;
    if ((xCor.toString().trim() == xCor.toString()) == false) {
      throw Exception('Invalid value for xCor');
    }
    ;
    if ((pot.toString().length <= 4) == false) {
      throw Exception('Invalid value for pot');
    }
    ;
    if ((pot.toString().length >= 1) == false) {
      throw Exception('Invalid value for pot');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(pot.toString())) ==
        false) {
      throw Exception('Invalid value for pot - $pot');
    }
    ;
    if ((pot.toString().trim() == pot.toString()) == false) {
      throw Exception('Invalid value for pot');
    }
    ;
    if ((cilin.toString().length <= 4) == false) {
      throw Exception('Invalid value for cilin');
    }
    ;
    if ((cilin.toString().length >= 1) == false) {
      throw Exception('Invalid value for cilin');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cilin.toString())) ==
        false) {
      throw Exception('Invalid value for cilin - $cilin');
    }
    ;
    if ((cilin.toString().trim() == cilin.toString()) == false) {
      throw Exception('Invalid value for cilin');
    }
    ;
    if ((pesoL.toString().length <= 9) == false) {
      throw Exception('Invalid value for pesoL');
    }
    ;
    if ((pesoL.toString().length >= 1) == false) {
      throw Exception('Invalid value for pesoL');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(pesoL.toString())) ==
        false) {
      throw Exception('Invalid value for pesoL - $pesoL');
    }
    ;
    if ((pesoL.toString().trim() == pesoL.toString()) == false) {
      throw Exception('Invalid value for pesoL');
    }
    ;
    if ((pesoB.toString().length <= 9) == false) {
      throw Exception('Invalid value for pesoB');
    }
    ;
    if ((pesoB.toString().length >= 1) == false) {
      throw Exception('Invalid value for pesoB');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(pesoB.toString())) ==
        false) {
      throw Exception('Invalid value for pesoB - $pesoB');
    }
    ;
    if ((pesoB.toString().trim() == pesoB.toString()) == false) {
      throw Exception('Invalid value for pesoB');
    }
    ;
    if ((nSerie.toString().length <= 9) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((nSerie.toString().length >= 1) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nSerie.toString())) ==
        false) {
      throw Exception('Invalid value for nSerie - $nSerie');
    }
    ;
    if ((nSerie.toString().trim() == nSerie.toString()) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((tpComb.toString().length <= 2) == false) {
      throw Exception('Invalid value for tpComb');
    }
    ;
    if ((tpComb.toString().length >= 1) == false) {
      throw Exception('Invalid value for tpComb');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(tpComb.toString())) ==
        false) {
      throw Exception('Invalid value for tpComb - $tpComb');
    }
    ;
    if ((tpComb.toString().trim() == tpComb.toString()) == false) {
      throw Exception('Invalid value for tpComb');
    }
    ;
    if ((nMotor.toString().length <= 21) == false) {
      throw Exception('Invalid value for nMotor');
    }
    ;
    if ((nMotor.toString().length >= 1) == false) {
      throw Exception('Invalid value for nMotor');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nMotor.toString())) ==
        false) {
      throw Exception('Invalid value for nMotor - $nMotor');
    }
    ;
    if ((nMotor.toString().trim() == nMotor.toString()) == false) {
      throw Exception('Invalid value for nMotor');
    }
    ;
    if ((CMT.toString().length <= 9) == false) {
      throw Exception('Invalid value for CMT');
    }
    ;
    if ((CMT.toString().length >= 1) == false) {
      throw Exception('Invalid value for CMT');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(CMT.toString())) ==
        false) {
      throw Exception('Invalid value for CMT - $CMT');
    }
    ;
    if ((CMT.toString().trim() == CMT.toString()) == false) {
      throw Exception('Invalid value for CMT');
    }
    ;
    if ((dist.toString().length <= 4) == false) {
      throw Exception('Invalid value for dist');
    }
    ;
    if ((dist.toString().length >= 1) == false) {
      throw Exception('Invalid value for dist');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(dist.toString())) ==
        false) {
      throw Exception('Invalid value for dist - $dist');
    }
    ;
    if ((dist.toString().trim() == dist.toString()) == false) {
      throw Exception('Invalid value for dist');
    }
    ;
    if ((RegExp(r'[0-9]{4}').hasMatch(anoMod.toString())) == false) {
      throw Exception('Invalid value for anoMod - $anoMod');
    }
    ;
    if ((anoMod.toString().trim() == anoMod.toString()) == false) {
      throw Exception('Invalid value for anoMod');
    }
    ;
    if ((RegExp(r'[0-9]{4}').hasMatch(anoFab.toString())) == false) {
      throw Exception('Invalid value for anoFab - $anoFab');
    }
    ;
    if ((anoFab.toString().trim() == anoFab.toString()) == false) {
      throw Exception('Invalid value for anoFab');
    }
    ;
    if ((tpPint.toString().length == 1) == false) {
      throw Exception('Invalid value for tpPint');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(tpPint.toString())) ==
        false) {
      throw Exception('Invalid value for tpPint - $tpPint');
    }
    ;
    if ((tpPint.toString().trim() == tpPint.toString()) == false) {
      throw Exception('Invalid value for tpPint');
    }
    ;
    if ((RegExp(r'[0-9]{1,2}').hasMatch(tpVeic.toString())) == false) {
      throw Exception('Invalid value for tpVeic - $tpVeic');
    }
    ;
    if ((tpVeic.toString().trim() == tpVeic.toString()) == false) {
      throw Exception('Invalid value for tpVeic');
    }
    ;
    if ((RegExp(r'[0-9]{1}').hasMatch(espVeic.toString())) == false) {
      throw Exception('Invalid value for espVeic - $espVeic');
    }
    ;
    if ((espVeic.toString().trim() == espVeic.toString()) == false) {
      throw Exception('Invalid value for espVeic');
    }
    ;
    if ((VIN.toString().length == 1) == false) {
      throw Exception('Invalid value for VIN');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(VIN.toString())) ==
        false) {
      throw Exception('Invalid value for VIN - $VIN');
    }
    ;
    if ((VIN.toString().trim() == VIN.toString()) == false) {
      throw Exception('Invalid value for VIN');
    }
    ;
    if ((condVeic.toString().trim() == condVeic.toString()) == false) {
      throw Exception('Invalid value for condVeic');
    }
    ;
    if ((RegExp(r'[0-9]{1,6}').hasMatch(cMod.toString())) == false) {
      throw Exception('Invalid value for cMod - $cMod');
    }
    ;
    if ((cMod.toString().trim() == cMod.toString()) == false) {
      throw Exception('Invalid value for cMod');
    }
    ;
    if ((cCorDENATRAN.toString().length <= 2) == false) {
      throw Exception('Invalid value for cCorDENATRAN');
    }
    ;
    if ((cCorDENATRAN.toString().length >= 1) == false) {
      throw Exception('Invalid value for cCorDENATRAN');
    }
    ;
    if ((RegExp(r'[0-9]{1,2}').hasMatch(cCorDENATRAN.toString())) == false) {
      throw Exception('Invalid value for cCorDENATRAN - $cCorDENATRAN');
    }
    ;
    if ((cCorDENATRAN.toString().trim() == cCorDENATRAN.toString()) == false) {
      throw Exception('Invalid value for cCorDENATRAN');
    }
    ;
    if ((lota.toString().length <= 3) == false) {
      throw Exception('Invalid value for lota');
    }
    ;
    if ((lota.toString().length >= 1) == false) {
      throw Exception('Invalid value for lota');
    }
    ;
    if ((RegExp(r'[0-9]{1,3}').hasMatch(lota.toString())) == false) {
      throw Exception('Invalid value for lota - $lota');
    }
    ;
    if ((lota.toString().trim() == lota.toString()) == false) {
      throw Exception('Invalid value for lota');
    }
    ;
    if ((tpRest.toString().trim() == tpRest.toString()) == false) {
      throw Exception('Invalid value for tpRest');
    }
    ;
  }
  veicProdComplexType_prod.unsafe(
      {this.xmlns,
      required this.tpOp,
      required this.chassi,
      required this.cCor,
      required this.xCor,
      required this.pot,
      required this.cilin,
      required this.pesoL,
      required this.pesoB,
      required this.nSerie,
      required this.tpComb,
      required this.nMotor,
      required this.CMT,
      required this.dist,
      required this.anoMod,
      required this.anoFab,
      required this.tpPint,
      required this.tpVeic,
      required this.espVeic,
      required this.VIN,
      required this.condVeic,
      required this.cMod,
      required this.cCorDENATRAN,
      required this.lota,
      required this.tpRest});
  String toXml({String name = 'veicProd', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('tpOp'), [], [xml.XmlText(tpOp.value)]),
      xml.XmlElement(
          xml.XmlName('chassi'), [], [xml.XmlText(chassi.toString())]),
      xml.XmlElement(xml.XmlName('cCor'), [], [xml.XmlText(cCor.toString())]),
      xml.XmlElement(xml.XmlName('xCor'), [], [xml.XmlText(xCor.toString())]),
      xml.XmlElement(xml.XmlName('pot'), [], [xml.XmlText(pot.toString())]),
      xml.XmlElement(xml.XmlName('cilin'), [], [xml.XmlText(cilin.toString())]),
      xml.XmlElement(xml.XmlName('pesoL'), [], [xml.XmlText(pesoL.toString())]),
      xml.XmlElement(xml.XmlName('pesoB'), [], [xml.XmlText(pesoB.toString())]),
      xml.XmlElement(
          xml.XmlName('nSerie'), [], [xml.XmlText(nSerie.toString())]),
      xml.XmlElement(
          xml.XmlName('tpComb'), [], [xml.XmlText(tpComb.toString())]),
      xml.XmlElement(
          xml.XmlName('nMotor'), [], [xml.XmlText(nMotor.toString())]),
      xml.XmlElement(xml.XmlName('CMT'), [], [xml.XmlText(CMT.toString())]),
      xml.XmlElement(xml.XmlName('dist'), [], [xml.XmlText(dist.toString())]),
      xml.XmlElement(
          xml.XmlName('anoMod'), [], [xml.XmlText(anoMod.toString())]),
      xml.XmlElement(
          xml.XmlName('anoFab'), [], [xml.XmlText(anoFab.toString())]),
      xml.XmlElement(
          xml.XmlName('tpPint'), [], [xml.XmlText(tpPint.toString())]),
      xml.XmlElement(
          xml.XmlName('tpVeic'), [], [xml.XmlText(tpVeic.toString())]),
      xml.XmlElement(
          xml.XmlName('espVeic'), [], [xml.XmlText(espVeic.toString())]),
      xml.XmlElement(xml.XmlName('VIN'), [], [xml.XmlText(VIN.value)]),
      xml.XmlElement(
          xml.XmlName('condVeic'), [], [xml.XmlText(condVeic.value)]),
      xml.XmlElement(xml.XmlName('cMod'), [], [xml.XmlText(cMod.toString())]),
      xml.XmlElement(xml.XmlName('cCorDENATRAN'), [],
          [xml.XmlText(cCorDENATRAN.toString())]),
      xml.XmlElement(xml.XmlName('lota'), [], [xml.XmlText(lota.toString())]),
      xml.XmlElement(xml.XmlName('tpRest'), [], [xml.XmlText(tpRest.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory veicProdComplexType_prod.fromXml(String xmlString,
      {String name = 'veicProd'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return veicProdComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      tpOp: tpOpEnum.fromValue(element.findElements('tpOp').first.text),
      chassi: element.findElements('chassi').first.text,
      cCor: element.findElements('cCor').first.text,
      xCor: element.findElements('xCor').first.text,
      pot: element.findElements('pot').first.text,
      cilin: element.findElements('cilin').first.text,
      pesoL: element.findElements('pesoL').first.text,
      pesoB: element.findElements('pesoB').first.text,
      nSerie: element.findElements('nSerie').first.text,
      tpComb: element.findElements('tpComb').first.text,
      nMotor: element.findElements('nMotor').first.text,
      CMT: element.findElements('CMT').first.text,
      dist: element.findElements('dist').first.text,
      anoMod: element.findElements('anoMod').first.text,
      anoFab: element.findElements('anoFab').first.text,
      tpPint: element.findElements('tpPint').first.text,
      tpVeic: element.findElements('tpVeic').first.text,
      espVeic: element.findElements('espVeic').first.text,
      VIN: VINEnum.fromValue(element.findElements('VIN').first.text),
      condVeic:
          condVeicEnum.fromValue(element.findElements('condVeic').first.text),
      cMod: element.findElements('cMod').first.text,
      cCorDENATRAN: element.findElements('cCorDENATRAN').first.text,
      lota: element.findElements('lota').first.text,
      tpRest: tpRestEnum.fromValue(element.findElements('tpRest').first.text),
    );
  }
  factory veicProdComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$veicProdComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$veicProdComplexType_prodToJson(this);
}

List<veicProdComplexType_prod> _veicProdComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => veicProdComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<veicProdComplexType_prod>? _veicProdComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => veicProdComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _veicProdComplexType_prodListToJson(
        List<veicProdComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _veicProdComplexType_prodMaybeListToJson(
        List<veicProdComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
veicProdComplexType_prod _veicProdComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    veicProdComplexType_prod.fromJson(json);
veicProdComplexType_prod? _veicProdComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? veicProdComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _veicProdComplexType_prodToJson(
        veicProdComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _veicProdComplexType_prodMaybeToJson(
        veicProdComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class medComplexType_prod {
  String? xmlns;
  String cProdANVISA;
  String? xMotivoIsencao;
  String vPMC;
  medComplexType_prod(
      {this.xmlns,
      required this.cProdANVISA,
      this.xMotivoIsencao,
      required this.vPMC}) {
    if ((RegExp(r'[0-9]{11}|[0-9]{13}|ISENTO')
            .hasMatch(cProdANVISA.toString())) ==
        false) {
      throw Exception('Invalid value for cProdANVISA - $cProdANVISA');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cProdANVISA.toString())) ==
        false) {
      throw Exception('Invalid value for cProdANVISA - $cProdANVISA');
    }
    ;
    if ((cProdANVISA.toString().trim() == cProdANVISA.toString()) == false) {
      throw Exception('Invalid value for cProdANVISA');
    }
    ;
    if ((xMotivoIsencao == null || xMotivoIsencao.toString().length <= 255) ==
        false) {
      throw Exception('Invalid value for xMotivoIsencao');
    }
    ;
    if ((xMotivoIsencao == null || xMotivoIsencao.toString().length >= 1) ==
        false) {
      throw Exception('Invalid value for xMotivoIsencao');
    }
    ;
    if ((xMotivoIsencao == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xMotivoIsencao.toString())) ==
        false) {
      throw Exception('Invalid value for xMotivoIsencao - $xMotivoIsencao');
    }
    ;
    if ((xMotivoIsencao == null ||
            xMotivoIsencao.toString().trim() == xMotivoIsencao.toString()) ==
        false) {
      throw Exception('Invalid value for xMotivoIsencao');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPMC.toString())) ==
        false) {
      throw Exception('Invalid value for vPMC - $vPMC');
    }
    ;
    if ((vPMC.toString().trim() == vPMC.toString()) == false) {
      throw Exception('Invalid value for vPMC');
    }
    ;
  }
  medComplexType_prod.unsafe(
      {this.xmlns,
      required this.cProdANVISA,
      this.xMotivoIsencao,
      required this.vPMC});
  String toXml({String name = 'med', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('cProdANVISA'), [],
          [xml.XmlText(cProdANVISA.toString())]),
      if (xMotivoIsencao != null)
        xml.XmlElement(xml.XmlName('xMotivoIsencao'), [],
            [xml.XmlText(xMotivoIsencao.toString())]),
      xml.XmlElement(xml.XmlName('vPMC'), [], [xml.XmlText(vPMC.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory medComplexType_prod.fromXml(String xmlString, {String name = 'med'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return medComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cProdANVISA: element.findElements('cProdANVISA').first.text,
      xMotivoIsencao: element.findElements('xMotivoIsencao').isNotEmpty
          ? element.findElements('xMotivoIsencao').first.text
          : null,
      vPMC: element.findElements('vPMC').first.text,
    );
  }
  factory medComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$medComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$medComplexType_prodToJson(this);
}

List<medComplexType_prod> _medComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => medComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<medComplexType_prod>? _medComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => medComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _medComplexType_prodListToJson(
        List<medComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _medComplexType_prodMaybeListToJson(
        List<medComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
medComplexType_prod _medComplexType_prodFromJson(Map<String, dynamic> json) =>
    medComplexType_prod.fromJson(json);
medComplexType_prod? _medComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? medComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _medComplexType_prodToJson(medComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _medComplexType_prodMaybeToJson(
        medComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class armaComplexType_prod {
  String? xmlns;
  @JsonKey(fromJson: _tpArmaEnumFromValue, toJson: _tpArmaEnumToValue)
  tpArmaEnum tpArma;
  String nSerie;
  String nCano;
  String descr;
  armaComplexType_prod(
      {this.xmlns,
      required this.tpArma,
      required this.nSerie,
      required this.nCano,
      required this.descr}) {
    if ((tpArma.toString().trim() == tpArma.toString()) == false) {
      throw Exception('Invalid value for tpArma');
    }
    ;
    if ((nSerie.toString().length <= 15) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((nSerie.toString().length >= 1) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nSerie.toString())) ==
        false) {
      throw Exception('Invalid value for nSerie - $nSerie');
    }
    ;
    if ((nSerie.toString().trim() == nSerie.toString()) == false) {
      throw Exception('Invalid value for nSerie');
    }
    ;
    if ((nCano.toString().length <= 15) == false) {
      throw Exception('Invalid value for nCano');
    }
    ;
    if ((nCano.toString().length >= 1) == false) {
      throw Exception('Invalid value for nCano');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nCano.toString())) ==
        false) {
      throw Exception('Invalid value for nCano - $nCano');
    }
    ;
    if ((nCano.toString().trim() == nCano.toString()) == false) {
      throw Exception('Invalid value for nCano');
    }
    ;
    if ((descr.toString().length <= 256) == false) {
      throw Exception('Invalid value for descr');
    }
    ;
    if ((descr.toString().length >= 1) == false) {
      throw Exception('Invalid value for descr');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(descr.toString())) ==
        false) {
      throw Exception('Invalid value for descr - $descr');
    }
    ;
    if ((descr.toString().trim() == descr.toString()) == false) {
      throw Exception('Invalid value for descr');
    }
    ;
  }
  armaComplexType_prod.unsafe(
      {this.xmlns,
      required this.tpArma,
      required this.nSerie,
      required this.nCano,
      required this.descr});
  String toXml({String name = 'arma', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('tpArma'), [], [xml.XmlText(tpArma.value)]),
      xml.XmlElement(
          xml.XmlName('nSerie'), [], [xml.XmlText(nSerie.toString())]),
      xml.XmlElement(xml.XmlName('nCano'), [], [xml.XmlText(nCano.toString())]),
      xml.XmlElement(xml.XmlName('descr'), [], [xml.XmlText(descr.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory armaComplexType_prod.fromXml(String xmlString,
      {String name = 'arma'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return armaComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      tpArma: tpArmaEnum.fromValue(element.findElements('tpArma').first.text),
      nSerie: element.findElements('nSerie').first.text,
      nCano: element.findElements('nCano').first.text,
      descr: element.findElements('descr').first.text,
    );
  }
  factory armaComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$armaComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$armaComplexType_prodToJson(this);
}

List<armaComplexType_prod> _armaComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => armaComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<armaComplexType_prod>? _armaComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => armaComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _armaComplexType_prodListToJson(
        List<armaComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _armaComplexType_prodMaybeListToJson(
        List<armaComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
armaComplexType_prod _armaComplexType_prodFromJson(Map<String, dynamic> json) =>
    armaComplexType_prod.fromJson(json);
armaComplexType_prod? _armaComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? armaComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _armaComplexType_prodToJson(
        armaComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _armaComplexType_prodMaybeToJson(
        armaComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class combComplexType_prod {
  String? xmlns;
  String cProdANP;
  String descANP;
  String? pGLP;
  String? pGNn;
  String? pGNi;
  String? vPart;
  String? CODIF;
  String? qTemp;
  @JsonKey(fromJson: _UFConsEnumFromValue, toJson: _UFConsEnumToValue)
  UFConsEnum UFCons;
  @JsonKey(
      fromJson: _CIDEComplexType_combMaybeFromJson,
      toJson: _CIDEComplexType_combMaybeToJson)
  CIDEComplexType_comb? CIDE;
  @JsonKey(
      fromJson: _encerranteComplexType_combMaybeFromJson,
      toJson: _encerranteComplexType_combMaybeToJson)
  encerranteComplexType_comb? encerrante;
  combComplexType_prod(
      {this.xmlns,
      required this.cProdANP,
      required this.descANP,
      this.pGLP,
      this.pGNn,
      this.pGNi,
      this.vPart,
      this.CODIF,
      this.qTemp,
      required this.UFCons,
      this.CIDE,
      this.encerrante}) {
    if ((RegExp(r'[0-9]{9}').hasMatch(cProdANP.toString())) == false) {
      throw Exception('Invalid value for cProdANP - $cProdANP');
    }
    ;
    if ((cProdANP.toString().trim() == cProdANP.toString()) == false) {
      throw Exception('Invalid value for cProdANP');
    }
    ;
    if ((descANP.toString().length <= 95) == false) {
      throw Exception('Invalid value for descANP');
    }
    ;
    if ((descANP.toString().length >= 2) == false) {
      throw Exception('Invalid value for descANP');
    }
    ;
    if ((pGLP == null ||
            RegExp(r'0(\.[0-9]{2,4})?|[1-9]{1}[0-9]{0,1}(\.[0-9]{2,4})?|100(\.0{2,4})?')
                .hasMatch(pGLP.toString())) ==
        false) {
      throw Exception('Invalid value for pGLP - $pGLP');
    }
    ;
    if ((pGLP == null || pGLP.toString().trim() == pGLP.toString()) == false) {
      throw Exception('Invalid value for pGLP');
    }
    ;
    if ((pGNn == null ||
            RegExp(r'0(\.[0-9]{2,4})?|[1-9]{1}[0-9]{0,1}(\.[0-9]{2,4})?|100(\.0{2,4})?')
                .hasMatch(pGNn.toString())) ==
        false) {
      throw Exception('Invalid value for pGNn - $pGNn');
    }
    ;
    if ((pGNn == null || pGNn.toString().trim() == pGNn.toString()) == false) {
      throw Exception('Invalid value for pGNn');
    }
    ;
    if ((pGNi == null ||
            RegExp(r'0(\.[0-9]{2,4})?|[1-9]{1}[0-9]{0,1}(\.[0-9]{2,4})?|100(\.0{2,4})?')
                .hasMatch(pGNi.toString())) ==
        false) {
      throw Exception('Invalid value for pGNi - $pGNi');
    }
    ;
    if ((pGNi == null || pGNi.toString().trim() == pGNi.toString()) == false) {
      throw Exception('Invalid value for pGNi');
    }
    ;
    if ((vPart == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vPart.toString())) ==
        false) {
      throw Exception('Invalid value for vPart - $vPart');
    }
    ;
    if ((vPart == null || vPart.toString().trim() == vPart.toString()) ==
        false) {
      throw Exception('Invalid value for vPart');
    }
    ;
    if ((CODIF == null || RegExp(r'[0-9]{1,21}').hasMatch(CODIF.toString())) ==
        false) {
      throw Exception('Invalid value for CODIF - $CODIF');
    }
    ;
    if ((CODIF == null || CODIF.toString().trim() == CODIF.toString()) ==
        false) {
      throw Exception('Invalid value for CODIF');
    }
    ;
    if ((qTemp == null ||
            RegExp(r'0\.[1-9]{1}[0-9]{3}|0\.[0-9]{3}[1-9]{1}|0\.[0-9]{2}[1-9]{1}[0-9]{1}|0\.[0-9]{1}[1-9]{1}[0-9]{2}|[1-9]{1}[0-9]{0,11}(\.[0-9]{4})?')
                .hasMatch(qTemp.toString())) ==
        false) {
      throw Exception('Invalid value for qTemp - $qTemp');
    }
    ;
    if ((qTemp == null || qTemp.toString().trim() == qTemp.toString()) ==
        false) {
      throw Exception('Invalid value for qTemp');
    }
    ;
    if ((UFCons.toString().trim() == UFCons.toString()) == false) {
      throw Exception('Invalid value for UFCons');
    }
    ;
  }
  combComplexType_prod.unsafe(
      {this.xmlns,
      required this.cProdANP,
      required this.descANP,
      this.pGLP,
      this.pGNn,
      this.pGNi,
      this.vPart,
      this.CODIF,
      this.qTemp,
      required this.UFCons,
      this.CIDE,
      this.encerrante});
  String toXml({String name = 'comb', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('cProdANP'), [], [xml.XmlText(cProdANP.toString())]),
      xml.XmlElement(
          xml.XmlName('descANP'), [], [xml.XmlText(descANP.toString())]),
      if (pGLP != null)
        xml.XmlElement(xml.XmlName('pGLP'), [], [xml.XmlText(pGLP.toString())]),
      if (pGNn != null)
        xml.XmlElement(xml.XmlName('pGNn'), [], [xml.XmlText(pGNn.toString())]),
      if (pGNi != null)
        xml.XmlElement(xml.XmlName('pGNi'), [], [xml.XmlText(pGNi.toString())]),
      if (vPart != null)
        xml.XmlElement(
            xml.XmlName('vPart'), [], [xml.XmlText(vPart.toString())]),
      if (CODIF != null)
        xml.XmlElement(
            xml.XmlName('CODIF'), [], [xml.XmlText(CODIF.toString())]),
      if (qTemp != null)
        xml.XmlElement(
            xml.XmlName('qTemp'), [], [xml.XmlText(qTemp.toString())]),
      xml.XmlElement(xml.XmlName('UFCons'), [], [xml.XmlText(UFCons.value)]),
      if (CIDE != null)
        xml.XmlDocumentFragment.parse(
            CIDE!.toXml(name: "CIDE", pretty: pretty)),
      if (encerrante != null)
        xml.XmlDocumentFragment.parse(
            encerrante!.toXml(name: "encerrante", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory combComplexType_prod.fromXml(String xmlString,
      {String name = 'comb'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return combComplexType_prod.unsafe(
      xmlns: element.getAttribute('xmlns'),
      cProdANP: element.findElements('cProdANP').first.text,
      descANP: element.findElements('descANP').first.text,
      pGLP: element.findElements('pGLP').isNotEmpty
          ? element.findElements('pGLP').first.text
          : null,
      pGNn: element.findElements('pGNn').isNotEmpty
          ? element.findElements('pGNn').first.text
          : null,
      pGNi: element.findElements('pGNi').isNotEmpty
          ? element.findElements('pGNi').first.text
          : null,
      vPart: element.findElements('vPart').isNotEmpty
          ? element.findElements('vPart').first.text
          : null,
      CODIF: element.findElements('CODIF').isNotEmpty
          ? element.findElements('CODIF').first.text
          : null,
      qTemp: element.findElements('qTemp').isNotEmpty
          ? element.findElements('qTemp').first.text
          : null,
      UFCons: UFConsEnum.fromValue(element.findElements('UFCons').first.text),
      CIDE: element.findElements('CIDE').isNotEmpty
          ? CIDEComplexType_comb.fromXml(
              element.findElements('CIDE').first.toString(),
              name: "CIDE")
          : null,
      encerrante: element.findElements('encerrante').isNotEmpty
          ? encerranteComplexType_comb.fromXml(
              element.findElements('encerrante').first.toString(),
              name: "encerrante")
          : null,
    );
  }
  factory combComplexType_prod.fromJson(Map<String, dynamic> json) =>
      _$combComplexType_prodFromJson(json);
  Map<String, dynamic> toJson() => _$combComplexType_prodToJson(this);
}

List<combComplexType_prod> _combComplexType_prodListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => combComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<combComplexType_prod>? _combComplexType_prodMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => combComplexType_prod.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _combComplexType_prodListToJson(
        List<combComplexType_prod> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _combComplexType_prodMaybeListToJson(
        List<combComplexType_prod>? list) =>
    list?.map((e) => e.toJson()).toList();
combComplexType_prod _combComplexType_prodFromJson(Map<String, dynamic> json) =>
    combComplexType_prod.fromJson(json);
combComplexType_prod? _combComplexType_prodMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? combComplexType_prod.fromJson(json) : null;
Map<String, dynamic> _combComplexType_prodToJson(
        combComplexType_prod instance) =>
    instance.toJson();
Map<String, dynamic>? _combComplexType_prodMaybeToJson(
        combComplexType_prod? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSComplexType_imposto {
  String? xmlns;
  @JsonKey(
      fromJson: _ICMS00ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS00ComplexType_ICMSMaybeToJson)
  ICMS00ComplexType_ICMS? ICMS00;
  @JsonKey(
      fromJson: _ICMS10ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS10ComplexType_ICMSMaybeToJson)
  ICMS10ComplexType_ICMS? ICMS10;
  @JsonKey(
      fromJson: _ICMS20ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS20ComplexType_ICMSMaybeToJson)
  ICMS20ComplexType_ICMS? ICMS20;
  @JsonKey(
      fromJson: _ICMS30ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS30ComplexType_ICMSMaybeToJson)
  ICMS30ComplexType_ICMS? ICMS30;
  @JsonKey(
      fromJson: _ICMS40ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS40ComplexType_ICMSMaybeToJson)
  ICMS40ComplexType_ICMS? ICMS40;
  @JsonKey(
      fromJson: _ICMS51ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS51ComplexType_ICMSMaybeToJson)
  ICMS51ComplexType_ICMS? ICMS51;
  @JsonKey(
      fromJson: _ICMS60ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS60ComplexType_ICMSMaybeToJson)
  ICMS60ComplexType_ICMS? ICMS60;
  @JsonKey(
      fromJson: _ICMS70ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS70ComplexType_ICMSMaybeToJson)
  ICMS70ComplexType_ICMS? ICMS70;
  @JsonKey(
      fromJson: _ICMS90ComplexType_ICMSMaybeFromJson,
      toJson: _ICMS90ComplexType_ICMSMaybeToJson)
  ICMS90ComplexType_ICMS? ICMS90;
  @JsonKey(
      fromJson: _ICMSPartComplexType_ICMSMaybeFromJson,
      toJson: _ICMSPartComplexType_ICMSMaybeToJson)
  ICMSPartComplexType_ICMS? ICMSPart;
  @JsonKey(
      fromJson: _ICMSSTComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSTComplexType_ICMSMaybeToJson)
  ICMSSTComplexType_ICMS? ICMSST;
  @JsonKey(
      fromJson: _ICMSSN101ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN101ComplexType_ICMSMaybeToJson)
  ICMSSN101ComplexType_ICMS? ICMSSN101;
  @JsonKey(
      fromJson: _ICMSSN102ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN102ComplexType_ICMSMaybeToJson)
  ICMSSN102ComplexType_ICMS? ICMSSN102;
  @JsonKey(
      fromJson: _ICMSSN201ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN201ComplexType_ICMSMaybeToJson)
  ICMSSN201ComplexType_ICMS? ICMSSN201;
  @JsonKey(
      fromJson: _ICMSSN202ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN202ComplexType_ICMSMaybeToJson)
  ICMSSN202ComplexType_ICMS? ICMSSN202;
  @JsonKey(
      fromJson: _ICMSSN500ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN500ComplexType_ICMSMaybeToJson)
  ICMSSN500ComplexType_ICMS? ICMSSN500;
  @JsonKey(
      fromJson: _ICMSSN900ComplexType_ICMSMaybeFromJson,
      toJson: _ICMSSN900ComplexType_ICMSMaybeToJson)
  ICMSSN900ComplexType_ICMS? ICMSSN900;
  ICMSComplexType_imposto(
      {this.xmlns,
      this.ICMS00,
      this.ICMS10,
      this.ICMS20,
      this.ICMS30,
      this.ICMS40,
      this.ICMS51,
      this.ICMS60,
      this.ICMS70,
      this.ICMS90,
      this.ICMSPart,
      this.ICMSST,
      this.ICMSSN101,
      this.ICMSSN102,
      this.ICMSSN201,
      this.ICMSSN202,
      this.ICMSSN500,
      this.ICMSSN900}) {
    final _$ICMS00ICMS10ICMS20ICMS30ICMS40ICMS51ICMS60ICMS70ICMS90ICMSPartICMSSTICMSSN101ICMSSN102ICMSSN201ICMSSN202ICMSSN500ICMSSN900 =
        [
      ICMS00 != null,
      ICMS10 != null,
      ICMS20 != null,
      ICMS30 != null,
      ICMS40 != null,
      ICMS51 != null,
      ICMS60 != null,
      ICMS70 != null,
      ICMS90 != null,
      ICMSPart != null,
      ICMSST != null,
      ICMSSN101 != null,
      ICMSSN102 != null,
      ICMSSN201 != null,
      ICMSSN202 != null,
      ICMSSN500 != null,
      ICMSSN900 != null
    ];
    if ((_$ICMS00ICMS10ICMS20ICMS30ICMS40ICMS51ICMS60ICMS70ICMS90ICMSPartICMSSTICMSSN101ICMSSN102ICMSSN201ICMSSN202ICMSSN500ICMSSN900
                .every((e) => e == false) ||
            _$ICMS00ICMS10ICMS20ICMS30ICMS40ICMS51ICMS60ICMS70ICMS90ICMSPartICMSSTICMSSN101ICMSSN102ICMSSN201ICMSSN202ICMSSN500ICMSSN900
                    .where((e) => e == true)
                    .length ==
                1) ==
        false) {
      throw Exception(
          'Choose one of ICMS00, ICMS10, ICMS20, ICMS30, ICMS40, ICMS51, ICMS60, ICMS70, ICMS90, ICMSPart, ICMSST, ICMSSN101, ICMSSN102, ICMSSN201, ICMSSN202, ICMSSN500, ICMSSN900');
    }
    ;
  }
  ICMSComplexType_imposto.unsafe(
      {this.xmlns,
      this.ICMS00,
      this.ICMS10,
      this.ICMS20,
      this.ICMS30,
      this.ICMS40,
      this.ICMS51,
      this.ICMS60,
      this.ICMS70,
      this.ICMS90,
      this.ICMSPart,
      this.ICMSST,
      this.ICMSSN101,
      this.ICMSSN102,
      this.ICMSSN201,
      this.ICMSSN202,
      this.ICMSSN500,
      this.ICMSSN900});
  String toXml({String name = 'ICMS', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (ICMS00 != null)
        xml.XmlDocumentFragment.parse(
            ICMS00!.toXml(name: "ICMS00", pretty: pretty)),
      if (ICMS10 != null)
        xml.XmlDocumentFragment.parse(
            ICMS10!.toXml(name: "ICMS10", pretty: pretty)),
      if (ICMS20 != null)
        xml.XmlDocumentFragment.parse(
            ICMS20!.toXml(name: "ICMS20", pretty: pretty)),
      if (ICMS30 != null)
        xml.XmlDocumentFragment.parse(
            ICMS30!.toXml(name: "ICMS30", pretty: pretty)),
      if (ICMS40 != null)
        xml.XmlDocumentFragment.parse(
            ICMS40!.toXml(name: "ICMS40", pretty: pretty)),
      if (ICMS51 != null)
        xml.XmlDocumentFragment.parse(
            ICMS51!.toXml(name: "ICMS51", pretty: pretty)),
      if (ICMS60 != null)
        xml.XmlDocumentFragment.parse(
            ICMS60!.toXml(name: "ICMS60", pretty: pretty)),
      if (ICMS70 != null)
        xml.XmlDocumentFragment.parse(
            ICMS70!.toXml(name: "ICMS70", pretty: pretty)),
      if (ICMS90 != null)
        xml.XmlDocumentFragment.parse(
            ICMS90!.toXml(name: "ICMS90", pretty: pretty)),
      if (ICMSPart != null)
        xml.XmlDocumentFragment.parse(
            ICMSPart!.toXml(name: "ICMSPart", pretty: pretty)),
      if (ICMSST != null)
        xml.XmlDocumentFragment.parse(
            ICMSST!.toXml(name: "ICMSST", pretty: pretty)),
      if (ICMSSN101 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN101!.toXml(name: "ICMSSN101", pretty: pretty)),
      if (ICMSSN102 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN102!.toXml(name: "ICMSSN102", pretty: pretty)),
      if (ICMSSN201 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN201!.toXml(name: "ICMSSN201", pretty: pretty)),
      if (ICMSSN202 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN202!.toXml(name: "ICMSSN202", pretty: pretty)),
      if (ICMSSN500 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN500!.toXml(name: "ICMSSN500", pretty: pretty)),
      if (ICMSSN900 != null)
        xml.XmlDocumentFragment.parse(
            ICMSSN900!.toXml(name: "ICMSSN900", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSComplexType_imposto.fromXml(String xmlString,
      {String name = 'ICMS'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      ICMS00: element.findElements('ICMS00').isNotEmpty
          ? ICMS00ComplexType_ICMS.fromXml(
              element.findElements('ICMS00').first.toString(),
              name: "ICMS00")
          : null,
      ICMS10: element.findElements('ICMS10').isNotEmpty
          ? ICMS10ComplexType_ICMS.fromXml(
              element.findElements('ICMS10').first.toString(),
              name: "ICMS10")
          : null,
      ICMS20: element.findElements('ICMS20').isNotEmpty
          ? ICMS20ComplexType_ICMS.fromXml(
              element.findElements('ICMS20').first.toString(),
              name: "ICMS20")
          : null,
      ICMS30: element.findElements('ICMS30').isNotEmpty
          ? ICMS30ComplexType_ICMS.fromXml(
              element.findElements('ICMS30').first.toString(),
              name: "ICMS30")
          : null,
      ICMS40: element.findElements('ICMS40').isNotEmpty
          ? ICMS40ComplexType_ICMS.fromXml(
              element.findElements('ICMS40').first.toString(),
              name: "ICMS40")
          : null,
      ICMS51: element.findElements('ICMS51').isNotEmpty
          ? ICMS51ComplexType_ICMS.fromXml(
              element.findElements('ICMS51').first.toString(),
              name: "ICMS51")
          : null,
      ICMS60: element.findElements('ICMS60').isNotEmpty
          ? ICMS60ComplexType_ICMS.fromXml(
              element.findElements('ICMS60').first.toString(),
              name: "ICMS60")
          : null,
      ICMS70: element.findElements('ICMS70').isNotEmpty
          ? ICMS70ComplexType_ICMS.fromXml(
              element.findElements('ICMS70').first.toString(),
              name: "ICMS70")
          : null,
      ICMS90: element.findElements('ICMS90').isNotEmpty
          ? ICMS90ComplexType_ICMS.fromXml(
              element.findElements('ICMS90').first.toString(),
              name: "ICMS90")
          : null,
      ICMSPart: element.findElements('ICMSPart').isNotEmpty
          ? ICMSPartComplexType_ICMS.fromXml(
              element.findElements('ICMSPart').first.toString(),
              name: "ICMSPart")
          : null,
      ICMSST: element.findElements('ICMSST').isNotEmpty
          ? ICMSSTComplexType_ICMS.fromXml(
              element.findElements('ICMSST').first.toString(),
              name: "ICMSST")
          : null,
      ICMSSN101: element.findElements('ICMSSN101').isNotEmpty
          ? ICMSSN101ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN101').first.toString(),
              name: "ICMSSN101")
          : null,
      ICMSSN102: element.findElements('ICMSSN102').isNotEmpty
          ? ICMSSN102ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN102').first.toString(),
              name: "ICMSSN102")
          : null,
      ICMSSN201: element.findElements('ICMSSN201').isNotEmpty
          ? ICMSSN201ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN201').first.toString(),
              name: "ICMSSN201")
          : null,
      ICMSSN202: element.findElements('ICMSSN202').isNotEmpty
          ? ICMSSN202ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN202').first.toString(),
              name: "ICMSSN202")
          : null,
      ICMSSN500: element.findElements('ICMSSN500').isNotEmpty
          ? ICMSSN500ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN500').first.toString(),
              name: "ICMSSN500")
          : null,
      ICMSSN900: element.findElements('ICMSSN900').isNotEmpty
          ? ICMSSN900ComplexType_ICMS.fromXml(
              element.findElements('ICMSSN900').first.toString(),
              name: "ICMSSN900")
          : null,
    );
  }
  factory ICMSComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$ICMSComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSComplexType_impostoToJson(this);
}

List<ICMSComplexType_imposto> _ICMSComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMSComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSComplexType_imposto>? _ICMSComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ICMSComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSComplexType_impostoListToJson(
        List<ICMSComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSComplexType_impostoMaybeListToJson(
        List<ICMSComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSComplexType_imposto _ICMSComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ICMSComplexType_imposto.fromJson(json);
ICMSComplexType_imposto? _ICMSComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _ICMSComplexType_impostoToJson(
        ICMSComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSComplexType_impostoMaybeToJson(
        ICMSComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class IIComplexType_imposto {
  String? xmlns;
  String vBC;
  String vDespAdu;
  String vII;
  String vIOF;
  IIComplexType_imposto(
      {this.xmlns,
      required this.vBC,
      required this.vDespAdu,
      required this.vII,
      required this.vIOF}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vDespAdu.toString())) ==
        false) {
      throw Exception('Invalid value for vDespAdu - $vDespAdu');
    }
    ;
    if ((vDespAdu.toString().trim() == vDespAdu.toString()) == false) {
      throw Exception('Invalid value for vDespAdu');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vII.toString())) ==
        false) {
      throw Exception('Invalid value for vII - $vII');
    }
    ;
    if ((vII.toString().trim() == vII.toString()) == false) {
      throw Exception('Invalid value for vII');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vIOF.toString())) ==
        false) {
      throw Exception('Invalid value for vIOF - $vIOF');
    }
    ;
    if ((vIOF.toString().trim() == vIOF.toString()) == false) {
      throw Exception('Invalid value for vIOF');
    }
    ;
  }
  IIComplexType_imposto.unsafe(
      {this.xmlns,
      required this.vBC,
      required this.vDespAdu,
      required this.vII,
      required this.vIOF});
  String toXml({String name = 'II', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(
          xml.XmlName('vDespAdu'), [], [xml.XmlText(vDespAdu.toString())]),
      xml.XmlElement(xml.XmlName('vII'), [], [xml.XmlText(vII.toString())]),
      xml.XmlElement(xml.XmlName('vIOF'), [], [xml.XmlText(vIOF.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory IIComplexType_imposto.fromXml(String xmlString,
      {String name = 'II'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return IIComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBC: element.findElements('vBC').first.text,
      vDespAdu: element.findElements('vDespAdu').first.text,
      vII: element.findElements('vII').first.text,
      vIOF: element.findElements('vIOF').first.text,
    );
  }
  factory IIComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$IIComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$IIComplexType_impostoToJson(this);
}

List<IIComplexType_imposto> _IIComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => IIComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<IIComplexType_imposto>? _IIComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => IIComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _IIComplexType_impostoListToJson(
        List<IIComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _IIComplexType_impostoMaybeListToJson(
        List<IIComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
IIComplexType_imposto _IIComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    IIComplexType_imposto.fromJson(json);
IIComplexType_imposto? _IIComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? IIComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _IIComplexType_impostoToJson(
        IIComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _IIComplexType_impostoMaybeToJson(
        IIComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class ISSQNComplexType_imposto {
  String? xmlns;
  String vBC;
  String vAliq;
  String vISSQN;
  String cMunFG;
  String cListServ;
  String? vDeducao;
  String? vOutro;
  String? vDescIncond;
  String? vDescCond;
  String? vISSRet;
  @JsonKey(fromJson: _indISSEnumFromValue, toJson: _indISSEnumToValue)
  indISSEnum indISS;
  String? cServico;
  String? cMun;
  String? cPais;
  String? nProcesso;
  @JsonKey(
      fromJson: _indIncentivoEnumFromValue, toJson: _indIncentivoEnumToValue)
  indIncentivoEnum indIncentivo;
  ISSQNComplexType_imposto(
      {this.xmlns,
      required this.vBC,
      required this.vAliq,
      required this.vISSQN,
      required this.cMunFG,
      required this.cListServ,
      this.vDeducao,
      this.vOutro,
      this.vDescIncond,
      this.vDescCond,
      this.vISSRet,
      required this.indISS,
      this.cServico,
      this.cMun,
      this.cPais,
      this.nProcesso,
      required this.indIncentivo}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(vAliq.toString())) ==
        false) {
      throw Exception('Invalid value for vAliq - $vAliq');
    }
    ;
    if ((vAliq.toString().trim() == vAliq.toString()) == false) {
      throw Exception('Invalid value for vAliq');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vISSQN.toString())) ==
        false) {
      throw Exception('Invalid value for vISSQN - $vISSQN');
    }
    ;
    if ((vISSQN.toString().trim() == vISSQN.toString()) == false) {
      throw Exception('Invalid value for vISSQN');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMunFG.toString())) == false) {
      throw Exception('Invalid value for cMunFG - $cMunFG');
    }
    ;
    if ((cMunFG.toString().trim() == cMunFG.toString()) == false) {
      throw Exception('Invalid value for cMunFG');
    }
    ;
    if ((RegExp(r'[0-9]{2}.[0-9]{2}').hasMatch(cListServ.toString())) ==
        false) {
      throw Exception('Invalid value for cListServ - $cListServ');
    }
    ;
    if ((cListServ.toString().trim() == cListServ.toString()) == false) {
      throw Exception('Invalid value for cListServ');
    }
    ;
    if ((vDeducao == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDeducao.toString())) ==
        false) {
      throw Exception('Invalid value for vDeducao - $vDeducao');
    }
    ;
    if ((vDeducao == null ||
            vDeducao.toString().trim() == vDeducao.toString()) ==
        false) {
      throw Exception('Invalid value for vDeducao');
    }
    ;
    if ((vOutro == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vOutro.toString())) ==
        false) {
      throw Exception('Invalid value for vOutro - $vOutro');
    }
    ;
    if ((vOutro == null || vOutro.toString().trim() == vOutro.toString()) ==
        false) {
      throw Exception('Invalid value for vOutro');
    }
    ;
    if ((vDescIncond == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDescIncond.toString())) ==
        false) {
      throw Exception('Invalid value for vDescIncond - $vDescIncond');
    }
    ;
    if ((vDescIncond == null ||
            vDescIncond.toString().trim() == vDescIncond.toString()) ==
        false) {
      throw Exception('Invalid value for vDescIncond');
    }
    ;
    if ((vDescCond == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDescCond.toString())) ==
        false) {
      throw Exception('Invalid value for vDescCond - $vDescCond');
    }
    ;
    if ((vDescCond == null ||
            vDescCond.toString().trim() == vDescCond.toString()) ==
        false) {
      throw Exception('Invalid value for vDescCond');
    }
    ;
    if ((vISSRet == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vISSRet.toString())) ==
        false) {
      throw Exception('Invalid value for vISSRet - $vISSRet');
    }
    ;
    if ((vISSRet == null || vISSRet.toString().trim() == vISSRet.toString()) ==
        false) {
      throw Exception('Invalid value for vISSRet');
    }
    ;
    if ((indISS.toString().trim() == indISS.toString()) == false) {
      throw Exception('Invalid value for indISS');
    }
    ;
    if ((cServico == null || cServico.toString().length <= 20) == false) {
      throw Exception('Invalid value for cServico');
    }
    ;
    if ((cServico == null || cServico.toString().length >= 1) == false) {
      throw Exception('Invalid value for cServico');
    }
    ;
    if ((cServico == null ||
            cServico.toString().trim() == cServico.toString()) ==
        false) {
      throw Exception('Invalid value for cServico');
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
    if ((cPais == null || RegExp(r'[0-9]{1,4}').hasMatch(cPais.toString())) ==
        false) {
      throw Exception('Invalid value for cPais - $cPais');
    }
    ;
    if ((cPais == null || cPais.toString().trim() == cPais.toString()) ==
        false) {
      throw Exception('Invalid value for cPais');
    }
    ;
    if ((nProcesso == null || nProcesso.toString().length <= 30) == false) {
      throw Exception('Invalid value for nProcesso');
    }
    ;
    if ((nProcesso == null || nProcesso.toString().length >= 1) == false) {
      throw Exception('Invalid value for nProcesso');
    }
    ;
    if ((nProcesso == null ||
            nProcesso.toString().trim() == nProcesso.toString()) ==
        false) {
      throw Exception('Invalid value for nProcesso');
    }
    ;
    if ((indIncentivo.toString().trim() == indIncentivo.toString()) == false) {
      throw Exception('Invalid value for indIncentivo');
    }
    ;
  }
  ISSQNComplexType_imposto.unsafe(
      {this.xmlns,
      required this.vBC,
      required this.vAliq,
      required this.vISSQN,
      required this.cMunFG,
      required this.cListServ,
      this.vDeducao,
      this.vOutro,
      this.vDescIncond,
      this.vDescCond,
      this.vISSRet,
      required this.indISS,
      this.cServico,
      this.cMun,
      this.cPais,
      this.nProcesso,
      required this.indIncentivo});
  String toXml({String name = 'ISSQN', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('vAliq'), [], [xml.XmlText(vAliq.toString())]),
      xml.XmlElement(
          xml.XmlName('vISSQN'), [], [xml.XmlText(vISSQN.toString())]),
      xml.XmlElement(
          xml.XmlName('cMunFG'), [], [xml.XmlText(cMunFG.toString())]),
      xml.XmlElement(
          xml.XmlName('cListServ'), [], [xml.XmlText(cListServ.toString())]),
      if (vDeducao != null)
        xml.XmlElement(
            xml.XmlName('vDeducao'), [], [xml.XmlText(vDeducao.toString())]),
      if (vOutro != null)
        xml.XmlElement(
            xml.XmlName('vOutro'), [], [xml.XmlText(vOutro.toString())]),
      if (vDescIncond != null)
        xml.XmlElement(xml.XmlName('vDescIncond'), [],
            [xml.XmlText(vDescIncond.toString())]),
      if (vDescCond != null)
        xml.XmlElement(
            xml.XmlName('vDescCond'), [], [xml.XmlText(vDescCond.toString())]),
      if (vISSRet != null)
        xml.XmlElement(
            xml.XmlName('vISSRet'), [], [xml.XmlText(vISSRet.toString())]),
      xml.XmlElement(xml.XmlName('indISS'), [], [xml.XmlText(indISS.value)]),
      if (cServico != null)
        xml.XmlElement(
            xml.XmlName('cServico'), [], [xml.XmlText(cServico.toString())]),
      if (cMun != null)
        xml.XmlElement(xml.XmlName('cMun'), [], [xml.XmlText(cMun.toString())]),
      if (cPais != null)
        xml.XmlElement(
            xml.XmlName('cPais'), [], [xml.XmlText(cPais.toString())]),
      if (nProcesso != null)
        xml.XmlElement(
            xml.XmlName('nProcesso'), [], [xml.XmlText(nProcesso.toString())]),
      xml.XmlElement(
          xml.XmlName('indIncentivo'), [], [xml.XmlText(indIncentivo.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ISSQNComplexType_imposto.fromXml(String xmlString,
      {String name = 'ISSQN'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ISSQNComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBC: element.findElements('vBC').first.text,
      vAliq: element.findElements('vAliq').first.text,
      vISSQN: element.findElements('vISSQN').first.text,
      cMunFG: element.findElements('cMunFG').first.text,
      cListServ: element.findElements('cListServ').first.text,
      vDeducao: element.findElements('vDeducao').isNotEmpty
          ? element.findElements('vDeducao').first.text
          : null,
      vOutro: element.findElements('vOutro').isNotEmpty
          ? element.findElements('vOutro').first.text
          : null,
      vDescIncond: element.findElements('vDescIncond').isNotEmpty
          ? element.findElements('vDescIncond').first.text
          : null,
      vDescCond: element.findElements('vDescCond').isNotEmpty
          ? element.findElements('vDescCond').first.text
          : null,
      vISSRet: element.findElements('vISSRet').isNotEmpty
          ? element.findElements('vISSRet').first.text
          : null,
      indISS: indISSEnum.fromValue(element.findElements('indISS').first.text),
      cServico: element.findElements('cServico').isNotEmpty
          ? element.findElements('cServico').first.text
          : null,
      cMun: element.findElements('cMun').isNotEmpty
          ? element.findElements('cMun').first.text
          : null,
      cPais: element.findElements('cPais').isNotEmpty
          ? element.findElements('cPais').first.text
          : null,
      nProcesso: element.findElements('nProcesso').isNotEmpty
          ? element.findElements('nProcesso').first.text
          : null,
      indIncentivo: indIncentivoEnum
          .fromValue(element.findElements('indIncentivo').first.text),
    );
  }
  factory ISSQNComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$ISSQNComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$ISSQNComplexType_impostoToJson(this);
}

List<ISSQNComplexType_imposto> _ISSQNComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => ISSQNComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<ISSQNComplexType_imposto>? _ISSQNComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ISSQNComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ISSQNComplexType_impostoListToJson(
        List<ISSQNComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ISSQNComplexType_impostoMaybeListToJson(
        List<ISSQNComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
ISSQNComplexType_imposto _ISSQNComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ISSQNComplexType_imposto.fromJson(json);
ISSQNComplexType_imposto? _ISSQNComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ISSQNComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _ISSQNComplexType_impostoToJson(
        ISSQNComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _ISSQNComplexType_impostoMaybeToJson(
        ISSQNComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISComplexType_imposto {
  String? xmlns;
  @JsonKey(
      fromJson: _PISAliqComplexType_PISMaybeFromJson,
      toJson: _PISAliqComplexType_PISMaybeToJson)
  PISAliqComplexType_PIS? PISAliq;
  @JsonKey(
      fromJson: _PISQtdeComplexType_PISMaybeFromJson,
      toJson: _PISQtdeComplexType_PISMaybeToJson)
  PISQtdeComplexType_PIS? PISQtde;
  @JsonKey(
      fromJson: _PISNTComplexType_PISMaybeFromJson,
      toJson: _PISNTComplexType_PISMaybeToJson)
  PISNTComplexType_PIS? PISNT;
  @JsonKey(
      fromJson: _PISOutrComplexType_PISMaybeFromJson,
      toJson: _PISOutrComplexType_PISMaybeToJson)
  PISOutrComplexType_PIS? PISOutr;
  PISComplexType_imposto(
      {this.xmlns, this.PISAliq, this.PISQtde, this.PISNT, this.PISOutr}) {
    final _$PISAliqPISQtdePISNTPISOutr = [
      PISAliq != null,
      PISQtde != null,
      PISNT != null,
      PISOutr != null
    ];
    if ((_$PISAliqPISQtdePISNTPISOutr.every((e) => e == false) ||
            _$PISAliqPISQtdePISNTPISOutr.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of PISAliq, PISQtde, PISNT, PISOutr');
    }
    ;
  }
  PISComplexType_imposto.unsafe(
      {this.xmlns, this.PISAliq, this.PISQtde, this.PISNT, this.PISOutr});
  String toXml({String name = 'PIS', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (PISAliq != null)
        xml.XmlDocumentFragment.parse(
            PISAliq!.toXml(name: "PISAliq", pretty: pretty)),
      if (PISQtde != null)
        xml.XmlDocumentFragment.parse(
            PISQtde!.toXml(name: "PISQtde", pretty: pretty)),
      if (PISNT != null)
        xml.XmlDocumentFragment.parse(
            PISNT!.toXml(name: "PISNT", pretty: pretty)),
      if (PISOutr != null)
        xml.XmlDocumentFragment.parse(
            PISOutr!.toXml(name: "PISOutr", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISComplexType_imposto.fromXml(String xmlString,
      {String name = 'PIS'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      PISAliq: element.findElements('PISAliq').isNotEmpty
          ? PISAliqComplexType_PIS.fromXml(
              element.findElements('PISAliq').first.toString(),
              name: "PISAliq")
          : null,
      PISQtde: element.findElements('PISQtde').isNotEmpty
          ? PISQtdeComplexType_PIS.fromXml(
              element.findElements('PISQtde').first.toString(),
              name: "PISQtde")
          : null,
      PISNT: element.findElements('PISNT').isNotEmpty
          ? PISNTComplexType_PIS.fromXml(
              element.findElements('PISNT').first.toString(),
              name: "PISNT")
          : null,
      PISOutr: element.findElements('PISOutr').isNotEmpty
          ? PISOutrComplexType_PIS.fromXml(
              element.findElements('PISOutr').first.toString(),
              name: "PISOutr")
          : null,
    );
  }
  factory PISComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$PISComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$PISComplexType_impostoToJson(this);
}

List<PISComplexType_imposto> _PISComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => PISComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISComplexType_imposto>? _PISComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => PISComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISComplexType_impostoListToJson(
        List<PISComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISComplexType_impostoMaybeListToJson(
        List<PISComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
PISComplexType_imposto _PISComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    PISComplexType_imposto.fromJson(json);
PISComplexType_imposto? _PISComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _PISComplexType_impostoToJson(
        PISComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _PISComplexType_impostoMaybeToJson(
        PISComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISSTComplexType_imposto {
  String? xmlns;
  String? vBC;
  String? pPIS;
  String? qBCProd;
  String? vAliqProd;
  String vPIS;
  @JsonKey(
      fromJson: _indSomaPISSTEnumFromMaybeValue,
      toJson: _indSomaPISSTEnumToMaybeValue)
  indSomaPISSTEnum? indSomaPISST;
  PISSTComplexType_imposto(
      {this.xmlns,
      this.vBC,
      this.pPIS,
      this.qBCProd,
      this.vAliqProd,
      required this.vPIS,
      this.indSomaPISST}) {
    if ((vBC == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pPIS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pPIS.toString())) ==
        false) {
      throw Exception('Invalid value for pPIS - $pPIS');
    }
    ;
    if ((pPIS == null || pPIS.toString().trim() == pPIS.toString()) == false) {
      throw Exception('Invalid value for pPIS');
    }
    ;
    if ((qBCProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{4})?')
                .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd == null || qBCProd.toString().trim() == qBCProd.toString()) ==
        false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((vAliqProd == null ||
            RegExp(r'0|0\.[0-9]{4}|[1-9]{1}[0-9]{0,10}(\.[0-9]{4})?')
                .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd == null ||
            vAliqProd.toString().trim() == vAliqProd.toString()) ==
        false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
    if ((indSomaPISST == null ||
            indSomaPISST.toString().trim() == indSomaPISST.toString()) ==
        false) {
      throw Exception('Invalid value for indSomaPISST');
    }
    ;
  }
  PISSTComplexType_imposto.unsafe(
      {this.xmlns,
      this.vBC,
      this.pPIS,
      this.qBCProd,
      this.vAliqProd,
      required this.vPIS,
      this.indSomaPISST});
  String toXml({String name = 'PISST', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pPIS != null)
        xml.XmlElement(xml.XmlName('pPIS'), [], [xml.XmlText(pPIS.toString())]),
      if (qBCProd != null)
        xml.XmlElement(
            xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      if (vAliqProd != null)
        xml.XmlElement(
            xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())]),
      if (indSomaPISST != null)
        xml.XmlElement(
            xml.XmlName('indSomaPISST'), [], [xml.XmlText(indSomaPISST!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISSTComplexType_imposto.fromXml(String xmlString,
      {String name = 'PISST'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISSTComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pPIS: element.findElements('pPIS').isNotEmpty
          ? element.findElements('pPIS').first.text
          : null,
      qBCProd: element.findElements('qBCProd').isNotEmpty
          ? element.findElements('qBCProd').first.text
          : null,
      vAliqProd: element.findElements('vAliqProd').isNotEmpty
          ? element.findElements('vAliqProd').first.text
          : null,
      vPIS: element.findElements('vPIS').first.text,
      indSomaPISST: element.findElements('indSomaPISST').isNotEmpty
          ? indSomaPISSTEnum
              .fromValue(element.findElements('indSomaPISST').first.text)
          : null,
    );
  }
  factory PISSTComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$PISSTComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$PISSTComplexType_impostoToJson(this);
}

List<PISSTComplexType_imposto> _PISSTComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => PISSTComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISSTComplexType_imposto>? _PISSTComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => PISSTComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISSTComplexType_impostoListToJson(
        List<PISSTComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISSTComplexType_impostoMaybeListToJson(
        List<PISSTComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
PISSTComplexType_imposto _PISSTComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    PISSTComplexType_imposto.fromJson(json);
PISSTComplexType_imposto? _PISSTComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISSTComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _PISSTComplexType_impostoToJson(
        PISSTComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _PISSTComplexType_impostoMaybeToJson(
        PISSTComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSComplexType_imposto {
  String? xmlns;
  @JsonKey(
      fromJson: _COFINSAliqComplexType_COFINSMaybeFromJson,
      toJson: _COFINSAliqComplexType_COFINSMaybeToJson)
  COFINSAliqComplexType_COFINS? COFINSAliq;
  @JsonKey(
      fromJson: _COFINSQtdeComplexType_COFINSMaybeFromJson,
      toJson: _COFINSQtdeComplexType_COFINSMaybeToJson)
  COFINSQtdeComplexType_COFINS? COFINSQtde;
  @JsonKey(
      fromJson: _COFINSNTComplexType_COFINSMaybeFromJson,
      toJson: _COFINSNTComplexType_COFINSMaybeToJson)
  COFINSNTComplexType_COFINS? COFINSNT;
  @JsonKey(
      fromJson: _COFINSOutrComplexType_COFINSMaybeFromJson,
      toJson: _COFINSOutrComplexType_COFINSMaybeToJson)
  COFINSOutrComplexType_COFINS? COFINSOutr;
  COFINSComplexType_imposto(
      {this.xmlns,
      this.COFINSAliq,
      this.COFINSQtde,
      this.COFINSNT,
      this.COFINSOutr}) {
    final _$COFINSAliqCOFINSQtdeCOFINSNTCOFINSOutr = [
      COFINSAliq != null,
      COFINSQtde != null,
      COFINSNT != null,
      COFINSOutr != null
    ];
    if ((_$COFINSAliqCOFINSQtdeCOFINSNTCOFINSOutr.every((e) => e == false) ||
            _$COFINSAliqCOFINSQtdeCOFINSNTCOFINSOutr
                    .where((e) => e == true)
                    .length ==
                1) ==
        false) {
      throw Exception(
          'Choose one of COFINSAliq, COFINSQtde, COFINSNT, COFINSOutr');
    }
    ;
  }
  COFINSComplexType_imposto.unsafe(
      {this.xmlns,
      this.COFINSAliq,
      this.COFINSQtde,
      this.COFINSNT,
      this.COFINSOutr});
  String toXml({String name = 'COFINS', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (COFINSAliq != null)
        xml.XmlDocumentFragment.parse(
            COFINSAliq!.toXml(name: "COFINSAliq", pretty: pretty)),
      if (COFINSQtde != null)
        xml.XmlDocumentFragment.parse(
            COFINSQtde!.toXml(name: "COFINSQtde", pretty: pretty)),
      if (COFINSNT != null)
        xml.XmlDocumentFragment.parse(
            COFINSNT!.toXml(name: "COFINSNT", pretty: pretty)),
      if (COFINSOutr != null)
        xml.XmlDocumentFragment.parse(
            COFINSOutr!.toXml(name: "COFINSOutr", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSComplexType_imposto.fromXml(String xmlString,
      {String name = 'COFINS'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      COFINSAliq: element.findElements('COFINSAliq').isNotEmpty
          ? COFINSAliqComplexType_COFINS.fromXml(
              element.findElements('COFINSAliq').first.toString(),
              name: "COFINSAliq")
          : null,
      COFINSQtde: element.findElements('COFINSQtde').isNotEmpty
          ? COFINSQtdeComplexType_COFINS.fromXml(
              element.findElements('COFINSQtde').first.toString(),
              name: "COFINSQtde")
          : null,
      COFINSNT: element.findElements('COFINSNT').isNotEmpty
          ? COFINSNTComplexType_COFINS.fromXml(
              element.findElements('COFINSNT').first.toString(),
              name: "COFINSNT")
          : null,
      COFINSOutr: element.findElements('COFINSOutr').isNotEmpty
          ? COFINSOutrComplexType_COFINS.fromXml(
              element.findElements('COFINSOutr').first.toString(),
              name: "COFINSOutr")
          : null,
    );
  }
  factory COFINSComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$COFINSComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSComplexType_impostoToJson(this);
}

List<COFINSComplexType_imposto> _COFINSComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSComplexType_imposto>? _COFINSComplexType_impostoMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            COFINSComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSComplexType_impostoListToJson(
        List<COFINSComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSComplexType_impostoMaybeListToJson(
        List<COFINSComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSComplexType_imposto _COFINSComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    COFINSComplexType_imposto.fromJson(json);
COFINSComplexType_imposto? _COFINSComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _COFINSComplexType_impostoToJson(
        COFINSComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSComplexType_impostoMaybeToJson(
        COFINSComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSSTComplexType_imposto {
  String? xmlns;
  String? vBC;
  String? pCOFINS;
  String? qBCProd;
  String? vAliqProd;
  String vCOFINS;
  @JsonKey(
      fromJson: _indSomaCOFINSSTEnumFromMaybeValue,
      toJson: _indSomaCOFINSSTEnumToMaybeValue)
  indSomaCOFINSSTEnum? indSomaCOFINSST;
  COFINSSTComplexType_imposto(
      {this.xmlns,
      this.vBC,
      this.pCOFINS,
      this.qBCProd,
      this.vAliqProd,
      required this.vCOFINS,
      this.indSomaCOFINSST}) {
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pCOFINS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for pCOFINS - $pCOFINS');
    }
    ;
    if ((pCOFINS == null || pCOFINS.toString().trim() == pCOFINS.toString()) ==
        false) {
      throw Exception('Invalid value for pCOFINS');
    }
    ;
    if ((qBCProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{4})?')
                .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd == null || qBCProd.toString().trim() == qBCProd.toString()) ==
        false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((vAliqProd == null ||
            RegExp(r'0|0\.[0-9]{4}|[1-9]{1}[0-9]{0,10}(\.[0-9]{4})?')
                .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd == null ||
            vAliqProd.toString().trim() == vAliqProd.toString()) ==
        false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS.toString().trim() == vCOFINS.toString()) == false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
    if ((indSomaCOFINSST == null ||
            indSomaCOFINSST.toString().trim() == indSomaCOFINSST.toString()) ==
        false) {
      throw Exception('Invalid value for indSomaCOFINSST');
    }
    ;
  }
  COFINSSTComplexType_imposto.unsafe(
      {this.xmlns,
      this.vBC,
      this.pCOFINS,
      this.qBCProd,
      this.vAliqProd,
      required this.vCOFINS,
      this.indSomaCOFINSST});
  String toXml({String name = 'COFINSST', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pCOFINS != null)
        xml.XmlElement(
            xml.XmlName('pCOFINS'), [], [xml.XmlText(pCOFINS.toString())]),
      if (qBCProd != null)
        xml.XmlElement(
            xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      if (vAliqProd != null)
        xml.XmlElement(
            xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())]),
      if (indSomaCOFINSST != null)
        xml.XmlElement(xml.XmlName('indSomaCOFINSST'), [],
            [xml.XmlText(indSomaCOFINSST!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSSTComplexType_imposto.fromXml(String xmlString,
      {String name = 'COFINSST'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSSTComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pCOFINS: element.findElements('pCOFINS').isNotEmpty
          ? element.findElements('pCOFINS').first.text
          : null,
      qBCProd: element.findElements('qBCProd').isNotEmpty
          ? element.findElements('qBCProd').first.text
          : null,
      vAliqProd: element.findElements('vAliqProd').isNotEmpty
          ? element.findElements('vAliqProd').first.text
          : null,
      vCOFINS: element.findElements('vCOFINS').first.text,
      indSomaCOFINSST: element.findElements('indSomaCOFINSST').isNotEmpty
          ? indSomaCOFINSSTEnum
              .fromValue(element.findElements('indSomaCOFINSST').first.text)
          : null,
    );
  }
  factory COFINSSTComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$COFINSSTComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSSTComplexType_impostoToJson(this);
}

List<COFINSSTComplexType_imposto> _COFINSSTComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSSTComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSSTComplexType_imposto>?
    _COFINSSTComplexType_impostoMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            COFINSSTComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSSTComplexType_impostoListToJson(
        List<COFINSSTComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSSTComplexType_impostoMaybeListToJson(
        List<COFINSSTComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSSTComplexType_imposto _COFINSSTComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    COFINSSTComplexType_imposto.fromJson(json);
COFINSSTComplexType_imposto? _COFINSSTComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSSTComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _COFINSSTComplexType_impostoToJson(
        COFINSSTComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSSTComplexType_impostoMaybeToJson(
        COFINSSTComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSUFDestComplexType_imposto {
  String? xmlns;
  String vBCUFDest;
  String? vBCFCPUFDest;
  String? pFCPUFDest;
  String pICMSUFDest;
  @JsonKey(fromJson: _pICMSInterEnumFromValue, toJson: _pICMSInterEnumToValue)
  pICMSInterEnum pICMSInter;
  String pICMSInterPart;
  String? vFCPUFDest;
  String vICMSUFDest;
  String vICMSUFRemet;
  ICMSUFDestComplexType_imposto(
      {this.xmlns,
      required this.vBCUFDest,
      this.vBCFCPUFDest,
      this.pFCPUFDest,
      required this.pICMSUFDest,
      required this.pICMSInter,
      required this.pICMSInterPart,
      this.vFCPUFDest,
      required this.vICMSUFDest,
      required this.vICMSUFRemet}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vBCUFDest - $vBCUFDest');
    }
    ;
    if ((vBCUFDest.toString().trim() == vBCUFDest.toString()) == false) {
      throw Exception('Invalid value for vBCUFDest');
    }
    ;
    if ((vBCFCPUFDest == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPUFDest - $vBCFCPUFDest');
    }
    ;
    if ((vBCFCPUFDest == null ||
            vBCFCPUFDest.toString().trim() == vBCFCPUFDest.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPUFDest');
    }
    ;
    if ((pFCPUFDest == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPUFDest - $pFCPUFDest');
    }
    ;
    if ((pFCPUFDest == null ||
            pFCPUFDest.toString().trim() == pFCPUFDest.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPUFDest');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSUFDest - $pICMSUFDest');
    }
    ;
    if ((pICMSUFDest.toString().trim() == pICMSUFDest.toString()) == false) {
      throw Exception('Invalid value for pICMSUFDest');
    }
    ;
    if ((pICMSInter.toString().trim() == pICMSInter.toString()) == false) {
      throw Exception('Invalid value for pICMSInter');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSInterPart.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSInterPart - $pICMSInterPart');
    }
    ;
    if ((pICMSInterPart.toString().trim() == pICMSInterPart.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSInterPart');
    }
    ;
    if ((vFCPUFDest == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPUFDest - $vFCPUFDest');
    }
    ;
    if ((vFCPUFDest == null ||
            vFCPUFDest.toString().trim() == vFCPUFDest.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPUFDest');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSUFDest.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSUFDest - $vICMSUFDest');
    }
    ;
    if ((vICMSUFDest.toString().trim() == vICMSUFDest.toString()) == false) {
      throw Exception('Invalid value for vICMSUFDest');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSUFRemet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSUFRemet - $vICMSUFRemet');
    }
    ;
    if ((vICMSUFRemet.toString().trim() == vICMSUFRemet.toString()) == false) {
      throw Exception('Invalid value for vICMSUFRemet');
    }
    ;
  }
  ICMSUFDestComplexType_imposto.unsafe(
      {this.xmlns,
      required this.vBCUFDest,
      this.vBCFCPUFDest,
      this.pFCPUFDest,
      required this.pICMSUFDest,
      required this.pICMSInter,
      required this.pICMSInterPart,
      this.vFCPUFDest,
      required this.vICMSUFDest,
      required this.vICMSUFRemet});
  String toXml(
      {String name = 'ICMSUFDest', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('vBCUFDest'), [], [xml.XmlText(vBCUFDest.toString())]),
      if (vBCFCPUFDest != null)
        xml.XmlElement(xml.XmlName('vBCFCPUFDest'), [],
            [xml.XmlText(vBCFCPUFDest.toString())]),
      if (pFCPUFDest != null)
        xml.XmlElement(xml.XmlName('pFCPUFDest'), [],
            [xml.XmlText(pFCPUFDest.toString())]),
      xml.XmlElement(xml.XmlName('pICMSUFDest'), [],
          [xml.XmlText(pICMSUFDest.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSInter'), [], [xml.XmlText(pICMSInter.value)]),
      xml.XmlElement(xml.XmlName('pICMSInterPart'), [],
          [xml.XmlText(pICMSInterPart.toString())]),
      if (vFCPUFDest != null)
        xml.XmlElement(xml.XmlName('vFCPUFDest'), [],
            [xml.XmlText(vFCPUFDest.toString())]),
      xml.XmlElement(xml.XmlName('vICMSUFDest'), [],
          [xml.XmlText(vICMSUFDest.toString())]),
      xml.XmlElement(xml.XmlName('vICMSUFRemet'), [],
          [xml.XmlText(vICMSUFRemet.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSUFDestComplexType_imposto.fromXml(String xmlString,
      {String name = 'ICMSUFDest'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSUFDestComplexType_imposto.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vBCUFDest: element.findElements('vBCUFDest').first.text,
      vBCFCPUFDest: element.findElements('vBCFCPUFDest').isNotEmpty
          ? element.findElements('vBCFCPUFDest').first.text
          : null,
      pFCPUFDest: element.findElements('pFCPUFDest').isNotEmpty
          ? element.findElements('pFCPUFDest').first.text
          : null,
      pICMSUFDest: element.findElements('pICMSUFDest').first.text,
      pICMSInter: pICMSInterEnum
          .fromValue(element.findElements('pICMSInter').first.text),
      pICMSInterPart: element.findElements('pICMSInterPart').first.text,
      vFCPUFDest: element.findElements('vFCPUFDest').isNotEmpty
          ? element.findElements('vFCPUFDest').first.text
          : null,
      vICMSUFDest: element.findElements('vICMSUFDest').first.text,
      vICMSUFRemet: element.findElements('vICMSUFRemet').first.text,
    );
  }
  factory ICMSUFDestComplexType_imposto.fromJson(Map<String, dynamic> json) =>
      _$ICMSUFDestComplexType_impostoFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSUFDestComplexType_impostoToJson(this);
}

List<ICMSUFDestComplexType_imposto> _ICMSUFDestComplexType_impostoListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSUFDestComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSUFDestComplexType_imposto>?
    _ICMSUFDestComplexType_impostoMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            ICMSUFDestComplexType_imposto.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSUFDestComplexType_impostoListToJson(
        List<ICMSUFDestComplexType_imposto> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSUFDestComplexType_impostoMaybeListToJson(
        List<ICMSUFDestComplexType_imposto>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSUFDestComplexType_imposto _ICMSUFDestComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ICMSUFDestComplexType_imposto.fromJson(json);
ICMSUFDestComplexType_imposto? _ICMSUFDestComplexType_impostoMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSUFDestComplexType_imposto.fromJson(json) : null;
Map<String, dynamic> _ICMSUFDestComplexType_impostoToJson(
        ICMSUFDestComplexType_imposto instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSUFDestComplexType_impostoMaybeToJson(
        ICMSUFDestComplexType_imposto? instance) =>
    instance?.toJson();

@JsonSerializable()
class IPIComplexType_impostoDevol {
  String? xmlns;
  String vIPIDevol;
  IPIComplexType_impostoDevol({this.xmlns, required this.vIPIDevol}) {
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vIPIDevol.toString())) ==
        false) {
      throw Exception('Invalid value for vIPIDevol - $vIPIDevol');
    }
    ;
    if ((vIPIDevol.toString().trim() == vIPIDevol.toString()) == false) {
      throw Exception('Invalid value for vIPIDevol');
    }
    ;
  }
  IPIComplexType_impostoDevol.unsafe({this.xmlns, required this.vIPIDevol});
  String toXml({String name = 'IPI', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('vIPIDevol'), [], [xml.XmlText(vIPIDevol.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory IPIComplexType_impostoDevol.fromXml(String xmlString,
      {String name = 'IPI'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return IPIComplexType_impostoDevol.unsafe(
      xmlns: element.getAttribute('xmlns'),
      vIPIDevol: element.findElements('vIPIDevol').first.text,
    );
  }
  factory IPIComplexType_impostoDevol.fromJson(Map<String, dynamic> json) =>
      _$IPIComplexType_impostoDevolFromJson(json);
  Map<String, dynamic> toJson() => _$IPIComplexType_impostoDevolToJson(this);
}

List<IPIComplexType_impostoDevol> _IPIComplexType_impostoDevolListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            IPIComplexType_impostoDevol.fromJson(e as Map<String, dynamic>))
        .toList();
List<IPIComplexType_impostoDevol>?
    _IPIComplexType_impostoDevolMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            IPIComplexType_impostoDevol.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _IPIComplexType_impostoDevolListToJson(
        List<IPIComplexType_impostoDevol> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _IPIComplexType_impostoDevolMaybeListToJson(
        List<IPIComplexType_impostoDevol>? list) =>
    list?.map((e) => e.toJson()).toList();
IPIComplexType_impostoDevol _IPIComplexType_impostoDevolFromJson(
        Map<String, dynamic> json) =>
    IPIComplexType_impostoDevol.fromJson(json);
IPIComplexType_impostoDevol? _IPIComplexType_impostoDevolMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? IPIComplexType_impostoDevol.fromJson(json) : null;
Map<String, dynamic> _IPIComplexType_impostoDevolToJson(
        IPIComplexType_impostoDevol instance) =>
    instance.toJson();
Map<String, dynamic>? _IPIComplexType_impostoDevolMaybeToJson(
        IPIComplexType_impostoDevol? instance) =>
    instance?.toJson();

@JsonSerializable()
class obsContComplexType_obsItem {
  String? xmlns;
  String xTexto;
  String xCampo;

  obsContComplexType_obsItem(
      {this.xmlns, required this.xTexto, required this.xCampo}) {
    if ((xTexto.toString().length <= 60) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xTexto.toString().length >= 1) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xTexto.toString())) ==
        false) {
      throw Exception('Invalid value for xTexto - $xTexto');
    }
    ;
    if ((xTexto.toString().trim() == xTexto.toString()) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xCampo.toString().length <= 20) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((xCampo.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xCampo.toString())) ==
        false) {
      throw Exception('Invalid value for xCampo - $xCampo');
    }
    ;
    if ((xCampo.toString().trim() == xCampo.toString()) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
  }
  obsContComplexType_obsItem.unsafe(
      {this.xmlns, required this.xTexto, required this.xCampo});
  String toXml({String name = 'obsCont', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('xCampo'), xCampo.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('xTexto'), [], [xml.XmlText(xTexto.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory obsContComplexType_obsItem.fromXml(String xmlString,
      {String name = 'obsCont'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return obsContComplexType_obsItem.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xCampo: element.getAttribute('xCampo')!,
      xTexto: element.findElements('xTexto').first.text,
    );
  }
  factory obsContComplexType_obsItem.fromJson(Map<String, dynamic> json) =>
      _$obsContComplexType_obsItemFromJson(json);
  Map<String, dynamic> toJson() => _$obsContComplexType_obsItemToJson(this);
}

List<obsContComplexType_obsItem> _obsContComplexType_obsItemListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            obsContComplexType_obsItem.fromJson(e as Map<String, dynamic>))
        .toList();
List<obsContComplexType_obsItem>? _obsContComplexType_obsItemMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            obsContComplexType_obsItem.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _obsContComplexType_obsItemListToJson(
        List<obsContComplexType_obsItem> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _obsContComplexType_obsItemMaybeListToJson(
        List<obsContComplexType_obsItem>? list) =>
    list?.map((e) => e.toJson()).toList();
obsContComplexType_obsItem _obsContComplexType_obsItemFromJson(
        Map<String, dynamic> json) =>
    obsContComplexType_obsItem.fromJson(json);
obsContComplexType_obsItem? _obsContComplexType_obsItemMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? obsContComplexType_obsItem.fromJson(json) : null;
Map<String, dynamic> _obsContComplexType_obsItemToJson(
        obsContComplexType_obsItem instance) =>
    instance.toJson();
Map<String, dynamic>? _obsContComplexType_obsItemMaybeToJson(
        obsContComplexType_obsItem? instance) =>
    instance?.toJson();

@JsonSerializable()
class obsFiscoComplexType_obsItem {
  String? xmlns;
  String xTexto;
  String xCampo;

  obsFiscoComplexType_obsItem(
      {this.xmlns, required this.xTexto, required this.xCampo}) {
    if ((xTexto.toString().length <= 60) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xTexto.toString().length >= 1) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xTexto.toString())) ==
        false) {
      throw Exception('Invalid value for xTexto - $xTexto');
    }
    ;
    if ((xTexto.toString().trim() == xTexto.toString()) == false) {
      throw Exception('Invalid value for xTexto');
    }
    ;
    if ((xCampo.toString().length <= 20) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((xCampo.toString().length >= 1) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xCampo.toString())) ==
        false) {
      throw Exception('Invalid value for xCampo - $xCampo');
    }
    ;
    if ((xCampo.toString().trim() == xCampo.toString()) == false) {
      throw Exception('Invalid value for xCampo');
    }
    ;
  }
  obsFiscoComplexType_obsItem.unsafe(
      {this.xmlns, required this.xTexto, required this.xCampo});
  String toXml({String name = 'obsFisco', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('xCampo'), xCampo.toString())
    ], [
      xml.XmlElement(
          xml.XmlName('xTexto'), [], [xml.XmlText(xTexto.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory obsFiscoComplexType_obsItem.fromXml(String xmlString,
      {String name = 'obsFisco'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return obsFiscoComplexType_obsItem.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xCampo: element.getAttribute('xCampo')!,
      xTexto: element.findElements('xTexto').first.text,
    );
  }
  factory obsFiscoComplexType_obsItem.fromJson(Map<String, dynamic> json) =>
      _$obsFiscoComplexType_obsItemFromJson(json);
  Map<String, dynamic> toJson() => _$obsFiscoComplexType_obsItemToJson(this);
}

List<obsFiscoComplexType_obsItem> _obsFiscoComplexType_obsItemListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            obsFiscoComplexType_obsItem.fromJson(e as Map<String, dynamic>))
        .toList();
List<obsFiscoComplexType_obsItem>?
    _obsFiscoComplexType_obsItemMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            obsFiscoComplexType_obsItem.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _obsFiscoComplexType_obsItemListToJson(
        List<obsFiscoComplexType_obsItem> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _obsFiscoComplexType_obsItemMaybeListToJson(
        List<obsFiscoComplexType_obsItem>? list) =>
    list?.map((e) => e.toJson()).toList();
obsFiscoComplexType_obsItem _obsFiscoComplexType_obsItemFromJson(
        Map<String, dynamic> json) =>
    obsFiscoComplexType_obsItem.fromJson(json);
obsFiscoComplexType_obsItem? _obsFiscoComplexType_obsItemMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? obsFiscoComplexType_obsItem.fromJson(json) : null;
Map<String, dynamic> _obsFiscoComplexType_obsItemToJson(
        obsFiscoComplexType_obsItem instance) =>
    instance.toJson();
Map<String, dynamic>? _obsFiscoComplexType_obsItemMaybeToJson(
        obsFiscoComplexType_obsItem? instance) =>
    instance?.toJson();

@JsonSerializable()
class lacresComplexType_vol {
  String? xmlns;
  String nLacre;
  lacresComplexType_vol({this.xmlns, required this.nLacre}) {
    if ((nLacre.toString().length <= 60) == false) {
      throw Exception('Invalid value for nLacre');
    }
    ;
    if ((nLacre.toString().length >= 1) == false) {
      throw Exception('Invalid value for nLacre');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nLacre.toString())) ==
        false) {
      throw Exception('Invalid value for nLacre - $nLacre');
    }
    ;
    if ((nLacre.toString().trim() == nLacre.toString()) == false) {
      throw Exception('Invalid value for nLacre');
    }
    ;
  }
  lacresComplexType_vol.unsafe({this.xmlns, required this.nLacre});
  String toXml({String name = 'lacres', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('nLacre'), [], [xml.XmlText(nLacre.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory lacresComplexType_vol.fromXml(String xmlString,
      {String name = 'lacres'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return lacresComplexType_vol.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nLacre: element.findElements('nLacre').first.text,
    );
  }
  factory lacresComplexType_vol.fromJson(Map<String, dynamic> json) =>
      _$lacresComplexType_volFromJson(json);
  Map<String, dynamic> toJson() => _$lacresComplexType_volToJson(this);
}

List<lacresComplexType_vol> _lacresComplexType_volListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => lacresComplexType_vol.fromJson(e as Map<String, dynamic>))
        .toList();
List<lacresComplexType_vol>? _lacresComplexType_volMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => lacresComplexType_vol.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _lacresComplexType_volListToJson(
        List<lacresComplexType_vol> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _lacresComplexType_volMaybeListToJson(
        List<lacresComplexType_vol>? list) =>
    list?.map((e) => e.toJson()).toList();
lacresComplexType_vol _lacresComplexType_volFromJson(
        Map<String, dynamic> json) =>
    lacresComplexType_vol.fromJson(json);
lacresComplexType_vol? _lacresComplexType_volMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? lacresComplexType_vol.fromJson(json) : null;
Map<String, dynamic> _lacresComplexType_volToJson(
        lacresComplexType_vol instance) =>
    instance.toJson();
Map<String, dynamic>? _lacresComplexType_volMaybeToJson(
        lacresComplexType_vol? instance) =>
    instance?.toJson();

@JsonSerializable()
class cardComplexType_detPag {
  String? xmlns;
  @JsonKey(fromJson: _tpIntegraEnumFromValue, toJson: _tpIntegraEnumToValue)
  tpIntegraEnum tpIntegra;
  String? CNPJ;
  String? tBand;
  String? cAut;
  cardComplexType_detPag(
      {this.xmlns, required this.tpIntegra, this.CNPJ, this.tBand, this.cAut}) {
    if ((tpIntegra.toString().trim() == tpIntegra.toString()) == false) {
      throw Exception('Invalid value for tpIntegra');
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
    if ((tBand == null || RegExp(r'[0-9]{2}').hasMatch(tBand.toString())) ==
        false) {
      throw Exception('Invalid value for tBand - $tBand');
    }
    ;
    if ((tBand == null || tBand.toString().trim() == tBand.toString()) ==
        false) {
      throw Exception('Invalid value for tBand');
    }
    ;
    if ((cAut == null || cAut.toString().length <= 20) == false) {
      throw Exception('Invalid value for cAut');
    }
    ;
    if ((cAut == null || cAut.toString().length >= 1) == false) {
      throw Exception('Invalid value for cAut');
    }
    ;
    if ((cAut == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cAut.toString())) ==
        false) {
      throw Exception('Invalid value for cAut - $cAut');
    }
    ;
    if ((cAut == null || cAut.toString().trim() == cAut.toString()) == false) {
      throw Exception('Invalid value for cAut');
    }
    ;
  }
  cardComplexType_detPag.unsafe(
      {this.xmlns, required this.tpIntegra, this.CNPJ, this.tBand, this.cAut});
  String toXml({String name = 'card', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('tpIntegra'), [], [xml.XmlText(tpIntegra.value)]),
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (tBand != null)
        xml.XmlElement(
            xml.XmlName('tBand'), [], [xml.XmlText(tBand.toString())]),
      if (cAut != null)
        xml.XmlElement(xml.XmlName('cAut'), [], [xml.XmlText(cAut.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory cardComplexType_detPag.fromXml(String xmlString,
      {String name = 'card'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return cardComplexType_detPag.unsafe(
      xmlns: element.getAttribute('xmlns'),
      tpIntegra:
          tpIntegraEnum.fromValue(element.findElements('tpIntegra').first.text),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      tBand: element.findElements('tBand').isNotEmpty
          ? element.findElements('tBand').first.text
          : null,
      cAut: element.findElements('cAut').isNotEmpty
          ? element.findElements('cAut').first.text
          : null,
    );
  }
  factory cardComplexType_detPag.fromJson(Map<String, dynamic> json) =>
      _$cardComplexType_detPagFromJson(json);
  Map<String, dynamic> toJson() => _$cardComplexType_detPagToJson(this);
}

List<cardComplexType_detPag> _cardComplexType_detPagListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => cardComplexType_detPag.fromJson(e as Map<String, dynamic>))
        .toList();
List<cardComplexType_detPag>? _cardComplexType_detPagMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => cardComplexType_detPag.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _cardComplexType_detPagListToJson(
        List<cardComplexType_detPag> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _cardComplexType_detPagMaybeListToJson(
        List<cardComplexType_detPag>? list) =>
    list?.map((e) => e.toJson()).toList();
cardComplexType_detPag _cardComplexType_detPagFromJson(
        Map<String, dynamic> json) =>
    cardComplexType_detPag.fromJson(json);
cardComplexType_detPag? _cardComplexType_detPagMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? cardComplexType_detPag.fromJson(json) : null;
Map<String, dynamic> _cardComplexType_detPagToJson(
        cardComplexType_detPag instance) =>
    instance.toJson();
Map<String, dynamic>? _cardComplexType_detPagMaybeToJson(
        cardComplexType_detPag? instance) =>
    instance?.toJson();

@JsonSerializable()
class adiComplexType_DI {
  String? xmlns;
  String? nAdicao;
  String nSeqAdic;
  String cFabricante;
  String? vDescDI;
  String? nDraw;
  adiComplexType_DI(
      {this.xmlns,
      this.nAdicao,
      required this.nSeqAdic,
      required this.cFabricante,
      this.vDescDI,
      this.nDraw}) {
    if ((nAdicao == null ||
            RegExp(r'[1-9]{1}[0-9]{0,2}').hasMatch(nAdicao.toString())) ==
        false) {
      throw Exception('Invalid value for nAdicao - $nAdicao');
    }
    ;
    if ((nAdicao == null || nAdicao.toString().trim() == nAdicao.toString()) ==
        false) {
      throw Exception('Invalid value for nAdicao');
    }
    ;
    if ((RegExp(r'[1-9]{1}[0-9]{0,4}').hasMatch(nSeqAdic.toString())) ==
        false) {
      throw Exception('Invalid value for nSeqAdic - $nSeqAdic');
    }
    ;
    if ((nSeqAdic.toString().trim() == nSeqAdic.toString()) == false) {
      throw Exception('Invalid value for nSeqAdic');
    }
    ;
    if ((cFabricante.toString().length <= 60) == false) {
      throw Exception('Invalid value for cFabricante');
    }
    ;
    if ((cFabricante.toString().length >= 1) == false) {
      throw Exception('Invalid value for cFabricante');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cFabricante.toString())) ==
        false) {
      throw Exception('Invalid value for cFabricante - $cFabricante');
    }
    ;
    if ((cFabricante.toString().trim() == cFabricante.toString()) == false) {
      throw Exception('Invalid value for cFabricante');
    }
    ;
    if ((vDescDI == null ||
            RegExp(r'0\.[0-9]{1}[1-9]{1}|0\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vDescDI.toString())) ==
        false) {
      throw Exception('Invalid value for vDescDI - $vDescDI');
    }
    ;
    if ((vDescDI == null || vDescDI.toString().trim() == vDescDI.toString()) ==
        false) {
      throw Exception('Invalid value for vDescDI');
    }
    ;
    if ((nDraw == null || nDraw.toString().length <= 20) == false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
    if ((nDraw == null || nDraw.toString().length >= 1) == false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
    if ((nDraw == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(nDraw.toString())) ==
        false) {
      throw Exception('Invalid value for nDraw - $nDraw');
    }
    ;
    if ((nDraw == null || nDraw.toString().trim() == nDraw.toString()) ==
        false) {
      throw Exception('Invalid value for nDraw');
    }
    ;
  }
  adiComplexType_DI.unsafe(
      {this.xmlns,
      this.nAdicao,
      required this.nSeqAdic,
      required this.cFabricante,
      this.vDescDI,
      this.nDraw});
  String toXml({String name = 'adi', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (nAdicao != null)
        xml.XmlElement(
            xml.XmlName('nAdicao'), [], [xml.XmlText(nAdicao.toString())]),
      xml.XmlElement(
          xml.XmlName('nSeqAdic'), [], [xml.XmlText(nSeqAdic.toString())]),
      xml.XmlElement(xml.XmlName('cFabricante'), [],
          [xml.XmlText(cFabricante.toString())]),
      if (vDescDI != null)
        xml.XmlElement(
            xml.XmlName('vDescDI'), [], [xml.XmlText(vDescDI.toString())]),
      if (nDraw != null)
        xml.XmlElement(
            xml.XmlName('nDraw'), [], [xml.XmlText(nDraw.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory adiComplexType_DI.fromXml(String xmlString, {String name = 'adi'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return adiComplexType_DI.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nAdicao: element.findElements('nAdicao').isNotEmpty
          ? element.findElements('nAdicao').first.text
          : null,
      nSeqAdic: element.findElements('nSeqAdic').first.text,
      cFabricante: element.findElements('cFabricante').first.text,
      vDescDI: element.findElements('vDescDI').isNotEmpty
          ? element.findElements('vDescDI').first.text
          : null,
      nDraw: element.findElements('nDraw').isNotEmpty
          ? element.findElements('nDraw').first.text
          : null,
    );
  }
  factory adiComplexType_DI.fromJson(Map<String, dynamic> json) =>
      _$adiComplexType_DIFromJson(json);
  Map<String, dynamic> toJson() => _$adiComplexType_DIToJson(this);
}

List<adiComplexType_DI> _adiComplexType_DIListFromJson(List<dynamic> json) =>
    json
        .map((e) => adiComplexType_DI.fromJson(e as Map<String, dynamic>))
        .toList();
List<adiComplexType_DI>? _adiComplexType_DIMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => adiComplexType_DI.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _adiComplexType_DIListToJson(
        List<adiComplexType_DI> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _adiComplexType_DIMaybeListToJson(
        List<adiComplexType_DI>? list) =>
    list?.map((e) => e.toJson()).toList();
adiComplexType_DI _adiComplexType_DIFromJson(Map<String, dynamic> json) =>
    adiComplexType_DI.fromJson(json);
adiComplexType_DI? _adiComplexType_DIMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? adiComplexType_DI.fromJson(json) : null;
Map<String, dynamic> _adiComplexType_DIToJson(adiComplexType_DI instance) =>
    instance.toJson();
Map<String, dynamic>? _adiComplexType_DIMaybeToJson(
        adiComplexType_DI? instance) =>
    instance?.toJson();

@JsonSerializable()
class exportIndComplexType_detExport {
  String? xmlns;
  String nRE;
  String chNFe;
  String qExport;
  exportIndComplexType_detExport(
      {this.xmlns,
      required this.nRE,
      required this.chNFe,
      required this.qExport}) {
    if ((RegExp(r'[0-9]{0,12}').hasMatch(nRE.toString())) == false) {
      throw Exception('Invalid value for nRE - $nRE');
    }
    ;
    if ((nRE.toString().trim() == nRE.toString()) == false) {
      throw Exception('Invalid value for nRE');
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
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
            .hasMatch(qExport.toString())) ==
        false) {
      throw Exception('Invalid value for qExport - $qExport');
    }
    ;
    if ((qExport.toString().trim() == qExport.toString()) == false) {
      throw Exception('Invalid value for qExport');
    }
    ;
  }
  exportIndComplexType_detExport.unsafe(
      {this.xmlns,
      required this.nRE,
      required this.chNFe,
      required this.qExport});
  String toXml(
      {String name = 'exportInd', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nRE'), [], [xml.XmlText(nRE.toString())]),
      xml.XmlElement(xml.XmlName('chNFe'), [], [xml.XmlText(chNFe.toString())]),
      xml.XmlElement(
          xml.XmlName('qExport'), [], [xml.XmlText(qExport.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory exportIndComplexType_detExport.fromXml(String xmlString,
      {String name = 'exportInd'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return exportIndComplexType_detExport.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nRE: element.findElements('nRE').first.text,
      chNFe: element.findElements('chNFe').first.text,
      qExport: element.findElements('qExport').first.text,
    );
  }
  factory exportIndComplexType_detExport.fromJson(Map<String, dynamic> json) =>
      _$exportIndComplexType_detExportFromJson(json);
  Map<String, dynamic> toJson() => _$exportIndComplexType_detExportToJson(this);
}

List<exportIndComplexType_detExport>
    _exportIndComplexType_detExportListFromJson(List<dynamic> json) => json
        .map((e) =>
            exportIndComplexType_detExport.fromJson(e as Map<String, dynamic>))
        .toList();
List<exportIndComplexType_detExport>?
    _exportIndComplexType_detExportMaybeListFromJson(List<dynamic>? json) =>
        json
            ?.map((e) => exportIndComplexType_detExport
                .fromJson(e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _exportIndComplexType_detExportListToJson(
        List<exportIndComplexType_detExport> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _exportIndComplexType_detExportMaybeListToJson(
        List<exportIndComplexType_detExport>? list) =>
    list?.map((e) => e.toJson()).toList();
exportIndComplexType_detExport _exportIndComplexType_detExportFromJson(
        Map<String, dynamic> json) =>
    exportIndComplexType_detExport.fromJson(json);
exportIndComplexType_detExport? _exportIndComplexType_detExportMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? exportIndComplexType_detExport.fromJson(json) : null;
Map<String, dynamic> _exportIndComplexType_detExportToJson(
        exportIndComplexType_detExport instance) =>
    instance.toJson();
Map<String, dynamic>? _exportIndComplexType_detExportMaybeToJson(
        exportIndComplexType_detExport? instance) =>
    instance?.toJson();

@JsonSerializable()
class CIDEComplexType_comb {
  String? xmlns;
  String qBCProd;
  String vAliqProd;
  String vCIDE;
  CIDEComplexType_comb(
      {this.xmlns,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vCIDE}) {
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
            .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd.toString().trim() == qBCProd.toString()) == false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{4}|[1-9]{1}[0-9]{0,10}(\.[0-9]{4})?')
            .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd.toString().trim() == vAliqProd.toString()) == false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCIDE.toString())) ==
        false) {
      throw Exception('Invalid value for vCIDE - $vCIDE');
    }
    ;
    if ((vCIDE.toString().trim() == vCIDE.toString()) == false) {
      throw Exception('Invalid value for vCIDE');
    }
    ;
  }
  CIDEComplexType_comb.unsafe(
      {this.xmlns,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vCIDE});
  String toXml({String name = 'CIDE', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(
          xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(xml.XmlName('vCIDE'), [], [xml.XmlText(vCIDE.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory CIDEComplexType_comb.fromXml(String xmlString,
      {String name = 'CIDE'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return CIDEComplexType_comb.unsafe(
      xmlns: element.getAttribute('xmlns'),
      qBCProd: element.findElements('qBCProd').first.text,
      vAliqProd: element.findElements('vAliqProd').first.text,
      vCIDE: element.findElements('vCIDE').first.text,
    );
  }
  factory CIDEComplexType_comb.fromJson(Map<String, dynamic> json) =>
      _$CIDEComplexType_combFromJson(json);
  Map<String, dynamic> toJson() => _$CIDEComplexType_combToJson(this);
}

List<CIDEComplexType_comb> _CIDEComplexType_combListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => CIDEComplexType_comb.fromJson(e as Map<String, dynamic>))
        .toList();
List<CIDEComplexType_comb>? _CIDEComplexType_combMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => CIDEComplexType_comb.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _CIDEComplexType_combListToJson(
        List<CIDEComplexType_comb> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _CIDEComplexType_combMaybeListToJson(
        List<CIDEComplexType_comb>? list) =>
    list?.map((e) => e.toJson()).toList();
CIDEComplexType_comb _CIDEComplexType_combFromJson(Map<String, dynamic> json) =>
    CIDEComplexType_comb.fromJson(json);
CIDEComplexType_comb? _CIDEComplexType_combMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? CIDEComplexType_comb.fromJson(json) : null;
Map<String, dynamic> _CIDEComplexType_combToJson(
        CIDEComplexType_comb instance) =>
    instance.toJson();
Map<String, dynamic>? _CIDEComplexType_combMaybeToJson(
        CIDEComplexType_comb? instance) =>
    instance?.toJson();

@JsonSerializable()
class encerranteComplexType_comb {
  String? xmlns;
  String nBico;
  String? nBomba;
  String nTanque;
  String vEncIni;
  String vEncFin;
  encerranteComplexType_comb(
      {this.xmlns,
      required this.nBico,
      this.nBomba,
      required this.nTanque,
      required this.vEncIni,
      required this.vEncFin}) {
    if ((RegExp(r'[0-9]{1,3}').hasMatch(nBico.toString())) == false) {
      throw Exception('Invalid value for nBico - $nBico');
    }
    ;
    if ((nBico.toString().trim() == nBico.toString()) == false) {
      throw Exception('Invalid value for nBico');
    }
    ;
    if ((nBomba == null || RegExp(r'[0-9]{1,3}').hasMatch(nBomba.toString())) ==
        false) {
      throw Exception('Invalid value for nBomba - $nBomba');
    }
    ;
    if ((nBomba == null || nBomba.toString().trim() == nBomba.toString()) ==
        false) {
      throw Exception('Invalid value for nBomba');
    }
    ;
    if ((RegExp(r'[0-9]{1,3}').hasMatch(nTanque.toString())) == false) {
      throw Exception('Invalid value for nTanque - $nTanque');
    }
    ;
    if ((nTanque.toString().trim() == nTanque.toString()) == false) {
      throw Exception('Invalid value for nTanque');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,11}(\.[0-9]{3})?')
            .hasMatch(vEncIni.toString())) ==
        false) {
      throw Exception('Invalid value for vEncIni - $vEncIni');
    }
    ;
    if ((vEncIni.toString().trim() == vEncIni.toString()) == false) {
      throw Exception('Invalid value for vEncIni');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{3}|[1-9]{1}[0-9]{0,11}(\.[0-9]{3})?')
            .hasMatch(vEncFin.toString())) ==
        false) {
      throw Exception('Invalid value for vEncFin - $vEncFin');
    }
    ;
    if ((vEncFin.toString().trim() == vEncFin.toString()) == false) {
      throw Exception('Invalid value for vEncFin');
    }
    ;
  }
  encerranteComplexType_comb.unsafe(
      {this.xmlns,
      required this.nBico,
      this.nBomba,
      required this.nTanque,
      required this.vEncIni,
      required this.vEncFin});
  String toXml(
      {String name = 'encerrante', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('nBico'), [], [xml.XmlText(nBico.toString())]),
      if (nBomba != null)
        xml.XmlElement(
            xml.XmlName('nBomba'), [], [xml.XmlText(nBomba.toString())]),
      xml.XmlElement(
          xml.XmlName('nTanque'), [], [xml.XmlText(nTanque.toString())]),
      xml.XmlElement(
          xml.XmlName('vEncIni'), [], [xml.XmlText(vEncIni.toString())]),
      xml.XmlElement(
          xml.XmlName('vEncFin'), [], [xml.XmlText(vEncFin.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory encerranteComplexType_comb.fromXml(String xmlString,
      {String name = 'encerrante'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return encerranteComplexType_comb.unsafe(
      xmlns: element.getAttribute('xmlns'),
      nBico: element.findElements('nBico').first.text,
      nBomba: element.findElements('nBomba').isNotEmpty
          ? element.findElements('nBomba').first.text
          : null,
      nTanque: element.findElements('nTanque').first.text,
      vEncIni: element.findElements('vEncIni').first.text,
      vEncFin: element.findElements('vEncFin').first.text,
    );
  }
  factory encerranteComplexType_comb.fromJson(Map<String, dynamic> json) =>
      _$encerranteComplexType_combFromJson(json);
  Map<String, dynamic> toJson() => _$encerranteComplexType_combToJson(this);
}

List<encerranteComplexType_comb> _encerranteComplexType_combListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            encerranteComplexType_comb.fromJson(e as Map<String, dynamic>))
        .toList();
List<encerranteComplexType_comb>? _encerranteComplexType_combMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            encerranteComplexType_comb.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _encerranteComplexType_combListToJson(
        List<encerranteComplexType_comb> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _encerranteComplexType_combMaybeListToJson(
        List<encerranteComplexType_comb>? list) =>
    list?.map((e) => e.toJson()).toList();
encerranteComplexType_comb _encerranteComplexType_combFromJson(
        Map<String, dynamic> json) =>
    encerranteComplexType_comb.fromJson(json);
encerranteComplexType_comb? _encerranteComplexType_combMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? encerranteComplexType_comb.fromJson(json) : null;
Map<String, dynamic> _encerranteComplexType_combToJson(
        encerranteComplexType_comb instance) =>
    instance.toJson();
Map<String, dynamic>? _encerranteComplexType_combMaybeToJson(
        encerranteComplexType_comb? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS00ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromValue, toJson: _modBCEnumToValue)
  modBCEnum modBC;
  String vBC;
  String pICMS;
  String vICMS;
  String? pFCP;
  String? vFCP;
  ICMS00ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.pFCP,
      this.vFCP}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC.toString().trim() == modBC.toString()) == false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS.toString().trim() == pICMS.toString()) == false) {
      throw Exception('Invalid value for pICMS');
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
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
  }
  ICMS00ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.pFCP,
      this.vFCP});
  String toXml({String name = 'ICMS00', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC.value)]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS00ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS00'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS00ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: modBCEnum.fromValue(element.findElements('modBC').first.text),
      vBC: element.findElements('vBC').first.text,
      pICMS: element.findElements('pICMS').first.text,
      vICMS: element.findElements('vICMS').first.text,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
    );
  }
  factory ICMS00ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS00ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS00ComplexType_ICMSToJson(this);
}

List<ICMS00ComplexType_ICMS> _ICMS00ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS00ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS00ComplexType_ICMS>? _ICMS00ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS00ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS00ComplexType_ICMSListToJson(
        List<ICMS00ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS00ComplexType_ICMSMaybeListToJson(
        List<ICMS00ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS00ComplexType_ICMS _ICMS00ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS00ComplexType_ICMS.fromJson(json);
ICMS00ComplexType_ICMS? _ICMS00ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS00ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS00ComplexType_ICMSToJson(
        ICMS00ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS00ComplexType_ICMSMaybeToJson(
        ICMS00ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS10ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromValue, toJson: _modBCEnumToValue)
  modBCEnum modBC;
  String vBC;
  String pICMS;
  String vICMS;
  String? vBCFCP;
  String? pFCP;
  String? vFCP;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String? vICMSSTDeson;
  @JsonKey(
      fromJson: _motDesICMSSTEnumFromMaybeValue,
      toJson: _motDesICMSSTEnumToMaybeValue)
  motDesICMSSTEnum? motDesICMSST;
  ICMS10ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSSTDeson,
      this.motDesICMSST}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC.toString().trim() == modBC.toString()) == false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS.toString().trim() == pICMS.toString()) == false) {
      throw Exception('Invalid value for pICMS');
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
    if ((vBCFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCP - $vBCFCP');
    }
    ;
    if ((vBCFCP == null || vBCFCP.toString().trim() == vBCFCP.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCP');
    }
    ;
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((vICMSSTDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSTDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson - $vICMSSTDeson');
    }
    ;
    if ((vICMSSTDeson == null ||
            vICMSSTDeson.toString().trim() == vICMSSTDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson');
    }
    ;
    if ((motDesICMSST == null ||
            motDesICMSST.toString().trim() == motDesICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMSST');
    }
    ;
  }
  ICMS10ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSSTDeson,
      this.motDesICMSST});
  String toXml({String name = 'ICMS10', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC.value)]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (vBCFCP != null)
        xml.XmlElement(
            xml.XmlName('vBCFCP'), [], [xml.XmlText(vBCFCP.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      if (vICMSSTDeson != null)
        xml.XmlElement(xml.XmlName('vICMSSTDeson'), [],
            [xml.XmlText(vICMSSTDeson.toString())]),
      if (motDesICMSST != null)
        xml.XmlElement(
            xml.XmlName('motDesICMSST'), [], [xml.XmlText(motDesICMSST!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS10ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS10'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS10ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: modBCEnum.fromValue(element.findElements('modBC').first.text),
      vBC: element.findElements('vBC').first.text,
      pICMS: element.findElements('pICMS').first.text,
      vICMS: element.findElements('vICMS').first.text,
      vBCFCP: element.findElements('vBCFCP').isNotEmpty
          ? element.findElements('vBCFCP').first.text
          : null,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      vICMSSTDeson: element.findElements('vICMSSTDeson').isNotEmpty
          ? element.findElements('vICMSSTDeson').first.text
          : null,
      motDesICMSST: element.findElements('motDesICMSST').isNotEmpty
          ? motDesICMSSTEnum
              .fromValue(element.findElements('motDesICMSST').first.text)
          : null,
    );
  }
  factory ICMS10ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS10ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS10ComplexType_ICMSToJson(this);
}

List<ICMS10ComplexType_ICMS> _ICMS10ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS10ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS10ComplexType_ICMS>? _ICMS10ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS10ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS10ComplexType_ICMSListToJson(
        List<ICMS10ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS10ComplexType_ICMSMaybeListToJson(
        List<ICMS10ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS10ComplexType_ICMS _ICMS10ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS10ComplexType_ICMS.fromJson(json);
ICMS10ComplexType_ICMS? _ICMS10ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS10ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS10ComplexType_ICMSToJson(
        ICMS10ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS10ComplexType_ICMSMaybeToJson(
        ICMS10ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS20ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromValue, toJson: _modBCEnumToValue)
  modBCEnum modBC;
  String pRedBC;
  String vBC;
  String pICMS;
  String vICMS;
  String? vBCFCP;
  String? pFCP;
  String? vFCP;
  String? vICMSDeson;
  @JsonKey(
      fromJson: _motDesICMSEnumFromMaybeValue,
      toJson: _motDesICMSEnumToMaybeValue)
  motDesICMSEnum? motDesICMS;
  ICMS20ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.pRedBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.vICMSDeson,
      this.motDesICMS}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC.toString().trim() == modBC.toString()) == false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC.toString().trim() == pRedBC.toString()) == false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS.toString().trim() == pICMS.toString()) == false) {
      throw Exception('Invalid value for pICMS');
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
    if ((vBCFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCP - $vBCFCP');
    }
    ;
    if ((vBCFCP == null || vBCFCP.toString().trim() == vBCFCP.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCP');
    }
    ;
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((vICMSDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson == null ||
            vICMSDeson.toString().trim() == vICMSDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((motDesICMS == null ||
            motDesICMS.toString().trim() == motDesICMS.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMS');
    }
    ;
  }
  ICMS20ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.pRedBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.vICMSDeson,
      this.motDesICMS});
  String toXml({String name = 'ICMS20', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC.value)]),
      xml.XmlElement(
          xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (vBCFCP != null)
        xml.XmlElement(
            xml.XmlName('vBCFCP'), [], [xml.XmlText(vBCFCP.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      if (vICMSDeson != null)
        xml.XmlElement(xml.XmlName('vICMSDeson'), [],
            [xml.XmlText(vICMSDeson.toString())]),
      if (motDesICMS != null)
        xml.XmlElement(
            xml.XmlName('motDesICMS'), [], [xml.XmlText(motDesICMS!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS20ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS20'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS20ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: modBCEnum.fromValue(element.findElements('modBC').first.text),
      pRedBC: element.findElements('pRedBC').first.text,
      vBC: element.findElements('vBC').first.text,
      pICMS: element.findElements('pICMS').first.text,
      vICMS: element.findElements('vICMS').first.text,
      vBCFCP: element.findElements('vBCFCP').isNotEmpty
          ? element.findElements('vBCFCP').first.text
          : null,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
      vICMSDeson: element.findElements('vICMSDeson').isNotEmpty
          ? element.findElements('vICMSDeson').first.text
          : null,
      motDesICMS: element.findElements('motDesICMS').isNotEmpty
          ? motDesICMSEnum
              .fromValue(element.findElements('motDesICMS').first.text)
          : null,
    );
  }
  factory ICMS20ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS20ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS20ComplexType_ICMSToJson(this);
}

List<ICMS20ComplexType_ICMS> _ICMS20ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS20ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS20ComplexType_ICMS>? _ICMS20ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS20ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS20ComplexType_ICMSListToJson(
        List<ICMS20ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS20ComplexType_ICMSMaybeListToJson(
        List<ICMS20ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS20ComplexType_ICMS _ICMS20ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS20ComplexType_ICMS.fromJson(json);
ICMS20ComplexType_ICMS? _ICMS20ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS20ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS20ComplexType_ICMSToJson(
        ICMS20ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS20ComplexType_ICMSMaybeToJson(
        ICMS20ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS30ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String? vICMSDeson;
  @JsonKey(
      fromJson: _motDesICMSEnumFromMaybeValue,
      toJson: _motDesICMSEnumToMaybeValue)
  motDesICMSEnum? motDesICMS;
  ICMS30ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((vICMSDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson == null ||
            vICMSDeson.toString().trim() == vICMSDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((motDesICMS == null ||
            motDesICMS.toString().trim() == motDesICMS.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMS');
    }
    ;
  }
  ICMS30ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS});
  String toXml({String name = 'ICMS30', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      if (vICMSDeson != null)
        xml.XmlElement(xml.XmlName('vICMSDeson'), [],
            [xml.XmlText(vICMSDeson.toString())]),
      if (motDesICMS != null)
        xml.XmlElement(
            xml.XmlName('motDesICMS'), [], [xml.XmlText(motDesICMS!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS30ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS30'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS30ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      vICMSDeson: element.findElements('vICMSDeson').isNotEmpty
          ? element.findElements('vICMSDeson').first.text
          : null,
      motDesICMS: element.findElements('motDesICMS').isNotEmpty
          ? motDesICMSEnum
              .fromValue(element.findElements('motDesICMS').first.text)
          : null,
    );
  }
  factory ICMS30ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS30ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS30ComplexType_ICMSToJson(this);
}

List<ICMS30ComplexType_ICMS> _ICMS30ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS30ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS30ComplexType_ICMS>? _ICMS30ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS30ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS30ComplexType_ICMSListToJson(
        List<ICMS30ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS30ComplexType_ICMSMaybeListToJson(
        List<ICMS30ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS30ComplexType_ICMS _ICMS30ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS30ComplexType_ICMS.fromJson(json);
ICMS30ComplexType_ICMS? _ICMS30ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS30ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS30ComplexType_ICMSToJson(
        ICMS30ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS30ComplexType_ICMSMaybeToJson(
        ICMS30ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS40ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String? vICMSDeson;
  @JsonKey(
      fromJson: _motDesICMSEnumFromMaybeValue,
      toJson: _motDesICMSEnumToMaybeValue)
  motDesICMSEnum? motDesICMS;
  ICMS40ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.vICMSDeson,
      this.motDesICMS}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((vICMSDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson == null ||
            vICMSDeson.toString().trim() == vICMSDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((motDesICMS == null ||
            motDesICMS.toString().trim() == motDesICMS.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMS');
    }
    ;
  }
  ICMS40ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.vICMSDeson,
      this.motDesICMS});
  String toXml({String name = 'ICMS40', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (vICMSDeson != null)
        xml.XmlElement(xml.XmlName('vICMSDeson'), [],
            [xml.XmlText(vICMSDeson.toString())]),
      if (motDesICMS != null)
        xml.XmlElement(
            xml.XmlName('motDesICMS'), [], [xml.XmlText(motDesICMS!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS40ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS40'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS40ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vICMSDeson: element.findElements('vICMSDeson').isNotEmpty
          ? element.findElements('vICMSDeson').first.text
          : null,
      motDesICMS: element.findElements('motDesICMS').isNotEmpty
          ? motDesICMSEnum
              .fromValue(element.findElements('motDesICMS').first.text)
          : null,
    );
  }
  factory ICMS40ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS40ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS40ComplexType_ICMSToJson(this);
}

List<ICMS40ComplexType_ICMS> _ICMS40ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS40ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS40ComplexType_ICMS>? _ICMS40ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS40ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS40ComplexType_ICMSListToJson(
        List<ICMS40ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS40ComplexType_ICMSMaybeListToJson(
        List<ICMS40ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS40ComplexType_ICMS _ICMS40ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS40ComplexType_ICMS.fromJson(json);
ICMS40ComplexType_ICMS? _ICMS40ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS40ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS40ComplexType_ICMSToJson(
        ICMS40ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS40ComplexType_ICMSMaybeToJson(
        ICMS40ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS51ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromMaybeValue, toJson: _modBCEnumToMaybeValue)
  modBCEnum? modBC;
  String? pRedBC;
  String? vBC;
  String? pICMS;
  String? vICMSOp;
  String? pDif;
  String? vICMSDif;
  String? vICMS;
  String? vBCFCP;
  String? pFCP;
  String? vFCP;
  String? pFCPDif;
  String? vFCPDif;
  String? vFCPEfet;
  ICMS51ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.modBC,
      this.pRedBC,
      this.vBC,
      this.pICMS,
      this.vICMSOp,
      this.pDif,
      this.vICMSDif,
      this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.pFCPDif,
      this.vFCPDif,
      this.vFCPEfet}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC == null || modBC.toString().trim() == modBC.toString()) ==
        false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((pRedBC == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC == null || pRedBC.toString().trim() == pRedBC.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pICMS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS == null || pICMS.toString().trim() == pICMS.toString()) ==
        false) {
      throw Exception('Invalid value for pICMS');
    }
    ;
    if ((vICMSOp == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSOp.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSOp - $vICMSOp');
    }
    ;
    if ((vICMSOp == null || vICMSOp.toString().trim() == vICMSOp.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSOp');
    }
    ;
    if ((pDif == null ||
            RegExp(r'0(\.[0-9]{2,4})?|[1-9]{1}[0-9]{0,1}(\.[0-9]{2,4})?|100(\.0{2,4})?')
                .hasMatch(pDif.toString())) ==
        false) {
      throw Exception('Invalid value for pDif - $pDif');
    }
    ;
    if ((pDif == null || pDif.toString().trim() == pDif.toString()) == false) {
      throw Exception('Invalid value for pDif');
    }
    ;
    if ((vICMSDif == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDif.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDif - $vICMSDif');
    }
    ;
    if ((vICMSDif == null ||
            vICMSDif.toString().trim() == vICMSDif.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDif');
    }
    ;
    if ((vICMS == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMS.toString())) ==
        false) {
      throw Exception('Invalid value for vICMS - $vICMS');
    }
    ;
    if ((vICMS == null || vICMS.toString().trim() == vICMS.toString()) ==
        false) {
      throw Exception('Invalid value for vICMS');
    }
    ;
    if ((vBCFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCP - $vBCFCP');
    }
    ;
    if ((vBCFCP == null || vBCFCP.toString().trim() == vBCFCP.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCP');
    }
    ;
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((pFCPDif == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPDif.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPDif - $pFCPDif');
    }
    ;
    if ((pFCPDif == null || pFCPDif.toString().trim() == pFCPDif.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPDif');
    }
    ;
    if ((vFCPDif == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPDif.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPDif - $vFCPDif');
    }
    ;
    if ((vFCPDif == null || vFCPDif.toString().trim() == vFCPDif.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPDif');
    }
    ;
    if ((vFCPEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPEfet - $vFCPEfet');
    }
    ;
    if ((vFCPEfet == null ||
            vFCPEfet.toString().trim() == vFCPEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPEfet');
    }
    ;
  }
  ICMS51ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.modBC,
      this.pRedBC,
      this.vBC,
      this.pICMS,
      this.vICMSOp,
      this.pDif,
      this.vICMSDif,
      this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.pFCPDif,
      this.vFCPDif,
      this.vFCPEfet});
  String toXml({String name = 'ICMS51', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (modBC != null)
        xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC!.value)]),
      if (pRedBC != null)
        xml.XmlElement(
            xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pICMS != null)
        xml.XmlElement(
            xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      if (vICMSOp != null)
        xml.XmlElement(
            xml.XmlName('vICMSOp'), [], [xml.XmlText(vICMSOp.toString())]),
      if (pDif != null)
        xml.XmlElement(xml.XmlName('pDif'), [], [xml.XmlText(pDif.toString())]),
      if (vICMSDif != null)
        xml.XmlElement(
            xml.XmlName('vICMSDif'), [], [xml.XmlText(vICMSDif.toString())]),
      if (vICMS != null)
        xml.XmlElement(
            xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (vBCFCP != null)
        xml.XmlElement(
            xml.XmlName('vBCFCP'), [], [xml.XmlText(vBCFCP.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      if (pFCPDif != null)
        xml.XmlElement(
            xml.XmlName('pFCPDif'), [], [xml.XmlText(pFCPDif.toString())]),
      if (vFCPDif != null)
        xml.XmlElement(
            xml.XmlName('vFCPDif'), [], [xml.XmlText(vFCPDif.toString())]),
      if (vFCPEfet != null)
        xml.XmlElement(
            xml.XmlName('vFCPEfet'), [], [xml.XmlText(vFCPEfet.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS51ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS51'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS51ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: element.findElements('modBC').isNotEmpty
          ? modBCEnum.fromValue(element.findElements('modBC').first.text)
          : null,
      pRedBC: element.findElements('pRedBC').isNotEmpty
          ? element.findElements('pRedBC').first.text
          : null,
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pICMS: element.findElements('pICMS').isNotEmpty
          ? element.findElements('pICMS').first.text
          : null,
      vICMSOp: element.findElements('vICMSOp').isNotEmpty
          ? element.findElements('vICMSOp').first.text
          : null,
      pDif: element.findElements('pDif').isNotEmpty
          ? element.findElements('pDif').first.text
          : null,
      vICMSDif: element.findElements('vICMSDif').isNotEmpty
          ? element.findElements('vICMSDif').first.text
          : null,
      vICMS: element.findElements('vICMS').isNotEmpty
          ? element.findElements('vICMS').first.text
          : null,
      vBCFCP: element.findElements('vBCFCP').isNotEmpty
          ? element.findElements('vBCFCP').first.text
          : null,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
      pFCPDif: element.findElements('pFCPDif').isNotEmpty
          ? element.findElements('pFCPDif').first.text
          : null,
      vFCPDif: element.findElements('vFCPDif').isNotEmpty
          ? element.findElements('vFCPDif').first.text
          : null,
      vFCPEfet: element.findElements('vFCPEfet').isNotEmpty
          ? element.findElements('vFCPEfet').first.text
          : null,
    );
  }
  factory ICMS51ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS51ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS51ComplexType_ICMSToJson(this);
}

List<ICMS51ComplexType_ICMS> _ICMS51ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS51ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS51ComplexType_ICMS>? _ICMS51ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS51ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS51ComplexType_ICMSListToJson(
        List<ICMS51ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS51ComplexType_ICMSMaybeListToJson(
        List<ICMS51ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS51ComplexType_ICMS _ICMS51ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS51ComplexType_ICMS.fromJson(json);
ICMS51ComplexType_ICMS? _ICMS51ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS51ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS51ComplexType_ICMSToJson(
        ICMS51ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS51ComplexType_ICMSMaybeToJson(
        ICMS51ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS60ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String? vBCSTRet;
  String? pST;
  String? vICMSSubstituto;
  String? vICMSSTRet;
  String? vBCFCPSTRet;
  String? pFCPSTRet;
  String? vFCPSTRet;
  String? pRedBCEfet;
  String? vBCEfet;
  String? pICMSEfet;
  String? vICMSEfet;
  ICMS60ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((vBCSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCSTRet - $vBCSTRet');
    }
    ;
    if ((vBCSTRet == null ||
            vBCSTRet.toString().trim() == vBCSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCSTRet');
    }
    ;
    if ((pST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pST.toString())) ==
        false) {
      throw Exception('Invalid value for pST - $pST');
    }
    ;
    if ((pST == null || pST.toString().trim() == pST.toString()) == false) {
      throw Exception('Invalid value for pST');
    }
    ;
    if ((vICMSSubstituto == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSubstituto.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto - $vICMSSubstituto');
    }
    ;
    if ((vICMSSubstituto == null ||
            vICMSSubstituto.toString().trim() == vICMSSubstituto.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto');
    }
    ;
    if ((vICMSSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTRet - $vICMSSTRet');
    }
    ;
    if ((vICMSSTRet == null ||
            vICMSSTRet.toString().trim() == vICMSSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet - $vBCFCPSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            vBCFCPSTRet.toString().trim() == vBCFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet - $pFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            pFCPSTRet.toString().trim() == pFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet - $vFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            vFCPSTRet.toString().trim() == vFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet');
    }
    ;
    if ((pRedBCEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet - $pRedBCEfet');
    }
    ;
    if ((pRedBCEfet == null ||
            pRedBCEfet.toString().trim() == pRedBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet');
    }
    ;
    if ((vBCEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCEfet - $vBCEfet');
    }
    ;
    if ((vBCEfet == null || vBCEfet.toString().trim() == vBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCEfet');
    }
    ;
    if ((pICMSEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSEfet - $pICMSEfet');
    }
    ;
    if ((pICMSEfet == null ||
            pICMSEfet.toString().trim() == pICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSEfet - $vICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            vICMSEfet.toString().trim() == vICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSEfet');
    }
    ;
  }
  ICMS60ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet});
  String toXml({String name = 'ICMS60', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (vBCSTRet != null)
        xml.XmlElement(
            xml.XmlName('vBCSTRet'), [], [xml.XmlText(vBCSTRet.toString())]),
      if (pST != null)
        xml.XmlElement(xml.XmlName('pST'), [], [xml.XmlText(pST.toString())]),
      if (vICMSSubstituto != null)
        xml.XmlElement(xml.XmlName('vICMSSubstituto'), [],
            [xml.XmlText(vICMSSubstituto.toString())]),
      if (vICMSSTRet != null)
        xml.XmlElement(xml.XmlName('vICMSSTRet'), [],
            [xml.XmlText(vICMSSTRet.toString())]),
      if (vBCFCPSTRet != null)
        xml.XmlElement(xml.XmlName('vBCFCPSTRet'), [],
            [xml.XmlText(vBCFCPSTRet.toString())]),
      if (pFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('pFCPSTRet'), [], [xml.XmlText(pFCPSTRet.toString())]),
      if (vFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('vFCPSTRet'), [], [xml.XmlText(vFCPSTRet.toString())]),
      if (pRedBCEfet != null)
        xml.XmlElement(xml.XmlName('pRedBCEfet'), [],
            [xml.XmlText(pRedBCEfet.toString())]),
      if (vBCEfet != null)
        xml.XmlElement(
            xml.XmlName('vBCEfet'), [], [xml.XmlText(vBCEfet.toString())]),
      if (pICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('pICMSEfet'), [], [xml.XmlText(pICMSEfet.toString())]),
      if (vICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('vICMSEfet'), [], [xml.XmlText(vICMSEfet.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS60ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS60'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS60ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBCSTRet: element.findElements('vBCSTRet').isNotEmpty
          ? element.findElements('vBCSTRet').first.text
          : null,
      pST: element.findElements('pST').isNotEmpty
          ? element.findElements('pST').first.text
          : null,
      vICMSSubstituto: element.findElements('vICMSSubstituto').isNotEmpty
          ? element.findElements('vICMSSubstituto').first.text
          : null,
      vICMSSTRet: element.findElements('vICMSSTRet').isNotEmpty
          ? element.findElements('vICMSSTRet').first.text
          : null,
      vBCFCPSTRet: element.findElements('vBCFCPSTRet').isNotEmpty
          ? element.findElements('vBCFCPSTRet').first.text
          : null,
      pFCPSTRet: element.findElements('pFCPSTRet').isNotEmpty
          ? element.findElements('pFCPSTRet').first.text
          : null,
      vFCPSTRet: element.findElements('vFCPSTRet').isNotEmpty
          ? element.findElements('vFCPSTRet').first.text
          : null,
      pRedBCEfet: element.findElements('pRedBCEfet').isNotEmpty
          ? element.findElements('pRedBCEfet').first.text
          : null,
      vBCEfet: element.findElements('vBCEfet').isNotEmpty
          ? element.findElements('vBCEfet').first.text
          : null,
      pICMSEfet: element.findElements('pICMSEfet').isNotEmpty
          ? element.findElements('pICMSEfet').first.text
          : null,
      vICMSEfet: element.findElements('vICMSEfet').isNotEmpty
          ? element.findElements('vICMSEfet').first.text
          : null,
    );
  }
  factory ICMS60ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS60ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS60ComplexType_ICMSToJson(this);
}

List<ICMS60ComplexType_ICMS> _ICMS60ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS60ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS60ComplexType_ICMS>? _ICMS60ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS60ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS60ComplexType_ICMSListToJson(
        List<ICMS60ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS60ComplexType_ICMSMaybeListToJson(
        List<ICMS60ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS60ComplexType_ICMS _ICMS60ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS60ComplexType_ICMS.fromJson(json);
ICMS60ComplexType_ICMS? _ICMS60ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS60ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS60ComplexType_ICMSToJson(
        ICMS60ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS60ComplexType_ICMSMaybeToJson(
        ICMS60ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS70ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromValue, toJson: _modBCEnumToValue)
  modBCEnum modBC;
  String pRedBC;
  String vBC;
  String pICMS;
  String vICMS;
  String? vBCFCP;
  String? pFCP;
  String? vFCP;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String? vICMSDeson;
  @JsonKey(
      fromJson: _motDesICMSEnumFromMaybeValue,
      toJson: _motDesICMSEnumToMaybeValue)
  motDesICMSEnum? motDesICMS;
  String? vICMSSTDeson;
  @JsonKey(
      fromJson: _motDesICMSSTEnumFromMaybeValue,
      toJson: _motDesICMSSTEnumToMaybeValue)
  motDesICMSSTEnum? motDesICMSST;
  ICMS70ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.pRedBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS,
      this.vICMSSTDeson,
      this.motDesICMSST}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC.toString().trim() == modBC.toString()) == false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC.toString().trim() == pRedBC.toString()) == false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS.toString().trim() == pICMS.toString()) == false) {
      throw Exception('Invalid value for pICMS');
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
    if ((vBCFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCP - $vBCFCP');
    }
    ;
    if ((vBCFCP == null || vBCFCP.toString().trim() == vBCFCP.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCP');
    }
    ;
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((vICMSDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson == null ||
            vICMSDeson.toString().trim() == vICMSDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((motDesICMS == null ||
            motDesICMS.toString().trim() == motDesICMS.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMS');
    }
    ;
    if ((vICMSSTDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSTDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson - $vICMSSTDeson');
    }
    ;
    if ((vICMSSTDeson == null ||
            vICMSSTDeson.toString().trim() == vICMSSTDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson');
    }
    ;
    if ((motDesICMSST == null ||
            motDesICMSST.toString().trim() == motDesICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMSST');
    }
    ;
  }
  ICMS70ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.pRedBC,
      required this.vBC,
      required this.pICMS,
      required this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS,
      this.vICMSSTDeson,
      this.motDesICMSST});
  String toXml({String name = 'ICMS70', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC.value)]),
      xml.XmlElement(
          xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (vBCFCP != null)
        xml.XmlElement(
            xml.XmlName('vBCFCP'), [], [xml.XmlText(vBCFCP.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      if (vICMSDeson != null)
        xml.XmlElement(xml.XmlName('vICMSDeson'), [],
            [xml.XmlText(vICMSDeson.toString())]),
      if (motDesICMS != null)
        xml.XmlElement(
            xml.XmlName('motDesICMS'), [], [xml.XmlText(motDesICMS!.value)]),
      if (vICMSSTDeson != null)
        xml.XmlElement(xml.XmlName('vICMSSTDeson'), [],
            [xml.XmlText(vICMSSTDeson.toString())]),
      if (motDesICMSST != null)
        xml.XmlElement(
            xml.XmlName('motDesICMSST'), [], [xml.XmlText(motDesICMSST!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS70ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS70'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS70ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: modBCEnum.fromValue(element.findElements('modBC').first.text),
      pRedBC: element.findElements('pRedBC').first.text,
      vBC: element.findElements('vBC').first.text,
      pICMS: element.findElements('pICMS').first.text,
      vICMS: element.findElements('vICMS').first.text,
      vBCFCP: element.findElements('vBCFCP').isNotEmpty
          ? element.findElements('vBCFCP').first.text
          : null,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      vICMSDeson: element.findElements('vICMSDeson').isNotEmpty
          ? element.findElements('vICMSDeson').first.text
          : null,
      motDesICMS: element.findElements('motDesICMS').isNotEmpty
          ? motDesICMSEnum
              .fromValue(element.findElements('motDesICMS').first.text)
          : null,
      vICMSSTDeson: element.findElements('vICMSSTDeson').isNotEmpty
          ? element.findElements('vICMSSTDeson').first.text
          : null,
      motDesICMSST: element.findElements('motDesICMSST').isNotEmpty
          ? motDesICMSSTEnum
              .fromValue(element.findElements('motDesICMSST').first.text)
          : null,
    );
  }
  factory ICMS70ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS70ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS70ComplexType_ICMSToJson(this);
}

List<ICMS70ComplexType_ICMS> _ICMS70ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS70ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS70ComplexType_ICMS>? _ICMS70ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS70ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS70ComplexType_ICMSListToJson(
        List<ICMS70ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS70ComplexType_ICMSMaybeListToJson(
        List<ICMS70ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS70ComplexType_ICMS _ICMS70ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS70ComplexType_ICMS.fromJson(json);
ICMS70ComplexType_ICMS? _ICMS70ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS70ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS70ComplexType_ICMSToJson(
        ICMS70ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS70ComplexType_ICMSMaybeToJson(
        ICMS70ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMS90ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromMaybeValue, toJson: _modBCEnumToMaybeValue)
  modBCEnum? modBC;
  String? vBC;
  String? pRedBC;
  String? pICMS;
  String? vICMS;
  String? vBCFCP;
  String? pFCP;
  String? vFCP;
  @JsonKey(
      fromJson: _modBCSTEnumFromMaybeValue, toJson: _modBCSTEnumToMaybeValue)
  modBCSTEnum? modBCST;
  String? pMVAST;
  String? pRedBCST;
  String? vBCST;
  String? pICMSST;
  String? vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String? vICMSDeson;
  @JsonKey(
      fromJson: _motDesICMSEnumFromMaybeValue,
      toJson: _motDesICMSEnumToMaybeValue)
  motDesICMSEnum? motDesICMS;
  String? vICMSSTDeson;
  @JsonKey(
      fromJson: _motDesICMSSTEnumFromMaybeValue,
      toJson: _motDesICMSSTEnumToMaybeValue)
  motDesICMSSTEnum? motDesICMSST;
  ICMS90ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.modBC,
      this.vBC,
      this.pRedBC,
      this.pICMS,
      this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      this.vBCST,
      this.pICMSST,
      this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS,
      this.vICMSSTDeson,
      this.motDesICMSST}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC == null || modBC.toString().trim() == modBC.toString()) ==
        false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pRedBC == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC == null || pRedBC.toString().trim() == pRedBC.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((pICMS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS == null || pICMS.toString().trim() == pICMS.toString()) ==
        false) {
      throw Exception('Invalid value for pICMS');
    }
    ;
    if ((vICMS == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMS.toString())) ==
        false) {
      throw Exception('Invalid value for vICMS - $vICMS');
    }
    ;
    if ((vICMS == null || vICMS.toString().trim() == vICMS.toString()) ==
        false) {
      throw Exception('Invalid value for vICMS');
    }
    ;
    if ((vBCFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCP - $vBCFCP');
    }
    ;
    if ((vBCFCP == null || vBCFCP.toString().trim() == vBCFCP.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCP');
    }
    ;
    if ((pFCP == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCP.toString())) ==
        false) {
      throw Exception('Invalid value for pFCP - $pFCP');
    }
    ;
    if ((pFCP == null || pFCP.toString().trim() == pFCP.toString()) == false) {
      throw Exception('Invalid value for pFCP');
    }
    ;
    if ((vFCP == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCP.toString())) ==
        false) {
      throw Exception('Invalid value for vFCP - $vFCP');
    }
    ;
    if ((vFCP == null || vFCP.toString().trim() == vFCP.toString()) == false) {
      throw Exception('Invalid value for vFCP');
    }
    ;
    if ((modBCST == null || modBCST.toString().trim() == modBCST.toString()) ==
        false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((vBCST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST == null || vBCST.toString().trim() == vBCST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((pICMSST == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST == null || pICMSST.toString().trim() == pICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((vICMSST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST == null || vICMSST.toString().trim() == vICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((vICMSDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSDeson - $vICMSDeson');
    }
    ;
    if ((vICMSDeson == null ||
            vICMSDeson.toString().trim() == vICMSDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSDeson');
    }
    ;
    if ((motDesICMS == null ||
            motDesICMS.toString().trim() == motDesICMS.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMS');
    }
    ;
    if ((vICMSSTDeson == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSTDeson.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson - $vICMSSTDeson');
    }
    ;
    if ((vICMSSTDeson == null ||
            vICMSSTDeson.toString().trim() == vICMSSTDeson.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSTDeson');
    }
    ;
    if ((motDesICMSST == null ||
            motDesICMSST.toString().trim() == motDesICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for motDesICMSST');
    }
    ;
  }
  ICMS90ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      this.modBC,
      this.vBC,
      this.pRedBC,
      this.pICMS,
      this.vICMS,
      this.vBCFCP,
      this.pFCP,
      this.vFCP,
      this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      this.vBCST,
      this.pICMSST,
      this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.vICMSDeson,
      this.motDesICMS,
      this.vICMSSTDeson,
      this.motDesICMSST});
  String toXml({String name = 'ICMS90', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (modBC != null)
        xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC!.value)]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pRedBC != null)
        xml.XmlElement(
            xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      if (pICMS != null)
        xml.XmlElement(
            xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      if (vICMS != null)
        xml.XmlElement(
            xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (vBCFCP != null)
        xml.XmlElement(
            xml.XmlName('vBCFCP'), [], [xml.XmlText(vBCFCP.toString())]),
      if (pFCP != null)
        xml.XmlElement(xml.XmlName('pFCP'), [], [xml.XmlText(pFCP.toString())]),
      if (vFCP != null)
        xml.XmlElement(xml.XmlName('vFCP'), [], [xml.XmlText(vFCP.toString())]),
      if (modBCST != null)
        xml.XmlElement(
            xml.XmlName('modBCST'), [], [xml.XmlText(modBCST!.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      if (vBCST != null)
        xml.XmlElement(
            xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      if (pICMSST != null)
        xml.XmlElement(
            xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      if (vICMSST != null)
        xml.XmlElement(
            xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      if (vICMSDeson != null)
        xml.XmlElement(xml.XmlName('vICMSDeson'), [],
            [xml.XmlText(vICMSDeson.toString())]),
      if (motDesICMS != null)
        xml.XmlElement(
            xml.XmlName('motDesICMS'), [], [xml.XmlText(motDesICMS!.value)]),
      if (vICMSSTDeson != null)
        xml.XmlElement(xml.XmlName('vICMSSTDeson'), [],
            [xml.XmlText(vICMSSTDeson.toString())]),
      if (motDesICMSST != null)
        xml.XmlElement(
            xml.XmlName('motDesICMSST'), [], [xml.XmlText(motDesICMSST!.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMS90ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMS90'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMS90ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: element.findElements('modBC').isNotEmpty
          ? modBCEnum.fromValue(element.findElements('modBC').first.text)
          : null,
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pRedBC: element.findElements('pRedBC').isNotEmpty
          ? element.findElements('pRedBC').first.text
          : null,
      pICMS: element.findElements('pICMS').isNotEmpty
          ? element.findElements('pICMS').first.text
          : null,
      vICMS: element.findElements('vICMS').isNotEmpty
          ? element.findElements('vICMS').first.text
          : null,
      vBCFCP: element.findElements('vBCFCP').isNotEmpty
          ? element.findElements('vBCFCP').first.text
          : null,
      pFCP: element.findElements('pFCP').isNotEmpty
          ? element.findElements('pFCP').first.text
          : null,
      vFCP: element.findElements('vFCP').isNotEmpty
          ? element.findElements('vFCP').first.text
          : null,
      modBCST: element.findElements('modBCST').isNotEmpty
          ? modBCSTEnum.fromValue(element.findElements('modBCST').first.text)
          : null,
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').isNotEmpty
          ? element.findElements('vBCST').first.text
          : null,
      pICMSST: element.findElements('pICMSST').isNotEmpty
          ? element.findElements('pICMSST').first.text
          : null,
      vICMSST: element.findElements('vICMSST').isNotEmpty
          ? element.findElements('vICMSST').first.text
          : null,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      vICMSDeson: element.findElements('vICMSDeson').isNotEmpty
          ? element.findElements('vICMSDeson').first.text
          : null,
      motDesICMS: element.findElements('motDesICMS').isNotEmpty
          ? motDesICMSEnum
              .fromValue(element.findElements('motDesICMS').first.text)
          : null,
      vICMSSTDeson: element.findElements('vICMSSTDeson').isNotEmpty
          ? element.findElements('vICMSSTDeson').first.text
          : null,
      motDesICMSST: element.findElements('motDesICMSST').isNotEmpty
          ? motDesICMSSTEnum
              .fromValue(element.findElements('motDesICMSST').first.text)
          : null,
    );
  }
  factory ICMS90ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMS90ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMS90ComplexType_ICMSToJson(this);
}

List<ICMS90ComplexType_ICMS> _ICMS90ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMS90ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMS90ComplexType_ICMS>? _ICMS90ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMS90ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMS90ComplexType_ICMSListToJson(
        List<ICMS90ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMS90ComplexType_ICMSMaybeListToJson(
        List<ICMS90ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMS90ComplexType_ICMS _ICMS90ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS90ComplexType_ICMS.fromJson(json);
ICMS90ComplexType_ICMS? _ICMS90ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMS90ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMS90ComplexType_ICMSToJson(
        ICMS90ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMS90ComplexType_ICMSMaybeToJson(
        ICMS90ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSPartComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  @JsonKey(fromJson: _modBCEnumFromValue, toJson: _modBCEnumToValue)
  modBCEnum modBC;
  String vBC;
  String? pRedBC;
  String pICMS;
  String vICMS;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String pBCOp;
  @JsonKey(fromJson: _UFSTEnumFromValue, toJson: _UFSTEnumToValue)
  UFSTEnum UFST;
  ICMSPartComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      this.pRedBC,
      required this.pICMS,
      required this.vICMS,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      required this.pBCOp,
      required this.UFST}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((modBC.toString().trim() == modBC.toString()) == false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pRedBC == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC == null || pRedBC.toString().trim() == pRedBC.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS.toString().trim() == pICMS.toString()) == false) {
      throw Exception('Invalid value for pICMS');
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
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pBCOp.toString())) ==
        false) {
      throw Exception('Invalid value for pBCOp - $pBCOp');
    }
    ;
    if ((pBCOp.toString().trim() == pBCOp.toString()) == false) {
      throw Exception('Invalid value for pBCOp');
    }
    ;
    if ((UFST.toString().trim() == UFST.toString()) == false) {
      throw Exception('Invalid value for UFST');
    }
    ;
  }
  ICMSPartComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.modBC,
      required this.vBC,
      this.pRedBC,
      required this.pICMS,
      required this.vICMS,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      required this.pBCOp,
      required this.UFST});
  String toXml({String name = 'ICMSPart', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC.value)]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pRedBC != null)
        xml.XmlElement(
            xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      xml.XmlElement(xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      xml.XmlElement(xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      xml.XmlElement(xml.XmlName('pBCOp'), [], [xml.XmlText(pBCOp.toString())]),
      xml.XmlElement(xml.XmlName('UFST'), [], [xml.XmlText(UFST.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSPartComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSPart'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSPartComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      modBC: modBCEnum.fromValue(element.findElements('modBC').first.text),
      vBC: element.findElements('vBC').first.text,
      pRedBC: element.findElements('pRedBC').isNotEmpty
          ? element.findElements('pRedBC').first.text
          : null,
      pICMS: element.findElements('pICMS').first.text,
      vICMS: element.findElements('vICMS').first.text,
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      pBCOp: element.findElements('pBCOp').first.text,
      UFST: UFSTEnum.fromValue(element.findElements('UFST').first.text),
    );
  }
  factory ICMSPartComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSPartComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSPartComplexType_ICMSToJson(this);
}

List<ICMSPartComplexType_ICMS> _ICMSPartComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => ICMSPartComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSPartComplexType_ICMS>? _ICMSPartComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ICMSPartComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSPartComplexType_ICMSListToJson(
        List<ICMSPartComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSPartComplexType_ICMSMaybeListToJson(
        List<ICMSPartComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSPartComplexType_ICMS _ICMSPartComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSPartComplexType_ICMS.fromJson(json);
ICMSPartComplexType_ICMS? _ICMSPartComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSPartComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSPartComplexType_ICMSToJson(
        ICMSPartComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSPartComplexType_ICMSMaybeToJson(
        ICMSPartComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSTComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String vBCSTRet;
  String? pST;
  String? vICMSSubstituto;
  String vICMSSTRet;
  String? vBCFCPSTRet;
  String? pFCPSTRet;
  String? vFCPSTRet;
  String vBCSTDest;
  String vICMSSTDest;
  String? pRedBCEfet;
  String? vBCEfet;
  String? pICMSEfet;
  String? vICMSEfet;
  ICMSSTComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      required this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      required this.vBCSTDest,
      required this.vICMSSTDest,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCSTRet - $vBCSTRet');
    }
    ;
    if ((vBCSTRet.toString().trim() == vBCSTRet.toString()) == false) {
      throw Exception('Invalid value for vBCSTRet');
    }
    ;
    if ((pST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pST.toString())) ==
        false) {
      throw Exception('Invalid value for pST - $pST');
    }
    ;
    if ((pST == null || pST.toString().trim() == pST.toString()) == false) {
      throw Exception('Invalid value for pST');
    }
    ;
    if ((vICMSSubstituto == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSubstituto.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto - $vICMSSubstituto');
    }
    ;
    if ((vICMSSubstituto == null ||
            vICMSSubstituto.toString().trim() == vICMSSubstituto.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTRet - $vICMSSTRet');
    }
    ;
    if ((vICMSSTRet.toString().trim() == vICMSSTRet.toString()) == false) {
      throw Exception('Invalid value for vICMSSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet - $vBCFCPSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            vBCFCPSTRet.toString().trim() == vBCFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet - $pFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            pFCPSTRet.toString().trim() == pFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet - $vFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            vFCPSTRet.toString().trim() == vFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCSTDest.toString())) ==
        false) {
      throw Exception('Invalid value for vBCSTDest - $vBCSTDest');
    }
    ;
    if ((vBCSTDest.toString().trim() == vBCSTDest.toString()) == false) {
      throw Exception('Invalid value for vBCSTDest');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSSTDest.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTDest - $vICMSSTDest');
    }
    ;
    if ((vICMSSTDest.toString().trim() == vICMSSTDest.toString()) == false) {
      throw Exception('Invalid value for vICMSSTDest');
    }
    ;
    if ((pRedBCEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet - $pRedBCEfet');
    }
    ;
    if ((pRedBCEfet == null ||
            pRedBCEfet.toString().trim() == pRedBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet');
    }
    ;
    if ((vBCEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCEfet - $vBCEfet');
    }
    ;
    if ((vBCEfet == null || vBCEfet.toString().trim() == vBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCEfet');
    }
    ;
    if ((pICMSEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSEfet - $pICMSEfet');
    }
    ;
    if ((pICMSEfet == null ||
            pICMSEfet.toString().trim() == pICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSEfet - $vICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            vICMSEfet.toString().trim() == vICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSEfet');
    }
    ;
  }
  ICMSSTComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CST,
      required this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      required this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      required this.vBCSTDest,
      required this.vICMSSTDest,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet});
  String toXml({String name = 'ICMSST', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(
          xml.XmlName('vBCSTRet'), [], [xml.XmlText(vBCSTRet.toString())]),
      if (pST != null)
        xml.XmlElement(xml.XmlName('pST'), [], [xml.XmlText(pST.toString())]),
      if (vICMSSubstituto != null)
        xml.XmlElement(xml.XmlName('vICMSSubstituto'), [],
            [xml.XmlText(vICMSSubstituto.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSSTRet'), [], [xml.XmlText(vICMSSTRet.toString())]),
      if (vBCFCPSTRet != null)
        xml.XmlElement(xml.XmlName('vBCFCPSTRet'), [],
            [xml.XmlText(vBCFCPSTRet.toString())]),
      if (pFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('pFCPSTRet'), [], [xml.XmlText(pFCPSTRet.toString())]),
      if (vFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('vFCPSTRet'), [], [xml.XmlText(vFCPSTRet.toString())]),
      xml.XmlElement(
          xml.XmlName('vBCSTDest'), [], [xml.XmlText(vBCSTDest.toString())]),
      xml.XmlElement(xml.XmlName('vICMSSTDest'), [],
          [xml.XmlText(vICMSSTDest.toString())]),
      if (pRedBCEfet != null)
        xml.XmlElement(xml.XmlName('pRedBCEfet'), [],
            [xml.XmlText(pRedBCEfet.toString())]),
      if (vBCEfet != null)
        xml.XmlElement(
            xml.XmlName('vBCEfet'), [], [xml.XmlText(vBCEfet.toString())]),
      if (pICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('pICMSEfet'), [], [xml.XmlText(pICMSEfet.toString())]),
      if (vICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('vICMSEfet'), [], [xml.XmlText(vICMSEfet.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSTComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSST'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSTComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBCSTRet: element.findElements('vBCSTRet').first.text,
      pST: element.findElements('pST').isNotEmpty
          ? element.findElements('pST').first.text
          : null,
      vICMSSubstituto: element.findElements('vICMSSubstituto').isNotEmpty
          ? element.findElements('vICMSSubstituto').first.text
          : null,
      vICMSSTRet: element.findElements('vICMSSTRet').first.text,
      vBCFCPSTRet: element.findElements('vBCFCPSTRet').isNotEmpty
          ? element.findElements('vBCFCPSTRet').first.text
          : null,
      pFCPSTRet: element.findElements('pFCPSTRet').isNotEmpty
          ? element.findElements('pFCPSTRet').first.text
          : null,
      vFCPSTRet: element.findElements('vFCPSTRet').isNotEmpty
          ? element.findElements('vFCPSTRet').first.text
          : null,
      vBCSTDest: element.findElements('vBCSTDest').first.text,
      vICMSSTDest: element.findElements('vICMSSTDest').first.text,
      pRedBCEfet: element.findElements('pRedBCEfet').isNotEmpty
          ? element.findElements('pRedBCEfet').first.text
          : null,
      vBCEfet: element.findElements('vBCEfet').isNotEmpty
          ? element.findElements('vBCEfet').first.text
          : null,
      pICMSEfet: element.findElements('pICMSEfet').isNotEmpty
          ? element.findElements('pICMSEfet').first.text
          : null,
      vICMSEfet: element.findElements('vICMSEfet').isNotEmpty
          ? element.findElements('vICMSEfet').first.text
          : null,
    );
  }
  factory ICMSSTComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSTComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSTComplexType_ICMSToJson(this);
}

List<ICMSSTComplexType_ICMS> _ICMSSTComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => ICMSSTComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSTComplexType_ICMS>? _ICMSSTComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => ICMSSTComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSTComplexType_ICMSListToJson(
        List<ICMSSTComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSTComplexType_ICMSMaybeListToJson(
        List<ICMSSTComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSTComplexType_ICMS _ICMSSTComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSTComplexType_ICMS.fromJson(json);
ICMSSTComplexType_ICMS? _ICMSSTComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSTComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSTComplexType_ICMSToJson(
        ICMSSTComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSTComplexType_ICMSMaybeToJson(
        ICMSSTComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN101ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  String pCredSN;
  String vCredICMSSN;
  ICMSSN101ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.pCredSN,
      required this.vCredICMSSN}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pCredSN.toString())) ==
        false) {
      throw Exception('Invalid value for pCredSN - $pCredSN');
    }
    ;
    if ((pCredSN.toString().trim() == pCredSN.toString()) == false) {
      throw Exception('Invalid value for pCredSN');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCredICMSSN.toString())) ==
        false) {
      throw Exception('Invalid value for vCredICMSSN - $vCredICMSSN');
    }
    ;
    if ((vCredICMSSN.toString().trim() == vCredICMSSN.toString()) == false) {
      throw Exception('Invalid value for vCredICMSSN');
    }
    ;
  }
  ICMSSN101ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.pCredSN,
      required this.vCredICMSSN});
  String toXml(
      {String name = 'ICMSSN101', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)]),
      xml.XmlElement(
          xml.XmlName('pCredSN'), [], [xml.XmlText(pCredSN.toString())]),
      xml.XmlElement(
          xml.XmlName('vCredICMSSN'), [], [xml.XmlText(vCredICMSSN.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN101ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN101'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN101ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
      pCredSN: element.findElements('pCredSN').first.text,
      vCredICMSSN: element.findElements('vCredICMSSN').first.text,
    );
  }
  factory ICMSSN101ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN101ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN101ComplexType_ICMSToJson(this);
}

List<ICMSSN101ComplexType_ICMS> _ICMSSN101ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN101ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN101ComplexType_ICMS>? _ICMSSN101ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN101ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN101ComplexType_ICMSListToJson(
        List<ICMSSN101ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN101ComplexType_ICMSMaybeListToJson(
        List<ICMSSN101ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN101ComplexType_ICMS _ICMSSN101ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN101ComplexType_ICMS.fromJson(json);
ICMSSN101ComplexType_ICMS? _ICMSSN101ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN101ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN101ComplexType_ICMSToJson(
        ICMSSN101ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN101ComplexType_ICMSMaybeToJson(
        ICMSSN101ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN102ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  ICMSSN102ComplexType_ICMS(
      {this.xmlns, required this.orig, required this.CSOSN}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
  }
  ICMSSN102ComplexType_ICMS.unsafe(
      {this.xmlns, required this.orig, required this.CSOSN});
  String toXml(
      {String name = 'ICMSSN102', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN102ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN102'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN102ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
    );
  }
  factory ICMSSN102ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN102ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN102ComplexType_ICMSToJson(this);
}

List<ICMSSN102ComplexType_ICMS> _ICMSSN102ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN102ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN102ComplexType_ICMS>? _ICMSSN102ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN102ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN102ComplexType_ICMSListToJson(
        List<ICMSSN102ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN102ComplexType_ICMSMaybeListToJson(
        List<ICMSSN102ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN102ComplexType_ICMS _ICMSSN102ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN102ComplexType_ICMS.fromJson(json);
ICMSSN102ComplexType_ICMS? _ICMSSN102ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN102ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN102ComplexType_ICMSToJson(
        ICMSSN102ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN102ComplexType_ICMSMaybeToJson(
        ICMSSN102ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN201ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String pCredSN;
  String vCredICMSSN;
  ICMSSN201ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      required this.pCredSN,
      required this.vCredICMSSN}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pCredSN.toString())) ==
        false) {
      throw Exception('Invalid value for pCredSN - $pCredSN');
    }
    ;
    if ((pCredSN.toString().trim() == pCredSN.toString()) == false) {
      throw Exception('Invalid value for pCredSN');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCredICMSSN.toString())) ==
        false) {
      throw Exception('Invalid value for vCredICMSSN - $vCredICMSSN');
    }
    ;
    if ((vCredICMSSN.toString().trim() == vCredICMSSN.toString()) == false) {
      throw Exception('Invalid value for vCredICMSSN');
    }
    ;
  }
  ICMSSN201ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      required this.pCredSN,
      required this.vCredICMSSN});
  String toXml(
      {String name = 'ICMSSN201', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      xml.XmlElement(
          xml.XmlName('pCredSN'), [], [xml.XmlText(pCredSN.toString())]),
      xml.XmlElement(
          xml.XmlName('vCredICMSSN'), [], [xml.XmlText(vCredICMSSN.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN201ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN201'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN201ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      pCredSN: element.findElements('pCredSN').first.text,
      vCredICMSSN: element.findElements('vCredICMSSN').first.text,
    );
  }
  factory ICMSSN201ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN201ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN201ComplexType_ICMSToJson(this);
}

List<ICMSSN201ComplexType_ICMS> _ICMSSN201ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN201ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN201ComplexType_ICMS>? _ICMSSN201ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN201ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN201ComplexType_ICMSListToJson(
        List<ICMSSN201ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN201ComplexType_ICMSMaybeListToJson(
        List<ICMSSN201ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN201ComplexType_ICMS _ICMSSN201ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN201ComplexType_ICMS.fromJson(json);
ICMSSN201ComplexType_ICMS? _ICMSSN201ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN201ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN201ComplexType_ICMSToJson(
        ICMSSN201ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN201ComplexType_ICMSMaybeToJson(
        ICMSSN201ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN202ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  @JsonKey(fromJson: _modBCSTEnumFromValue, toJson: _modBCSTEnumToValue)
  modBCSTEnum modBCST;
  String? pMVAST;
  String? pRedBCST;
  String vBCST;
  String pICMSST;
  String vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  ICMSSN202ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
    if ((modBCST.toString().trim() == modBCST.toString()) == false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST.toString().trim() == vBCST.toString()) == false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST.toString().trim() == pICMSST.toString()) == false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST.toString().trim() == vICMSST.toString()) == false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
  }
  ICMSSN202ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      required this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      required this.vBCST,
      required this.pICMSST,
      required this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST});
  String toXml(
      {String name = 'ICMSSN202', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)]),
      xml.XmlElement(xml.XmlName('modBCST'), [], [xml.XmlText(modBCST.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      xml.XmlElement(xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      xml.XmlElement(
          xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      xml.XmlElement(
          xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN202ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN202'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN202ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
      modBCST:
          modBCSTEnum.fromValue(element.findElements('modBCST').first.text),
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').first.text,
      pICMSST: element.findElements('pICMSST').first.text,
      vICMSST: element.findElements('vICMSST').first.text,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
    );
  }
  factory ICMSSN202ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN202ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN202ComplexType_ICMSToJson(this);
}

List<ICMSSN202ComplexType_ICMS> _ICMSSN202ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN202ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN202ComplexType_ICMS>? _ICMSSN202ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN202ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN202ComplexType_ICMSListToJson(
        List<ICMSSN202ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN202ComplexType_ICMSMaybeListToJson(
        List<ICMSSN202ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN202ComplexType_ICMS _ICMSSN202ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN202ComplexType_ICMS.fromJson(json);
ICMSSN202ComplexType_ICMS? _ICMSSN202ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN202ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN202ComplexType_ICMSToJson(
        ICMSSN202ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN202ComplexType_ICMSMaybeToJson(
        ICMSSN202ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN500ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  String? vBCSTRet;
  String? pST;
  String? vICMSSubstituto;
  String? vICMSSTRet;
  String? vBCFCPSTRet;
  String? pFCPSTRet;
  String? vFCPSTRet;
  String? pRedBCEfet;
  String? vBCEfet;
  String? pICMSEfet;
  String? vICMSEfet;
  ICMSSN500ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
    if ((vBCSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCSTRet - $vBCSTRet');
    }
    ;
    if ((vBCSTRet == null ||
            vBCSTRet.toString().trim() == vBCSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCSTRet');
    }
    ;
    if ((pST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pST.toString())) ==
        false) {
      throw Exception('Invalid value for pST - $pST');
    }
    ;
    if ((pST == null || pST.toString().trim() == pST.toString()) == false) {
      throw Exception('Invalid value for pST');
    }
    ;
    if ((vICMSSubstituto == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSubstituto.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto - $vICMSSubstituto');
    }
    ;
    if ((vICMSSubstituto == null ||
            vICMSSubstituto.toString().trim() == vICMSSubstituto.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSubstituto');
    }
    ;
    if ((vICMSSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSSTRet - $vICMSSTRet');
    }
    ;
    if ((vICMSSTRet == null ||
            vICMSSTRet.toString().trim() == vICMSSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet - $vBCFCPSTRet');
    }
    ;
    if ((vBCFCPSTRet == null ||
            vBCFCPSTRet.toString().trim() == vBCFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet - $pFCPSTRet');
    }
    ;
    if ((pFCPSTRet == null ||
            pFCPSTRet.toString().trim() == pFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPSTRet.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet - $vFCPSTRet');
    }
    ;
    if ((vFCPSTRet == null ||
            vFCPSTRet.toString().trim() == vFCPSTRet.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPSTRet');
    }
    ;
    if ((pRedBCEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet - $pRedBCEfet');
    }
    ;
    if ((pRedBCEfet == null ||
            pRedBCEfet.toString().trim() == pRedBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCEfet');
    }
    ;
    if ((vBCEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vBCEfet - $vBCEfet');
    }
    ;
    if ((vBCEfet == null || vBCEfet.toString().trim() == vBCEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vBCEfet');
    }
    ;
    if ((pICMSEfet == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSEfet - $pICMSEfet');
    }
    ;
    if ((pICMSEfet == null ||
            pICMSEfet.toString().trim() == pICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSEfet.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSEfet - $vICMSEfet');
    }
    ;
    if ((vICMSEfet == null ||
            vICMSEfet.toString().trim() == vICMSEfet.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSEfet');
    }
    ;
  }
  ICMSSN500ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      this.vBCSTRet,
      this.pST,
      this.vICMSSubstituto,
      this.vICMSSTRet,
      this.vBCFCPSTRet,
      this.pFCPSTRet,
      this.vFCPSTRet,
      this.pRedBCEfet,
      this.vBCEfet,
      this.pICMSEfet,
      this.vICMSEfet});
  String toXml(
      {String name = 'ICMSSN500', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)]),
      if (vBCSTRet != null)
        xml.XmlElement(
            xml.XmlName('vBCSTRet'), [], [xml.XmlText(vBCSTRet.toString())]),
      if (pST != null)
        xml.XmlElement(xml.XmlName('pST'), [], [xml.XmlText(pST.toString())]),
      if (vICMSSubstituto != null)
        xml.XmlElement(xml.XmlName('vICMSSubstituto'), [],
            [xml.XmlText(vICMSSubstituto.toString())]),
      if (vICMSSTRet != null)
        xml.XmlElement(xml.XmlName('vICMSSTRet'), [],
            [xml.XmlText(vICMSSTRet.toString())]),
      if (vBCFCPSTRet != null)
        xml.XmlElement(xml.XmlName('vBCFCPSTRet'), [],
            [xml.XmlText(vBCFCPSTRet.toString())]),
      if (pFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('pFCPSTRet'), [], [xml.XmlText(pFCPSTRet.toString())]),
      if (vFCPSTRet != null)
        xml.XmlElement(
            xml.XmlName('vFCPSTRet'), [], [xml.XmlText(vFCPSTRet.toString())]),
      if (pRedBCEfet != null)
        xml.XmlElement(xml.XmlName('pRedBCEfet'), [],
            [xml.XmlText(pRedBCEfet.toString())]),
      if (vBCEfet != null)
        xml.XmlElement(
            xml.XmlName('vBCEfet'), [], [xml.XmlText(vBCEfet.toString())]),
      if (pICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('pICMSEfet'), [], [xml.XmlText(pICMSEfet.toString())]),
      if (vICMSEfet != null)
        xml.XmlElement(
            xml.XmlName('vICMSEfet'), [], [xml.XmlText(vICMSEfet.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN500ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN500'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN500ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
      vBCSTRet: element.findElements('vBCSTRet').isNotEmpty
          ? element.findElements('vBCSTRet').first.text
          : null,
      pST: element.findElements('pST').isNotEmpty
          ? element.findElements('pST').first.text
          : null,
      vICMSSubstituto: element.findElements('vICMSSubstituto').isNotEmpty
          ? element.findElements('vICMSSubstituto').first.text
          : null,
      vICMSSTRet: element.findElements('vICMSSTRet').isNotEmpty
          ? element.findElements('vICMSSTRet').first.text
          : null,
      vBCFCPSTRet: element.findElements('vBCFCPSTRet').isNotEmpty
          ? element.findElements('vBCFCPSTRet').first.text
          : null,
      pFCPSTRet: element.findElements('pFCPSTRet').isNotEmpty
          ? element.findElements('pFCPSTRet').first.text
          : null,
      vFCPSTRet: element.findElements('vFCPSTRet').isNotEmpty
          ? element.findElements('vFCPSTRet').first.text
          : null,
      pRedBCEfet: element.findElements('pRedBCEfet').isNotEmpty
          ? element.findElements('pRedBCEfet').first.text
          : null,
      vBCEfet: element.findElements('vBCEfet').isNotEmpty
          ? element.findElements('vBCEfet').first.text
          : null,
      pICMSEfet: element.findElements('pICMSEfet').isNotEmpty
          ? element.findElements('pICMSEfet').first.text
          : null,
      vICMSEfet: element.findElements('vICMSEfet').isNotEmpty
          ? element.findElements('vICMSEfet').first.text
          : null,
    );
  }
  factory ICMSSN500ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN500ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN500ComplexType_ICMSToJson(this);
}

List<ICMSSN500ComplexType_ICMS> _ICMSSN500ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN500ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN500ComplexType_ICMS>? _ICMSSN500ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN500ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN500ComplexType_ICMSListToJson(
        List<ICMSSN500ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN500ComplexType_ICMSMaybeListToJson(
        List<ICMSSN500ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN500ComplexType_ICMS _ICMSSN500ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN500ComplexType_ICMS.fromJson(json);
ICMSSN500ComplexType_ICMS? _ICMSSN500ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN500ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN500ComplexType_ICMSToJson(
        ICMSSN500ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN500ComplexType_ICMSMaybeToJson(
        ICMSSN500ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class ICMSSN900ComplexType_ICMS {
  String? xmlns;
  @JsonKey(fromJson: _origEnumFromValue, toJson: _origEnumToValue)
  origEnum orig;
  @JsonKey(fromJson: _CSOSNEnumFromValue, toJson: _CSOSNEnumToValue)
  CSOSNEnum CSOSN;
  @JsonKey(fromJson: _modBCEnumFromMaybeValue, toJson: _modBCEnumToMaybeValue)
  modBCEnum? modBC;
  String? vBC;
  String? pRedBC;
  String? pICMS;
  String? vICMS;
  @JsonKey(
      fromJson: _modBCSTEnumFromMaybeValue, toJson: _modBCSTEnumToMaybeValue)
  modBCSTEnum? modBCST;
  String? pMVAST;
  String? pRedBCST;
  String? vBCST;
  String? pICMSST;
  String? vICMSST;
  String? vBCFCPST;
  String? pFCPST;
  String? vFCPST;
  String? pCredSN;
  String? vCredICMSSN;
  ICMSSN900ComplexType_ICMS(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      this.modBC,
      this.vBC,
      this.pRedBC,
      this.pICMS,
      this.vICMS,
      this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      this.vBCST,
      this.pICMSST,
      this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.pCredSN,
      this.vCredICMSSN}) {
    if ((orig.toString().trim() == orig.toString()) == false) {
      throw Exception('Invalid value for orig');
    }
    ;
    if ((CSOSN.toString().trim() == CSOSN.toString()) == false) {
      throw Exception('Invalid value for CSOSN');
    }
    ;
    if ((modBC == null || modBC.toString().trim() == modBC.toString()) ==
        false) {
      throw Exception('Invalid value for modBC');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pRedBC == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBC.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBC - $pRedBC');
    }
    ;
    if ((pRedBC == null || pRedBC.toString().trim() == pRedBC.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBC');
    }
    ;
    if ((pICMS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMS.toString())) ==
        false) {
      throw Exception('Invalid value for pICMS - $pICMS');
    }
    ;
    if ((pICMS == null || pICMS.toString().trim() == pICMS.toString()) ==
        false) {
      throw Exception('Invalid value for pICMS');
    }
    ;
    if ((vICMS == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMS.toString())) ==
        false) {
      throw Exception('Invalid value for vICMS - $vICMS');
    }
    ;
    if ((vICMS == null || vICMS.toString().trim() == vICMS.toString()) ==
        false) {
      throw Exception('Invalid value for vICMS');
    }
    ;
    if ((modBCST == null || modBCST.toString().trim() == modBCST.toString()) ==
        false) {
      throw Exception('Invalid value for modBCST');
    }
    ;
    if ((pMVAST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pMVAST.toString())) ==
        false) {
      throw Exception('Invalid value for pMVAST - $pMVAST');
    }
    ;
    if ((pMVAST == null || pMVAST.toString().trim() == pMVAST.toString()) ==
        false) {
      throw Exception('Invalid value for pMVAST');
    }
    ;
    if ((pRedBCST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pRedBCST.toString())) ==
        false) {
      throw Exception('Invalid value for pRedBCST - $pRedBCST');
    }
    ;
    if ((pRedBCST == null ||
            pRedBCST.toString().trim() == pRedBCST.toString()) ==
        false) {
      throw Exception('Invalid value for pRedBCST');
    }
    ;
    if ((vBCST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCST - $vBCST');
    }
    ;
    if ((vBCST == null || vBCST.toString().trim() == vBCST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCST');
    }
    ;
    if ((pICMSST == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for pICMSST - $pICMSST');
    }
    ;
    if ((pICMSST == null || pICMSST.toString().trim() == pICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for pICMSST');
    }
    ;
    if ((vICMSST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vICMSST.toString())) ==
        false) {
      throw Exception('Invalid value for vICMSST - $vICMSST');
    }
    ;
    if ((vICMSST == null || vICMSST.toString().trim() == vICMSST.toString()) ==
        false) {
      throw Exception('Invalid value for vICMSST');
    }
    ;
    if ((vBCFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBCFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vBCFCPST - $vBCFCPST');
    }
    ;
    if ((vBCFCPST == null ||
            vBCFCPST.toString().trim() == vBCFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vBCFCPST');
    }
    ;
    if ((pFCPST == null ||
            RegExp(r'0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for pFCPST - $pFCPST');
    }
    ;
    if ((pFCPST == null || pFCPST.toString().trim() == pFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for pFCPST');
    }
    ;
    if ((vFCPST == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vFCPST.toString())) ==
        false) {
      throw Exception('Invalid value for vFCPST - $vFCPST');
    }
    ;
    if ((vFCPST == null || vFCPST.toString().trim() == vFCPST.toString()) ==
        false) {
      throw Exception('Invalid value for vFCPST');
    }
    ;
    if ((pCredSN == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pCredSN.toString())) ==
        false) {
      throw Exception('Invalid value for pCredSN - $pCredSN');
    }
    ;
    if ((pCredSN == null || pCredSN.toString().trim() == pCredSN.toString()) ==
        false) {
      throw Exception('Invalid value for pCredSN');
    }
    ;
    if ((vCredICMSSN == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vCredICMSSN.toString())) ==
        false) {
      throw Exception('Invalid value for vCredICMSSN - $vCredICMSSN');
    }
    ;
    if ((vCredICMSSN == null ||
            vCredICMSSN.toString().trim() == vCredICMSSN.toString()) ==
        false) {
      throw Exception('Invalid value for vCredICMSSN');
    }
    ;
  }
  ICMSSN900ComplexType_ICMS.unsafe(
      {this.xmlns,
      required this.orig,
      required this.CSOSN,
      this.modBC,
      this.vBC,
      this.pRedBC,
      this.pICMS,
      this.vICMS,
      this.modBCST,
      this.pMVAST,
      this.pRedBCST,
      this.vBCST,
      this.pICMSST,
      this.vICMSST,
      this.vBCFCPST,
      this.pFCPST,
      this.vFCPST,
      this.pCredSN,
      this.vCredICMSSN});
  String toXml(
      {String name = 'ICMSSN900', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('orig'), [], [xml.XmlText(orig.value)]),
      xml.XmlElement(xml.XmlName('CSOSN'), [], [xml.XmlText(CSOSN.value)]),
      if (modBC != null)
        xml.XmlElement(xml.XmlName('modBC'), [], [xml.XmlText(modBC!.value)]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pRedBC != null)
        xml.XmlElement(
            xml.XmlName('pRedBC'), [], [xml.XmlText(pRedBC.toString())]),
      if (pICMS != null)
        xml.XmlElement(
            xml.XmlName('pICMS'), [], [xml.XmlText(pICMS.toString())]),
      if (vICMS != null)
        xml.XmlElement(
            xml.XmlName('vICMS'), [], [xml.XmlText(vICMS.toString())]),
      if (modBCST != null)
        xml.XmlElement(
            xml.XmlName('modBCST'), [], [xml.XmlText(modBCST!.value)]),
      if (pMVAST != null)
        xml.XmlElement(
            xml.XmlName('pMVAST'), [], [xml.XmlText(pMVAST.toString())]),
      if (pRedBCST != null)
        xml.XmlElement(
            xml.XmlName('pRedBCST'), [], [xml.XmlText(pRedBCST.toString())]),
      if (vBCST != null)
        xml.XmlElement(
            xml.XmlName('vBCST'), [], [xml.XmlText(vBCST.toString())]),
      if (pICMSST != null)
        xml.XmlElement(
            xml.XmlName('pICMSST'), [], [xml.XmlText(pICMSST.toString())]),
      if (vICMSST != null)
        xml.XmlElement(
            xml.XmlName('vICMSST'), [], [xml.XmlText(vICMSST.toString())]),
      if (vBCFCPST != null)
        xml.XmlElement(
            xml.XmlName('vBCFCPST'), [], [xml.XmlText(vBCFCPST.toString())]),
      if (pFCPST != null)
        xml.XmlElement(
            xml.XmlName('pFCPST'), [], [xml.XmlText(pFCPST.toString())]),
      if (vFCPST != null)
        xml.XmlElement(
            xml.XmlName('vFCPST'), [], [xml.XmlText(vFCPST.toString())]),
      if (pCredSN != null)
        xml.XmlElement(
            xml.XmlName('pCredSN'), [], [xml.XmlText(pCredSN.toString())]),
      if (vCredICMSSN != null)
        xml.XmlElement(xml.XmlName('vCredICMSSN'), [],
            [xml.XmlText(vCredICMSSN.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ICMSSN900ComplexType_ICMS.fromXml(String xmlString,
      {String name = 'ICMSSN900'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ICMSSN900ComplexType_ICMS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      orig: origEnum.fromValue(element.findElements('orig').first.text),
      CSOSN: CSOSNEnum.fromValue(element.findElements('CSOSN').first.text),
      modBC: element.findElements('modBC').isNotEmpty
          ? modBCEnum.fromValue(element.findElements('modBC').first.text)
          : null,
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pRedBC: element.findElements('pRedBC').isNotEmpty
          ? element.findElements('pRedBC').first.text
          : null,
      pICMS: element.findElements('pICMS').isNotEmpty
          ? element.findElements('pICMS').first.text
          : null,
      vICMS: element.findElements('vICMS').isNotEmpty
          ? element.findElements('vICMS').first.text
          : null,
      modBCST: element.findElements('modBCST').isNotEmpty
          ? modBCSTEnum.fromValue(element.findElements('modBCST').first.text)
          : null,
      pMVAST: element.findElements('pMVAST').isNotEmpty
          ? element.findElements('pMVAST').first.text
          : null,
      pRedBCST: element.findElements('pRedBCST').isNotEmpty
          ? element.findElements('pRedBCST').first.text
          : null,
      vBCST: element.findElements('vBCST').isNotEmpty
          ? element.findElements('vBCST').first.text
          : null,
      pICMSST: element.findElements('pICMSST').isNotEmpty
          ? element.findElements('pICMSST').first.text
          : null,
      vICMSST: element.findElements('vICMSST').isNotEmpty
          ? element.findElements('vICMSST').first.text
          : null,
      vBCFCPST: element.findElements('vBCFCPST').isNotEmpty
          ? element.findElements('vBCFCPST').first.text
          : null,
      pFCPST: element.findElements('pFCPST').isNotEmpty
          ? element.findElements('pFCPST').first.text
          : null,
      vFCPST: element.findElements('vFCPST').isNotEmpty
          ? element.findElements('vFCPST').first.text
          : null,
      pCredSN: element.findElements('pCredSN').isNotEmpty
          ? element.findElements('pCredSN').first.text
          : null,
      vCredICMSSN: element.findElements('vCredICMSSN').isNotEmpty
          ? element.findElements('vCredICMSSN').first.text
          : null,
    );
  }
  factory ICMSSN900ComplexType_ICMS.fromJson(Map<String, dynamic> json) =>
      _$ICMSSN900ComplexType_ICMSFromJson(json);
  Map<String, dynamic> toJson() => _$ICMSSN900ComplexType_ICMSToJson(this);
}

List<ICMSSN900ComplexType_ICMS> _ICMSSN900ComplexType_ICMSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            ICMSSN900ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<ICMSSN900ComplexType_ICMS>? _ICMSSN900ComplexType_ICMSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            ICMSSN900ComplexType_ICMS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ICMSSN900ComplexType_ICMSListToJson(
        List<ICMSSN900ComplexType_ICMS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ICMSSN900ComplexType_ICMSMaybeListToJson(
        List<ICMSSN900ComplexType_ICMS>? list) =>
    list?.map((e) => e.toJson()).toList();
ICMSSN900ComplexType_ICMS _ICMSSN900ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN900ComplexType_ICMS.fromJson(json);
ICMSSN900ComplexType_ICMS? _ICMSSN900ComplexType_ICMSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ICMSSN900ComplexType_ICMS.fromJson(json) : null;
Map<String, dynamic> _ICMSSN900ComplexType_ICMSToJson(
        ICMSSN900ComplexType_ICMS instance) =>
    instance.toJson();
Map<String, dynamic>? _ICMSSN900ComplexType_ICMSMaybeToJson(
        ICMSSN900ComplexType_ICMS? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISAliqComplexType_PIS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String vBC;
  String pPIS;
  String vPIS;
  PISAliqComplexType_PIS(
      {this.xmlns,
      required this.CST,
      required this.vBC,
      required this.pPIS,
      required this.vPIS}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pPIS.toString())) ==
        false) {
      throw Exception('Invalid value for pPIS - $pPIS');
    }
    ;
    if ((pPIS.toString().trim() == pPIS.toString()) == false) {
      throw Exception('Invalid value for pPIS');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
  }
  PISAliqComplexType_PIS.unsafe(
      {this.xmlns,
      required this.CST,
      required this.vBC,
      required this.pPIS,
      required this.vPIS});
  String toXml({String name = 'PISAliq', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(xml.XmlName('pPIS'), [], [xml.XmlText(pPIS.toString())]),
      xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISAliqComplexType_PIS.fromXml(String xmlString,
      {String name = 'PISAliq'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISAliqComplexType_PIS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBC: element.findElements('vBC').first.text,
      pPIS: element.findElements('pPIS').first.text,
      vPIS: element.findElements('vPIS').first.text,
    );
  }
  factory PISAliqComplexType_PIS.fromJson(Map<String, dynamic> json) =>
      _$PISAliqComplexType_PISFromJson(json);
  Map<String, dynamic> toJson() => _$PISAliqComplexType_PISToJson(this);
}

List<PISAliqComplexType_PIS> _PISAliqComplexType_PISListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => PISAliqComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISAliqComplexType_PIS>? _PISAliqComplexType_PISMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => PISAliqComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISAliqComplexType_PISListToJson(
        List<PISAliqComplexType_PIS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISAliqComplexType_PISMaybeListToJson(
        List<PISAliqComplexType_PIS>? list) =>
    list?.map((e) => e.toJson()).toList();
PISAliqComplexType_PIS _PISAliqComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISAliqComplexType_PIS.fromJson(json);
PISAliqComplexType_PIS? _PISAliqComplexType_PISMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISAliqComplexType_PIS.fromJson(json) : null;
Map<String, dynamic> _PISAliqComplexType_PISToJson(
        PISAliqComplexType_PIS instance) =>
    instance.toJson();
Map<String, dynamic>? _PISAliqComplexType_PISMaybeToJson(
        PISAliqComplexType_PIS? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISQtdeComplexType_PIS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String qBCProd;
  String vAliqProd;
  String vPIS;
  PISQtdeComplexType_PIS(
      {this.xmlns,
      required this.CST,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vPIS}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
            .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd.toString().trim() == qBCProd.toString()) == false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
            .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd.toString().trim() == vAliqProd.toString()) == false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
  }
  PISQtdeComplexType_PIS.unsafe(
      {this.xmlns,
      required this.CST,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vPIS});
  String toXml({String name = 'PISQtde', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(
          xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISQtdeComplexType_PIS.fromXml(String xmlString,
      {String name = 'PISQtde'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISQtdeComplexType_PIS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      qBCProd: element.findElements('qBCProd').first.text,
      vAliqProd: element.findElements('vAliqProd').first.text,
      vPIS: element.findElements('vPIS').first.text,
    );
  }
  factory PISQtdeComplexType_PIS.fromJson(Map<String, dynamic> json) =>
      _$PISQtdeComplexType_PISFromJson(json);
  Map<String, dynamic> toJson() => _$PISQtdeComplexType_PISToJson(this);
}

List<PISQtdeComplexType_PIS> _PISQtdeComplexType_PISListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => PISQtdeComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISQtdeComplexType_PIS>? _PISQtdeComplexType_PISMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => PISQtdeComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISQtdeComplexType_PISListToJson(
        List<PISQtdeComplexType_PIS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISQtdeComplexType_PISMaybeListToJson(
        List<PISQtdeComplexType_PIS>? list) =>
    list?.map((e) => e.toJson()).toList();
PISQtdeComplexType_PIS _PISQtdeComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISQtdeComplexType_PIS.fromJson(json);
PISQtdeComplexType_PIS? _PISQtdeComplexType_PISMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISQtdeComplexType_PIS.fromJson(json) : null;
Map<String, dynamic> _PISQtdeComplexType_PISToJson(
        PISQtdeComplexType_PIS instance) =>
    instance.toJson();
Map<String, dynamic>? _PISQtdeComplexType_PISMaybeToJson(
        PISQtdeComplexType_PIS? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISNTComplexType_PIS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  PISNTComplexType_PIS({this.xmlns, required this.CST}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
  }
  PISNTComplexType_PIS.unsafe({this.xmlns, required this.CST});
  String toXml({String name = 'PISNT', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISNTComplexType_PIS.fromXml(String xmlString,
      {String name = 'PISNT'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISNTComplexType_PIS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
    );
  }
  factory PISNTComplexType_PIS.fromJson(Map<String, dynamic> json) =>
      _$PISNTComplexType_PISFromJson(json);
  Map<String, dynamic> toJson() => _$PISNTComplexType_PISToJson(this);
}

List<PISNTComplexType_PIS> _PISNTComplexType_PISListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => PISNTComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISNTComplexType_PIS>? _PISNTComplexType_PISMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => PISNTComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISNTComplexType_PISListToJson(
        List<PISNTComplexType_PIS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISNTComplexType_PISMaybeListToJson(
        List<PISNTComplexType_PIS>? list) =>
    list?.map((e) => e.toJson()).toList();
PISNTComplexType_PIS _PISNTComplexType_PISFromJson(Map<String, dynamic> json) =>
    PISNTComplexType_PIS.fromJson(json);
PISNTComplexType_PIS? _PISNTComplexType_PISMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISNTComplexType_PIS.fromJson(json) : null;
Map<String, dynamic> _PISNTComplexType_PISToJson(
        PISNTComplexType_PIS instance) =>
    instance.toJson();
Map<String, dynamic>? _PISNTComplexType_PISMaybeToJson(
        PISNTComplexType_PIS? instance) =>
    instance?.toJson();

@JsonSerializable()
class PISOutrComplexType_PIS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String? vBC;
  String? pPIS;
  String? qBCProd;
  String? vAliqProd;
  String vPIS;
  PISOutrComplexType_PIS(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pPIS,
      this.qBCProd,
      this.vAliqProd,
      required this.vPIS}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pPIS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pPIS.toString())) ==
        false) {
      throw Exception('Invalid value for pPIS - $pPIS');
    }
    ;
    if ((pPIS == null || pPIS.toString().trim() == pPIS.toString()) == false) {
      throw Exception('Invalid value for pPIS');
    }
    ;
    if ((qBCProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
                .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd == null || qBCProd.toString().trim() == qBCProd.toString()) ==
        false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((vAliqProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
                .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd == null ||
            vAliqProd.toString().trim() == vAliqProd.toString()) ==
        false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vPIS.toString())) ==
        false) {
      throw Exception('Invalid value for vPIS - $vPIS');
    }
    ;
    if ((vPIS.toString().trim() == vPIS.toString()) == false) {
      throw Exception('Invalid value for vPIS');
    }
    ;
  }
  PISOutrComplexType_PIS.unsafe(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pPIS,
      this.qBCProd,
      this.vAliqProd,
      required this.vPIS});
  String toXml({String name = 'PISOutr', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pPIS != null)
        xml.XmlElement(xml.XmlName('pPIS'), [], [xml.XmlText(pPIS.toString())]),
      if (qBCProd != null)
        xml.XmlElement(
            xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      if (vAliqProd != null)
        xml.XmlElement(
            xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(xml.XmlName('vPIS'), [], [xml.XmlText(vPIS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory PISOutrComplexType_PIS.fromXml(String xmlString,
      {String name = 'PISOutr'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return PISOutrComplexType_PIS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pPIS: element.findElements('pPIS').isNotEmpty
          ? element.findElements('pPIS').first.text
          : null,
      qBCProd: element.findElements('qBCProd').isNotEmpty
          ? element.findElements('qBCProd').first.text
          : null,
      vAliqProd: element.findElements('vAliqProd').isNotEmpty
          ? element.findElements('vAliqProd').first.text
          : null,
      vPIS: element.findElements('vPIS').first.text,
    );
  }
  factory PISOutrComplexType_PIS.fromJson(Map<String, dynamic> json) =>
      _$PISOutrComplexType_PISFromJson(json);
  Map<String, dynamic> toJson() => _$PISOutrComplexType_PISToJson(this);
}

List<PISOutrComplexType_PIS> _PISOutrComplexType_PISListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => PISOutrComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<PISOutrComplexType_PIS>? _PISOutrComplexType_PISMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => PISOutrComplexType_PIS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _PISOutrComplexType_PISListToJson(
        List<PISOutrComplexType_PIS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _PISOutrComplexType_PISMaybeListToJson(
        List<PISOutrComplexType_PIS>? list) =>
    list?.map((e) => e.toJson()).toList();
PISOutrComplexType_PIS _PISOutrComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISOutrComplexType_PIS.fromJson(json);
PISOutrComplexType_PIS? _PISOutrComplexType_PISMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? PISOutrComplexType_PIS.fromJson(json) : null;
Map<String, dynamic> _PISOutrComplexType_PISToJson(
        PISOutrComplexType_PIS instance) =>
    instance.toJson();
Map<String, dynamic>? _PISOutrComplexType_PISMaybeToJson(
        PISOutrComplexType_PIS? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSAliqComplexType_COFINS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String vBC;
  String pCOFINS;
  String vCOFINS;
  COFINSAliqComplexType_COFINS(
      {this.xmlns,
      required this.CST,
      required this.vBC,
      required this.pCOFINS,
      required this.vCOFINS}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
            .hasMatch(pCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for pCOFINS - $pCOFINS');
    }
    ;
    if ((pCOFINS.toString().trim() == pCOFINS.toString()) == false) {
      throw Exception('Invalid value for pCOFINS');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS.toString().trim() == vCOFINS.toString()) == false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
  }
  COFINSAliqComplexType_COFINS.unsafe(
      {this.xmlns,
      required this.CST,
      required this.vBC,
      required this.pCOFINS,
      required this.vCOFINS});
  String toXml(
      {String name = 'COFINSAliq', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      xml.XmlElement(
          xml.XmlName('pCOFINS'), [], [xml.XmlText(pCOFINS.toString())]),
      xml.XmlElement(
          xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSAliqComplexType_COFINS.fromXml(String xmlString,
      {String name = 'COFINSAliq'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSAliqComplexType_COFINS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBC: element.findElements('vBC').first.text,
      pCOFINS: element.findElements('pCOFINS').first.text,
      vCOFINS: element.findElements('vCOFINS').first.text,
    );
  }
  factory COFINSAliqComplexType_COFINS.fromJson(Map<String, dynamic> json) =>
      _$COFINSAliqComplexType_COFINSFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSAliqComplexType_COFINSToJson(this);
}

List<COFINSAliqComplexType_COFINS> _COFINSAliqComplexType_COFINSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSAliqComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSAliqComplexType_COFINS>?
    _COFINSAliqComplexType_COFINSMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            COFINSAliqComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSAliqComplexType_COFINSListToJson(
        List<COFINSAliqComplexType_COFINS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSAliqComplexType_COFINSMaybeListToJson(
        List<COFINSAliqComplexType_COFINS>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSAliqComplexType_COFINS _COFINSAliqComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSAliqComplexType_COFINS.fromJson(json);
COFINSAliqComplexType_COFINS? _COFINSAliqComplexType_COFINSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSAliqComplexType_COFINS.fromJson(json) : null;
Map<String, dynamic> _COFINSAliqComplexType_COFINSToJson(
        COFINSAliqComplexType_COFINS instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSAliqComplexType_COFINSMaybeToJson(
        COFINSAliqComplexType_COFINS? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSQtdeComplexType_COFINS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String qBCProd;
  String vAliqProd;
  String vCOFINS;
  COFINSQtdeComplexType_COFINS(
      {this.xmlns,
      required this.CST,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vCOFINS}) {
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
            .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd.toString().trim() == qBCProd.toString()) == false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
            .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd.toString().trim() == vAliqProd.toString()) == false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS.toString().trim() == vCOFINS.toString()) == false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
  }
  COFINSQtdeComplexType_COFINS.unsafe(
      {this.xmlns,
      required this.CST,
      required this.qBCProd,
      required this.vAliqProd,
      required this.vCOFINS});
  String toXml(
      {String name = 'COFINSQtde', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      xml.XmlElement(
          xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSQtdeComplexType_COFINS.fromXml(String xmlString,
      {String name = 'COFINSQtde'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSQtdeComplexType_COFINS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      qBCProd: element.findElements('qBCProd').first.text,
      vAliqProd: element.findElements('vAliqProd').first.text,
      vCOFINS: element.findElements('vCOFINS').first.text,
    );
  }
  factory COFINSQtdeComplexType_COFINS.fromJson(Map<String, dynamic> json) =>
      _$COFINSQtdeComplexType_COFINSFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSQtdeComplexType_COFINSToJson(this);
}

List<COFINSQtdeComplexType_COFINS> _COFINSQtdeComplexType_COFINSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSQtdeComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSQtdeComplexType_COFINS>?
    _COFINSQtdeComplexType_COFINSMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            COFINSQtdeComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSQtdeComplexType_COFINSListToJson(
        List<COFINSQtdeComplexType_COFINS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSQtdeComplexType_COFINSMaybeListToJson(
        List<COFINSQtdeComplexType_COFINS>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSQtdeComplexType_COFINS _COFINSQtdeComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSQtdeComplexType_COFINS.fromJson(json);
COFINSQtdeComplexType_COFINS? _COFINSQtdeComplexType_COFINSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSQtdeComplexType_COFINS.fromJson(json) : null;
Map<String, dynamic> _COFINSQtdeComplexType_COFINSToJson(
        COFINSQtdeComplexType_COFINS instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSQtdeComplexType_COFINSMaybeToJson(
        COFINSQtdeComplexType_COFINS? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSNTComplexType_COFINS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  COFINSNTComplexType_COFINS({this.xmlns, required this.CST}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
  }
  COFINSNTComplexType_COFINS.unsafe({this.xmlns, required this.CST});
  String toXml({String name = 'COFINSNT', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSNTComplexType_COFINS.fromXml(String xmlString,
      {String name = 'COFINSNT'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSNTComplexType_COFINS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
    );
  }
  factory COFINSNTComplexType_COFINS.fromJson(Map<String, dynamic> json) =>
      _$COFINSNTComplexType_COFINSFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSNTComplexType_COFINSToJson(this);
}

List<COFINSNTComplexType_COFINS> _COFINSNTComplexType_COFINSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSNTComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSNTComplexType_COFINS>? _COFINSNTComplexType_COFINSMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            COFINSNTComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSNTComplexType_COFINSListToJson(
        List<COFINSNTComplexType_COFINS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSNTComplexType_COFINSMaybeListToJson(
        List<COFINSNTComplexType_COFINS>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSNTComplexType_COFINS _COFINSNTComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSNTComplexType_COFINS.fromJson(json);
COFINSNTComplexType_COFINS? _COFINSNTComplexType_COFINSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSNTComplexType_COFINS.fromJson(json) : null;
Map<String, dynamic> _COFINSNTComplexType_COFINSToJson(
        COFINSNTComplexType_COFINS instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSNTComplexType_COFINSMaybeToJson(
        COFINSNTComplexType_COFINS? instance) =>
    instance?.toJson();

@JsonSerializable()
class COFINSOutrComplexType_COFINS {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String? vBC;
  String? pCOFINS;
  String? qBCProd;
  String? vAliqProd;
  String vCOFINS;
  COFINSOutrComplexType_COFINS(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pCOFINS,
      this.qBCProd,
      this.vAliqProd,
      required this.vCOFINS}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pCOFINS == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for pCOFINS - $pCOFINS');
    }
    ;
    if ((pCOFINS == null || pCOFINS.toString().trim() == pCOFINS.toString()) ==
        false) {
      throw Exception('Invalid value for pCOFINS');
    }
    ;
    if ((qBCProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
                .hasMatch(qBCProd.toString())) ==
        false) {
      throw Exception('Invalid value for qBCProd - $qBCProd');
    }
    ;
    if ((qBCProd == null || qBCProd.toString().trim() == qBCProd.toString()) ==
        false) {
      throw Exception('Invalid value for qBCProd');
    }
    ;
    if ((vAliqProd == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,10}|[1-9]{1}[0-9]{0,10}(\.[0-9]{1,4})?')
                .hasMatch(vAliqProd.toString())) ==
        false) {
      throw Exception('Invalid value for vAliqProd - $vAliqProd');
    }
    ;
    if ((vAliqProd == null ||
            vAliqProd.toString().trim() == vAliqProd.toString()) ==
        false) {
      throw Exception('Invalid value for vAliqProd');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vCOFINS.toString())) ==
        false) {
      throw Exception('Invalid value for vCOFINS - $vCOFINS');
    }
    ;
    if ((vCOFINS.toString().trim() == vCOFINS.toString()) == false) {
      throw Exception('Invalid value for vCOFINS');
    }
    ;
  }
  COFINSOutrComplexType_COFINS.unsafe(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pCOFINS,
      this.qBCProd,
      this.vAliqProd,
      required this.vCOFINS});
  String toXml(
      {String name = 'COFINSOutr', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pCOFINS != null)
        xml.XmlElement(
            xml.XmlName('pCOFINS'), [], [xml.XmlText(pCOFINS.toString())]),
      if (qBCProd != null)
        xml.XmlElement(
            xml.XmlName('qBCProd'), [], [xml.XmlText(qBCProd.toString())]),
      if (vAliqProd != null)
        xml.XmlElement(
            xml.XmlName('vAliqProd'), [], [xml.XmlText(vAliqProd.toString())]),
      xml.XmlElement(
          xml.XmlName('vCOFINS'), [], [xml.XmlText(vCOFINS.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory COFINSOutrComplexType_COFINS.fromXml(String xmlString,
      {String name = 'COFINSOutr'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return COFINSOutrComplexType_COFINS.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pCOFINS: element.findElements('pCOFINS').isNotEmpty
          ? element.findElements('pCOFINS').first.text
          : null,
      qBCProd: element.findElements('qBCProd').isNotEmpty
          ? element.findElements('qBCProd').first.text
          : null,
      vAliqProd: element.findElements('vAliqProd').isNotEmpty
          ? element.findElements('vAliqProd').first.text
          : null,
      vCOFINS: element.findElements('vCOFINS').first.text,
    );
  }
  factory COFINSOutrComplexType_COFINS.fromJson(Map<String, dynamic> json) =>
      _$COFINSOutrComplexType_COFINSFromJson(json);
  Map<String, dynamic> toJson() => _$COFINSOutrComplexType_COFINSToJson(this);
}

List<COFINSOutrComplexType_COFINS> _COFINSOutrComplexType_COFINSListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            COFINSOutrComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<COFINSOutrComplexType_COFINS>?
    _COFINSOutrComplexType_COFINSMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            COFINSOutrComplexType_COFINS.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _COFINSOutrComplexType_COFINSListToJson(
        List<COFINSOutrComplexType_COFINS> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _COFINSOutrComplexType_COFINSMaybeListToJson(
        List<COFINSOutrComplexType_COFINS>? list) =>
    list?.map((e) => e.toJson()).toList();
COFINSOutrComplexType_COFINS _COFINSOutrComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSOutrComplexType_COFINS.fromJson(json);
COFINSOutrComplexType_COFINS? _COFINSOutrComplexType_COFINSMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? COFINSOutrComplexType_COFINS.fromJson(json) : null;
Map<String, dynamic> _COFINSOutrComplexType_COFINSToJson(
        COFINSOutrComplexType_COFINS instance) =>
    instance.toJson();
Map<String, dynamic>? _COFINSOutrComplexType_COFINSMaybeToJson(
        COFINSOutrComplexType_COFINS? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignatureTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _SignedInfoTypeComplexTypeFromJson,
      toJson: _SignedInfoTypeComplexTypeToJson)
  SignedInfoTypeComplexType SignedInfo;
  @JsonKey(
      fromJson: _SignatureValueTypeComplexTypeFromJson,
      toJson: _SignatureValueTypeComplexTypeToJson)
  SignatureValueTypeComplexType SignatureValue;
  @JsonKey(
      fromJson: _KeyInfoTypeComplexTypeFromJson,
      toJson: _KeyInfoTypeComplexTypeToJson)
  KeyInfoTypeComplexType KeyInfo;
  String? Id;

  SignatureTypeComplexType(
      {this.xmlns,
      required this.SignedInfo,
      required this.SignatureValue,
      required this.KeyInfo,
      this.Id});
  SignatureTypeComplexType.unsafe(
      {this.xmlns,
      required this.SignedInfo,
      required this.SignatureValue,
      required this.KeyInfo,
      this.Id});
  String toXml(
      {String name = 'SignatureType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(
          SignedInfo.toXml(name: "SignedInfo", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          SignatureValue.toXml(name: "SignatureValue", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          KeyInfo.toXml(name: "KeyInfo", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureTypeComplexType.fromXml(String xmlString,
      {String name = 'SignatureType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      SignedInfo: SignedInfoTypeComplexType.fromXml(
          element.findElements('SignedInfo').first.toString(),
          name: "SignedInfo"),
      SignatureValue: SignatureValueTypeComplexType.fromXml(
          element.findElements('SignatureValue').first.toString(),
          name: "SignatureValue"),
      KeyInfo: KeyInfoTypeComplexType.fromXml(
          element.findElements('KeyInfo').first.toString(),
          name: "KeyInfo"),
    );
  }
  factory SignatureTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignatureTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureTypeComplexTypeToJson(this);
}

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
class TLocalComplexType {
  String? xmlns;
  String? CNPJ;
  String? CPF;
  String? xNome;
  String xLgr;
  String nro;
  String? xCpl;
  String xBairro;
  String cMun;
  String xMun;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? CEP;
  String? cPais;
  String? xPais;
  String? fone;
  String? email;
  String? IE;
  TLocalComplexType(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.xNome,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      this.CEP,
      this.cPais,
      this.xPais,
      this.fone,
      this.email,
      this.IE}) {
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
    if ((xNome == null || xNome.toString().length <= 60) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null || xNome.toString().length >= 2) == false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xNome == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xNome.toString())) ==
        false) {
      throw Exception('Invalid value for xNome - $xNome');
    }
    ;
    if ((xNome == null || xNome.toString().trim() == xNome.toString()) ==
        false) {
      throw Exception('Invalid value for xNome');
    }
    ;
    if ((xLgr.toString().length <= 60) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((xLgr.toString().length >= 2) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xLgr.toString())) ==
        false) {
      throw Exception('Invalid value for xLgr - $xLgr');
    }
    ;
    if ((xLgr.toString().trim() == xLgr.toString()) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((nro.toString().length <= 60) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((nro.toString().length >= 1) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nro.toString())) ==
        false) {
      throw Exception('Invalid value for nro - $nro');
    }
    ;
    if ((nro.toString().trim() == nro.toString()) == false) {
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
    if ((xBairro.toString().length <= 60) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((xBairro.toString().length >= 2) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xBairro.toString())) ==
        false) {
      throw Exception('Invalid value for xBairro - $xBairro');
    }
    ;
    if ((xBairro.toString().trim() == xBairro.toString()) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMun.toString())) == false) {
      throw Exception('Invalid value for cMun - $cMun');
    }
    ;
    if ((cMun.toString().trim() == cMun.toString()) == false) {
      throw Exception('Invalid value for cMun');
    }
    ;
    if ((xMun.toString().length <= 60) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((xMun.toString().length >= 2) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xMun.toString())) ==
        false) {
      throw Exception('Invalid value for xMun - $xMun');
    }
    ;
    if ((xMun.toString().trim() == xMun.toString()) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((CEP == null || RegExp(r'[0-9]{8}').hasMatch(CEP.toString())) ==
        false) {
      throw Exception('Invalid value for CEP - $CEP');
    }
    ;
    if ((CEP == null || CEP.toString().trim() == CEP.toString()) == false) {
      throw Exception('Invalid value for CEP');
    }
    ;
    if ((cPais == null || RegExp(r'[0-9]{1,4}').hasMatch(cPais.toString())) ==
        false) {
      throw Exception('Invalid value for cPais - $cPais');
    }
    ;
    if ((cPais == null || cPais.toString().trim() == cPais.toString()) ==
        false) {
      throw Exception('Invalid value for cPais');
    }
    ;
    if ((xPais == null || xPais.toString().length <= 60) == false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((xPais == null || xPais.toString().length >= 2) == false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((xPais == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPais.toString())) ==
        false) {
      throw Exception('Invalid value for xPais - $xPais');
    }
    ;
    if ((xPais == null || xPais.toString().trim() == xPais.toString()) ==
        false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((fone == null || RegExp(r'[0-9]{6,14}').hasMatch(fone.toString())) ==
        false) {
      throw Exception('Invalid value for fone - $fone');
    }
    ;
    if ((fone == null || fone.toString().trim() == fone.toString()) == false) {
      throw Exception('Invalid value for fone');
    }
    ;
    if ((email == null || email.toString().length <= 60) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null || email.toString().length >= 1) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null || email.toString().trim() == email.toString()) ==
        false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(email.toString())) ==
        false) {
      throw Exception('Invalid value for email - $email');
    }
    ;
    if ((IE == null || IE.toString().length <= 14) == false) {
      throw Exception('Invalid value for IE');
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
  }
  TLocalComplexType.unsafe(
      {this.xmlns,
      this.CNPJ,
      this.CPF,
      this.xNome,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      this.CEP,
      this.cPais,
      this.xPais,
      this.fone,
      this.email,
      this.IE});
  String toXml({String name = 'TLocal', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJ != null)
        xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      if (CPF != null)
        xml.XmlElement(xml.XmlName('CPF'), [], [xml.XmlText(CPF.toString())]),
      if (xNome != null)
        xml.XmlElement(
            xml.XmlName('xNome'), [], [xml.XmlText(xNome.toString())]),
      xml.XmlElement(xml.XmlName('xLgr'), [], [xml.XmlText(xLgr.toString())]),
      xml.XmlElement(xml.XmlName('nro'), [], [xml.XmlText(nro.toString())]),
      if (xCpl != null)
        xml.XmlElement(xml.XmlName('xCpl'), [], [xml.XmlText(xCpl.toString())]),
      xml.XmlElement(
          xml.XmlName('xBairro'), [], [xml.XmlText(xBairro.toString())]),
      xml.XmlElement(xml.XmlName('cMun'), [], [xml.XmlText(cMun.toString())]),
      xml.XmlElement(xml.XmlName('xMun'), [], [xml.XmlText(xMun.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (CEP != null)
        xml.XmlElement(xml.XmlName('CEP'), [], [xml.XmlText(CEP.toString())]),
      if (cPais != null)
        xml.XmlElement(
            xml.XmlName('cPais'), [], [xml.XmlText(cPais.toString())]),
      if (xPais != null)
        xml.XmlElement(
            xml.XmlName('xPais'), [], [xml.XmlText(xPais.toString())]),
      if (fone != null)
        xml.XmlElement(xml.XmlName('fone'), [], [xml.XmlText(fone.toString())]),
      if (email != null)
        xml.XmlElement(
            xml.XmlName('email'), [], [xml.XmlText(email.toString())]),
      if (IE != null)
        xml.XmlElement(xml.XmlName('IE'), [], [xml.XmlText(IE.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TLocalComplexType.fromXml(String xmlString,
      {String name = 'TLocal'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TLocalComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').isNotEmpty
          ? element.findElements('CNPJ').first.text
          : null,
      CPF: element.findElements('CPF').isNotEmpty
          ? element.findElements('CPF').first.text
          : null,
      xNome: element.findElements('xNome').isNotEmpty
          ? element.findElements('xNome').first.text
          : null,
      xLgr: element.findElements('xLgr').first.text,
      nro: element.findElements('nro').first.text,
      xCpl: element.findElements('xCpl').isNotEmpty
          ? element.findElements('xCpl').first.text
          : null,
      xBairro: element.findElements('xBairro').first.text,
      cMun: element.findElements('cMun').first.text,
      xMun: element.findElements('xMun').first.text,
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      CEP: element.findElements('CEP').isNotEmpty
          ? element.findElements('CEP').first.text
          : null,
      cPais: element.findElements('cPais').isNotEmpty
          ? element.findElements('cPais').first.text
          : null,
      xPais: element.findElements('xPais').isNotEmpty
          ? element.findElements('xPais').first.text
          : null,
      fone: element.findElements('fone').isNotEmpty
          ? element.findElements('fone').first.text
          : null,
      email: element.findElements('email').isNotEmpty
          ? element.findElements('email').first.text
          : null,
      IE: element.findElements('IE').isNotEmpty
          ? element.findElements('IE').first.text
          : null,
    );
  }
  factory TLocalComplexType.fromJson(Map<String, dynamic> json) =>
      _$TLocalComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TLocalComplexTypeToJson(this);
}

List<TLocalComplexType> _TLocalComplexTypeListFromJson(List<dynamic> json) =>
    json
        .map((e) => TLocalComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TLocalComplexType>? _TLocalComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TLocalComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TLocalComplexTypeListToJson(
        List<TLocalComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TLocalComplexTypeMaybeListToJson(
        List<TLocalComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TLocalComplexType _TLocalComplexTypeFromJson(Map<String, dynamic> json) =>
    TLocalComplexType.fromJson(json);
TLocalComplexType? _TLocalComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TLocalComplexType.fromJson(json) : null;
Map<String, dynamic> _TLocalComplexTypeToJson(TLocalComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TLocalComplexTypeMaybeToJson(
        TLocalComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TInfRespTecComplexType {
  String? xmlns;
  String CNPJ;
  String xContato;
  String email;
  String fone;
  String? idCSRT;
  String? hashCSRT;
  TInfRespTecComplexType(
      {this.xmlns,
      required this.CNPJ,
      required this.xContato,
      required this.email,
      required this.fone,
      this.idCSRT,
      this.hashCSRT}) {
    if ((CNPJ.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((RegExp(r'[0-9]{0}|[0-9]{14}').hasMatch(CNPJ.toString())) == false) {
      throw Exception('Invalid value for CNPJ - $CNPJ');
    }
    ;
    if ((CNPJ.toString().trim() == CNPJ.toString()) == false) {
      throw Exception('Invalid value for CNPJ');
    }
    ;
    if ((xContato.toString().length <= 60) == false) {
      throw Exception('Invalid value for xContato');
    }
    ;
    if ((xContato.toString().length >= 2) == false) {
      throw Exception('Invalid value for xContato');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xContato.toString())) ==
        false) {
      throw Exception('Invalid value for xContato - $xContato');
    }
    ;
    if ((xContato.toString().trim() == xContato.toString()) == false) {
      throw Exception('Invalid value for xContato');
    }
    ;
    if ((email.toString().length <= 60) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email.toString().length >= 6) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((email.toString().trim() == email.toString()) == false) {
      throw Exception('Invalid value for email');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(email.toString())) ==
        false) {
      throw Exception('Invalid value for email - $email');
    }
    ;
    if ((RegExp(r'[0-9]{6,14}').hasMatch(fone.toString())) == false) {
      throw Exception('Invalid value for fone - $fone');
    }
    ;
    if ((fone.toString().trim() == fone.toString()) == false) {
      throw Exception('Invalid value for fone');
    }
    ;
    if ((idCSRT == null || RegExp(r'[0-9]{2}').hasMatch(idCSRT.toString())) ==
        false) {
      throw Exception('Invalid value for idCSRT - $idCSRT');
    }
    ;
    if ((idCSRT == null || idCSRT.toString().trim() == idCSRT.toString()) ==
        false) {
      throw Exception('Invalid value for idCSRT');
    }
    ;
    if ((hashCSRT == null || hashCSRT.toString().length == 20) == false) {
      throw Exception('Invalid value for hashCSRT');
    }
    ;
  }
  TInfRespTecComplexType.unsafe(
      {this.xmlns,
      required this.CNPJ,
      required this.xContato,
      required this.email,
      required this.fone,
      this.idCSRT,
      this.hashCSRT});
  String toXml(
      {String name = 'TInfRespTec', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CNPJ'), [], [xml.XmlText(CNPJ.toString())]),
      xml.XmlElement(
          xml.XmlName('xContato'), [], [xml.XmlText(xContato.toString())]),
      xml.XmlElement(xml.XmlName('email'), [], [xml.XmlText(email.toString())]),
      xml.XmlElement(xml.XmlName('fone'), [], [xml.XmlText(fone.toString())]),
      if (idCSRT != null)
        xml.XmlElement(
            xml.XmlName('idCSRT'), [], [xml.XmlText(idCSRT.toString())]),
      if (hashCSRT != null)
        xml.XmlElement(
            xml.XmlName('hashCSRT'), [], [xml.XmlText(hashCSRT.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TInfRespTecComplexType.fromXml(String xmlString,
      {String name = 'TInfRespTec'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TInfRespTecComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJ: element.findElements('CNPJ').first.text,
      xContato: element.findElements('xContato').first.text,
      email: element.findElements('email').first.text,
      fone: element.findElements('fone').first.text,
      idCSRT: element.findElements('idCSRT').isNotEmpty
          ? element.findElements('idCSRT').first.text
          : null,
      hashCSRT: element.findElements('hashCSRT').isNotEmpty
          ? element.findElements('hashCSRT').first.text
          : null,
    );
  }
  factory TInfRespTecComplexType.fromJson(Map<String, dynamic> json) =>
      _$TInfRespTecComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TInfRespTecComplexTypeToJson(this);
}

List<TInfRespTecComplexType> _TInfRespTecComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TInfRespTecComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TInfRespTecComplexType>? _TInfRespTecComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TInfRespTecComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TInfRespTecComplexTypeListToJson(
        List<TInfRespTecComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TInfRespTecComplexTypeMaybeListToJson(
        List<TInfRespTecComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TInfRespTecComplexType _TInfRespTecComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TInfRespTecComplexType.fromJson(json);
TInfRespTecComplexType? _TInfRespTecComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TInfRespTecComplexType.fromJson(json) : null;
Map<String, dynamic> _TInfRespTecComplexTypeToJson(
        TInfRespTecComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TInfRespTecComplexTypeMaybeToJson(
        TInfRespTecComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TEnderEmiComplexType {
  String? xmlns;
  String xLgr;
  String nro;
  String? xCpl;
  String xBairro;
  String cMun;
  String xMun;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String CEP;
  @JsonKey(fromJson: _cPaisEnumFromMaybeValue, toJson: _cPaisEnumToMaybeValue)
  cPaisEnum? cPais;
  @JsonKey(fromJson: _xPaisEnumFromMaybeValue, toJson: _xPaisEnumToMaybeValue)
  xPaisEnum? xPais;
  String? fone;
  TEnderEmiComplexType(
      {this.xmlns,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      required this.CEP,
      this.cPais,
      this.xPais,
      this.fone}) {
    if ((xLgr.toString().length <= 60) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((xLgr.toString().length >= 2) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xLgr.toString())) ==
        false) {
      throw Exception('Invalid value for xLgr - $xLgr');
    }
    ;
    if ((xLgr.toString().trim() == xLgr.toString()) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((nro.toString().length <= 60) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((nro.toString().length >= 1) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nro.toString())) ==
        false) {
      throw Exception('Invalid value for nro - $nro');
    }
    ;
    if ((nro.toString().trim() == nro.toString()) == false) {
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
    if ((xBairro.toString().length <= 60) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((xBairro.toString().length >= 2) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xBairro.toString())) ==
        false) {
      throw Exception('Invalid value for xBairro - $xBairro');
    }
    ;
    if ((xBairro.toString().trim() == xBairro.toString()) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMun.toString())) == false) {
      throw Exception('Invalid value for cMun - $cMun');
    }
    ;
    if ((cMun.toString().trim() == cMun.toString()) == false) {
      throw Exception('Invalid value for cMun');
    }
    ;
    if ((xMun.toString().length <= 60) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((xMun.toString().length >= 2) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xMun.toString())) ==
        false) {
      throw Exception('Invalid value for xMun - $xMun');
    }
    ;
    if ((xMun.toString().trim() == xMun.toString()) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((RegExp(r'[0-9]{8}').hasMatch(CEP.toString())) == false) {
      throw Exception('Invalid value for CEP - $CEP');
    }
    ;
    if ((CEP.toString().trim() == CEP.toString()) == false) {
      throw Exception('Invalid value for CEP');
    }
    ;
    if ((cPais == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cPais.toString())) ==
        false) {
      throw Exception('Invalid value for cPais - $cPais');
    }
    ;
    if ((cPais == null || cPais.toString().trim() == cPais.toString()) ==
        false) {
      throw Exception('Invalid value for cPais');
    }
    ;
    if ((xPais == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPais.toString())) ==
        false) {
      throw Exception('Invalid value for xPais - $xPais');
    }
    ;
    if ((xPais == null || xPais.toString().trim() == xPais.toString()) ==
        false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((fone == null || RegExp(r'[0-9]{6,14}').hasMatch(fone.toString())) ==
        false) {
      throw Exception('Invalid value for fone - $fone');
    }
    ;
    if ((fone == null || fone.toString().trim() == fone.toString()) == false) {
      throw Exception('Invalid value for fone');
    }
    ;
  }
  TEnderEmiComplexType.unsafe(
      {this.xmlns,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      required this.CEP,
      this.cPais,
      this.xPais,
      this.fone});
  String toXml(
      {String name = 'TEnderEmi', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('xLgr'), [], [xml.XmlText(xLgr.toString())]),
      xml.XmlElement(xml.XmlName('nro'), [], [xml.XmlText(nro.toString())]),
      if (xCpl != null)
        xml.XmlElement(xml.XmlName('xCpl'), [], [xml.XmlText(xCpl.toString())]),
      xml.XmlElement(
          xml.XmlName('xBairro'), [], [xml.XmlText(xBairro.toString())]),
      xml.XmlElement(xml.XmlName('cMun'), [], [xml.XmlText(cMun.toString())]),
      xml.XmlElement(xml.XmlName('xMun'), [], [xml.XmlText(xMun.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      xml.XmlElement(xml.XmlName('CEP'), [], [xml.XmlText(CEP.toString())]),
      if (cPais != null)
        xml.XmlElement(xml.XmlName('cPais'), [], [xml.XmlText(cPais!.value)]),
      if (xPais != null)
        xml.XmlElement(xml.XmlName('xPais'), [], [xml.XmlText(xPais!.value)]),
      if (fone != null)
        xml.XmlElement(xml.XmlName('fone'), [], [xml.XmlText(fone.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TEnderEmiComplexType.fromXml(String xmlString,
      {String name = 'TEnderEmi'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TEnderEmiComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      xLgr: element.findElements('xLgr').first.text,
      nro: element.findElements('nro').first.text,
      xCpl: element.findElements('xCpl').isNotEmpty
          ? element.findElements('xCpl').first.text
          : null,
      xBairro: element.findElements('xBairro').first.text,
      cMun: element.findElements('cMun').first.text,
      xMun: element.findElements('xMun').first.text,
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      CEP: element.findElements('CEP').first.text,
      cPais: element.findElements('cPais').isNotEmpty
          ? cPaisEnum.fromValue(element.findElements('cPais').first.text)
          : null,
      xPais: element.findElements('xPais').isNotEmpty
          ? xPaisEnum.fromValue(element.findElements('xPais').first.text)
          : null,
      fone: element.findElements('fone').isNotEmpty
          ? element.findElements('fone').first.text
          : null,
    );
  }
  factory TEnderEmiComplexType.fromJson(Map<String, dynamic> json) =>
      _$TEnderEmiComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TEnderEmiComplexTypeToJson(this);
}

List<TEnderEmiComplexType> _TEnderEmiComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TEnderEmiComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TEnderEmiComplexType>? _TEnderEmiComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TEnderEmiComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TEnderEmiComplexTypeListToJson(
        List<TEnderEmiComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TEnderEmiComplexTypeMaybeListToJson(
        List<TEnderEmiComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TEnderEmiComplexType _TEnderEmiComplexTypeFromJson(Map<String, dynamic> json) =>
    TEnderEmiComplexType.fromJson(json);
TEnderEmiComplexType? _TEnderEmiComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TEnderEmiComplexType.fromJson(json) : null;
Map<String, dynamic> _TEnderEmiComplexTypeToJson(
        TEnderEmiComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TEnderEmiComplexTypeMaybeToJson(
        TEnderEmiComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TEnderecoComplexType {
  String? xmlns;
  String xLgr;
  String nro;
  String? xCpl;
  String xBairro;
  String cMun;
  String xMun;
  @JsonKey(fromJson: _UFEnumFromValue, toJson: _UFEnumToValue)
  UFEnum UF;
  String? CEP;
  String? cPais;
  String? xPais;
  String? fone;
  TEnderecoComplexType(
      {this.xmlns,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      this.CEP,
      this.cPais,
      this.xPais,
      this.fone}) {
    if ((xLgr.toString().length <= 60) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((xLgr.toString().length >= 2) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xLgr.toString())) ==
        false) {
      throw Exception('Invalid value for xLgr - $xLgr');
    }
    ;
    if ((xLgr.toString().trim() == xLgr.toString()) == false) {
      throw Exception('Invalid value for xLgr');
    }
    ;
    if ((nro.toString().length <= 60) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((nro.toString().length >= 1) == false) {
      throw Exception('Invalid value for nro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(nro.toString())) ==
        false) {
      throw Exception('Invalid value for nro - $nro');
    }
    ;
    if ((nro.toString().trim() == nro.toString()) == false) {
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
    if ((xBairro.toString().length <= 60) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((xBairro.toString().length >= 2) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xBairro.toString())) ==
        false) {
      throw Exception('Invalid value for xBairro - $xBairro');
    }
    ;
    if ((xBairro.toString().trim() == xBairro.toString()) == false) {
      throw Exception('Invalid value for xBairro');
    }
    ;
    if ((RegExp(r'[0-9]{7}').hasMatch(cMun.toString())) == false) {
      throw Exception('Invalid value for cMun - $cMun');
    }
    ;
    if ((cMun.toString().trim() == cMun.toString()) == false) {
      throw Exception('Invalid value for cMun');
    }
    ;
    if ((xMun.toString().length <= 60) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((xMun.toString().length >= 2) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(xMun.toString())) ==
        false) {
      throw Exception('Invalid value for xMun - $xMun');
    }
    ;
    if ((xMun.toString().trim() == xMun.toString()) == false) {
      throw Exception('Invalid value for xMun');
    }
    ;
    if ((UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((CEP == null || RegExp(r'[0-9]{8}').hasMatch(CEP.toString())) ==
        false) {
      throw Exception('Invalid value for CEP - $CEP');
    }
    ;
    if ((CEP == null || CEP.toString().trim() == CEP.toString()) == false) {
      throw Exception('Invalid value for CEP');
    }
    ;
    if ((cPais == null || RegExp(r'[0-9]{1,4}').hasMatch(cPais.toString())) ==
        false) {
      throw Exception('Invalid value for cPais - $cPais');
    }
    ;
    if ((cPais == null || cPais.toString().trim() == cPais.toString()) ==
        false) {
      throw Exception('Invalid value for cPais');
    }
    ;
    if ((xPais == null || xPais.toString().length <= 60) == false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((xPais == null || xPais.toString().length >= 2) == false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((xPais == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(xPais.toString())) ==
        false) {
      throw Exception('Invalid value for xPais - $xPais');
    }
    ;
    if ((xPais == null || xPais.toString().trim() == xPais.toString()) ==
        false) {
      throw Exception('Invalid value for xPais');
    }
    ;
    if ((fone == null || RegExp(r'[0-9]{6,14}').hasMatch(fone.toString())) ==
        false) {
      throw Exception('Invalid value for fone - $fone');
    }
    ;
    if ((fone == null || fone.toString().trim() == fone.toString()) == false) {
      throw Exception('Invalid value for fone');
    }
    ;
  }
  TEnderecoComplexType.unsafe(
      {this.xmlns,
      required this.xLgr,
      required this.nro,
      this.xCpl,
      required this.xBairro,
      required this.cMun,
      required this.xMun,
      required this.UF,
      this.CEP,
      this.cPais,
      this.xPais,
      this.fone});
  String toXml(
      {String name = 'TEndereco', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('xLgr'), [], [xml.XmlText(xLgr.toString())]),
      xml.XmlElement(xml.XmlName('nro'), [], [xml.XmlText(nro.toString())]),
      if (xCpl != null)
        xml.XmlElement(xml.XmlName('xCpl'), [], [xml.XmlText(xCpl.toString())]),
      xml.XmlElement(
          xml.XmlName('xBairro'), [], [xml.XmlText(xBairro.toString())]),
      xml.XmlElement(xml.XmlName('cMun'), [], [xml.XmlText(cMun.toString())]),
      xml.XmlElement(xml.XmlName('xMun'), [], [xml.XmlText(xMun.toString())]),
      xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF.value)]),
      if (CEP != null)
        xml.XmlElement(xml.XmlName('CEP'), [], [xml.XmlText(CEP.toString())]),
      if (cPais != null)
        xml.XmlElement(
            xml.XmlName('cPais'), [], [xml.XmlText(cPais.toString())]),
      if (xPais != null)
        xml.XmlElement(
            xml.XmlName('xPais'), [], [xml.XmlText(xPais.toString())]),
      if (fone != null)
        xml.XmlElement(xml.XmlName('fone'), [], [xml.XmlText(fone.toString())])
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
      xLgr: element.findElements('xLgr').first.text,
      nro: element.findElements('nro').first.text,
      xCpl: element.findElements('xCpl').isNotEmpty
          ? element.findElements('xCpl').first.text
          : null,
      xBairro: element.findElements('xBairro').first.text,
      cMun: element.findElements('cMun').first.text,
      xMun: element.findElements('xMun').first.text,
      UF: UFEnum.fromValue(element.findElements('UF').first.text),
      CEP: element.findElements('CEP').isNotEmpty
          ? element.findElements('CEP').first.text
          : null,
      cPais: element.findElements('cPais').isNotEmpty
          ? element.findElements('cPais').first.text
          : null,
      xPais: element.findElements('xPais').isNotEmpty
          ? element.findElements('xPais').first.text
          : null,
      fone: element.findElements('fone').isNotEmpty
          ? element.findElements('fone').first.text
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

@JsonSerializable()
class TVeiculoComplexType {
  String? xmlns;
  String placa;
  @JsonKey(fromJson: _UFEnumFromMaybeValue, toJson: _UFEnumToMaybeValue)
  UFEnum? UF;
  String? RNTC;
  TVeiculoComplexType({this.xmlns, required this.placa, this.UF, this.RNTC}) {
    if ((RegExp(r'[A-Z]{2,3}[0-9]{4}|[A-Z]{3,4}[0-9]{3}|[A-Z0-9]{7}')
            .hasMatch(placa.toString())) ==
        false) {
      throw Exception('Invalid value for placa - $placa');
    }
    ;
    if ((placa.toString().trim() == placa.toString()) == false) {
      throw Exception('Invalid value for placa');
    }
    ;
    if ((UF == null || UF.toString().trim() == UF.toString()) == false) {
      throw Exception('Invalid value for UF');
    }
    ;
    if ((RNTC == null || RNTC.toString().length <= 20) == false) {
      throw Exception('Invalid value for RNTC');
    }
    ;
    if ((RNTC == null || RNTC.toString().length >= 1) == false) {
      throw Exception('Invalid value for RNTC');
    }
    ;
    if ((RNTC == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(RNTC.toString())) ==
        false) {
      throw Exception('Invalid value for RNTC - $RNTC');
    }
    ;
    if ((RNTC == null || RNTC.toString().trim() == RNTC.toString()) == false) {
      throw Exception('Invalid value for RNTC');
    }
    ;
  }
  TVeiculoComplexType.unsafe(
      {this.xmlns, required this.placa, this.UF, this.RNTC});
  String toXml({String name = 'TVeiculo', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('placa'), [], [xml.XmlText(placa.toString())]),
      if (UF != null)
        xml.XmlElement(xml.XmlName('UF'), [], [xml.XmlText(UF!.value)]),
      if (RNTC != null)
        xml.XmlElement(xml.XmlName('RNTC'), [], [xml.XmlText(RNTC.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TVeiculoComplexType.fromXml(String xmlString,
      {String name = 'TVeiculo'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TVeiculoComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      placa: element.findElements('placa').first.text,
      UF: element.findElements('UF').isNotEmpty
          ? UFEnum.fromValue(element.findElements('UF').first.text)
          : null,
      RNTC: element.findElements('RNTC').isNotEmpty
          ? element.findElements('RNTC').first.text
          : null,
    );
  }
  factory TVeiculoComplexType.fromJson(Map<String, dynamic> json) =>
      _$TVeiculoComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TVeiculoComplexTypeToJson(this);
}

List<TVeiculoComplexType> _TVeiculoComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => TVeiculoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TVeiculoComplexType>? _TVeiculoComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => TVeiculoComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TVeiculoComplexTypeListToJson(
        List<TVeiculoComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TVeiculoComplexTypeMaybeListToJson(
        List<TVeiculoComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TVeiculoComplexType _TVeiculoComplexTypeFromJson(Map<String, dynamic> json) =>
    TVeiculoComplexType.fromJson(json);
TVeiculoComplexType? _TVeiculoComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TVeiculoComplexType.fromJson(json) : null;
Map<String, dynamic> _TVeiculoComplexTypeToJson(TVeiculoComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TVeiculoComplexTypeMaybeToJson(
        TVeiculoComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TIpiComplexType {
  String? xmlns;
  String? CNPJProd;
  String? cSelo;
  String? qSelo;
  String cEnq;
  @JsonKey(
      fromJson: _IPITribComplexType_TIpiMaybeFromJson,
      toJson: _IPITribComplexType_TIpiMaybeToJson)
  IPITribComplexType_TIpi? IPITrib;
  @JsonKey(
      fromJson: _IPINTComplexType_TIpiMaybeFromJson,
      toJson: _IPINTComplexType_TIpiMaybeToJson)
  IPINTComplexType_TIpi? IPINT;
  TIpiComplexType(
      {this.xmlns,
      this.CNPJProd,
      this.cSelo,
      this.qSelo,
      required this.cEnq,
      this.IPITrib,
      this.IPINT}) {
    if ((CNPJProd == null || CNPJProd.toString().length <= 14) == false) {
      throw Exception('Invalid value for CNPJProd');
    }
    ;
    if ((CNPJProd == null ||
            RegExp(r'[0-9]{14}').hasMatch(CNPJProd.toString())) ==
        false) {
      throw Exception('Invalid value for CNPJProd - $CNPJProd');
    }
    ;
    if ((CNPJProd == null ||
            CNPJProd.toString().trim() == CNPJProd.toString()) ==
        false) {
      throw Exception('Invalid value for CNPJProd');
    }
    ;
    if ((cSelo == null || cSelo.toString().length <= 60) == false) {
      throw Exception('Invalid value for cSelo');
    }
    ;
    if ((cSelo == null || cSelo.toString().length >= 1) == false) {
      throw Exception('Invalid value for cSelo');
    }
    ;
    if ((cSelo == null ||
            RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
                .hasMatch(cSelo.toString())) ==
        false) {
      throw Exception('Invalid value for cSelo - $cSelo');
    }
    ;
    if ((cSelo == null || cSelo.toString().trim() == cSelo.toString()) ==
        false) {
      throw Exception('Invalid value for cSelo');
    }
    ;
    if ((qSelo == null || RegExp(r'[0-9]{1,12}').hasMatch(qSelo.toString())) ==
        false) {
      throw Exception('Invalid value for qSelo - $qSelo');
    }
    ;
    if ((qSelo == null || qSelo.toString().trim() == qSelo.toString()) ==
        false) {
      throw Exception('Invalid value for qSelo');
    }
    ;
    if ((cEnq.toString().length <= 3) == false) {
      throw Exception('Invalid value for cEnq');
    }
    ;
    if ((cEnq.toString().length >= 1) == false) {
      throw Exception('Invalid value for cEnq');
    }
    ;
    if ((RegExp(r'[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}')
            .hasMatch(cEnq.toString())) ==
        false) {
      throw Exception('Invalid value for cEnq - $cEnq');
    }
    ;
    if ((cEnq.toString().trim() == cEnq.toString()) == false) {
      throw Exception('Invalid value for cEnq');
    }
    ;
    final _$IPITribIPINT = [IPITrib != null, IPINT != null];
    if ((_$IPITribIPINT.every((e) => e == false) ||
            _$IPITribIPINT.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of IPITrib, IPINT');
    }
    ;
  }
  TIpiComplexType.unsafe(
      {this.xmlns,
      this.CNPJProd,
      this.cSelo,
      this.qSelo,
      required this.cEnq,
      this.IPITrib,
      this.IPINT});
  String toXml({String name = 'TIpi', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      if (CNPJProd != null)
        xml.XmlElement(
            xml.XmlName('CNPJProd'), [], [xml.XmlText(CNPJProd.toString())]),
      if (cSelo != null)
        xml.XmlElement(
            xml.XmlName('cSelo'), [], [xml.XmlText(cSelo.toString())]),
      if (qSelo != null)
        xml.XmlElement(
            xml.XmlName('qSelo'), [], [xml.XmlText(qSelo.toString())]),
      xml.XmlElement(xml.XmlName('cEnq'), [], [xml.XmlText(cEnq.toString())]),
      if (IPITrib != null)
        xml.XmlDocumentFragment.parse(
            IPITrib!.toXml(name: "IPITrib", pretty: pretty)),
      if (IPINT != null)
        xml.XmlDocumentFragment.parse(
            IPINT!.toXml(name: "IPINT", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TIpiComplexType.fromXml(String xmlString, {String name = 'TIpi'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TIpiComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CNPJProd: element.findElements('CNPJProd').isNotEmpty
          ? element.findElements('CNPJProd').first.text
          : null,
      cSelo: element.findElements('cSelo').isNotEmpty
          ? element.findElements('cSelo').first.text
          : null,
      qSelo: element.findElements('qSelo').isNotEmpty
          ? element.findElements('qSelo').first.text
          : null,
      cEnq: element.findElements('cEnq').first.text,
      IPITrib: element.findElements('IPITrib').isNotEmpty
          ? IPITribComplexType_TIpi.fromXml(
              element.findElements('IPITrib').first.toString(),
              name: "IPITrib")
          : null,
      IPINT: element.findElements('IPINT').isNotEmpty
          ? IPINTComplexType_TIpi.fromXml(
              element.findElements('IPINT').first.toString(),
              name: "IPINT")
          : null,
    );
  }
  factory TIpiComplexType.fromJson(Map<String, dynamic> json) =>
      _$TIpiComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TIpiComplexTypeToJson(this);
}

List<TIpiComplexType> _TIpiComplexTypeListFromJson(List<dynamic> json) => json
    .map((e) => TIpiComplexType.fromJson(e as Map<String, dynamic>))
    .toList();
List<TIpiComplexType>? _TIpiComplexTypeMaybeListFromJson(List<dynamic>? json) =>
    json
        ?.map((e) => TIpiComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TIpiComplexTypeListToJson(
        List<TIpiComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TIpiComplexTypeMaybeListToJson(
        List<TIpiComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TIpiComplexType _TIpiComplexTypeFromJson(Map<String, dynamic> json) =>
    TIpiComplexType.fromJson(json);
TIpiComplexType? _TIpiComplexTypeMaybeFromJson(Map<String, dynamic>? json) =>
    json != null ? TIpiComplexType.fromJson(json) : null;
Map<String, dynamic> _TIpiComplexTypeToJson(TIpiComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TIpiComplexTypeMaybeToJson(TIpiComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignedInfoTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _CanonicalizationMethodComplexType_SignedInfoTypeFromJson,
      toJson: _CanonicalizationMethodComplexType_SignedInfoTypeToJson)
  CanonicalizationMethodComplexType_SignedInfoType CanonicalizationMethod;
  @JsonKey(
      fromJson: _SignatureMethodComplexType_SignedInfoTypeFromJson,
      toJson: _SignatureMethodComplexType_SignedInfoTypeToJson)
  SignatureMethodComplexType_SignedInfoType SignatureMethod;
  @JsonKey(
      fromJson: _ReferenceTypeComplexTypeFromJson,
      toJson: _ReferenceTypeComplexTypeToJson)
  ReferenceTypeComplexType Reference;
  String? Id;

  SignedInfoTypeComplexType(
      {this.xmlns,
      required this.CanonicalizationMethod,
      required this.SignatureMethod,
      required this.Reference,
      this.Id});
  SignedInfoTypeComplexType.unsafe(
      {this.xmlns,
      required this.CanonicalizationMethod,
      required this.SignatureMethod,
      required this.Reference,
      this.Id});
  String toXml(
      {String name = 'SignedInfoType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(CanonicalizationMethod.toXml(
          name: "CanonicalizationMethod", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          SignatureMethod.toXml(name: "SignatureMethod", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          Reference.toXml(name: "Reference", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignedInfoTypeComplexType.fromXml(String xmlString,
      {String name = 'SignedInfoType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignedInfoTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      CanonicalizationMethod:
          CanonicalizationMethodComplexType_SignedInfoType.fromXml(
              element.findElements('CanonicalizationMethod').first.toString(),
              name: "CanonicalizationMethod"),
      SignatureMethod: SignatureMethodComplexType_SignedInfoType.fromXml(
          element.findElements('SignatureMethod').first.toString(),
          name: "SignatureMethod"),
      Reference: ReferenceTypeComplexType.fromXml(
          element.findElements('Reference').first.toString(),
          name: "Reference"),
    );
  }
  factory SignedInfoTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignedInfoTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignedInfoTypeComplexTypeToJson(this);
}

List<SignedInfoTypeComplexType> _SignedInfoTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            SignedInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<SignedInfoTypeComplexType>? _SignedInfoTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            SignedInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _SignedInfoTypeComplexTypeListToJson(
        List<SignedInfoTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _SignedInfoTypeComplexTypeMaybeListToJson(
        List<SignedInfoTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
SignedInfoTypeComplexType _SignedInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignedInfoTypeComplexType.fromJson(json);
SignedInfoTypeComplexType? _SignedInfoTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? SignedInfoTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _SignedInfoTypeComplexTypeToJson(
        SignedInfoTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignedInfoTypeComplexTypeMaybeToJson(
        SignedInfoTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class SignatureValueTypeComplexType {
  String? xmlns;
  String SignatureValueType;
  String? Id;

  SignatureValueTypeComplexType(
      {this.xmlns, required this.SignatureValueType, this.Id});
  SignatureValueTypeComplexType.unsafe(
      {this.xmlns, required this.SignatureValueType, this.Id});
  String toXml(
      {String name = 'SignatureValueType',
      bool pretty = false,
      String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlText(SignatureValueType)
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureValueTypeComplexType.fromXml(String xmlString,
      {String name = 'SignatureValueType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureValueTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      SignatureValueType: element.text,
    );
  }
  factory SignatureValueTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$SignatureValueTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureValueTypeComplexTypeToJson(this);
}

List<SignatureValueTypeComplexType> _SignatureValueTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            SignatureValueTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<SignatureValueTypeComplexType>?
    _SignatureValueTypeComplexTypeMaybeListFromJson(List<dynamic>? json) => json
        ?.map((e) =>
            SignatureValueTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _SignatureValueTypeComplexTypeListToJson(
        List<SignatureValueTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _SignatureValueTypeComplexTypeMaybeListToJson(
        List<SignatureValueTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
SignatureValueTypeComplexType _SignatureValueTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureValueTypeComplexType.fromJson(json);
SignatureValueTypeComplexType? _SignatureValueTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? SignatureValueTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _SignatureValueTypeComplexTypeToJson(
        SignatureValueTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignatureValueTypeComplexTypeMaybeToJson(
        SignatureValueTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class KeyInfoTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _X509DataTypeComplexTypeFromJson,
      toJson: _X509DataTypeComplexTypeToJson)
  X509DataTypeComplexType X509Data;
  String? Id;

  KeyInfoTypeComplexType({this.xmlns, required this.X509Data, this.Id});
  KeyInfoTypeComplexType.unsafe({this.xmlns, required this.X509Data, this.Id});
  String toXml(
      {String name = 'KeyInfoType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!)
    ], [
      xml.XmlDocumentFragment.parse(
          X509Data.toXml(name: "X509Data", pretty: pretty))
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory KeyInfoTypeComplexType.fromXml(String xmlString,
      {String name = 'KeyInfoType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return KeyInfoTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      X509Data: X509DataTypeComplexType.fromXml(
          element.findElements('X509Data').first.toString(),
          name: "X509Data"),
    );
  }
  factory KeyInfoTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$KeyInfoTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$KeyInfoTypeComplexTypeToJson(this);
}

List<KeyInfoTypeComplexType> _KeyInfoTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => KeyInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<KeyInfoTypeComplexType>? _KeyInfoTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => KeyInfoTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _KeyInfoTypeComplexTypeListToJson(
        List<KeyInfoTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _KeyInfoTypeComplexTypeMaybeListToJson(
        List<KeyInfoTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
KeyInfoTypeComplexType _KeyInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    KeyInfoTypeComplexType.fromJson(json);
KeyInfoTypeComplexType? _KeyInfoTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? KeyInfoTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _KeyInfoTypeComplexTypeToJson(
        KeyInfoTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _KeyInfoTypeComplexTypeMaybeToJson(
        KeyInfoTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class ReferenceTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _TransformsTypeComplexTypeFromJson,
      toJson: _TransformsTypeComplexTypeToJson)
  TransformsTypeComplexType Transforms;
  @JsonKey(
      fromJson: _DigestMethodComplexType_ReferenceTypeFromJson,
      toJson: _DigestMethodComplexType_ReferenceTypeToJson)
  DigestMethodComplexType_ReferenceType DigestMethod;
  String DigestValue;
  String? Id;

  String URI;

  String? Type;

  ReferenceTypeComplexType(
      {this.xmlns,
      required this.Transforms,
      required this.DigestMethod,
      required this.DigestValue,
      this.Id,
      required this.URI,
      this.Type}) {
    if ((URI.toString().length >= 2) == false) {
      throw Exception('Invalid value for URI');
    }
    ;
  }
  ReferenceTypeComplexType.unsafe(
      {this.xmlns,
      required this.Transforms,
      required this.DigestMethod,
      required this.DigestValue,
      this.Id,
      required this.URI,
      this.Type});
  String toXml(
      {String name = 'ReferenceType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      if (Id != null) xml.XmlAttribute(xml.XmlName('Id'), Id!),
      xml.XmlAttribute(xml.XmlName('URI'), URI.toString()),
      if (Type != null) xml.XmlAttribute(xml.XmlName('Type'), Type!)
    ], [
      xml.XmlDocumentFragment.parse(
          Transforms.toXml(name: "Transforms", pretty: pretty)),
      xml.XmlDocumentFragment.parse(
          DigestMethod.toXml(name: "DigestMethod", pretty: pretty)),
      xml.XmlElement(
          xml.XmlName('DigestValue'), [], [xml.XmlText(DigestValue.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory ReferenceTypeComplexType.fromXml(String xmlString,
      {String name = 'ReferenceType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return ReferenceTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Id: element.getAttribute("Id"),
      URI: element.getAttribute('URI')!,
      Type: element.getAttribute("Type"),
      Transforms: TransformsTypeComplexType.fromXml(
          element.findElements('Transforms').first.toString(),
          name: "Transforms"),
      DigestMethod: DigestMethodComplexType_ReferenceType.fromXml(
          element.findElements('DigestMethod').first.toString(),
          name: "DigestMethod"),
      DigestValue: element.findElements('DigestValue').first.text,
    );
  }
  factory ReferenceTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$ReferenceTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceTypeComplexTypeToJson(this);
}

List<ReferenceTypeComplexType> _ReferenceTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => ReferenceTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<ReferenceTypeComplexType>? _ReferenceTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => ReferenceTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _ReferenceTypeComplexTypeListToJson(
        List<ReferenceTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _ReferenceTypeComplexTypeMaybeListToJson(
        List<ReferenceTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
ReferenceTypeComplexType _ReferenceTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    ReferenceTypeComplexType.fromJson(json);
ReferenceTypeComplexType? _ReferenceTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? ReferenceTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _ReferenceTypeComplexTypeToJson(
        ReferenceTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _ReferenceTypeComplexTypeMaybeToJson(
        ReferenceTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class X509DataTypeComplexType {
  String? xmlns;
  String X509Certificate;
  X509DataTypeComplexType({this.xmlns, required this.X509Certificate});
  X509DataTypeComplexType.unsafe({this.xmlns, required this.X509Certificate});
  String toXml(
      {String name = 'X509DataType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('X509Certificate'), [], [
        xml.XmlText(X509Certificate),
      ]),
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory X509DataTypeComplexType.fromXml(String xmlString,
      {String name = 'X509DataType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return X509DataTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      X509Certificate: element.getElement('X509Certificate')!.text,
    );
  }
  factory X509DataTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$X509DataTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$X509DataTypeComplexTypeToJson(this);
}

List<X509DataTypeComplexType> _X509DataTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => X509DataTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<X509DataTypeComplexType>? _X509DataTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => X509DataTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _X509DataTypeComplexTypeListToJson(
        List<X509DataTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _X509DataTypeComplexTypeMaybeListToJson(
        List<X509DataTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
X509DataTypeComplexType _X509DataTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    X509DataTypeComplexType.fromJson(json);
X509DataTypeComplexType? _X509DataTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? X509DataTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _X509DataTypeComplexTypeToJson(
        X509DataTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _X509DataTypeComplexTypeMaybeToJson(
        X509DataTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TransformsTypeComplexType {
  String? xmlns;
  @JsonKey(
      fromJson: _TransformTypeComplexTypeListFromJson,
      toJson: _TransformTypeComplexTypeListToJson)
  List<TransformTypeComplexType> Transform;
  TransformsTypeComplexType({this.xmlns, required this.Transform});
  TransformsTypeComplexType.unsafe({this.xmlns, required this.Transform});
  String toXml(
      {String name = 'TransformsType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      ...Transform.map((e) => xml.XmlDocumentFragment.parse(
          e.toXml(name: "Transform", pretty: pretty))).toList()
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TransformsTypeComplexType.fromXml(String xmlString,
      {String name = 'TransformsType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TransformsTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Transform: element
          .findElements('Transform')
          .map((e) =>
              TransformTypeComplexType.fromXml(e.toString(), name: "Transform"))
          .toList(),
    );
  }
  factory TransformsTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TransformsTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TransformsTypeComplexTypeToJson(this);
}

List<TransformsTypeComplexType> _TransformsTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map((e) =>
            TransformsTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TransformsTypeComplexType>? _TransformsTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) =>
            TransformsTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TransformsTypeComplexTypeListToJson(
        List<TransformsTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TransformsTypeComplexTypeMaybeListToJson(
        List<TransformsTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TransformsTypeComplexType _TransformsTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformsTypeComplexType.fromJson(json);
TransformsTypeComplexType? _TransformsTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TransformsTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _TransformsTypeComplexTypeToJson(
        TransformsTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TransformsTypeComplexTypeMaybeToJson(
        TransformsTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class TransformTypeComplexType {
  String? xmlns;
  String? XPath;
  @JsonKey(fromJson: _AlgorithmEnumFromValue, toJson: _AlgorithmEnumToValue)
  AlgorithmEnum Algorithm;

  TransformTypeComplexType({this.xmlns, this.XPath, required this.Algorithm});
  TransformTypeComplexType.unsafe(
      {this.xmlns, this.XPath, required this.Algorithm});
  String toXml(
      {String name = 'TransformType', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm.value)
    ], [
      if (XPath?.isNotEmpty ?? false)
        xml.XmlElement(xml.XmlName('XPath'), [], [xml.XmlText(XPath!)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory TransformTypeComplexType.fromXml(String xmlString,
      {String name = 'TransformType'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return TransformTypeComplexType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: AlgorithmEnum.fromValue(element.getAttribute('Algorithm')!),
      XPath: element.getElement('XPath')?.text,
    );
  }
  factory TransformTypeComplexType.fromJson(Map<String, dynamic> json) =>
      _$TransformTypeComplexTypeFromJson(json);
  Map<String, dynamic> toJson() => _$TransformTypeComplexTypeToJson(this);
}

List<TransformTypeComplexType> _TransformTypeComplexTypeListFromJson(
        List<dynamic> json) =>
    json
        .map(
            (e) => TransformTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<TransformTypeComplexType>? _TransformTypeComplexTypeMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => TransformTypeComplexType.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _TransformTypeComplexTypeListToJson(
        List<TransformTypeComplexType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _TransformTypeComplexTypeMaybeListToJson(
        List<TransformTypeComplexType>? list) =>
    list?.map((e) => e.toJson()).toList();
TransformTypeComplexType _TransformTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformTypeComplexType.fromJson(json);
TransformTypeComplexType? _TransformTypeComplexTypeMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? TransformTypeComplexType.fromJson(json) : null;
Map<String, dynamic> _TransformTypeComplexTypeToJson(
        TransformTypeComplexType instance) =>
    instance.toJson();
Map<String, dynamic>? _TransformTypeComplexTypeMaybeToJson(
        TransformTypeComplexType? instance) =>
    instance?.toJson();

@JsonSerializable()
class IPITribComplexType_TIpi {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  String? vBC;
  String? pIPI;
  String? qUnid;
  String? vUnid;
  String vIPI;
  IPITribComplexType_TIpi(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pIPI,
      this.qUnid,
      this.vUnid,
      required this.vIPI}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
    if ((vBC == null ||
            RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
                .hasMatch(vBC.toString())) ==
        false) {
      throw Exception('Invalid value for vBC - $vBC');
    }
    ;
    if ((vBC == null || vBC.toString().trim() == vBC.toString()) == false) {
      throw Exception('Invalid value for vBC');
    }
    ;
    if ((pIPI == null ||
            RegExp(r'0|0\.[0-9]{2,4}|[1-9]{1}[0-9]{0,2}(\.[0-9]{2,4})?')
                .hasMatch(pIPI.toString())) ==
        false) {
      throw Exception('Invalid value for pIPI - $pIPI');
    }
    ;
    if ((pIPI == null || pIPI.toString().trim() == pIPI.toString()) == false) {
      throw Exception('Invalid value for pIPI');
    }
    ;
    if ((qUnid == null ||
            RegExp(r'0|0\.[0-9]{1,4}|[1-9]{1}[0-9]{0,11}|[1-9]{1}[0-9]{0,11}(\.[0-9]{1,4})?')
                .hasMatch(qUnid.toString())) ==
        false) {
      throw Exception('Invalid value for qUnid - $qUnid');
    }
    ;
    if ((qUnid == null || qUnid.toString().trim() == qUnid.toString()) ==
        false) {
      throw Exception('Invalid value for qUnid');
    }
    ;
    if ((vUnid == null ||
            RegExp(r'0|0\.[0-9]{4}|[1-9]{1}[0-9]{0,10}(\.[0-9]{4})?')
                .hasMatch(vUnid.toString())) ==
        false) {
      throw Exception('Invalid value for vUnid - $vUnid');
    }
    ;
    if ((vUnid == null || vUnid.toString().trim() == vUnid.toString()) ==
        false) {
      throw Exception('Invalid value for vUnid');
    }
    ;
    final _$ = [];
    if ((_$.every((e) => e == false) ||
            _$.where((e) => e == true).length == 1) ==
        false) {
      throw Exception('Choose one of ');
    }
    ;
    if ((RegExp(r'0|0\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\.[0-9]{2})?')
            .hasMatch(vIPI.toString())) ==
        false) {
      throw Exception('Invalid value for vIPI - $vIPI');
    }
    ;
    if ((vIPI.toString().trim() == vIPI.toString()) == false) {
      throw Exception('Invalid value for vIPI');
    }
    ;
  }
  IPITribComplexType_TIpi.unsafe(
      {this.xmlns,
      required this.CST,
      this.vBC,
      this.pIPI,
      this.qUnid,
      this.vUnid,
      required this.vIPI});
  String toXml({String name = 'IPITrib', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)]),
      if (vBC != null)
        xml.XmlElement(xml.XmlName('vBC'), [], [xml.XmlText(vBC.toString())]),
      if (pIPI != null)
        xml.XmlElement(xml.XmlName('pIPI'), [], [xml.XmlText(pIPI.toString())]),
      if (qUnid != null)
        xml.XmlElement(
            xml.XmlName('qUnid'), [], [xml.XmlText(qUnid.toString())]),
      if (vUnid != null)
        xml.XmlElement(
            xml.XmlName('vUnid'), [], [xml.XmlText(vUnid.toString())]),
      xml.XmlElement(xml.XmlName('vIPI'), [], [xml.XmlText(vIPI.toString())])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory IPITribComplexType_TIpi.fromXml(String xmlString,
      {String name = 'IPITrib'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return IPITribComplexType_TIpi.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
      vBC: element.findElements('vBC').isNotEmpty
          ? element.findElements('vBC').first.text
          : null,
      pIPI: element.findElements('pIPI').isNotEmpty
          ? element.findElements('pIPI').first.text
          : null,
      qUnid: element.findElements('qUnid').isNotEmpty
          ? element.findElements('qUnid').first.text
          : null,
      vUnid: element.findElements('vUnid').isNotEmpty
          ? element.findElements('vUnid').first.text
          : null,
      vIPI: element.findElements('vIPI').first.text,
    );
  }
  factory IPITribComplexType_TIpi.fromJson(Map<String, dynamic> json) =>
      _$IPITribComplexType_TIpiFromJson(json);
  Map<String, dynamic> toJson() => _$IPITribComplexType_TIpiToJson(this);
}

List<IPITribComplexType_TIpi> _IPITribComplexType_TIpiListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => IPITribComplexType_TIpi.fromJson(e as Map<String, dynamic>))
        .toList();
List<IPITribComplexType_TIpi>? _IPITribComplexType_TIpiMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map(
            (e) => IPITribComplexType_TIpi.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _IPITribComplexType_TIpiListToJson(
        List<IPITribComplexType_TIpi> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _IPITribComplexType_TIpiMaybeListToJson(
        List<IPITribComplexType_TIpi>? list) =>
    list?.map((e) => e.toJson()).toList();
IPITribComplexType_TIpi _IPITribComplexType_TIpiFromJson(
        Map<String, dynamic> json) =>
    IPITribComplexType_TIpi.fromJson(json);
IPITribComplexType_TIpi? _IPITribComplexType_TIpiMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? IPITribComplexType_TIpi.fromJson(json) : null;
Map<String, dynamic> _IPITribComplexType_TIpiToJson(
        IPITribComplexType_TIpi instance) =>
    instance.toJson();
Map<String, dynamic>? _IPITribComplexType_TIpiMaybeToJson(
        IPITribComplexType_TIpi? instance) =>
    instance?.toJson();

@JsonSerializable()
class IPINTComplexType_TIpi {
  String? xmlns;
  @JsonKey(fromJson: _CSTEnumFromValue, toJson: _CSTEnumToValue)
  CSTEnum CST;
  IPINTComplexType_TIpi({this.xmlns, required this.CST}) {
    if ((CST.toString().trim() == CST.toString()) == false) {
      throw Exception('Invalid value for CST');
    }
    ;
  }
  IPINTComplexType_TIpi.unsafe({this.xmlns, required this.CST});
  String toXml({String name = 'IPINT', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
    ], [
      xml.XmlElement(xml.XmlName('CST'), [], [xml.XmlText(CST.value)])
    ]);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory IPINTComplexType_TIpi.fromXml(String xmlString,
      {String name = 'IPINT'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return IPINTComplexType_TIpi.unsafe(
      xmlns: element.getAttribute('xmlns'),
      CST: CSTEnum.fromValue(element.findElements('CST').first.text),
    );
  }
  factory IPINTComplexType_TIpi.fromJson(Map<String, dynamic> json) =>
      _$IPINTComplexType_TIpiFromJson(json);
  Map<String, dynamic> toJson() => _$IPINTComplexType_TIpiToJson(this);
}

List<IPINTComplexType_TIpi> _IPINTComplexType_TIpiListFromJson(
        List<dynamic> json) =>
    json
        .map((e) => IPINTComplexType_TIpi.fromJson(e as Map<String, dynamic>))
        .toList();
List<IPINTComplexType_TIpi>? _IPINTComplexType_TIpiMaybeListFromJson(
        List<dynamic>? json) =>
    json
        ?.map((e) => IPINTComplexType_TIpi.fromJson(e as Map<String, dynamic>))
        .toList();
List<Map<String, dynamic>> _IPINTComplexType_TIpiListToJson(
        List<IPINTComplexType_TIpi> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>? _IPINTComplexType_TIpiMaybeListToJson(
        List<IPINTComplexType_TIpi>? list) =>
    list?.map((e) => e.toJson()).toList();
IPINTComplexType_TIpi _IPINTComplexType_TIpiFromJson(
        Map<String, dynamic> json) =>
    IPINTComplexType_TIpi.fromJson(json);
IPINTComplexType_TIpi? _IPINTComplexType_TIpiMaybeFromJson(
        Map<String, dynamic>? json) =>
    json != null ? IPINTComplexType_TIpi.fromJson(json) : null;
Map<String, dynamic> _IPINTComplexType_TIpiToJson(
        IPINTComplexType_TIpi instance) =>
    instance.toJson();
Map<String, dynamic>? _IPINTComplexType_TIpiMaybeToJson(
        IPINTComplexType_TIpi? instance) =>
    instance?.toJson();

@JsonSerializable()
class CanonicalizationMethodComplexType_SignedInfoType {
  String? xmlns;
  final String Algorithm;

  CanonicalizationMethodComplexType_SignedInfoType(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'}) {
    if (Algorithm != 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315') {
      throw Exception(
          "Algorithm != 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'");
    }
    ;
  }
  CanonicalizationMethodComplexType_SignedInfoType.unsafe(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315'});
  String toXml(
      {String name = 'CanonicalizationMethod',
      bool pretty = false,
      String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory CanonicalizationMethodComplexType_SignedInfoType.fromXml(
      String xmlString,
      {String name = 'CanonicalizationMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return CanonicalizationMethodComplexType_SignedInfoType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory CanonicalizationMethodComplexType_SignedInfoType.fromJson(
          Map<String, dynamic> json) =>
      _$CanonicalizationMethodComplexType_SignedInfoTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CanonicalizationMethodComplexType_SignedInfoTypeToJson(this);
}

List<CanonicalizationMethodComplexType_SignedInfoType>
    _CanonicalizationMethodComplexType_SignedInfoTypeListFromJson(
            List<dynamic> json) =>
        json
            .map((e) =>
                CanonicalizationMethodComplexType_SignedInfoType.fromJson(
                    e as Map<String, dynamic>))
            .toList();
List<CanonicalizationMethodComplexType_SignedInfoType>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) =>
                CanonicalizationMethodComplexType_SignedInfoType.fromJson(
                    e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>>
    _CanonicalizationMethodComplexType_SignedInfoTypeListToJson(
            List<CanonicalizationMethodComplexType_SignedInfoType> list) =>
        list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeListToJson(
            List<CanonicalizationMethodComplexType_SignedInfoType>? list) =>
        list?.map((e) => e.toJson()).toList();
CanonicalizationMethodComplexType_SignedInfoType
    _CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        CanonicalizationMethodComplexType_SignedInfoType.fromJson(json);
CanonicalizationMethodComplexType_SignedInfoType?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? CanonicalizationMethodComplexType_SignedInfoType.fromJson(json)
            : null;
Map<String, dynamic> _CanonicalizationMethodComplexType_SignedInfoTypeToJson(
        CanonicalizationMethodComplexType_SignedInfoType instance) =>
    instance.toJson();
Map<String, dynamic>?
    _CanonicalizationMethodComplexType_SignedInfoTypeMaybeToJson(
            CanonicalizationMethodComplexType_SignedInfoType? instance) =>
        instance?.toJson();

@JsonSerializable()
class SignatureMethodComplexType_SignedInfoType {
  String? xmlns;
  final String Algorithm;

  SignatureMethodComplexType_SignedInfoType(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'}) {
    if (Algorithm != 'http://www.w3.org/2000/09/xmldsig#rsa-sha1') {
      throw Exception(
          "Algorithm != 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'");
    }
    ;
  }
  SignatureMethodComplexType_SignedInfoType.unsafe(
      {this.xmlns,
      this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#rsa-sha1'});
  String toXml(
      {String name = 'SignatureMethod', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory SignatureMethodComplexType_SignedInfoType.fromXml(String xmlString,
      {String name = 'SignatureMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return SignatureMethodComplexType_SignedInfoType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory SignatureMethodComplexType_SignedInfoType.fromJson(
          Map<String, dynamic> json) =>
      _$SignatureMethodComplexType_SignedInfoTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SignatureMethodComplexType_SignedInfoTypeToJson(this);
}

List<SignatureMethodComplexType_SignedInfoType>
    _SignatureMethodComplexType_SignedInfoTypeListFromJson(
            List<dynamic> json) =>
        json
            .map((e) => SignatureMethodComplexType_SignedInfoType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<SignatureMethodComplexType_SignedInfoType>?
    _SignatureMethodComplexType_SignedInfoTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) => SignatureMethodComplexType_SignedInfoType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _SignatureMethodComplexType_SignedInfoTypeListToJson(
        List<SignatureMethodComplexType_SignedInfoType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _SignatureMethodComplexType_SignedInfoTypeMaybeListToJson(
            List<SignatureMethodComplexType_SignedInfoType>? list) =>
        list?.map((e) => e.toJson()).toList();
SignatureMethodComplexType_SignedInfoType
    _SignatureMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        SignatureMethodComplexType_SignedInfoType.fromJson(json);
SignatureMethodComplexType_SignedInfoType?
    _SignatureMethodComplexType_SignedInfoTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? SignatureMethodComplexType_SignedInfoType.fromJson(json)
            : null;
Map<String, dynamic> _SignatureMethodComplexType_SignedInfoTypeToJson(
        SignatureMethodComplexType_SignedInfoType instance) =>
    instance.toJson();
Map<String, dynamic>? _SignatureMethodComplexType_SignedInfoTypeMaybeToJson(
        SignatureMethodComplexType_SignedInfoType? instance) =>
    instance?.toJson();

@JsonSerializable()
class DigestMethodComplexType_ReferenceType {
  String? xmlns;
  final String Algorithm;

  DigestMethodComplexType_ReferenceType(
      {this.xmlns, this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#sha1'}) {
    if (Algorithm != 'http://www.w3.org/2000/09/xmldsig#sha1') {
      throw Exception("Algorithm != 'http://www.w3.org/2000/09/xmldsig#sha1'");
    }
    ;
  }
  DigestMethodComplexType_ReferenceType.unsafe(
      {this.xmlns, this.Algorithm = 'http://www.w3.org/2000/09/xmldsig#sha1'});
  String toXml(
      {String name = 'DigestMethod', bool pretty = false, String? xmlns}) {
    final element = xml.XmlElement(xml.XmlName(name), [
      if (xmlns != null || this.xmlns != null)
        xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),
      xml.XmlAttribute(xml.XmlName('Algorithm'), Algorithm)
    ], []);
    return pretty ? element.toXmlString(pretty: true) : element.toXmlString();
  }

  factory DigestMethodComplexType_ReferenceType.fromXml(String xmlString,
      {String name = 'DigestMethod'}) {
    final document = xml.XmlDocument.parse(xmlString);
    final element = document.rootElement;
    if (element.localName != name) {
      throw Exception('Could not find root element $name');
    }
    return DigestMethodComplexType_ReferenceType.unsafe(
      xmlns: element.getAttribute('xmlns'),
      Algorithm: element.getAttribute("Algorithm")!,
    );
  }
  factory DigestMethodComplexType_ReferenceType.fromJson(
          Map<String, dynamic> json) =>
      _$DigestMethodComplexType_ReferenceTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DigestMethodComplexType_ReferenceTypeToJson(this);
}

List<DigestMethodComplexType_ReferenceType>
    _DigestMethodComplexType_ReferenceTypeListFromJson(List<dynamic> json) =>
        json
            .map((e) => DigestMethodComplexType_ReferenceType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<DigestMethodComplexType_ReferenceType>?
    _DigestMethodComplexType_ReferenceTypeMaybeListFromJson(
            List<dynamic>? json) =>
        json
            ?.map((e) => DigestMethodComplexType_ReferenceType.fromJson(
                e as Map<String, dynamic>))
            .toList();
List<Map<String, dynamic>> _DigestMethodComplexType_ReferenceTypeListToJson(
        List<DigestMethodComplexType_ReferenceType> list) =>
    list.map((e) => e.toJson()).toList();
List<Map<String, dynamic>>?
    _DigestMethodComplexType_ReferenceTypeMaybeListToJson(
            List<DigestMethodComplexType_ReferenceType>? list) =>
        list?.map((e) => e.toJson()).toList();
DigestMethodComplexType_ReferenceType
    _DigestMethodComplexType_ReferenceTypeFromJson(Map<String, dynamic> json) =>
        DigestMethodComplexType_ReferenceType.fromJson(json);
DigestMethodComplexType_ReferenceType?
    _DigestMethodComplexType_ReferenceTypeMaybeFromJson(
            Map<String, dynamic>? json) =>
        json != null
            ? DigestMethodComplexType_ReferenceType.fromJson(json)
            : null;
Map<String, dynamic> _DigestMethodComplexType_ReferenceTypeToJson(
        DigestMethodComplexType_ReferenceType instance) =>
    instance.toJson();
Map<String, dynamic>? _DigestMethodComplexType_ReferenceTypeMaybeToJson(
        DigestMethodComplexType_ReferenceType? instance) =>
    instance?.toJson();

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
  v_65("65"),
  v_01("01"),
  v_02("02"),
  v_04("04"),
  v_2B("2B"),
  v_2C("2C"),
  v_2D("2D");

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

enum tpNFEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const tpNFEnum(this.value);
  factory tpNFEnum.fromValue(String value) {
    for (final item in tpNFEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpNFEnum: $value");
  }
}

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

enum idDestEnum {
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const idDestEnum(this.value);
  factory idDestEnum.fromValue(String value) {
    for (final item in idDestEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for idDestEnum: $value");
  }
}

idDestEnum? _idDestEnumFromMaybeValue(String? value) =>
    value != null ? idDestEnum.fromValue(value) : null;
String? _idDestEnumToMaybeValue(idDestEnum? value) =>
    value != null ? value.value : null;

idDestEnum _idDestEnumFromValue(String value) => idDestEnum.fromValue(value);
String _idDestEnumToValue(idDestEnum value) => value.value;

List<idDestEnum>? _idDestEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => idDestEnum.fromValue(e)).toList();
List<String>? _idDestEnumToMaybeList(List<idDestEnum>? value) =>
    value?.map((e) => e.value).toList();

List<idDestEnum> _idDestEnumFromList(List<String> value) =>
    value.map((e) => idDestEnum.fromValue(e)).toList();
List<String> _idDestEnumToList(List<idDestEnum> value) =>
    value.map((e) => e.value).toList();

enum tpImpEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5");

  final String value;
  const tpImpEnum(this.value);
  factory tpImpEnum.fromValue(String value) {
    for (final item in tpImpEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpImpEnum: $value");
  }
}

tpImpEnum? _tpImpEnumFromMaybeValue(String? value) =>
    value != null ? tpImpEnum.fromValue(value) : null;
String? _tpImpEnumToMaybeValue(tpImpEnum? value) =>
    value != null ? value.value : null;

tpImpEnum _tpImpEnumFromValue(String value) => tpImpEnum.fromValue(value);
String _tpImpEnumToValue(tpImpEnum value) => value.value;

List<tpImpEnum>? _tpImpEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpImpEnum.fromValue(e)).toList();
List<String>? _tpImpEnumToMaybeList(List<tpImpEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpImpEnum> _tpImpEnumFromList(List<String> value) =>
    value.map((e) => tpImpEnum.fromValue(e)).toList();
List<String> _tpImpEnumToList(List<tpImpEnum> value) =>
    value.map((e) => e.value).toList();

enum tpEmisEnum {
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6"),
  v_7("7"),
  v_9("9");

  final String value;
  const tpEmisEnum(this.value);
  factory tpEmisEnum.fromValue(String value) {
    for (final item in tpEmisEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpEmisEnum: $value");
  }
}

tpEmisEnum? _tpEmisEnumFromMaybeValue(String? value) =>
    value != null ? tpEmisEnum.fromValue(value) : null;
String? _tpEmisEnumToMaybeValue(tpEmisEnum? value) =>
    value != null ? value.value : null;

tpEmisEnum _tpEmisEnumFromValue(String value) => tpEmisEnum.fromValue(value);
String _tpEmisEnumToValue(tpEmisEnum value) => value.value;

List<tpEmisEnum>? _tpEmisEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpEmisEnum.fromValue(e)).toList();
List<String>? _tpEmisEnumToMaybeList(List<tpEmisEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpEmisEnum> _tpEmisEnumFromList(List<String> value) =>
    value.map((e) => tpEmisEnum.fromValue(e)).toList();
List<String> _tpEmisEnumToList(List<tpEmisEnum> value) =>
    value.map((e) => e.value).toList();

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

enum finNFeEnum {
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4");

  final String value;
  const finNFeEnum(this.value);
  factory finNFeEnum.fromValue(String value) {
    for (final item in finNFeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for finNFeEnum: $value");
  }
}

finNFeEnum? _finNFeEnumFromMaybeValue(String? value) =>
    value != null ? finNFeEnum.fromValue(value) : null;
String? _finNFeEnumToMaybeValue(finNFeEnum? value) =>
    value != null ? value.value : null;

finNFeEnum _finNFeEnumFromValue(String value) => finNFeEnum.fromValue(value);
String _finNFeEnumToValue(finNFeEnum value) => value.value;

List<finNFeEnum>? _finNFeEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => finNFeEnum.fromValue(e)).toList();
List<String>? _finNFeEnumToMaybeList(List<finNFeEnum>? value) =>
    value?.map((e) => e.value).toList();

List<finNFeEnum> _finNFeEnumFromList(List<String> value) =>
    value.map((e) => finNFeEnum.fromValue(e)).toList();
List<String> _finNFeEnumToList(List<finNFeEnum> value) =>
    value.map((e) => e.value).toList();

enum indFinalEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indFinalEnum(this.value);
  factory indFinalEnum.fromValue(String value) {
    for (final item in indFinalEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indFinalEnum: $value");
  }
}

indFinalEnum? _indFinalEnumFromMaybeValue(String? value) =>
    value != null ? indFinalEnum.fromValue(value) : null;
String? _indFinalEnumToMaybeValue(indFinalEnum? value) =>
    value != null ? value.value : null;

indFinalEnum _indFinalEnumFromValue(String value) =>
    indFinalEnum.fromValue(value);
String _indFinalEnumToValue(indFinalEnum value) => value.value;

List<indFinalEnum>? _indFinalEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indFinalEnum.fromValue(e)).toList();
List<String>? _indFinalEnumToMaybeList(List<indFinalEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indFinalEnum> _indFinalEnumFromList(List<String> value) =>
    value.map((e) => indFinalEnum.fromValue(e)).toList();
List<String> _indFinalEnumToList(List<indFinalEnum> value) =>
    value.map((e) => e.value).toList();

enum indPresEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_9("9");

  final String value;
  const indPresEnum(this.value);
  factory indPresEnum.fromValue(String value) {
    for (final item in indPresEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indPresEnum: $value");
  }
}

indPresEnum? _indPresEnumFromMaybeValue(String? value) =>
    value != null ? indPresEnum.fromValue(value) : null;
String? _indPresEnumToMaybeValue(indPresEnum? value) =>
    value != null ? value.value : null;

indPresEnum _indPresEnumFromValue(String value) => indPresEnum.fromValue(value);
String _indPresEnumToValue(indPresEnum value) => value.value;

List<indPresEnum>? _indPresEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indPresEnum.fromValue(e)).toList();
List<String>? _indPresEnumToMaybeList(List<indPresEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indPresEnum> _indPresEnumFromList(List<String> value) =>
    value.map((e) => indPresEnum.fromValue(e)).toList();
List<String> _indPresEnumToList(List<indPresEnum> value) =>
    value.map((e) => e.value).toList();

enum indIntermedEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indIntermedEnum(this.value);
  factory indIntermedEnum.fromValue(String value) {
    for (final item in indIntermedEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indIntermedEnum: $value");
  }
}

indIntermedEnum? _indIntermedEnumFromMaybeValue(String? value) =>
    value != null ? indIntermedEnum.fromValue(value) : null;
String? _indIntermedEnumToMaybeValue(indIntermedEnum? value) =>
    value != null ? value.value : null;

indIntermedEnum _indIntermedEnumFromValue(String value) =>
    indIntermedEnum.fromValue(value);
String _indIntermedEnumToValue(indIntermedEnum value) => value.value;

List<indIntermedEnum>? _indIntermedEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indIntermedEnum.fromValue(e)).toList();
List<String>? _indIntermedEnumToMaybeList(List<indIntermedEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indIntermedEnum> _indIntermedEnumFromList(List<String> value) =>
    value.map((e) => indIntermedEnum.fromValue(e)).toList();
List<String> _indIntermedEnumToList(List<indIntermedEnum> value) =>
    value.map((e) => e.value).toList();

enum procEmiEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const procEmiEnum(this.value);
  factory procEmiEnum.fromValue(String value) {
    for (final item in procEmiEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for procEmiEnum: $value");
  }
}

procEmiEnum? _procEmiEnumFromMaybeValue(String? value) =>
    value != null ? procEmiEnum.fromValue(value) : null;
String? _procEmiEnumToMaybeValue(procEmiEnum? value) =>
    value != null ? value.value : null;

procEmiEnum _procEmiEnumFromValue(String value) => procEmiEnum.fromValue(value);
String _procEmiEnumToValue(procEmiEnum value) => value.value;

List<procEmiEnum>? _procEmiEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => procEmiEnum.fromValue(e)).toList();
List<String>? _procEmiEnumToMaybeList(List<procEmiEnum>? value) =>
    value?.map((e) => e.value).toList();

List<procEmiEnum> _procEmiEnumFromList(List<String> value) =>
    value.map((e) => procEmiEnum.fromValue(e)).toList();
List<String> _procEmiEnumToList(List<procEmiEnum> value) =>
    value.map((e) => e.value).toList();

enum CRTEnum {
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const CRTEnum(this.value);
  factory CRTEnum.fromValue(String value) {
    for (final item in CRTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for CRTEnum: $value");
  }
}

CRTEnum? _CRTEnumFromMaybeValue(String? value) =>
    value != null ? CRTEnum.fromValue(value) : null;
String? _CRTEnumToMaybeValue(CRTEnum? value) =>
    value != null ? value.value : null;

CRTEnum _CRTEnumFromValue(String value) => CRTEnum.fromValue(value);
String _CRTEnumToValue(CRTEnum value) => value.value;

List<CRTEnum>? _CRTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => CRTEnum.fromValue(e)).toList();
List<String>? _CRTEnumToMaybeList(List<CRTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<CRTEnum> _CRTEnumFromList(List<String> value) =>
    value.map((e) => CRTEnum.fromValue(e)).toList();
List<String> _CRTEnumToList(List<CRTEnum> value) =>
    value.map((e) => e.value).toList();

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

enum indIEDestEnum {
  v_1("1"),
  v_2("2"),
  v_9("9");

  final String value;
  const indIEDestEnum(this.value);
  factory indIEDestEnum.fromValue(String value) {
    for (final item in indIEDestEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indIEDestEnum: $value");
  }
}

indIEDestEnum? _indIEDestEnumFromMaybeValue(String? value) =>
    value != null ? indIEDestEnum.fromValue(value) : null;
String? _indIEDestEnumToMaybeValue(indIEDestEnum? value) =>
    value != null ? value.value : null;

indIEDestEnum _indIEDestEnumFromValue(String value) =>
    indIEDestEnum.fromValue(value);
String _indIEDestEnumToValue(indIEDestEnum value) => value.value;

List<indIEDestEnum>? _indIEDestEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indIEDestEnum.fromValue(e)).toList();
List<String>? _indIEDestEnumToMaybeList(List<indIEDestEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indIEDestEnum> _indIEDestEnumFromList(List<String> value) =>
    value.map((e) => indIEDestEnum.fromValue(e)).toList();
List<String> _indIEDestEnumToList(List<indIEDestEnum> value) =>
    value.map((e) => e.value).toList();

enum modFreteEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_9("9");

  final String value;
  const modFreteEnum(this.value);
  factory modFreteEnum.fromValue(String value) {
    for (final item in modFreteEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for modFreteEnum: $value");
  }
}

modFreteEnum? _modFreteEnumFromMaybeValue(String? value) =>
    value != null ? modFreteEnum.fromValue(value) : null;
String? _modFreteEnumToMaybeValue(modFreteEnum? value) =>
    value != null ? value.value : null;

modFreteEnum _modFreteEnumFromValue(String value) =>
    modFreteEnum.fromValue(value);
String _modFreteEnumToValue(modFreteEnum value) => value.value;

List<modFreteEnum>? _modFreteEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => modFreteEnum.fromValue(e)).toList();
List<String>? _modFreteEnumToMaybeList(List<modFreteEnum>? value) =>
    value?.map((e) => e.value).toList();

List<modFreteEnum> _modFreteEnumFromList(List<String> value) =>
    value.map((e) => modFreteEnum.fromValue(e)).toList();
List<String> _modFreteEnumToList(List<modFreteEnum> value) =>
    value.map((e) => e.value).toList();

enum UFSaidaPaisEnum {
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
  v_TO("TO");

  final String value;
  const UFSaidaPaisEnum(this.value);
  factory UFSaidaPaisEnum.fromValue(String value) {
    for (final item in UFSaidaPaisEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFSaidaPaisEnum: $value");
  }
}

UFSaidaPaisEnum? _UFSaidaPaisEnumFromMaybeValue(String? value) =>
    value != null ? UFSaidaPaisEnum.fromValue(value) : null;
String? _UFSaidaPaisEnumToMaybeValue(UFSaidaPaisEnum? value) =>
    value != null ? value.value : null;

UFSaidaPaisEnum _UFSaidaPaisEnumFromValue(String value) =>
    UFSaidaPaisEnum.fromValue(value);
String _UFSaidaPaisEnumToValue(UFSaidaPaisEnum value) => value.value;

List<UFSaidaPaisEnum>? _UFSaidaPaisEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFSaidaPaisEnum.fromValue(e)).toList();
List<String>? _UFSaidaPaisEnumToMaybeList(List<UFSaidaPaisEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFSaidaPaisEnum> _UFSaidaPaisEnumFromList(List<String> value) =>
    value.map((e) => UFSaidaPaisEnum.fromValue(e)).toList();
List<String> _UFSaidaPaisEnumToList(List<UFSaidaPaisEnum> value) =>
    value.map((e) => e.value).toList();

enum indEscalaEnum {
  v_S("S"),
  v_N("N");

  final String value;
  const indEscalaEnum(this.value);
  factory indEscalaEnum.fromValue(String value) {
    for (final item in indEscalaEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indEscalaEnum: $value");
  }
}

indEscalaEnum? _indEscalaEnumFromMaybeValue(String? value) =>
    value != null ? indEscalaEnum.fromValue(value) : null;
String? _indEscalaEnumToMaybeValue(indEscalaEnum? value) =>
    value != null ? value.value : null;

indEscalaEnum _indEscalaEnumFromValue(String value) =>
    indEscalaEnum.fromValue(value);
String _indEscalaEnumToValue(indEscalaEnum value) => value.value;

List<indEscalaEnum>? _indEscalaEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indEscalaEnum.fromValue(e)).toList();
List<String>? _indEscalaEnumToMaybeList(List<indEscalaEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indEscalaEnum> _indEscalaEnumFromList(List<String> value) =>
    value.map((e) => indEscalaEnum.fromValue(e)).toList();
List<String> _indEscalaEnumToList(List<indEscalaEnum> value) =>
    value.map((e) => e.value).toList();

enum indTotEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indTotEnum(this.value);
  factory indTotEnum.fromValue(String value) {
    for (final item in indTotEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indTotEnum: $value");
  }
}

indTotEnum? _indTotEnumFromMaybeValue(String? value) =>
    value != null ? indTotEnum.fromValue(value) : null;
String? _indTotEnumToMaybeValue(indTotEnum? value) =>
    value != null ? value.value : null;

indTotEnum _indTotEnumFromValue(String value) => indTotEnum.fromValue(value);
String _indTotEnumToValue(indTotEnum value) => value.value;

List<indTotEnum>? _indTotEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indTotEnum.fromValue(e)).toList();
List<String>? _indTotEnumToMaybeList(List<indTotEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indTotEnum> _indTotEnumFromList(List<String> value) =>
    value.map((e) => indTotEnum.fromValue(e)).toList();
List<String> _indTotEnumToList(List<indTotEnum> value) =>
    value.map((e) => e.value).toList();

enum cRegTribEnum {
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6");

  final String value;
  const cRegTribEnum(this.value);
  factory cRegTribEnum.fromValue(String value) {
    for (final item in cRegTribEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cRegTribEnum: $value");
  }
}

cRegTribEnum? _cRegTribEnumFromMaybeValue(String? value) =>
    value != null ? cRegTribEnum.fromValue(value) : null;
String? _cRegTribEnumToMaybeValue(cRegTribEnum? value) =>
    value != null ? value.value : null;

cRegTribEnum _cRegTribEnumFromValue(String value) =>
    cRegTribEnum.fromValue(value);
String _cRegTribEnumToValue(cRegTribEnum value) => value.value;

List<cRegTribEnum>? _cRegTribEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cRegTribEnum.fromValue(e)).toList();
List<String>? _cRegTribEnumToMaybeList(List<cRegTribEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cRegTribEnum> _cRegTribEnumFromList(List<String> value) =>
    value.map((e) => cRegTribEnum.fromValue(e)).toList();
List<String> _cRegTribEnumToList(List<cRegTribEnum> value) =>
    value.map((e) => e.value).toList();

enum indPagEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indPagEnum(this.value);
  factory indPagEnum.fromValue(String value) {
    for (final item in indPagEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indPagEnum: $value");
  }
}

indPagEnum? _indPagEnumFromMaybeValue(String? value) =>
    value != null ? indPagEnum.fromValue(value) : null;
String? _indPagEnumToMaybeValue(indPagEnum? value) =>
    value != null ? value.value : null;

indPagEnum _indPagEnumFromValue(String value) => indPagEnum.fromValue(value);
String _indPagEnumToValue(indPagEnum value) => value.value;

List<indPagEnum>? _indPagEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indPagEnum.fromValue(e)).toList();
List<String>? _indPagEnumToMaybeList(List<indPagEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indPagEnum> _indPagEnumFromList(List<String> value) =>
    value.map((e) => indPagEnum.fromValue(e)).toList();
List<String> _indPagEnumToList(List<indPagEnum> value) =>
    value.map((e) => e.value).toList();

enum indProcEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_9("9");

  final String value;
  const indProcEnum(this.value);
  factory indProcEnum.fromValue(String value) {
    for (final item in indProcEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indProcEnum: $value");
  }
}

indProcEnum? _indProcEnumFromMaybeValue(String? value) =>
    value != null ? indProcEnum.fromValue(value) : null;
String? _indProcEnumToMaybeValue(indProcEnum? value) =>
    value != null ? value.value : null;

indProcEnum _indProcEnumFromValue(String value) => indProcEnum.fromValue(value);
String _indProcEnumToValue(indProcEnum value) => value.value;

List<indProcEnum>? _indProcEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indProcEnum.fromValue(e)).toList();
List<String>? _indProcEnumToMaybeList(List<indProcEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indProcEnum> _indProcEnumFromList(List<String> value) =>
    value.map((e) => indProcEnum.fromValue(e)).toList();
List<String> _indProcEnumToList(List<indProcEnum> value) =>
    value.map((e) => e.value).toList();

enum tpAtoEnum {
  v_08("08"),
  v_10("10"),
  v_12("12");

  final String value;
  const tpAtoEnum(this.value);
  factory tpAtoEnum.fromValue(String value) {
    for (final item in tpAtoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpAtoEnum: $value");
  }
}

tpAtoEnum? _tpAtoEnumFromMaybeValue(String? value) =>
    value != null ? tpAtoEnum.fromValue(value) : null;
String? _tpAtoEnumToMaybeValue(tpAtoEnum? value) =>
    value != null ? value.value : null;

tpAtoEnum _tpAtoEnumFromValue(String value) => tpAtoEnum.fromValue(value);
String _tpAtoEnumToValue(tpAtoEnum value) => value.value;

List<tpAtoEnum>? _tpAtoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpAtoEnum.fromValue(e)).toList();
List<String>? _tpAtoEnumToMaybeList(List<tpAtoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpAtoEnum> _tpAtoEnumFromList(List<String> value) =>
    value.map((e) => tpAtoEnum.fromValue(e)).toList();
List<String> _tpAtoEnumToList(List<tpAtoEnum> value) =>
    value.map((e) => e.value).toList();

enum UFDesembEnum {
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
  v_TO("TO");

  final String value;
  const UFDesembEnum(this.value);
  factory UFDesembEnum.fromValue(String value) {
    for (final item in UFDesembEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFDesembEnum: $value");
  }
}

UFDesembEnum? _UFDesembEnumFromMaybeValue(String? value) =>
    value != null ? UFDesembEnum.fromValue(value) : null;
String? _UFDesembEnumToMaybeValue(UFDesembEnum? value) =>
    value != null ? value.value : null;

UFDesembEnum _UFDesembEnumFromValue(String value) =>
    UFDesembEnum.fromValue(value);
String _UFDesembEnumToValue(UFDesembEnum value) => value.value;

List<UFDesembEnum>? _UFDesembEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFDesembEnum.fromValue(e)).toList();
List<String>? _UFDesembEnumToMaybeList(List<UFDesembEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFDesembEnum> _UFDesembEnumFromList(List<String> value) =>
    value.map((e) => UFDesembEnum.fromValue(e)).toList();
List<String> _UFDesembEnumToList(List<UFDesembEnum> value) =>
    value.map((e) => e.value).toList();

enum tpViaTranspEnum {
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6"),
  v_7("7"),
  v_8("8"),
  v_9("9"),
  v_10("10"),
  v_11("11"),
  v_12("12"),
  v_13("13");

  final String value;
  const tpViaTranspEnum(this.value);
  factory tpViaTranspEnum.fromValue(String value) {
    for (final item in tpViaTranspEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpViaTranspEnum: $value");
  }
}

tpViaTranspEnum? _tpViaTranspEnumFromMaybeValue(String? value) =>
    value != null ? tpViaTranspEnum.fromValue(value) : null;
String? _tpViaTranspEnumToMaybeValue(tpViaTranspEnum? value) =>
    value != null ? value.value : null;

tpViaTranspEnum _tpViaTranspEnumFromValue(String value) =>
    tpViaTranspEnum.fromValue(value);
String _tpViaTranspEnumToValue(tpViaTranspEnum value) => value.value;

List<tpViaTranspEnum>? _tpViaTranspEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpViaTranspEnum.fromValue(e)).toList();
List<String>? _tpViaTranspEnumToMaybeList(List<tpViaTranspEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpViaTranspEnum> _tpViaTranspEnumFromList(List<String> value) =>
    value.map((e) => tpViaTranspEnum.fromValue(e)).toList();
List<String> _tpViaTranspEnumToList(List<tpViaTranspEnum> value) =>
    value.map((e) => e.value).toList();

enum tpIntermedioEnum {
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const tpIntermedioEnum(this.value);
  factory tpIntermedioEnum.fromValue(String value) {
    for (final item in tpIntermedioEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpIntermedioEnum: $value");
  }
}

tpIntermedioEnum? _tpIntermedioEnumFromMaybeValue(String? value) =>
    value != null ? tpIntermedioEnum.fromValue(value) : null;
String? _tpIntermedioEnumToMaybeValue(tpIntermedioEnum? value) =>
    value != null ? value.value : null;

tpIntermedioEnum _tpIntermedioEnumFromValue(String value) =>
    tpIntermedioEnum.fromValue(value);
String _tpIntermedioEnumToValue(tpIntermedioEnum value) => value.value;

List<tpIntermedioEnum>? _tpIntermedioEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpIntermedioEnum.fromValue(e)).toList();
List<String>? _tpIntermedioEnumToMaybeList(List<tpIntermedioEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpIntermedioEnum> _tpIntermedioEnumFromList(List<String> value) =>
    value.map((e) => tpIntermedioEnum.fromValue(e)).toList();
List<String> _tpIntermedioEnumToList(List<tpIntermedioEnum> value) =>
    value.map((e) => e.value).toList();

enum UFTerceiroEnum {
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
  v_TO("TO");

  final String value;
  const UFTerceiroEnum(this.value);
  factory UFTerceiroEnum.fromValue(String value) {
    for (final item in UFTerceiroEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFTerceiroEnum: $value");
  }
}

UFTerceiroEnum? _UFTerceiroEnumFromMaybeValue(String? value) =>
    value != null ? UFTerceiroEnum.fromValue(value) : null;
String? _UFTerceiroEnumToMaybeValue(UFTerceiroEnum? value) =>
    value != null ? value.value : null;

UFTerceiroEnum _UFTerceiroEnumFromValue(String value) =>
    UFTerceiroEnum.fromValue(value);
String _UFTerceiroEnumToValue(UFTerceiroEnum value) => value.value;

List<UFTerceiroEnum>? _UFTerceiroEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFTerceiroEnum.fromValue(e)).toList();
List<String>? _UFTerceiroEnumToMaybeList(List<UFTerceiroEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFTerceiroEnum> _UFTerceiroEnumFromList(List<String> value) =>
    value.map((e) => UFTerceiroEnum.fromValue(e)).toList();
List<String> _UFTerceiroEnumToList(List<UFTerceiroEnum> value) =>
    value.map((e) => e.value).toList();

enum tpOpEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const tpOpEnum(this.value);
  factory tpOpEnum.fromValue(String value) {
    for (final item in tpOpEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpOpEnum: $value");
  }
}

tpOpEnum? _tpOpEnumFromMaybeValue(String? value) =>
    value != null ? tpOpEnum.fromValue(value) : null;
String? _tpOpEnumToMaybeValue(tpOpEnum? value) =>
    value != null ? value.value : null;

tpOpEnum _tpOpEnumFromValue(String value) => tpOpEnum.fromValue(value);
String _tpOpEnumToValue(tpOpEnum value) => value.value;

List<tpOpEnum>? _tpOpEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpOpEnum.fromValue(e)).toList();
List<String>? _tpOpEnumToMaybeList(List<tpOpEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpOpEnum> _tpOpEnumFromList(List<String> value) =>
    value.map((e) => tpOpEnum.fromValue(e)).toList();
List<String> _tpOpEnumToList(List<tpOpEnum> value) =>
    value.map((e) => e.value).toList();

enum VINEnum {
  v_R("R"),
  v_N("N");

  final String value;
  const VINEnum(this.value);
  factory VINEnum.fromValue(String value) {
    for (final item in VINEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for VINEnum: $value");
  }
}

VINEnum? _VINEnumFromMaybeValue(String? value) =>
    value != null ? VINEnum.fromValue(value) : null;
String? _VINEnumToMaybeValue(VINEnum? value) =>
    value != null ? value.value : null;

VINEnum _VINEnumFromValue(String value) => VINEnum.fromValue(value);
String _VINEnumToValue(VINEnum value) => value.value;

List<VINEnum>? _VINEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => VINEnum.fromValue(e)).toList();
List<String>? _VINEnumToMaybeList(List<VINEnum>? value) =>
    value?.map((e) => e.value).toList();

List<VINEnum> _VINEnumFromList(List<String> value) =>
    value.map((e) => VINEnum.fromValue(e)).toList();
List<String> _VINEnumToList(List<VINEnum> value) =>
    value.map((e) => e.value).toList();

enum condVeicEnum {
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const condVeicEnum(this.value);
  factory condVeicEnum.fromValue(String value) {
    for (final item in condVeicEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for condVeicEnum: $value");
  }
}

condVeicEnum? _condVeicEnumFromMaybeValue(String? value) =>
    value != null ? condVeicEnum.fromValue(value) : null;
String? _condVeicEnumToMaybeValue(condVeicEnum? value) =>
    value != null ? value.value : null;

condVeicEnum _condVeicEnumFromValue(String value) =>
    condVeicEnum.fromValue(value);
String _condVeicEnumToValue(condVeicEnum value) => value.value;

List<condVeicEnum>? _condVeicEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => condVeicEnum.fromValue(e)).toList();
List<String>? _condVeicEnumToMaybeList(List<condVeicEnum>? value) =>
    value?.map((e) => e.value).toList();

List<condVeicEnum> _condVeicEnumFromList(List<String> value) =>
    value.map((e) => condVeicEnum.fromValue(e)).toList();
List<String> _condVeicEnumToList(List<condVeicEnum> value) =>
    value.map((e) => e.value).toList();

enum tpRestEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_9("9");

  final String value;
  const tpRestEnum(this.value);
  factory tpRestEnum.fromValue(String value) {
    for (final item in tpRestEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpRestEnum: $value");
  }
}

tpRestEnum? _tpRestEnumFromMaybeValue(String? value) =>
    value != null ? tpRestEnum.fromValue(value) : null;
String? _tpRestEnumToMaybeValue(tpRestEnum? value) =>
    value != null ? value.value : null;

tpRestEnum _tpRestEnumFromValue(String value) => tpRestEnum.fromValue(value);
String _tpRestEnumToValue(tpRestEnum value) => value.value;

List<tpRestEnum>? _tpRestEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpRestEnum.fromValue(e)).toList();
List<String>? _tpRestEnumToMaybeList(List<tpRestEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpRestEnum> _tpRestEnumFromList(List<String> value) =>
    value.map((e) => tpRestEnum.fromValue(e)).toList();
List<String> _tpRestEnumToList(List<tpRestEnum> value) =>
    value.map((e) => e.value).toList();

enum tpArmaEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const tpArmaEnum(this.value);
  factory tpArmaEnum.fromValue(String value) {
    for (final item in tpArmaEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpArmaEnum: $value");
  }
}

tpArmaEnum? _tpArmaEnumFromMaybeValue(String? value) =>
    value != null ? tpArmaEnum.fromValue(value) : null;
String? _tpArmaEnumToMaybeValue(tpArmaEnum? value) =>
    value != null ? value.value : null;

tpArmaEnum _tpArmaEnumFromValue(String value) => tpArmaEnum.fromValue(value);
String _tpArmaEnumToValue(tpArmaEnum value) => value.value;

List<tpArmaEnum>? _tpArmaEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpArmaEnum.fromValue(e)).toList();
List<String>? _tpArmaEnumToMaybeList(List<tpArmaEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpArmaEnum> _tpArmaEnumFromList(List<String> value) =>
    value.map((e) => tpArmaEnum.fromValue(e)).toList();
List<String> _tpArmaEnumToList(List<tpArmaEnum> value) =>
    value.map((e) => e.value).toList();

enum UFConsEnum {
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
  v_EX("EX");

  final String value;
  const UFConsEnum(this.value);
  factory UFConsEnum.fromValue(String value) {
    for (final item in UFConsEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFConsEnum: $value");
  }
}

UFConsEnum? _UFConsEnumFromMaybeValue(String? value) =>
    value != null ? UFConsEnum.fromValue(value) : null;
String? _UFConsEnumToMaybeValue(UFConsEnum? value) =>
    value != null ? value.value : null;

UFConsEnum _UFConsEnumFromValue(String value) => UFConsEnum.fromValue(value);
String _UFConsEnumToValue(UFConsEnum value) => value.value;

List<UFConsEnum>? _UFConsEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFConsEnum.fromValue(e)).toList();
List<String>? _UFConsEnumToMaybeList(List<UFConsEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFConsEnum> _UFConsEnumFromList(List<String> value) =>
    value.map((e) => UFConsEnum.fromValue(e)).toList();
List<String> _UFConsEnumToList(List<UFConsEnum> value) =>
    value.map((e) => e.value).toList();

enum indISSEnum {
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6"),
  v_7("7");

  final String value;
  const indISSEnum(this.value);
  factory indISSEnum.fromValue(String value) {
    for (final item in indISSEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indISSEnum: $value");
  }
}

indISSEnum? _indISSEnumFromMaybeValue(String? value) =>
    value != null ? indISSEnum.fromValue(value) : null;
String? _indISSEnumToMaybeValue(indISSEnum? value) =>
    value != null ? value.value : null;

indISSEnum _indISSEnumFromValue(String value) => indISSEnum.fromValue(value);
String _indISSEnumToValue(indISSEnum value) => value.value;

List<indISSEnum>? _indISSEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indISSEnum.fromValue(e)).toList();
List<String>? _indISSEnumToMaybeList(List<indISSEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indISSEnum> _indISSEnumFromList(List<String> value) =>
    value.map((e) => indISSEnum.fromValue(e)).toList();
List<String> _indISSEnumToList(List<indISSEnum> value) =>
    value.map((e) => e.value).toList();

enum indIncentivoEnum {
  v_1("1"),
  v_2("2");

  final String value;
  const indIncentivoEnum(this.value);
  factory indIncentivoEnum.fromValue(String value) {
    for (final item in indIncentivoEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indIncentivoEnum: $value");
  }
}

indIncentivoEnum? _indIncentivoEnumFromMaybeValue(String? value) =>
    value != null ? indIncentivoEnum.fromValue(value) : null;
String? _indIncentivoEnumToMaybeValue(indIncentivoEnum? value) =>
    value != null ? value.value : null;

indIncentivoEnum _indIncentivoEnumFromValue(String value) =>
    indIncentivoEnum.fromValue(value);
String _indIncentivoEnumToValue(indIncentivoEnum value) => value.value;

List<indIncentivoEnum>? _indIncentivoEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indIncentivoEnum.fromValue(e)).toList();
List<String>? _indIncentivoEnumToMaybeList(List<indIncentivoEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indIncentivoEnum> _indIncentivoEnumFromList(List<String> value) =>
    value.map((e) => indIncentivoEnum.fromValue(e)).toList();
List<String> _indIncentivoEnumToList(List<indIncentivoEnum> value) =>
    value.map((e) => e.value).toList();

enum indSomaPISSTEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indSomaPISSTEnum(this.value);
  factory indSomaPISSTEnum.fromValue(String value) {
    for (final item in indSomaPISSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indSomaPISSTEnum: $value");
  }
}

indSomaPISSTEnum? _indSomaPISSTEnumFromMaybeValue(String? value) =>
    value != null ? indSomaPISSTEnum.fromValue(value) : null;
String? _indSomaPISSTEnumToMaybeValue(indSomaPISSTEnum? value) =>
    value != null ? value.value : null;

indSomaPISSTEnum _indSomaPISSTEnumFromValue(String value) =>
    indSomaPISSTEnum.fromValue(value);
String _indSomaPISSTEnumToValue(indSomaPISSTEnum value) => value.value;

List<indSomaPISSTEnum>? _indSomaPISSTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => indSomaPISSTEnum.fromValue(e)).toList();
List<String>? _indSomaPISSTEnumToMaybeList(List<indSomaPISSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indSomaPISSTEnum> _indSomaPISSTEnumFromList(List<String> value) =>
    value.map((e) => indSomaPISSTEnum.fromValue(e)).toList();
List<String> _indSomaPISSTEnumToList(List<indSomaPISSTEnum> value) =>
    value.map((e) => e.value).toList();

enum indSomaCOFINSSTEnum {
  v_0("0"),
  v_1("1");

  final String value;
  const indSomaCOFINSSTEnum(this.value);
  factory indSomaCOFINSSTEnum.fromValue(String value) {
    for (final item in indSomaCOFINSSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for indSomaCOFINSSTEnum: $value");
  }
}

indSomaCOFINSSTEnum? _indSomaCOFINSSTEnumFromMaybeValue(String? value) =>
    value != null ? indSomaCOFINSSTEnum.fromValue(value) : null;
String? _indSomaCOFINSSTEnumToMaybeValue(indSomaCOFINSSTEnum? value) =>
    value != null ? value.value : null;

indSomaCOFINSSTEnum _indSomaCOFINSSTEnumFromValue(String value) =>
    indSomaCOFINSSTEnum.fromValue(value);
String _indSomaCOFINSSTEnumToValue(indSomaCOFINSSTEnum value) => value.value;

List<indSomaCOFINSSTEnum>? _indSomaCOFINSSTEnumFromMaybeList(
        List<String>? value) =>
    value?.map((e) => indSomaCOFINSSTEnum.fromValue(e)).toList();
List<String>? _indSomaCOFINSSTEnumToMaybeList(
        List<indSomaCOFINSSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<indSomaCOFINSSTEnum> _indSomaCOFINSSTEnumFromList(List<String> value) =>
    value.map((e) => indSomaCOFINSSTEnum.fromValue(e)).toList();
List<String> _indSomaCOFINSSTEnumToList(List<indSomaCOFINSSTEnum> value) =>
    value.map((e) => e.value).toList();

enum pICMSInterEnum {
  v_400("4.00"),
  v_700("7.00"),
  v_1200("12.00");

  final String value;
  const pICMSInterEnum(this.value);
  factory pICMSInterEnum.fromValue(String value) {
    for (final item in pICMSInterEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for pICMSInterEnum: $value");
  }
}

pICMSInterEnum? _pICMSInterEnumFromMaybeValue(String? value) =>
    value != null ? pICMSInterEnum.fromValue(value) : null;
String? _pICMSInterEnumToMaybeValue(pICMSInterEnum? value) =>
    value != null ? value.value : null;

pICMSInterEnum _pICMSInterEnumFromValue(String value) =>
    pICMSInterEnum.fromValue(value);
String _pICMSInterEnumToValue(pICMSInterEnum value) => value.value;

List<pICMSInterEnum>? _pICMSInterEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => pICMSInterEnum.fromValue(e)).toList();
List<String>? _pICMSInterEnumToMaybeList(List<pICMSInterEnum>? value) =>
    value?.map((e) => e.value).toList();

List<pICMSInterEnum> _pICMSInterEnumFromList(List<String> value) =>
    value.map((e) => pICMSInterEnum.fromValue(e)).toList();
List<String> _pICMSInterEnumToList(List<pICMSInterEnum> value) =>
    value.map((e) => e.value).toList();

enum tpIntegraEnum {
  v_1("1"),
  v_2("2");

  final String value;
  const tpIntegraEnum(this.value);
  factory tpIntegraEnum.fromValue(String value) {
    for (final item in tpIntegraEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for tpIntegraEnum: $value");
  }
}

tpIntegraEnum? _tpIntegraEnumFromMaybeValue(String? value) =>
    value != null ? tpIntegraEnum.fromValue(value) : null;
String? _tpIntegraEnumToMaybeValue(tpIntegraEnum? value) =>
    value != null ? value.value : null;

tpIntegraEnum _tpIntegraEnumFromValue(String value) =>
    tpIntegraEnum.fromValue(value);
String _tpIntegraEnumToValue(tpIntegraEnum value) => value.value;

List<tpIntegraEnum>? _tpIntegraEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => tpIntegraEnum.fromValue(e)).toList();
List<String>? _tpIntegraEnumToMaybeList(List<tpIntegraEnum>? value) =>
    value?.map((e) => e.value).toList();

List<tpIntegraEnum> _tpIntegraEnumFromList(List<String> value) =>
    value.map((e) => tpIntegraEnum.fromValue(e)).toList();
List<String> _tpIntegraEnumToList(List<tpIntegraEnum> value) =>
    value.map((e) => e.value).toList();

enum origEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6"),
  v_7("7"),
  v_8("8");

  final String value;
  const origEnum(this.value);
  factory origEnum.fromValue(String value) {
    for (final item in origEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for origEnum: $value");
  }
}

origEnum? _origEnumFromMaybeValue(String? value) =>
    value != null ? origEnum.fromValue(value) : null;
String? _origEnumToMaybeValue(origEnum? value) =>
    value != null ? value.value : null;

origEnum _origEnumFromValue(String value) => origEnum.fromValue(value);
String _origEnumToValue(origEnum value) => value.value;

List<origEnum>? _origEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => origEnum.fromValue(e)).toList();
List<String>? _origEnumToMaybeList(List<origEnum>? value) =>
    value?.map((e) => e.value).toList();

List<origEnum> _origEnumFromList(List<String> value) =>
    value.map((e) => origEnum.fromValue(e)).toList();
List<String> _origEnumToList(List<origEnum> value) =>
    value.map((e) => e.value).toList();

enum CSTEnum {
  v_00("00"),
  v_10("10"),
  v_20("20"),
  v_30("30"),
  v_40("40"),
  v_41("41"),
  v_50("50"),
  v_51("51"),
  v_60("60"),
  v_70("70"),
  v_90("90"),
  v_01("01"),
  v_02("02"),
  v_03("03"),
  v_04("04"),
  v_05("05"),
  v_06("06"),
  v_07("07"),
  v_08("08"),
  v_09("09"),
  v_49("49"),
  v_52("52"),
  v_53("53"),
  v_54("54"),
  v_55("55"),
  v_56("56"),
  v_61("61"),
  v_62("62"),
  v_63("63"),
  v_64("64"),
  v_65("65"),
  v_66("66"),
  v_67("67"),
  v_71("71"),
  v_72("72"),
  v_73("73"),
  v_74("74"),
  v_75("75"),
  v_98("98"),
  v_99("99");

  final String value;
  const CSTEnum(this.value);
  factory CSTEnum.fromValue(String value) {
    for (final item in CSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for CSTEnum: $value");
  }
}

CSTEnum? _CSTEnumFromMaybeValue(String? value) =>
    value != null ? CSTEnum.fromValue(value) : null;
String? _CSTEnumToMaybeValue(CSTEnum? value) =>
    value != null ? value.value : null;

CSTEnum _CSTEnumFromValue(String value) => CSTEnum.fromValue(value);
String _CSTEnumToValue(CSTEnum value) => value.value;

List<CSTEnum>? _CSTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => CSTEnum.fromValue(e)).toList();
List<String>? _CSTEnumToMaybeList(List<CSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<CSTEnum> _CSTEnumFromList(List<String> value) =>
    value.map((e) => CSTEnum.fromValue(e)).toList();
List<String> _CSTEnumToList(List<CSTEnum> value) =>
    value.map((e) => e.value).toList();

enum modBCEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3");

  final String value;
  const modBCEnum(this.value);
  factory modBCEnum.fromValue(String value) {
    for (final item in modBCEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for modBCEnum: $value");
  }
}

modBCEnum? _modBCEnumFromMaybeValue(String? value) =>
    value != null ? modBCEnum.fromValue(value) : null;
String? _modBCEnumToMaybeValue(modBCEnum? value) =>
    value != null ? value.value : null;

modBCEnum _modBCEnumFromValue(String value) => modBCEnum.fromValue(value);
String _modBCEnumToValue(modBCEnum value) => value.value;

List<modBCEnum>? _modBCEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => modBCEnum.fromValue(e)).toList();
List<String>? _modBCEnumToMaybeList(List<modBCEnum>? value) =>
    value?.map((e) => e.value).toList();

List<modBCEnum> _modBCEnumFromList(List<String> value) =>
    value.map((e) => modBCEnum.fromValue(e)).toList();
List<String> _modBCEnumToList(List<modBCEnum> value) =>
    value.map((e) => e.value).toList();

enum modBCSTEnum {
  v_0("0"),
  v_1("1"),
  v_2("2"),
  v_3("3"),
  v_4("4"),
  v_5("5"),
  v_6("6");

  final String value;
  const modBCSTEnum(this.value);
  factory modBCSTEnum.fromValue(String value) {
    for (final item in modBCSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for modBCSTEnum: $value");
  }
}

modBCSTEnum? _modBCSTEnumFromMaybeValue(String? value) =>
    value != null ? modBCSTEnum.fromValue(value) : null;
String? _modBCSTEnumToMaybeValue(modBCSTEnum? value) =>
    value != null ? value.value : null;

modBCSTEnum _modBCSTEnumFromValue(String value) => modBCSTEnum.fromValue(value);
String _modBCSTEnumToValue(modBCSTEnum value) => value.value;

List<modBCSTEnum>? _modBCSTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => modBCSTEnum.fromValue(e)).toList();
List<String>? _modBCSTEnumToMaybeList(List<modBCSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<modBCSTEnum> _modBCSTEnumFromList(List<String> value) =>
    value.map((e) => modBCSTEnum.fromValue(e)).toList();
List<String> _modBCSTEnumToList(List<modBCSTEnum> value) =>
    value.map((e) => e.value).toList();

enum motDesICMSSTEnum {
  v_3("3"),
  v_9("9"),
  v_12("12");

  final String value;
  const motDesICMSSTEnum(this.value);
  factory motDesICMSSTEnum.fromValue(String value) {
    for (final item in motDesICMSSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for motDesICMSSTEnum: $value");
  }
}

motDesICMSSTEnum? _motDesICMSSTEnumFromMaybeValue(String? value) =>
    value != null ? motDesICMSSTEnum.fromValue(value) : null;
String? _motDesICMSSTEnumToMaybeValue(motDesICMSSTEnum? value) =>
    value != null ? value.value : null;

motDesICMSSTEnum _motDesICMSSTEnumFromValue(String value) =>
    motDesICMSSTEnum.fromValue(value);
String _motDesICMSSTEnumToValue(motDesICMSSTEnum value) => value.value;

List<motDesICMSSTEnum>? _motDesICMSSTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => motDesICMSSTEnum.fromValue(e)).toList();
List<String>? _motDesICMSSTEnumToMaybeList(List<motDesICMSSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<motDesICMSSTEnum> _motDesICMSSTEnumFromList(List<String> value) =>
    value.map((e) => motDesICMSSTEnum.fromValue(e)).toList();
List<String> _motDesICMSSTEnumToList(List<motDesICMSSTEnum> value) =>
    value.map((e) => e.value).toList();

enum motDesICMSEnum {
  v_3("3"),
  v_9("9"),
  v_12("12"),
  v_6("6"),
  v_7("7"),
  v_1("1"),
  v_4("4"),
  v_5("5"),
  v_8("8"),
  v_10("10"),
  v_11("11"),
  v_16("16"),
  v_90("90");

  final String value;
  const motDesICMSEnum(this.value);
  factory motDesICMSEnum.fromValue(String value) {
    for (final item in motDesICMSEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for motDesICMSEnum: $value");
  }
}

motDesICMSEnum? _motDesICMSEnumFromMaybeValue(String? value) =>
    value != null ? motDesICMSEnum.fromValue(value) : null;
String? _motDesICMSEnumToMaybeValue(motDesICMSEnum? value) =>
    value != null ? value.value : null;

motDesICMSEnum _motDesICMSEnumFromValue(String value) =>
    motDesICMSEnum.fromValue(value);
String _motDesICMSEnumToValue(motDesICMSEnum value) => value.value;

List<motDesICMSEnum>? _motDesICMSEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => motDesICMSEnum.fromValue(e)).toList();
List<String>? _motDesICMSEnumToMaybeList(List<motDesICMSEnum>? value) =>
    value?.map((e) => e.value).toList();

List<motDesICMSEnum> _motDesICMSEnumFromList(List<String> value) =>
    value.map((e) => motDesICMSEnum.fromValue(e)).toList();
List<String> _motDesICMSEnumToList(List<motDesICMSEnum> value) =>
    value.map((e) => e.value).toList();

enum UFSTEnum {
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
  v_EX("EX");

  final String value;
  const UFSTEnum(this.value);
  factory UFSTEnum.fromValue(String value) {
    for (final item in UFSTEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for UFSTEnum: $value");
  }
}

UFSTEnum? _UFSTEnumFromMaybeValue(String? value) =>
    value != null ? UFSTEnum.fromValue(value) : null;
String? _UFSTEnumToMaybeValue(UFSTEnum? value) =>
    value != null ? value.value : null;

UFSTEnum _UFSTEnumFromValue(String value) => UFSTEnum.fromValue(value);
String _UFSTEnumToValue(UFSTEnum value) => value.value;

List<UFSTEnum>? _UFSTEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => UFSTEnum.fromValue(e)).toList();
List<String>? _UFSTEnumToMaybeList(List<UFSTEnum>? value) =>
    value?.map((e) => e.value).toList();

List<UFSTEnum> _UFSTEnumFromList(List<String> value) =>
    value.map((e) => UFSTEnum.fromValue(e)).toList();
List<String> _UFSTEnumToList(List<UFSTEnum> value) =>
    value.map((e) => e.value).toList();

enum CSOSNEnum {
  v_101("101"),
  v_102("102"),
  v_103("103"),
  v_300("300"),
  v_400("400"),
  v_201("201"),
  v_202("202"),
  v_203("203"),
  v_500("500"),
  v_900("900");

  final String value;
  const CSOSNEnum(this.value);
  factory CSOSNEnum.fromValue(String value) {
    for (final item in CSOSNEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for CSOSNEnum: $value");
  }
}

CSOSNEnum? _CSOSNEnumFromMaybeValue(String? value) =>
    value != null ? CSOSNEnum.fromValue(value) : null;
String? _CSOSNEnumToMaybeValue(CSOSNEnum? value) =>
    value != null ? value.value : null;

CSOSNEnum _CSOSNEnumFromValue(String value) => CSOSNEnum.fromValue(value);
String _CSOSNEnumToValue(CSOSNEnum value) => value.value;

List<CSOSNEnum>? _CSOSNEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => CSOSNEnum.fromValue(e)).toList();
List<String>? _CSOSNEnumToMaybeList(List<CSOSNEnum>? value) =>
    value?.map((e) => e.value).toList();

List<CSOSNEnum> _CSOSNEnumFromList(List<String> value) =>
    value.map((e) => CSOSNEnum.fromValue(e)).toList();
List<String> _CSOSNEnumToList(List<CSOSNEnum> value) =>
    value.map((e) => e.value).toList();

enum cPaisEnum {
  v_1058("1058");

  final String value;
  const cPaisEnum(this.value);
  factory cPaisEnum.fromValue(String value) {
    for (final item in cPaisEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for cPaisEnum: $value");
  }
}

cPaisEnum? _cPaisEnumFromMaybeValue(String? value) =>
    value != null ? cPaisEnum.fromValue(value) : null;
String? _cPaisEnumToMaybeValue(cPaisEnum? value) =>
    value != null ? value.value : null;

cPaisEnum _cPaisEnumFromValue(String value) => cPaisEnum.fromValue(value);
String _cPaisEnumToValue(cPaisEnum value) => value.value;

List<cPaisEnum>? _cPaisEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => cPaisEnum.fromValue(e)).toList();
List<String>? _cPaisEnumToMaybeList(List<cPaisEnum>? value) =>
    value?.map((e) => e.value).toList();

List<cPaisEnum> _cPaisEnumFromList(List<String> value) =>
    value.map((e) => cPaisEnum.fromValue(e)).toList();
List<String> _cPaisEnumToList(List<cPaisEnum> value) =>
    value.map((e) => e.value).toList();

enum xPaisEnum {
  v_Brasil("Brasil"),
  v_BRASIL("BRASIL");

  final String value;
  const xPaisEnum(this.value);
  factory xPaisEnum.fromValue(String value) {
    for (final item in xPaisEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for xPaisEnum: $value");
  }
}

xPaisEnum? _xPaisEnumFromMaybeValue(String? value) =>
    value != null ? xPaisEnum.fromValue(value) : null;
String? _xPaisEnumToMaybeValue(xPaisEnum? value) =>
    value != null ? value.value : null;

xPaisEnum _xPaisEnumFromValue(String value) => xPaisEnum.fromValue(value);
String _xPaisEnumToValue(xPaisEnum value) => value.value;

List<xPaisEnum>? _xPaisEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => xPaisEnum.fromValue(e)).toList();
List<String>? _xPaisEnumToMaybeList(List<xPaisEnum>? value) =>
    value?.map((e) => e.value).toList();

List<xPaisEnum> _xPaisEnumFromList(List<String> value) =>
    value.map((e) => xPaisEnum.fromValue(e)).toList();
List<String> _xPaisEnumToList(List<xPaisEnum> value) =>
    value.map((e) => e.value).toList();

enum AlgorithmEnum {
  v_httpwwww3org200009("http://www.w3.org/2000/09/xmldsig#enveloped-signature"),
  v_httpwwww3orgTR2001("http://www.w3.org/TR/2001/REC-xml-c14n-20010315");

  final String value;
  const AlgorithmEnum(this.value);
  factory AlgorithmEnum.fromValue(String value) {
    for (final item in AlgorithmEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError("Invalid value for AlgorithmEnum: $value");
  }
}

AlgorithmEnum? _AlgorithmEnumFromMaybeValue(String? value) =>
    value != null ? AlgorithmEnum.fromValue(value) : null;
String? _AlgorithmEnumToMaybeValue(AlgorithmEnum? value) =>
    value != null ? value.value : null;

AlgorithmEnum _AlgorithmEnumFromValue(String value) =>
    AlgorithmEnum.fromValue(value);
String _AlgorithmEnumToValue(AlgorithmEnum value) => value.value;

List<AlgorithmEnum>? _AlgorithmEnumFromMaybeList(List<String>? value) =>
    value?.map((e) => AlgorithmEnum.fromValue(e)).toList();
List<String>? _AlgorithmEnumToMaybeList(List<AlgorithmEnum>? value) =>
    value?.map((e) => e.value).toList();

List<AlgorithmEnum> _AlgorithmEnumFromList(List<String> value) =>
    value.map((e) => AlgorithmEnum.fromValue(e)).toList();
List<String> _AlgorithmEnumToList(List<AlgorithmEnum> value) =>
    value.map((e) => e.value).toList();
