// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfe4.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NFe4Schema _$NFe4SchemaFromJson(Map<String, dynamic> json) => _NFe4Schema(
      xmlns: json['xmlns'] as String?,
      infNFe: _infNFeComplexType_TNFeFromJson(
          json['infNFe'] as Map<String, dynamic>),
      infNFeSupl: _infNFeSuplComplexType_TNFeMaybeFromJson(
          json['infNFeSupl'] as Map<String, dynamic>?),
      Signature: _SignatureTypeComplexTypeFromJson(
          json['Signature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NFe4SchemaToJson(_NFe4Schema instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infNFe': _infNFeComplexType_TNFeToJson(instance.infNFe),
      'infNFeSupl': _infNFeSuplComplexType_TNFeMaybeToJson(instance.infNFeSupl),
      'Signature': _SignatureTypeComplexTypeToJson(instance.Signature),
    };

infNFeComplexType_TNFe _$infNFeComplexType_TNFeFromJson(
        Map<String, dynamic> json) =>
    infNFeComplexType_TNFe(
      xmlns: json['xmlns'] as String?,
      ide: _ideComplexType_infNFeFromJson(json['ide'] as Map<String, dynamic>),
      emit:
          _emitComplexType_infNFeFromJson(json['emit'] as Map<String, dynamic>),
      avulsa: _avulsaComplexType_infNFeMaybeFromJson(
          json['avulsa'] as Map<String, dynamic>?),
      dest: _destComplexType_infNFeMaybeFromJson(
          json['dest'] as Map<String, dynamic>?),
      retirada: _TLocalComplexTypeMaybeFromJson(
          json['retirada'] as Map<String, dynamic>?),
      entrega: _TLocalComplexTypeMaybeFromJson(
          json['entrega'] as Map<String, dynamic>?),
      autXML:
          _autXMLComplexType_infNFeMaybeListFromJson(json['autXML'] as List?),
      det: _detComplexType_infNFeListFromJson(json['det'] as List),
      total: _totalComplexType_infNFeFromJson(
          json['total'] as Map<String, dynamic>),
      transp: _transpComplexType_infNFeFromJson(
          json['transp'] as Map<String, dynamic>),
      cobr: _cobrComplexType_infNFeMaybeFromJson(
          json['cobr'] as Map<String, dynamic>?),
      pag: _pagComplexType_infNFeFromJson(json['pag'] as Map<String, dynamic>),
      infIntermed: _infIntermedComplexType_infNFeMaybeFromJson(
          json['infIntermed'] as Map<String, dynamic>?),
      infAdic: _infAdicComplexType_infNFeMaybeFromJson(
          json['infAdic'] as Map<String, dynamic>?),
      exporta: _exportaComplexType_infNFeMaybeFromJson(
          json['exporta'] as Map<String, dynamic>?),
      compra: _compraComplexType_infNFeMaybeFromJson(
          json['compra'] as Map<String, dynamic>?),
      cana: _canaComplexType_infNFeMaybeFromJson(
          json['cana'] as Map<String, dynamic>?),
      infRespTec: _TInfRespTecComplexTypeMaybeFromJson(
          json['infRespTec'] as Map<String, dynamic>?),
      infSolicNFF: _infSolicNFFComplexType_infNFeMaybeFromJson(
          json['infSolicNFF'] as Map<String, dynamic>?),
      versao: json['versao'] as String,
      Id: json['Id'] as String,
    );

Map<String, dynamic> _$infNFeComplexType_TNFeToJson(
        infNFeComplexType_TNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'ide': _ideComplexType_infNFeToJson(instance.ide),
      'emit': _emitComplexType_infNFeToJson(instance.emit),
      'avulsa': _avulsaComplexType_infNFeMaybeToJson(instance.avulsa),
      'dest': _destComplexType_infNFeMaybeToJson(instance.dest),
      'retirada': _TLocalComplexTypeMaybeToJson(instance.retirada),
      'entrega': _TLocalComplexTypeMaybeToJson(instance.entrega),
      'autXML': _autXMLComplexType_infNFeMaybeListToJson(instance.autXML),
      'det': _detComplexType_infNFeListToJson(instance.det),
      'total': _totalComplexType_infNFeToJson(instance.total),
      'transp': _transpComplexType_infNFeToJson(instance.transp),
      'cobr': _cobrComplexType_infNFeMaybeToJson(instance.cobr),
      'pag': _pagComplexType_infNFeToJson(instance.pag),
      'infIntermed':
          _infIntermedComplexType_infNFeMaybeToJson(instance.infIntermed),
      'infAdic': _infAdicComplexType_infNFeMaybeToJson(instance.infAdic),
      'exporta': _exportaComplexType_infNFeMaybeToJson(instance.exporta),
      'compra': _compraComplexType_infNFeMaybeToJson(instance.compra),
      'cana': _canaComplexType_infNFeMaybeToJson(instance.cana),
      'infRespTec': _TInfRespTecComplexTypeMaybeToJson(instance.infRespTec),
      'infSolicNFF':
          _infSolicNFFComplexType_infNFeMaybeToJson(instance.infSolicNFF),
      'versao': instance.versao,
      'Id': instance.Id,
    };

infNFeSuplComplexType_TNFe _$infNFeSuplComplexType_TNFeFromJson(
        Map<String, dynamic> json) =>
    infNFeSuplComplexType_TNFe(
      xmlns: json['xmlns'] as String?,
      qrCode: json['qrCode'] as String,
      urlChave: json['urlChave'] as String,
    );

Map<String, dynamic> _$infNFeSuplComplexType_TNFeToJson(
        infNFeSuplComplexType_TNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'qrCode': instance.qrCode,
      'urlChave': instance.urlChave,
    };

ideComplexType_infNFe _$ideComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    ideComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      cNF: json['cNF'] as String,
      natOp: json['natOp'] as String,
      mod: _modEnumFromValue(json['mod'] as String),
      serie: json['serie'] as String,
      nNF: json['nNF'] as String,
      dhEmi: json['dhEmi'] as String,
      dhSaiEnt: json['dhSaiEnt'] as String?,
      tpNF: _tpNFEnumFromValue(json['tpNF'] as String),
      idDest: _idDestEnumFromValue(json['idDest'] as String),
      cMunFG: json['cMunFG'] as String,
      tpImp: _tpImpEnumFromValue(json['tpImp'] as String),
      tpEmis: _tpEmisEnumFromValue(json['tpEmis'] as String),
      cDV: json['cDV'] as String,
      tpAmb: _tpAmbEnumFromValue(json['tpAmb'] as String),
      finNFe: _finNFeEnumFromValue(json['finNFe'] as String),
      indFinal: _indFinalEnumFromValue(json['indFinal'] as String),
      indPres: _indPresEnumFromValue(json['indPres'] as String),
      indIntermed:
          _indIntermedEnumFromMaybeValue(json['indIntermed'] as String?),
      procEmi: _procEmiEnumFromValue(json['procEmi'] as String),
      verProc: json['verProc'] as String,
      dhCont: json['dhCont'] as String?,
      xJust: json['xJust'] as String?,
      NFref: _NFrefComplexType_ideMaybeListFromJson(json['NFref'] as List?),
    );

Map<String, dynamic> _$ideComplexType_infNFeToJson(
        ideComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cUF': _cUFEnumToValue(instance.cUF),
      'cNF': instance.cNF,
      'natOp': instance.natOp,
      'mod': _modEnumToValue(instance.mod),
      'serie': instance.serie,
      'nNF': instance.nNF,
      'dhEmi': instance.dhEmi,
      'dhSaiEnt': instance.dhSaiEnt,
      'tpNF': _tpNFEnumToValue(instance.tpNF),
      'idDest': _idDestEnumToValue(instance.idDest),
      'cMunFG': instance.cMunFG,
      'tpImp': _tpImpEnumToValue(instance.tpImp),
      'tpEmis': _tpEmisEnumToValue(instance.tpEmis),
      'cDV': instance.cDV,
      'tpAmb': _tpAmbEnumToValue(instance.tpAmb),
      'finNFe': _finNFeEnumToValue(instance.finNFe),
      'indFinal': _indFinalEnumToValue(instance.indFinal),
      'indPres': _indPresEnumToValue(instance.indPres),
      'indIntermed': _indIntermedEnumToMaybeValue(instance.indIntermed),
      'procEmi': _procEmiEnumToValue(instance.procEmi),
      'verProc': instance.verProc,
      'dhCont': instance.dhCont,
      'xJust': instance.xJust,
      'NFref': _NFrefComplexType_ideMaybeListToJson(instance.NFref),
    };

emitComplexType_infNFe _$emitComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    emitComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      xNome: json['xNome'] as String,
      xFant: json['xFant'] as String?,
      enderEmit: _TEnderEmiComplexTypeFromJson(
          json['enderEmit'] as Map<String, dynamic>),
      IE: json['IE'] as String,
      IEST: json['IEST'] as String?,
      IM: json['IM'] as String?,
      CNAE: json['CNAE'] as String?,
      CRT: _CRTEnumFromValue(json['CRT'] as String),
    );

Map<String, dynamic> _$emitComplexType_infNFeToJson(
        emitComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'xNome': instance.xNome,
      'xFant': instance.xFant,
      'enderEmit': _TEnderEmiComplexTypeToJson(instance.enderEmit),
      'IE': instance.IE,
      'IEST': instance.IEST,
      'IM': instance.IM,
      'CNAE': instance.CNAE,
      'CRT': _CRTEnumToValue(instance.CRT),
    };

avulsaComplexType_infNFe _$avulsaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    avulsaComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String,
      xOrgao: json['xOrgao'] as String,
      matr: json['matr'] as String,
      xAgente: json['xAgente'] as String,
      fone: json['fone'] as String?,
      UF: _UFEnumFromValue(json['UF'] as String),
      nDAR: json['nDAR'] as String?,
      dEmi: json['dEmi'] as String?,
      vDAR: json['vDAR'] as String?,
      repEmi: json['repEmi'] as String,
      dPag: json['dPag'] as String?,
    );

Map<String, dynamic> _$avulsaComplexType_infNFeToJson(
        avulsaComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'xOrgao': instance.xOrgao,
      'matr': instance.matr,
      'xAgente': instance.xAgente,
      'fone': instance.fone,
      'UF': _UFEnumToValue(instance.UF),
      'nDAR': instance.nDAR,
      'dEmi': instance.dEmi,
      'vDAR': instance.vDAR,
      'repEmi': instance.repEmi,
      'dPag': instance.dPag,
    };

destComplexType_infNFe _$destComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    destComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      idEstrangeiro: json['idEstrangeiro'] as String?,
      xNome: json['xNome'] as String?,
      enderDest: _TEnderecoComplexTypeMaybeFromJson(
          json['enderDest'] as Map<String, dynamic>?),
      indIEDest: _indIEDestEnumFromValue(json['indIEDest'] as String),
      IE: json['IE'] as String?,
      ISUF: json['ISUF'] as String?,
      IM: json['IM'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$destComplexType_infNFeToJson(
        destComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'idEstrangeiro': instance.idEstrangeiro,
      'xNome': instance.xNome,
      'enderDest': _TEnderecoComplexTypeMaybeToJson(instance.enderDest),
      'indIEDest': _indIEDestEnumToValue(instance.indIEDest),
      'IE': instance.IE,
      'ISUF': instance.ISUF,
      'IM': instance.IM,
      'email': instance.email,
    };

autXMLComplexType_infNFe _$autXMLComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    autXMLComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
    );

Map<String, dynamic> _$autXMLComplexType_infNFeToJson(
        autXMLComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
    };

detComplexType_infNFe _$detComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    detComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      prod: _prodComplexType_detFromJson(json['prod'] as Map<String, dynamic>),
      imposto: _impostoComplexType_detFromJson(
          json['imposto'] as Map<String, dynamic>),
      impostoDevol: _impostoDevolComplexType_detMaybeFromJson(
          json['impostoDevol'] as Map<String, dynamic>?),
      infAdProd: json['infAdProd'] as String?,
      obsItem: _obsItemComplexType_detMaybeFromJson(
          json['obsItem'] as Map<String, dynamic>?),
      nItem: json['nItem'] as String,
    );

Map<String, dynamic> _$detComplexType_infNFeToJson(
        detComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'prod': _prodComplexType_detToJson(instance.prod),
      'imposto': _impostoComplexType_detToJson(instance.imposto),
      'impostoDevol':
          _impostoDevolComplexType_detMaybeToJson(instance.impostoDevol),
      'infAdProd': instance.infAdProd,
      'obsItem': _obsItemComplexType_detMaybeToJson(instance.obsItem),
      'nItem': instance.nItem,
    };

totalComplexType_infNFe _$totalComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    totalComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      ICMSTot: _ICMSTotComplexType_totalFromJson(
          json['ICMSTot'] as Map<String, dynamic>),
      ISSQNtot: _ISSQNtotComplexType_totalMaybeFromJson(
          json['ISSQNtot'] as Map<String, dynamic>?),
      retTrib: _retTribComplexType_totalMaybeFromJson(
          json['retTrib'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$totalComplexType_infNFeToJson(
        totalComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'ICMSTot': _ICMSTotComplexType_totalToJson(instance.ICMSTot),
      'ISSQNtot': _ISSQNtotComplexType_totalMaybeToJson(instance.ISSQNtot),
      'retTrib': _retTribComplexType_totalMaybeToJson(instance.retTrib),
    };

transpComplexType_infNFe _$transpComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    transpComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      modFrete: _modFreteEnumFromValue(json['modFrete'] as String),
      transporta: _transportaComplexType_transpMaybeFromJson(
          json['transporta'] as Map<String, dynamic>?),
      retTransp: _retTranspComplexType_transpMaybeFromJson(
          json['retTransp'] as Map<String, dynamic>?),
      vagao: json['vagao'] as String?,
      balsa: json['balsa'] as String?,
      veicTransp: _TVeiculoComplexTypeMaybeFromJson(
          json['veicTransp'] as Map<String, dynamic>?),
      reboque: _TVeiculoComplexTypeMaybeListFromJson(json['reboque'] as List?),
      vol: _volComplexType_transpMaybeListFromJson(json['vol'] as List?),
    );

Map<String, dynamic> _$transpComplexType_infNFeToJson(
        transpComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'modFrete': _modFreteEnumToValue(instance.modFrete),
      'transporta':
          _transportaComplexType_transpMaybeToJson(instance.transporta),
      'retTransp': _retTranspComplexType_transpMaybeToJson(instance.retTransp),
      'vagao': instance.vagao,
      'balsa': instance.balsa,
      'veicTransp': _TVeiculoComplexTypeMaybeToJson(instance.veicTransp),
      'reboque': _TVeiculoComplexTypeMaybeListToJson(instance.reboque),
      'vol': _volComplexType_transpMaybeListToJson(instance.vol),
    };

cobrComplexType_infNFe _$cobrComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    cobrComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      fat: _fatComplexType_cobrMaybeFromJson(
          json['fat'] as Map<String, dynamic>?),
      dup: _dupComplexType_cobrMaybeListFromJson(json['dup'] as List?),
    );

Map<String, dynamic> _$cobrComplexType_infNFeToJson(
        cobrComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'fat': _fatComplexType_cobrMaybeToJson(instance.fat),
      'dup': _dupComplexType_cobrMaybeListToJson(instance.dup),
    };

pagComplexType_infNFe _$pagComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    pagComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      detPag: _detPagComplexType_pagListFromJson(json['detPag'] as List),
      vTroco: json['vTroco'] as String?,
    );

Map<String, dynamic> _$pagComplexType_infNFeToJson(
        pagComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'detPag': _detPagComplexType_pagListToJson(instance.detPag),
      'vTroco': instance.vTroco,
    };

infIntermedComplexType_infNFe _$infIntermedComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infIntermedComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String,
      idCadIntTran: json['idCadIntTran'] as String,
    );

Map<String, dynamic> _$infIntermedComplexType_infNFeToJson(
        infIntermedComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'idCadIntTran': instance.idCadIntTran,
    };

infAdicComplexType_infNFe _$infAdicComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infAdicComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      infAdFisco: json['infAdFisco'] as String?,
      infCpl: json['infCpl'] as String?,
      obsCont: _obsContComplexType_infAdicMaybeListFromJson(
          json['obsCont'] as List?),
      obsFisco: _obsFiscoComplexType_infAdicMaybeListFromJson(
          json['obsFisco'] as List?),
      procRef: _procRefComplexType_infAdicMaybeListFromJson(
          json['procRef'] as List?),
    );

Map<String, dynamic> _$infAdicComplexType_infNFeToJson(
        infAdicComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'infAdFisco': instance.infAdFisco,
      'infCpl': instance.infCpl,
      'obsCont': _obsContComplexType_infAdicMaybeListToJson(instance.obsCont),
      'obsFisco':
          _obsFiscoComplexType_infAdicMaybeListToJson(instance.obsFisco),
      'procRef': _procRefComplexType_infAdicMaybeListToJson(instance.procRef),
    };

exportaComplexType_infNFe _$exportaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    exportaComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      UFSaidaPais: _UFSaidaPaisEnumFromValue(json['UFSaidaPais'] as String),
      xLocExporta: json['xLocExporta'] as String,
      xLocDespacho: json['xLocDespacho'] as String?,
    );

Map<String, dynamic> _$exportaComplexType_infNFeToJson(
        exportaComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'UFSaidaPais': _UFSaidaPaisEnumToValue(instance.UFSaidaPais),
      'xLocExporta': instance.xLocExporta,
      'xLocDespacho': instance.xLocDespacho,
    };

compraComplexType_infNFe _$compraComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    compraComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      xNEmp: json['xNEmp'] as String?,
      xPed: json['xPed'] as String?,
      xCont: json['xCont'] as String?,
    );

Map<String, dynamic> _$compraComplexType_infNFeToJson(
        compraComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xNEmp': instance.xNEmp,
      'xPed': instance.xPed,
      'xCont': instance.xCont,
    };

canaComplexType_infNFe _$canaComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    canaComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      safra: json['safra'] as String,
      ref: json['ref'] as String,
      forDia: _forDiaComplexType_canaListFromJson(json['forDia'] as List),
      qTotMes: json['qTotMes'] as String,
      qTotAnt: json['qTotAnt'] as String,
      qTotGer: json['qTotGer'] as String,
      deduc: _deducComplexType_canaMaybeListFromJson(json['deduc'] as List?),
      vFor: json['vFor'] as String,
      vTotDed: json['vTotDed'] as String,
      vLiqFor: json['vLiqFor'] as String,
    );

Map<String, dynamic> _$canaComplexType_infNFeToJson(
        canaComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'safra': instance.safra,
      'ref': instance.ref,
      'forDia': _forDiaComplexType_canaListToJson(instance.forDia),
      'qTotMes': instance.qTotMes,
      'qTotAnt': instance.qTotAnt,
      'qTotGer': instance.qTotGer,
      'deduc': _deducComplexType_canaMaybeListToJson(instance.deduc),
      'vFor': instance.vFor,
      'vTotDed': instance.vTotDed,
      'vLiqFor': instance.vLiqFor,
    };

infSolicNFFComplexType_infNFe _$infSolicNFFComplexType_infNFeFromJson(
        Map<String, dynamic> json) =>
    infSolicNFFComplexType_infNFe(
      xmlns: json['xmlns'] as String?,
      xSolic: json['xSolic'] as String,
    );

Map<String, dynamic> _$infSolicNFFComplexType_infNFeToJson(
        infSolicNFFComplexType_infNFe instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xSolic': instance.xSolic,
    };

NFrefComplexType_ide _$NFrefComplexType_ideFromJson(
        Map<String, dynamic> json) =>
    NFrefComplexType_ide(
      xmlns: json['xmlns'] as String?,
      refNFe: json['refNFe'] as String?,
      refNF: _refNFComplexType_NFrefMaybeFromJson(
          json['refNF'] as Map<String, dynamic>?),
      refNFP: _refNFPComplexType_NFrefMaybeFromJson(
          json['refNFP'] as Map<String, dynamic>?),
      refCTe: json['refCTe'] as String?,
      refECF: _refECFComplexType_NFrefMaybeFromJson(
          json['refECF'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$NFrefComplexType_ideToJson(
        NFrefComplexType_ide instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'refNFe': instance.refNFe,
      'refNF': _refNFComplexType_NFrefMaybeToJson(instance.refNF),
      'refNFP': _refNFPComplexType_NFrefMaybeToJson(instance.refNFP),
      'refCTe': instance.refCTe,
      'refECF': _refECFComplexType_NFrefMaybeToJson(instance.refECF),
    };

prodComplexType_det _$prodComplexType_detFromJson(Map<String, dynamic> json) =>
    prodComplexType_det(
      xmlns: json['xmlns'] as String?,
      cProd: json['cProd'] as String,
      cEAN: json['cEAN'] as String,
      cBarra: json['cBarra'] as String?,
      xProd: json['xProd'] as String,
      NCM: json['NCM'] as String,
      NVE: (json['NVE'] as List<dynamic>?)?.map((e) => e as String).toList(),
      CEST: json['CEST'] as String?,
      indEscala: _indEscalaEnumFromMaybeValue(json['indEscala'] as String?),
      CNPJFab: json['CNPJFab'] as String?,
      cBenef: json['cBenef'] as String?,
      EXTIPI: json['EXTIPI'] as String?,
      CFOP: json['CFOP'] as String,
      uCom: json['uCom'] as String,
      qCom: json['qCom'] as String,
      vUnCom: json['vUnCom'] as String,
      vProd: json['vProd'] as String,
      cEANTrib: json['cEANTrib'] as String,
      cBarraTrib: json['cBarraTrib'] as String?,
      uTrib: json['uTrib'] as String,
      qTrib: json['qTrib'] as String,
      vUnTrib: json['vUnTrib'] as String,
      vFrete: json['vFrete'] as String?,
      vSeg: json['vSeg'] as String?,
      vDesc: json['vDesc'] as String?,
      vOutro: json['vOutro'] as String?,
      indTot: _indTotEnumFromValue(json['indTot'] as String),
      DI: _DIComplexType_prodMaybeListFromJson(json['DI'] as List?),
      detExport: _detExportComplexType_prodMaybeListFromJson(
          json['detExport'] as List?),
      xPed: json['xPed'] as String?,
      nItemPed: json['nItemPed'] as String?,
      nFCI: json['nFCI'] as String?,
      rastro: _rastroComplexType_prodMaybeListFromJson(json['rastro'] as List?),
      infProdNFF: _infProdNFFComplexType_prodMaybeFromJson(
          json['infProdNFF'] as Map<String, dynamic>?),
      infProdEmb: _infProdEmbComplexType_prodMaybeFromJson(
          json['infProdEmb'] as Map<String, dynamic>?),
      veicProd: _veicProdComplexType_prodMaybeFromJson(
          json['veicProd'] as Map<String, dynamic>?),
      med: _medComplexType_prodMaybeFromJson(
          json['med'] as Map<String, dynamic>?),
      arma: _armaComplexType_prodMaybeFromJson(
          json['arma'] as Map<String, dynamic>?),
      comb: _combComplexType_prodMaybeFromJson(
          json['comb'] as Map<String, dynamic>?),
      nRECOPI: json['nRECOPI'] as String?,
    );

Map<String, dynamic> _$prodComplexType_detToJson(
        prodComplexType_det instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cProd': instance.cProd,
      'cEAN': instance.cEAN,
      'cBarra': instance.cBarra,
      'xProd': instance.xProd,
      'NCM': instance.NCM,
      'NVE': instance.NVE,
      'CEST': instance.CEST,
      'indEscala': _indEscalaEnumToMaybeValue(instance.indEscala),
      'CNPJFab': instance.CNPJFab,
      'cBenef': instance.cBenef,
      'EXTIPI': instance.EXTIPI,
      'CFOP': instance.CFOP,
      'uCom': instance.uCom,
      'qCom': instance.qCom,
      'vUnCom': instance.vUnCom,
      'vProd': instance.vProd,
      'cEANTrib': instance.cEANTrib,
      'cBarraTrib': instance.cBarraTrib,
      'uTrib': instance.uTrib,
      'qTrib': instance.qTrib,
      'vUnTrib': instance.vUnTrib,
      'vFrete': instance.vFrete,
      'vSeg': instance.vSeg,
      'vDesc': instance.vDesc,
      'vOutro': instance.vOutro,
      'indTot': _indTotEnumToValue(instance.indTot),
      'DI': _DIComplexType_prodMaybeListToJson(instance.DI),
      'detExport':
          _detExportComplexType_prodMaybeListToJson(instance.detExport),
      'xPed': instance.xPed,
      'nItemPed': instance.nItemPed,
      'nFCI': instance.nFCI,
      'rastro': _rastroComplexType_prodMaybeListToJson(instance.rastro),
      'infProdNFF': _infProdNFFComplexType_prodMaybeToJson(instance.infProdNFF),
      'infProdEmb': _infProdEmbComplexType_prodMaybeToJson(instance.infProdEmb),
      'veicProd': _veicProdComplexType_prodMaybeToJson(instance.veicProd),
      'med': _medComplexType_prodMaybeToJson(instance.med),
      'arma': _armaComplexType_prodMaybeToJson(instance.arma),
      'comb': _combComplexType_prodMaybeToJson(instance.comb),
      'nRECOPI': instance.nRECOPI,
    };

impostoComplexType_det _$impostoComplexType_detFromJson(
        Map<String, dynamic> json) =>
    impostoComplexType_det(
      xmlns: json['xmlns'] as String?,
      vTotTrib: json['vTotTrib'] as String?,
      ICMS: _ICMSComplexType_impostoMaybeFromJson(
          json['ICMS'] as Map<String, dynamic>?),
      IPI: _TIpiComplexTypeMaybeFromJson(json['IPI'] as Map<String, dynamic>?),
      II: _IIComplexType_impostoMaybeFromJson(
          json['II'] as Map<String, dynamic>?),
      ISSQN: _ISSQNComplexType_impostoMaybeFromJson(
          json['ISSQN'] as Map<String, dynamic>?),
      PIS: _PISComplexType_impostoMaybeFromJson(
          json['PIS'] as Map<String, dynamic>?),
      PISST: _PISSTComplexType_impostoMaybeFromJson(
          json['PISST'] as Map<String, dynamic>?),
      COFINS: _COFINSComplexType_impostoMaybeFromJson(
          json['COFINS'] as Map<String, dynamic>?),
      COFINSST: _COFINSSTComplexType_impostoMaybeFromJson(
          json['COFINSST'] as Map<String, dynamic>?),
      ICMSUFDest: _ICMSUFDestComplexType_impostoMaybeFromJson(
          json['ICMSUFDest'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$impostoComplexType_detToJson(
        impostoComplexType_det instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vTotTrib': instance.vTotTrib,
      'ICMS': _ICMSComplexType_impostoMaybeToJson(instance.ICMS),
      'IPI': _TIpiComplexTypeMaybeToJson(instance.IPI),
      'II': _IIComplexType_impostoMaybeToJson(instance.II),
      'ISSQN': _ISSQNComplexType_impostoMaybeToJson(instance.ISSQN),
      'PIS': _PISComplexType_impostoMaybeToJson(instance.PIS),
      'PISST': _PISSTComplexType_impostoMaybeToJson(instance.PISST),
      'COFINS': _COFINSComplexType_impostoMaybeToJson(instance.COFINS),
      'COFINSST': _COFINSSTComplexType_impostoMaybeToJson(instance.COFINSST),
      'ICMSUFDest':
          _ICMSUFDestComplexType_impostoMaybeToJson(instance.ICMSUFDest),
    };

impostoDevolComplexType_det _$impostoDevolComplexType_detFromJson(
        Map<String, dynamic> json) =>
    impostoDevolComplexType_det(
      xmlns: json['xmlns'] as String?,
      pDevol: json['pDevol'] as String,
      IPI: _IPIComplexType_impostoDevolFromJson(
          json['IPI'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$impostoDevolComplexType_detToJson(
        impostoDevolComplexType_det instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'pDevol': instance.pDevol,
      'IPI': _IPIComplexType_impostoDevolToJson(instance.IPI),
    };

obsItemComplexType_det _$obsItemComplexType_detFromJson(
        Map<String, dynamic> json) =>
    obsItemComplexType_det(
      xmlns: json['xmlns'] as String?,
      obsCont: _obsContComplexType_obsItemMaybeFromJson(
          json['obsCont'] as Map<String, dynamic>?),
      obsFisco: _obsFiscoComplexType_obsItemMaybeFromJson(
          json['obsFisco'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$obsItemComplexType_detToJson(
        obsItemComplexType_det instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'obsCont': _obsContComplexType_obsItemMaybeToJson(instance.obsCont),
      'obsFisco': _obsFiscoComplexType_obsItemMaybeToJson(instance.obsFisco),
    };

ICMSTotComplexType_total _$ICMSTotComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    ICMSTotComplexType_total(
      xmlns: json['xmlns'] as String?,
      vBC: json['vBC'] as String,
      vICMS: json['vICMS'] as String,
      vICMSDeson: json['vICMSDeson'] as String,
      vFCPUFDest: json['vFCPUFDest'] as String?,
      vICMSUFDest: json['vICMSUFDest'] as String?,
      vICMSUFRemet: json['vICMSUFRemet'] as String?,
      vFCP: json['vFCP'] as String,
      vBCST: json['vBCST'] as String,
      vST: json['vST'] as String,
      vFCPST: json['vFCPST'] as String,
      vFCPSTRet: json['vFCPSTRet'] as String,
      vProd: json['vProd'] as String,
      vFrete: json['vFrete'] as String,
      vSeg: json['vSeg'] as String,
      vDesc: json['vDesc'] as String,
      vII: json['vII'] as String,
      vIPI: json['vIPI'] as String,
      vIPIDevol: json['vIPIDevol'] as String,
      vPIS: json['vPIS'] as String,
      vCOFINS: json['vCOFINS'] as String,
      vOutro: json['vOutro'] as String,
      vNF: json['vNF'] as String,
      vTotTrib: json['vTotTrib'] as String?,
    );

Map<String, dynamic> _$ICMSTotComplexType_totalToJson(
        ICMSTotComplexType_total instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBC': instance.vBC,
      'vICMS': instance.vICMS,
      'vICMSDeson': instance.vICMSDeson,
      'vFCPUFDest': instance.vFCPUFDest,
      'vICMSUFDest': instance.vICMSUFDest,
      'vICMSUFRemet': instance.vICMSUFRemet,
      'vFCP': instance.vFCP,
      'vBCST': instance.vBCST,
      'vST': instance.vST,
      'vFCPST': instance.vFCPST,
      'vFCPSTRet': instance.vFCPSTRet,
      'vProd': instance.vProd,
      'vFrete': instance.vFrete,
      'vSeg': instance.vSeg,
      'vDesc': instance.vDesc,
      'vII': instance.vII,
      'vIPI': instance.vIPI,
      'vIPIDevol': instance.vIPIDevol,
      'vPIS': instance.vPIS,
      'vCOFINS': instance.vCOFINS,
      'vOutro': instance.vOutro,
      'vNF': instance.vNF,
      'vTotTrib': instance.vTotTrib,
    };

ISSQNtotComplexType_total _$ISSQNtotComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    ISSQNtotComplexType_total(
      xmlns: json['xmlns'] as String?,
      vServ: json['vServ'] as String?,
      vBC: json['vBC'] as String?,
      vISS: json['vISS'] as String?,
      vPIS: json['vPIS'] as String?,
      vCOFINS: json['vCOFINS'] as String?,
      dCompet: json['dCompet'] as String,
      vDeducao: json['vDeducao'] as String?,
      vOutro: json['vOutro'] as String?,
      vDescIncond: json['vDescIncond'] as String?,
      vDescCond: json['vDescCond'] as String?,
      vISSRet: json['vISSRet'] as String?,
      cRegTrib: _cRegTribEnumFromMaybeValue(json['cRegTrib'] as String?),
    );

Map<String, dynamic> _$ISSQNtotComplexType_totalToJson(
        ISSQNtotComplexType_total instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vServ': instance.vServ,
      'vBC': instance.vBC,
      'vISS': instance.vISS,
      'vPIS': instance.vPIS,
      'vCOFINS': instance.vCOFINS,
      'dCompet': instance.dCompet,
      'vDeducao': instance.vDeducao,
      'vOutro': instance.vOutro,
      'vDescIncond': instance.vDescIncond,
      'vDescCond': instance.vDescCond,
      'vISSRet': instance.vISSRet,
      'cRegTrib': _cRegTribEnumToMaybeValue(instance.cRegTrib),
    };

retTribComplexType_total _$retTribComplexType_totalFromJson(
        Map<String, dynamic> json) =>
    retTribComplexType_total(
      xmlns: json['xmlns'] as String?,
      vRetPIS: json['vRetPIS'] as String?,
      vRetCOFINS: json['vRetCOFINS'] as String?,
      vRetCSLL: json['vRetCSLL'] as String?,
      vBCIRRF: json['vBCIRRF'] as String?,
      vIRRF: json['vIRRF'] as String?,
      vBCRetPrev: json['vBCRetPrev'] as String?,
      vRetPrev: json['vRetPrev'] as String?,
    );

Map<String, dynamic> _$retTribComplexType_totalToJson(
        retTribComplexType_total instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vRetPIS': instance.vRetPIS,
      'vRetCOFINS': instance.vRetCOFINS,
      'vRetCSLL': instance.vRetCSLL,
      'vBCIRRF': instance.vBCIRRF,
      'vIRRF': instance.vIRRF,
      'vBCRetPrev': instance.vBCRetPrev,
      'vRetPrev': instance.vRetPrev,
    };

transportaComplexType_transp _$transportaComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    transportaComplexType_transp(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      xNome: json['xNome'] as String?,
      IE: json['IE'] as String?,
      xEnder: json['xEnder'] as String?,
      xMun: json['xMun'] as String?,
      UF: _UFEnumFromMaybeValue(json['UF'] as String?),
    );

Map<String, dynamic> _$transportaComplexType_transpToJson(
        transportaComplexType_transp instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'xNome': instance.xNome,
      'IE': instance.IE,
      'xEnder': instance.xEnder,
      'xMun': instance.xMun,
      'UF': _UFEnumToMaybeValue(instance.UF),
    };

retTranspComplexType_transp _$retTranspComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    retTranspComplexType_transp(
      xmlns: json['xmlns'] as String?,
      vServ: json['vServ'] as String,
      vBCRet: json['vBCRet'] as String,
      pICMSRet: json['pICMSRet'] as String,
      vICMSRet: json['vICMSRet'] as String,
      CFOP: json['CFOP'] as String,
      cMunFG: json['cMunFG'] as String,
    );

Map<String, dynamic> _$retTranspComplexType_transpToJson(
        retTranspComplexType_transp instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vServ': instance.vServ,
      'vBCRet': instance.vBCRet,
      'pICMSRet': instance.pICMSRet,
      'vICMSRet': instance.vICMSRet,
      'CFOP': instance.CFOP,
      'cMunFG': instance.cMunFG,
    };

volComplexType_transp _$volComplexType_transpFromJson(
        Map<String, dynamic> json) =>
    volComplexType_transp(
      xmlns: json['xmlns'] as String?,
      qVol: json['qVol'] as String?,
      esp: json['esp'] as String?,
      marca: json['marca'] as String?,
      nVol: json['nVol'] as String?,
      pesoL: json['pesoL'] as String?,
      pesoB: json['pesoB'] as String?,
      lacres: _lacresComplexType_volMaybeListFromJson(json['lacres'] as List?),
    );

Map<String, dynamic> _$volComplexType_transpToJson(
        volComplexType_transp instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'qVol': instance.qVol,
      'esp': instance.esp,
      'marca': instance.marca,
      'nVol': instance.nVol,
      'pesoL': instance.pesoL,
      'pesoB': instance.pesoB,
      'lacres': _lacresComplexType_volMaybeListToJson(instance.lacres),
    };

fatComplexType_cobr _$fatComplexType_cobrFromJson(Map<String, dynamic> json) =>
    fatComplexType_cobr(
      xmlns: json['xmlns'] as String?,
      nFat: json['nFat'] as String?,
      vOrig: json['vOrig'] as String?,
      vDesc: json['vDesc'] as String?,
      vLiq: json['vLiq'] as String?,
    );

Map<String, dynamic> _$fatComplexType_cobrToJson(
        fatComplexType_cobr instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nFat': instance.nFat,
      'vOrig': instance.vOrig,
      'vDesc': instance.vDesc,
      'vLiq': instance.vLiq,
    };

dupComplexType_cobr _$dupComplexType_cobrFromJson(Map<String, dynamic> json) =>
    dupComplexType_cobr(
      xmlns: json['xmlns'] as String?,
      nDup: json['nDup'] as String?,
      dVenc: json['dVenc'] as String?,
      vDup: json['vDup'] as String,
    );

Map<String, dynamic> _$dupComplexType_cobrToJson(
        dupComplexType_cobr instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nDup': instance.nDup,
      'dVenc': instance.dVenc,
      'vDup': instance.vDup,
    };

detPagComplexType_pag _$detPagComplexType_pagFromJson(
        Map<String, dynamic> json) =>
    detPagComplexType_pag(
      xmlns: json['xmlns'] as String?,
      indPag: _indPagEnumFromMaybeValue(json['indPag'] as String?),
      tPag: json['tPag'] as String,
      xPag: json['xPag'] as String?,
      vPag: json['vPag'] as String,
      card: _cardComplexType_detPagMaybeFromJson(
          json['card'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$detPagComplexType_pagToJson(
        detPagComplexType_pag instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'indPag': _indPagEnumToMaybeValue(instance.indPag),
      'tPag': instance.tPag,
      'xPag': instance.xPag,
      'vPag': instance.vPag,
      'card': _cardComplexType_detPagMaybeToJson(instance.card),
    };

obsContComplexType_infAdic _$obsContComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    obsContComplexType_infAdic(
      xmlns: json['xmlns'] as String?,
      xTexto: json['xTexto'] as String,
      xCampo: json['xCampo'] as String,
    );

Map<String, dynamic> _$obsContComplexType_infAdicToJson(
        obsContComplexType_infAdic instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xTexto': instance.xTexto,
      'xCampo': instance.xCampo,
    };

obsFiscoComplexType_infAdic _$obsFiscoComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    obsFiscoComplexType_infAdic(
      xmlns: json['xmlns'] as String?,
      xTexto: json['xTexto'] as String,
      xCampo: json['xCampo'] as String,
    );

Map<String, dynamic> _$obsFiscoComplexType_infAdicToJson(
        obsFiscoComplexType_infAdic instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xTexto': instance.xTexto,
      'xCampo': instance.xCampo,
    };

procRefComplexType_infAdic _$procRefComplexType_infAdicFromJson(
        Map<String, dynamic> json) =>
    procRefComplexType_infAdic(
      xmlns: json['xmlns'] as String?,
      nProc: json['nProc'] as String,
      indProc: _indProcEnumFromValue(json['indProc'] as String),
      tpAto: _tpAtoEnumFromMaybeValue(json['tpAto'] as String?),
    );

Map<String, dynamic> _$procRefComplexType_infAdicToJson(
        procRefComplexType_infAdic instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nProc': instance.nProc,
      'indProc': _indProcEnumToValue(instance.indProc),
      'tpAto': _tpAtoEnumToMaybeValue(instance.tpAto),
    };

forDiaComplexType_cana _$forDiaComplexType_canaFromJson(
        Map<String, dynamic> json) =>
    forDiaComplexType_cana(
      xmlns: json['xmlns'] as String?,
      qtde: json['qtde'] as String,
      dia: json['dia'] as String,
    );

Map<String, dynamic> _$forDiaComplexType_canaToJson(
        forDiaComplexType_cana instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'qtde': instance.qtde,
      'dia': instance.dia,
    };

deducComplexType_cana _$deducComplexType_canaFromJson(
        Map<String, dynamic> json) =>
    deducComplexType_cana(
      xmlns: json['xmlns'] as String?,
      xDed: json['xDed'] as String,
      vDed: json['vDed'] as String,
    );

Map<String, dynamic> _$deducComplexType_canaToJson(
        deducComplexType_cana instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xDed': instance.xDed,
      'vDed': instance.vDed,
    };

refNFComplexType_NFref _$refNFComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refNFComplexType_NFref(
      xmlns: json['xmlns'] as String?,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      AAMM: json['AAMM'] as String,
      CNPJ: json['CNPJ'] as String,
      mod: _modEnumFromValue(json['mod'] as String),
      serie: json['serie'] as String,
      nNF: json['nNF'] as String,
    );

Map<String, dynamic> _$refNFComplexType_NFrefToJson(
        refNFComplexType_NFref instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cUF': _cUFEnumToValue(instance.cUF),
      'AAMM': instance.AAMM,
      'CNPJ': instance.CNPJ,
      'mod': _modEnumToValue(instance.mod),
      'serie': instance.serie,
      'nNF': instance.nNF,
    };

refNFPComplexType_NFref _$refNFPComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refNFPComplexType_NFref(
      xmlns: json['xmlns'] as String?,
      cUF: _cUFEnumFromValue(json['cUF'] as String),
      AAMM: json['AAMM'] as String,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      IE: json['IE'] as String,
      mod: _modEnumFromValue(json['mod'] as String),
      serie: json['serie'] as String,
      nNF: json['nNF'] as String,
    );

Map<String, dynamic> _$refNFPComplexType_NFrefToJson(
        refNFPComplexType_NFref instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cUF': _cUFEnumToValue(instance.cUF),
      'AAMM': instance.AAMM,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'IE': instance.IE,
      'mod': _modEnumToValue(instance.mod),
      'serie': instance.serie,
      'nNF': instance.nNF,
    };

refECFComplexType_NFref _$refECFComplexType_NFrefFromJson(
        Map<String, dynamic> json) =>
    refECFComplexType_NFref(
      xmlns: json['xmlns'] as String?,
      mod: _modEnumFromValue(json['mod'] as String),
      nECF: json['nECF'] as String,
      nCOO: json['nCOO'] as String,
    );

Map<String, dynamic> _$refECFComplexType_NFrefToJson(
        refECFComplexType_NFref instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'mod': _modEnumToValue(instance.mod),
      'nECF': instance.nECF,
      'nCOO': instance.nCOO,
    };

DIComplexType_prod _$DIComplexType_prodFromJson(Map<String, dynamic> json) =>
    DIComplexType_prod(
      xmlns: json['xmlns'] as String?,
      nDI: json['nDI'] as String,
      dDI: json['dDI'] as String,
      xLocDesemb: json['xLocDesemb'] as String,
      UFDesemb: _UFDesembEnumFromValue(json['UFDesemb'] as String),
      dDesemb: json['dDesemb'] as String,
      tpViaTransp: _tpViaTranspEnumFromValue(json['tpViaTransp'] as String),
      vAFRMM: json['vAFRMM'] as String?,
      tpIntermedio: _tpIntermedioEnumFromValue(json['tpIntermedio'] as String),
      CNPJ: json['CNPJ'] as String?,
      UFTerceiro: _UFTerceiroEnumFromMaybeValue(json['UFTerceiro'] as String?),
      cExportador: json['cExportador'] as String,
      adi: _adiComplexType_DIListFromJson(json['adi'] as List),
    );

Map<String, dynamic> _$DIComplexType_prodToJson(DIComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nDI': instance.nDI,
      'dDI': instance.dDI,
      'xLocDesemb': instance.xLocDesemb,
      'UFDesemb': _UFDesembEnumToValue(instance.UFDesemb),
      'dDesemb': instance.dDesemb,
      'tpViaTransp': _tpViaTranspEnumToValue(instance.tpViaTransp),
      'vAFRMM': instance.vAFRMM,
      'tpIntermedio': _tpIntermedioEnumToValue(instance.tpIntermedio),
      'CNPJ': instance.CNPJ,
      'UFTerceiro': _UFTerceiroEnumToMaybeValue(instance.UFTerceiro),
      'cExportador': instance.cExportador,
      'adi': _adiComplexType_DIListToJson(instance.adi),
    };

detExportComplexType_prod _$detExportComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    detExportComplexType_prod(
      xmlns: json['xmlns'] as String?,
      nDraw: json['nDraw'] as String?,
      exportInd: _exportIndComplexType_detExportMaybeFromJson(
          json['exportInd'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$detExportComplexType_prodToJson(
        detExportComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nDraw': instance.nDraw,
      'exportInd':
          _exportIndComplexType_detExportMaybeToJson(instance.exportInd),
    };

rastroComplexType_prod _$rastroComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    rastroComplexType_prod(
      xmlns: json['xmlns'] as String?,
      nLote: json['nLote'] as String,
      qLote: json['qLote'] as String,
      dFab: json['dFab'] as String,
      dVal: json['dVal'] as String,
      cAgreg: json['cAgreg'] as String?,
    );

Map<String, dynamic> _$rastroComplexType_prodToJson(
        rastroComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nLote': instance.nLote,
      'qLote': instance.qLote,
      'dFab': instance.dFab,
      'dVal': instance.dVal,
      'cAgreg': instance.cAgreg,
    };

infProdNFFComplexType_prod _$infProdNFFComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    infProdNFFComplexType_prod(
      xmlns: json['xmlns'] as String?,
      cProdFisco: json['cProdFisco'] as String,
      cOperNFF: json['cOperNFF'] as String,
    );

Map<String, dynamic> _$infProdNFFComplexType_prodToJson(
        infProdNFFComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cProdFisco': instance.cProdFisco,
      'cOperNFF': instance.cOperNFF,
    };

infProdEmbComplexType_prod _$infProdEmbComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    infProdEmbComplexType_prod(
      xmlns: json['xmlns'] as String?,
      xEmb: json['xEmb'] as String,
      qVolEmb: json['qVolEmb'] as String,
      uEmb: json['uEmb'] as String,
    );

Map<String, dynamic> _$infProdEmbComplexType_prodToJson(
        infProdEmbComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xEmb': instance.xEmb,
      'qVolEmb': instance.qVolEmb,
      'uEmb': instance.uEmb,
    };

veicProdComplexType_prod _$veicProdComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    veicProdComplexType_prod(
      xmlns: json['xmlns'] as String?,
      tpOp: _tpOpEnumFromValue(json['tpOp'] as String),
      chassi: json['chassi'] as String,
      cCor: json['cCor'] as String,
      xCor: json['xCor'] as String,
      pot: json['pot'] as String,
      cilin: json['cilin'] as String,
      pesoL: json['pesoL'] as String,
      pesoB: json['pesoB'] as String,
      nSerie: json['nSerie'] as String,
      tpComb: json['tpComb'] as String,
      nMotor: json['nMotor'] as String,
      CMT: json['CMT'] as String,
      dist: json['dist'] as String,
      anoMod: json['anoMod'] as String,
      anoFab: json['anoFab'] as String,
      tpPint: json['tpPint'] as String,
      tpVeic: json['tpVeic'] as String,
      espVeic: json['espVeic'] as String,
      VIN: _VINEnumFromValue(json['VIN'] as String),
      condVeic: _condVeicEnumFromValue(json['condVeic'] as String),
      cMod: json['cMod'] as String,
      cCorDENATRAN: json['cCorDENATRAN'] as String,
      lota: json['lota'] as String,
      tpRest: _tpRestEnumFromValue(json['tpRest'] as String),
    );

Map<String, dynamic> _$veicProdComplexType_prodToJson(
        veicProdComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpOp': _tpOpEnumToValue(instance.tpOp),
      'chassi': instance.chassi,
      'cCor': instance.cCor,
      'xCor': instance.xCor,
      'pot': instance.pot,
      'cilin': instance.cilin,
      'pesoL': instance.pesoL,
      'pesoB': instance.pesoB,
      'nSerie': instance.nSerie,
      'tpComb': instance.tpComb,
      'nMotor': instance.nMotor,
      'CMT': instance.CMT,
      'dist': instance.dist,
      'anoMod': instance.anoMod,
      'anoFab': instance.anoFab,
      'tpPint': instance.tpPint,
      'tpVeic': instance.tpVeic,
      'espVeic': instance.espVeic,
      'VIN': _VINEnumToValue(instance.VIN),
      'condVeic': _condVeicEnumToValue(instance.condVeic),
      'cMod': instance.cMod,
      'cCorDENATRAN': instance.cCorDENATRAN,
      'lota': instance.lota,
      'tpRest': _tpRestEnumToValue(instance.tpRest),
    };

medComplexType_prod _$medComplexType_prodFromJson(Map<String, dynamic> json) =>
    medComplexType_prod(
      xmlns: json['xmlns'] as String?,
      cProdANVISA: json['cProdANVISA'] as String,
      xMotivoIsencao: json['xMotivoIsencao'] as String?,
      vPMC: json['vPMC'] as String,
    );

Map<String, dynamic> _$medComplexType_prodToJson(
        medComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cProdANVISA': instance.cProdANVISA,
      'xMotivoIsencao': instance.xMotivoIsencao,
      'vPMC': instance.vPMC,
    };

armaComplexType_prod _$armaComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    armaComplexType_prod(
      xmlns: json['xmlns'] as String?,
      tpArma: _tpArmaEnumFromValue(json['tpArma'] as String),
      nSerie: json['nSerie'] as String,
      nCano: json['nCano'] as String,
      descr: json['descr'] as String,
    );

Map<String, dynamic> _$armaComplexType_prodToJson(
        armaComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpArma': _tpArmaEnumToValue(instance.tpArma),
      'nSerie': instance.nSerie,
      'nCano': instance.nCano,
      'descr': instance.descr,
    };

combComplexType_prod _$combComplexType_prodFromJson(
        Map<String, dynamic> json) =>
    combComplexType_prod(
      xmlns: json['xmlns'] as String?,
      cProdANP: json['cProdANP'] as String,
      descANP: json['descANP'] as String,
      pGLP: json['pGLP'] as String?,
      pGNn: json['pGNn'] as String?,
      pGNi: json['pGNi'] as String?,
      vPart: json['vPart'] as String?,
      CODIF: json['CODIF'] as String?,
      qTemp: json['qTemp'] as String?,
      UFCons: _UFConsEnumFromValue(json['UFCons'] as String),
      CIDE: _CIDEComplexType_combMaybeFromJson(
          json['CIDE'] as Map<String, dynamic>?),
      encerrante: _encerranteComplexType_combMaybeFromJson(
          json['encerrante'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$combComplexType_prodToJson(
        combComplexType_prod instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'cProdANP': instance.cProdANP,
      'descANP': instance.descANP,
      'pGLP': instance.pGLP,
      'pGNn': instance.pGNn,
      'pGNi': instance.pGNi,
      'vPart': instance.vPart,
      'CODIF': instance.CODIF,
      'qTemp': instance.qTemp,
      'UFCons': _UFConsEnumToValue(instance.UFCons),
      'CIDE': _CIDEComplexType_combMaybeToJson(instance.CIDE),
      'encerrante': _encerranteComplexType_combMaybeToJson(instance.encerrante),
    };

ICMSComplexType_imposto _$ICMSComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ICMSComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      ICMS00: _ICMS00ComplexType_ICMSMaybeFromJson(
          json['ICMS00'] as Map<String, dynamic>?),
      ICMS10: _ICMS10ComplexType_ICMSMaybeFromJson(
          json['ICMS10'] as Map<String, dynamic>?),
      ICMS20: _ICMS20ComplexType_ICMSMaybeFromJson(
          json['ICMS20'] as Map<String, dynamic>?),
      ICMS30: _ICMS30ComplexType_ICMSMaybeFromJson(
          json['ICMS30'] as Map<String, dynamic>?),
      ICMS40: _ICMS40ComplexType_ICMSMaybeFromJson(
          json['ICMS40'] as Map<String, dynamic>?),
      ICMS51: _ICMS51ComplexType_ICMSMaybeFromJson(
          json['ICMS51'] as Map<String, dynamic>?),
      ICMS60: _ICMS60ComplexType_ICMSMaybeFromJson(
          json['ICMS60'] as Map<String, dynamic>?),
      ICMS70: _ICMS70ComplexType_ICMSMaybeFromJson(
          json['ICMS70'] as Map<String, dynamic>?),
      ICMS90: _ICMS90ComplexType_ICMSMaybeFromJson(
          json['ICMS90'] as Map<String, dynamic>?),
      ICMSPart: _ICMSPartComplexType_ICMSMaybeFromJson(
          json['ICMSPart'] as Map<String, dynamic>?),
      ICMSST: _ICMSSTComplexType_ICMSMaybeFromJson(
          json['ICMSST'] as Map<String, dynamic>?),
      ICMSSN101: _ICMSSN101ComplexType_ICMSMaybeFromJson(
          json['ICMSSN101'] as Map<String, dynamic>?),
      ICMSSN102: _ICMSSN102ComplexType_ICMSMaybeFromJson(
          json['ICMSSN102'] as Map<String, dynamic>?),
      ICMSSN201: _ICMSSN201ComplexType_ICMSMaybeFromJson(
          json['ICMSSN201'] as Map<String, dynamic>?),
      ICMSSN202: _ICMSSN202ComplexType_ICMSMaybeFromJson(
          json['ICMSSN202'] as Map<String, dynamic>?),
      ICMSSN500: _ICMSSN500ComplexType_ICMSMaybeFromJson(
          json['ICMSSN500'] as Map<String, dynamic>?),
      ICMSSN900: _ICMSSN900ComplexType_ICMSMaybeFromJson(
          json['ICMSSN900'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$ICMSComplexType_impostoToJson(
        ICMSComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'ICMS00': _ICMS00ComplexType_ICMSMaybeToJson(instance.ICMS00),
      'ICMS10': _ICMS10ComplexType_ICMSMaybeToJson(instance.ICMS10),
      'ICMS20': _ICMS20ComplexType_ICMSMaybeToJson(instance.ICMS20),
      'ICMS30': _ICMS30ComplexType_ICMSMaybeToJson(instance.ICMS30),
      'ICMS40': _ICMS40ComplexType_ICMSMaybeToJson(instance.ICMS40),
      'ICMS51': _ICMS51ComplexType_ICMSMaybeToJson(instance.ICMS51),
      'ICMS60': _ICMS60ComplexType_ICMSMaybeToJson(instance.ICMS60),
      'ICMS70': _ICMS70ComplexType_ICMSMaybeToJson(instance.ICMS70),
      'ICMS90': _ICMS90ComplexType_ICMSMaybeToJson(instance.ICMS90),
      'ICMSPart': _ICMSPartComplexType_ICMSMaybeToJson(instance.ICMSPart),
      'ICMSST': _ICMSSTComplexType_ICMSMaybeToJson(instance.ICMSST),
      'ICMSSN101': _ICMSSN101ComplexType_ICMSMaybeToJson(instance.ICMSSN101),
      'ICMSSN102': _ICMSSN102ComplexType_ICMSMaybeToJson(instance.ICMSSN102),
      'ICMSSN201': _ICMSSN201ComplexType_ICMSMaybeToJson(instance.ICMSSN201),
      'ICMSSN202': _ICMSSN202ComplexType_ICMSMaybeToJson(instance.ICMSSN202),
      'ICMSSN500': _ICMSSN500ComplexType_ICMSMaybeToJson(instance.ICMSSN500),
      'ICMSSN900': _ICMSSN900ComplexType_ICMSMaybeToJson(instance.ICMSSN900),
    };

IIComplexType_imposto _$IIComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    IIComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      vBC: json['vBC'] as String,
      vDespAdu: json['vDespAdu'] as String,
      vII: json['vII'] as String,
      vIOF: json['vIOF'] as String,
    );

Map<String, dynamic> _$IIComplexType_impostoToJson(
        IIComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBC': instance.vBC,
      'vDespAdu': instance.vDespAdu,
      'vII': instance.vII,
      'vIOF': instance.vIOF,
    };

ISSQNComplexType_imposto _$ISSQNComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ISSQNComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      vBC: json['vBC'] as String,
      vAliq: json['vAliq'] as String,
      vISSQN: json['vISSQN'] as String,
      cMunFG: json['cMunFG'] as String,
      cListServ: json['cListServ'] as String,
      vDeducao: json['vDeducao'] as String?,
      vOutro: json['vOutro'] as String?,
      vDescIncond: json['vDescIncond'] as String?,
      vDescCond: json['vDescCond'] as String?,
      vISSRet: json['vISSRet'] as String?,
      indISS: _indISSEnumFromValue(json['indISS'] as String),
      cServico: json['cServico'] as String?,
      cMun: json['cMun'] as String?,
      cPais: json['cPais'] as String?,
      nProcesso: json['nProcesso'] as String?,
      indIncentivo: _indIncentivoEnumFromValue(json['indIncentivo'] as String),
    );

Map<String, dynamic> _$ISSQNComplexType_impostoToJson(
        ISSQNComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBC': instance.vBC,
      'vAliq': instance.vAliq,
      'vISSQN': instance.vISSQN,
      'cMunFG': instance.cMunFG,
      'cListServ': instance.cListServ,
      'vDeducao': instance.vDeducao,
      'vOutro': instance.vOutro,
      'vDescIncond': instance.vDescIncond,
      'vDescCond': instance.vDescCond,
      'vISSRet': instance.vISSRet,
      'indISS': _indISSEnumToValue(instance.indISS),
      'cServico': instance.cServico,
      'cMun': instance.cMun,
      'cPais': instance.cPais,
      'nProcesso': instance.nProcesso,
      'indIncentivo': _indIncentivoEnumToValue(instance.indIncentivo),
    };

PISComplexType_imposto _$PISComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    PISComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      PISAliq: _PISAliqComplexType_PISMaybeFromJson(
          json['PISAliq'] as Map<String, dynamic>?),
      PISQtde: _PISQtdeComplexType_PISMaybeFromJson(
          json['PISQtde'] as Map<String, dynamic>?),
      PISNT: _PISNTComplexType_PISMaybeFromJson(
          json['PISNT'] as Map<String, dynamic>?),
      PISOutr: _PISOutrComplexType_PISMaybeFromJson(
          json['PISOutr'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$PISComplexType_impostoToJson(
        PISComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'PISAliq': _PISAliqComplexType_PISMaybeToJson(instance.PISAliq),
      'PISQtde': _PISQtdeComplexType_PISMaybeToJson(instance.PISQtde),
      'PISNT': _PISNTComplexType_PISMaybeToJson(instance.PISNT),
      'PISOutr': _PISOutrComplexType_PISMaybeToJson(instance.PISOutr),
    };

PISSTComplexType_imposto _$PISSTComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    PISSTComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      vBC: json['vBC'] as String?,
      pPIS: json['pPIS'] as String?,
      qBCProd: json['qBCProd'] as String?,
      vAliqProd: json['vAliqProd'] as String?,
      vPIS: json['vPIS'] as String,
      indSomaPISST:
          _indSomaPISSTEnumFromMaybeValue(json['indSomaPISST'] as String?),
    );

Map<String, dynamic> _$PISSTComplexType_impostoToJson(
        PISSTComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBC': instance.vBC,
      'pPIS': instance.pPIS,
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vPIS': instance.vPIS,
      'indSomaPISST': _indSomaPISSTEnumToMaybeValue(instance.indSomaPISST),
    };

COFINSComplexType_imposto _$COFINSComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    COFINSComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      COFINSAliq: _COFINSAliqComplexType_COFINSMaybeFromJson(
          json['COFINSAliq'] as Map<String, dynamic>?),
      COFINSQtde: _COFINSQtdeComplexType_COFINSMaybeFromJson(
          json['COFINSQtde'] as Map<String, dynamic>?),
      COFINSNT: _COFINSNTComplexType_COFINSMaybeFromJson(
          json['COFINSNT'] as Map<String, dynamic>?),
      COFINSOutr: _COFINSOutrComplexType_COFINSMaybeFromJson(
          json['COFINSOutr'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$COFINSComplexType_impostoToJson(
        COFINSComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'COFINSAliq':
          _COFINSAliqComplexType_COFINSMaybeToJson(instance.COFINSAliq),
      'COFINSQtde':
          _COFINSQtdeComplexType_COFINSMaybeToJson(instance.COFINSQtde),
      'COFINSNT': _COFINSNTComplexType_COFINSMaybeToJson(instance.COFINSNT),
      'COFINSOutr':
          _COFINSOutrComplexType_COFINSMaybeToJson(instance.COFINSOutr),
    };

COFINSSTComplexType_imposto _$COFINSSTComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    COFINSSTComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      vBC: json['vBC'] as String?,
      pCOFINS: json['pCOFINS'] as String?,
      qBCProd: json['qBCProd'] as String?,
      vAliqProd: json['vAliqProd'] as String?,
      vCOFINS: json['vCOFINS'] as String,
      indSomaCOFINSST: _indSomaCOFINSSTEnumFromMaybeValue(
          json['indSomaCOFINSST'] as String?),
    );

Map<String, dynamic> _$COFINSSTComplexType_impostoToJson(
        COFINSSTComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBC': instance.vBC,
      'pCOFINS': instance.pCOFINS,
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vCOFINS': instance.vCOFINS,
      'indSomaCOFINSST':
          _indSomaCOFINSSTEnumToMaybeValue(instance.indSomaCOFINSST),
    };

ICMSUFDestComplexType_imposto _$ICMSUFDestComplexType_impostoFromJson(
        Map<String, dynamic> json) =>
    ICMSUFDestComplexType_imposto(
      xmlns: json['xmlns'] as String?,
      vBCUFDest: json['vBCUFDest'] as String,
      vBCFCPUFDest: json['vBCFCPUFDest'] as String?,
      pFCPUFDest: json['pFCPUFDest'] as String?,
      pICMSUFDest: json['pICMSUFDest'] as String,
      pICMSInter: _pICMSInterEnumFromValue(json['pICMSInter'] as String),
      pICMSInterPart: json['pICMSInterPart'] as String,
      vFCPUFDest: json['vFCPUFDest'] as String?,
      vICMSUFDest: json['vICMSUFDest'] as String,
      vICMSUFRemet: json['vICMSUFRemet'] as String,
    );

Map<String, dynamic> _$ICMSUFDestComplexType_impostoToJson(
        ICMSUFDestComplexType_imposto instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vBCUFDest': instance.vBCUFDest,
      'vBCFCPUFDest': instance.vBCFCPUFDest,
      'pFCPUFDest': instance.pFCPUFDest,
      'pICMSUFDest': instance.pICMSUFDest,
      'pICMSInter': _pICMSInterEnumToValue(instance.pICMSInter),
      'pICMSInterPart': instance.pICMSInterPart,
      'vFCPUFDest': instance.vFCPUFDest,
      'vICMSUFDest': instance.vICMSUFDest,
      'vICMSUFRemet': instance.vICMSUFRemet,
    };

IPIComplexType_impostoDevol _$IPIComplexType_impostoDevolFromJson(
        Map<String, dynamic> json) =>
    IPIComplexType_impostoDevol(
      xmlns: json['xmlns'] as String?,
      vIPIDevol: json['vIPIDevol'] as String,
    );

Map<String, dynamic> _$IPIComplexType_impostoDevolToJson(
        IPIComplexType_impostoDevol instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'vIPIDevol': instance.vIPIDevol,
    };

obsContComplexType_obsItem _$obsContComplexType_obsItemFromJson(
        Map<String, dynamic> json) =>
    obsContComplexType_obsItem(
      xmlns: json['xmlns'] as String?,
      xTexto: json['xTexto'] as String,
      xCampo: json['xCampo'] as String,
    );

Map<String, dynamic> _$obsContComplexType_obsItemToJson(
        obsContComplexType_obsItem instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xTexto': instance.xTexto,
      'xCampo': instance.xCampo,
    };

obsFiscoComplexType_obsItem _$obsFiscoComplexType_obsItemFromJson(
        Map<String, dynamic> json) =>
    obsFiscoComplexType_obsItem(
      xmlns: json['xmlns'] as String?,
      xTexto: json['xTexto'] as String,
      xCampo: json['xCampo'] as String,
    );

Map<String, dynamic> _$obsFiscoComplexType_obsItemToJson(
        obsFiscoComplexType_obsItem instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xTexto': instance.xTexto,
      'xCampo': instance.xCampo,
    };

lacresComplexType_vol _$lacresComplexType_volFromJson(
        Map<String, dynamic> json) =>
    lacresComplexType_vol(
      xmlns: json['xmlns'] as String?,
      nLacre: json['nLacre'] as String,
    );

Map<String, dynamic> _$lacresComplexType_volToJson(
        lacresComplexType_vol instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nLacre': instance.nLacre,
    };

cardComplexType_detPag _$cardComplexType_detPagFromJson(
        Map<String, dynamic> json) =>
    cardComplexType_detPag(
      xmlns: json['xmlns'] as String?,
      tpIntegra: _tpIntegraEnumFromValue(json['tpIntegra'] as String),
      CNPJ: json['CNPJ'] as String?,
      tBand: json['tBand'] as String?,
      cAut: json['cAut'] as String?,
    );

Map<String, dynamic> _$cardComplexType_detPagToJson(
        cardComplexType_detPag instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'tpIntegra': _tpIntegraEnumToValue(instance.tpIntegra),
      'CNPJ': instance.CNPJ,
      'tBand': instance.tBand,
      'cAut': instance.cAut,
    };

adiComplexType_DI _$adiComplexType_DIFromJson(Map<String, dynamic> json) =>
    adiComplexType_DI(
      xmlns: json['xmlns'] as String?,
      nAdicao: json['nAdicao'] as String?,
      nSeqAdic: json['nSeqAdic'] as String,
      cFabricante: json['cFabricante'] as String,
      vDescDI: json['vDescDI'] as String?,
      nDraw: json['nDraw'] as String?,
    );

Map<String, dynamic> _$adiComplexType_DIToJson(adiComplexType_DI instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nAdicao': instance.nAdicao,
      'nSeqAdic': instance.nSeqAdic,
      'cFabricante': instance.cFabricante,
      'vDescDI': instance.vDescDI,
      'nDraw': instance.nDraw,
    };

exportIndComplexType_detExport _$exportIndComplexType_detExportFromJson(
        Map<String, dynamic> json) =>
    exportIndComplexType_detExport(
      xmlns: json['xmlns'] as String?,
      nRE: json['nRE'] as String,
      chNFe: json['chNFe'] as String,
      qExport: json['qExport'] as String,
    );

Map<String, dynamic> _$exportIndComplexType_detExportToJson(
        exportIndComplexType_detExport instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nRE': instance.nRE,
      'chNFe': instance.chNFe,
      'qExport': instance.qExport,
    };

CIDEComplexType_comb _$CIDEComplexType_combFromJson(
        Map<String, dynamic> json) =>
    CIDEComplexType_comb(
      xmlns: json['xmlns'] as String?,
      qBCProd: json['qBCProd'] as String,
      vAliqProd: json['vAliqProd'] as String,
      vCIDE: json['vCIDE'] as String,
    );

Map<String, dynamic> _$CIDEComplexType_combToJson(
        CIDEComplexType_comb instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vCIDE': instance.vCIDE,
    };

encerranteComplexType_comb _$encerranteComplexType_combFromJson(
        Map<String, dynamic> json) =>
    encerranteComplexType_comb(
      xmlns: json['xmlns'] as String?,
      nBico: json['nBico'] as String,
      nBomba: json['nBomba'] as String?,
      nTanque: json['nTanque'] as String,
      vEncIni: json['vEncIni'] as String,
      vEncFin: json['vEncFin'] as String,
    );

Map<String, dynamic> _$encerranteComplexType_combToJson(
        encerranteComplexType_comb instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'nBico': instance.nBico,
      'nBomba': instance.nBomba,
      'nTanque': instance.nTanque,
      'vEncIni': instance.vEncIni,
      'vEncFin': instance.vEncFin,
    };

ICMS00ComplexType_ICMS _$ICMS00ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS00ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromValue(json['modBC'] as String),
      vBC: json['vBC'] as String,
      pICMS: json['pICMS'] as String,
      vICMS: json['vICMS'] as String,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
    );

Map<String, dynamic> _$ICMS00ComplexType_ICMSToJson(
        ICMS00ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToValue(instance.modBC),
      'vBC': instance.vBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
    };

ICMS10ComplexType_ICMS _$ICMS10ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS10ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromValue(json['modBC'] as String),
      vBC: json['vBC'] as String,
      pICMS: json['pICMS'] as String,
      vICMS: json['vICMS'] as String,
      vBCFCP: json['vBCFCP'] as String?,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      vICMSSTDeson: json['vICMSSTDeson'] as String?,
      motDesICMSST:
          _motDesICMSSTEnumFromMaybeValue(json['motDesICMSST'] as String?),
    );

Map<String, dynamic> _$ICMS10ComplexType_ICMSToJson(
        ICMS10ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToValue(instance.modBC),
      'vBC': instance.vBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'vBCFCP': instance.vBCFCP,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'vICMSSTDeson': instance.vICMSSTDeson,
      'motDesICMSST': _motDesICMSSTEnumToMaybeValue(instance.motDesICMSST),
    };

ICMS20ComplexType_ICMS _$ICMS20ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS20ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromValue(json['modBC'] as String),
      pRedBC: json['pRedBC'] as String,
      vBC: json['vBC'] as String,
      pICMS: json['pICMS'] as String,
      vICMS: json['vICMS'] as String,
      vBCFCP: json['vBCFCP'] as String?,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
      vICMSDeson: json['vICMSDeson'] as String?,
      motDesICMS: _motDesICMSEnumFromMaybeValue(json['motDesICMS'] as String?),
    );

Map<String, dynamic> _$ICMS20ComplexType_ICMSToJson(
        ICMS20ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToValue(instance.modBC),
      'pRedBC': instance.pRedBC,
      'vBC': instance.vBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'vBCFCP': instance.vBCFCP,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
      'vICMSDeson': instance.vICMSDeson,
      'motDesICMS': _motDesICMSEnumToMaybeValue(instance.motDesICMS),
    };

ICMS30ComplexType_ICMS _$ICMS30ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS30ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      vICMSDeson: json['vICMSDeson'] as String?,
      motDesICMS: _motDesICMSEnumFromMaybeValue(json['motDesICMS'] as String?),
    );

Map<String, dynamic> _$ICMS30ComplexType_ICMSToJson(
        ICMS30ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'vICMSDeson': instance.vICMSDeson,
      'motDesICMS': _motDesICMSEnumToMaybeValue(instance.motDesICMS),
    };

ICMS40ComplexType_ICMS _$ICMS40ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS40ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      vICMSDeson: json['vICMSDeson'] as String?,
      motDesICMS: _motDesICMSEnumFromMaybeValue(json['motDesICMS'] as String?),
    );

Map<String, dynamic> _$ICMS40ComplexType_ICMSToJson(
        ICMS40ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'vICMSDeson': instance.vICMSDeson,
      'motDesICMS': _motDesICMSEnumToMaybeValue(instance.motDesICMS),
    };

ICMS51ComplexType_ICMS _$ICMS51ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS51ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromMaybeValue(json['modBC'] as String?),
      pRedBC: json['pRedBC'] as String?,
      vBC: json['vBC'] as String?,
      pICMS: json['pICMS'] as String?,
      vICMSOp: json['vICMSOp'] as String?,
      pDif: json['pDif'] as String?,
      vICMSDif: json['vICMSDif'] as String?,
      vICMS: json['vICMS'] as String?,
      vBCFCP: json['vBCFCP'] as String?,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
      pFCPDif: json['pFCPDif'] as String?,
      vFCPDif: json['vFCPDif'] as String?,
      vFCPEfet: json['vFCPEfet'] as String?,
    );

Map<String, dynamic> _$ICMS51ComplexType_ICMSToJson(
        ICMS51ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToMaybeValue(instance.modBC),
      'pRedBC': instance.pRedBC,
      'vBC': instance.vBC,
      'pICMS': instance.pICMS,
      'vICMSOp': instance.vICMSOp,
      'pDif': instance.pDif,
      'vICMSDif': instance.vICMSDif,
      'vICMS': instance.vICMS,
      'vBCFCP': instance.vBCFCP,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
      'pFCPDif': instance.pFCPDif,
      'vFCPDif': instance.vFCPDif,
      'vFCPEfet': instance.vFCPEfet,
    };

ICMS60ComplexType_ICMS _$ICMS60ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS60ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBCSTRet: json['vBCSTRet'] as String?,
      pST: json['pST'] as String?,
      vICMSSubstituto: json['vICMSSubstituto'] as String?,
      vICMSSTRet: json['vICMSSTRet'] as String?,
      vBCFCPSTRet: json['vBCFCPSTRet'] as String?,
      pFCPSTRet: json['pFCPSTRet'] as String?,
      vFCPSTRet: json['vFCPSTRet'] as String?,
      pRedBCEfet: json['pRedBCEfet'] as String?,
      vBCEfet: json['vBCEfet'] as String?,
      pICMSEfet: json['pICMSEfet'] as String?,
      vICMSEfet: json['vICMSEfet'] as String?,
    );

Map<String, dynamic> _$ICMS60ComplexType_ICMSToJson(
        ICMS60ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'vBCSTRet': instance.vBCSTRet,
      'pST': instance.pST,
      'vICMSSubstituto': instance.vICMSSubstituto,
      'vICMSSTRet': instance.vICMSSTRet,
      'vBCFCPSTRet': instance.vBCFCPSTRet,
      'pFCPSTRet': instance.pFCPSTRet,
      'vFCPSTRet': instance.vFCPSTRet,
      'pRedBCEfet': instance.pRedBCEfet,
      'vBCEfet': instance.vBCEfet,
      'pICMSEfet': instance.pICMSEfet,
      'vICMSEfet': instance.vICMSEfet,
    };

ICMS70ComplexType_ICMS _$ICMS70ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS70ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromValue(json['modBC'] as String),
      pRedBC: json['pRedBC'] as String,
      vBC: json['vBC'] as String,
      pICMS: json['pICMS'] as String,
      vICMS: json['vICMS'] as String,
      vBCFCP: json['vBCFCP'] as String?,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      vICMSDeson: json['vICMSDeson'] as String?,
      motDesICMS: _motDesICMSEnumFromMaybeValue(json['motDesICMS'] as String?),
      vICMSSTDeson: json['vICMSSTDeson'] as String?,
      motDesICMSST:
          _motDesICMSSTEnumFromMaybeValue(json['motDesICMSST'] as String?),
    );

Map<String, dynamic> _$ICMS70ComplexType_ICMSToJson(
        ICMS70ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToValue(instance.modBC),
      'pRedBC': instance.pRedBC,
      'vBC': instance.vBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'vBCFCP': instance.vBCFCP,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'vICMSDeson': instance.vICMSDeson,
      'motDesICMS': _motDesICMSEnumToMaybeValue(instance.motDesICMS),
      'vICMSSTDeson': instance.vICMSSTDeson,
      'motDesICMSST': _motDesICMSSTEnumToMaybeValue(instance.motDesICMSST),
    };

ICMS90ComplexType_ICMS _$ICMS90ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMS90ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromMaybeValue(json['modBC'] as String?),
      vBC: json['vBC'] as String?,
      pRedBC: json['pRedBC'] as String?,
      pICMS: json['pICMS'] as String?,
      vICMS: json['vICMS'] as String?,
      vBCFCP: json['vBCFCP'] as String?,
      pFCP: json['pFCP'] as String?,
      vFCP: json['vFCP'] as String?,
      modBCST: _modBCSTEnumFromMaybeValue(json['modBCST'] as String?),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String?,
      pICMSST: json['pICMSST'] as String?,
      vICMSST: json['vICMSST'] as String?,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      vICMSDeson: json['vICMSDeson'] as String?,
      motDesICMS: _motDesICMSEnumFromMaybeValue(json['motDesICMS'] as String?),
      vICMSSTDeson: json['vICMSSTDeson'] as String?,
      motDesICMSST:
          _motDesICMSSTEnumFromMaybeValue(json['motDesICMSST'] as String?),
    );

Map<String, dynamic> _$ICMS90ComplexType_ICMSToJson(
        ICMS90ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToMaybeValue(instance.modBC),
      'vBC': instance.vBC,
      'pRedBC': instance.pRedBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'vBCFCP': instance.vBCFCP,
      'pFCP': instance.pFCP,
      'vFCP': instance.vFCP,
      'modBCST': _modBCSTEnumToMaybeValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'vICMSDeson': instance.vICMSDeson,
      'motDesICMS': _motDesICMSEnumToMaybeValue(instance.motDesICMS),
      'vICMSSTDeson': instance.vICMSSTDeson,
      'motDesICMSST': _motDesICMSSTEnumToMaybeValue(instance.motDesICMSST),
    };

ICMSPartComplexType_ICMS _$ICMSPartComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSPartComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      modBC: _modBCEnumFromValue(json['modBC'] as String),
      vBC: json['vBC'] as String,
      pRedBC: json['pRedBC'] as String?,
      pICMS: json['pICMS'] as String,
      vICMS: json['vICMS'] as String,
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      pBCOp: json['pBCOp'] as String,
      UFST: _UFSTEnumFromValue(json['UFST'] as String),
    );

Map<String, dynamic> _$ICMSPartComplexType_ICMSToJson(
        ICMSPartComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'modBC': _modBCEnumToValue(instance.modBC),
      'vBC': instance.vBC,
      'pRedBC': instance.pRedBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'pBCOp': instance.pBCOp,
      'UFST': _UFSTEnumToValue(instance.UFST),
    };

ICMSSTComplexType_ICMS _$ICMSSTComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSTComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBCSTRet: json['vBCSTRet'] as String,
      pST: json['pST'] as String?,
      vICMSSubstituto: json['vICMSSubstituto'] as String?,
      vICMSSTRet: json['vICMSSTRet'] as String,
      vBCFCPSTRet: json['vBCFCPSTRet'] as String?,
      pFCPSTRet: json['pFCPSTRet'] as String?,
      vFCPSTRet: json['vFCPSTRet'] as String?,
      vBCSTDest: json['vBCSTDest'] as String,
      vICMSSTDest: json['vICMSSTDest'] as String,
      pRedBCEfet: json['pRedBCEfet'] as String?,
      vBCEfet: json['vBCEfet'] as String?,
      pICMSEfet: json['pICMSEfet'] as String?,
      vICMSEfet: json['vICMSEfet'] as String?,
    );

Map<String, dynamic> _$ICMSSTComplexType_ICMSToJson(
        ICMSSTComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CST': _CSTEnumToValue(instance.CST),
      'vBCSTRet': instance.vBCSTRet,
      'pST': instance.pST,
      'vICMSSubstituto': instance.vICMSSubstituto,
      'vICMSSTRet': instance.vICMSSTRet,
      'vBCFCPSTRet': instance.vBCFCPSTRet,
      'pFCPSTRet': instance.pFCPSTRet,
      'vFCPSTRet': instance.vFCPSTRet,
      'vBCSTDest': instance.vBCSTDest,
      'vICMSSTDest': instance.vICMSSTDest,
      'pRedBCEfet': instance.pRedBCEfet,
      'vBCEfet': instance.vBCEfet,
      'pICMSEfet': instance.pICMSEfet,
      'vICMSEfet': instance.vICMSEfet,
    };

ICMSSN101ComplexType_ICMS _$ICMSSN101ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN101ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
      pCredSN: json['pCredSN'] as String,
      vCredICMSSN: json['vCredICMSSN'] as String,
    );

Map<String, dynamic> _$ICMSSN101ComplexType_ICMSToJson(
        ICMSSN101ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
      'pCredSN': instance.pCredSN,
      'vCredICMSSN': instance.vCredICMSSN,
    };

ICMSSN102ComplexType_ICMS _$ICMSSN102ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN102ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
    );

Map<String, dynamic> _$ICMSSN102ComplexType_ICMSToJson(
        ICMSSN102ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
    };

ICMSSN201ComplexType_ICMS _$ICMSSN201ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN201ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      pCredSN: json['pCredSN'] as String,
      vCredICMSSN: json['vCredICMSSN'] as String,
    );

Map<String, dynamic> _$ICMSSN201ComplexType_ICMSToJson(
        ICMSSN201ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'pCredSN': instance.pCredSN,
      'vCredICMSSN': instance.vCredICMSSN,
    };

ICMSSN202ComplexType_ICMS _$ICMSSN202ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN202ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
      modBCST: _modBCSTEnumFromValue(json['modBCST'] as String),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String,
      pICMSST: json['pICMSST'] as String,
      vICMSST: json['vICMSST'] as String,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
    );

Map<String, dynamic> _$ICMSSN202ComplexType_ICMSToJson(
        ICMSSN202ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
      'modBCST': _modBCSTEnumToValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
    };

ICMSSN500ComplexType_ICMS _$ICMSSN500ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN500ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
      vBCSTRet: json['vBCSTRet'] as String?,
      pST: json['pST'] as String?,
      vICMSSubstituto: json['vICMSSubstituto'] as String?,
      vICMSSTRet: json['vICMSSTRet'] as String?,
      vBCFCPSTRet: json['vBCFCPSTRet'] as String?,
      pFCPSTRet: json['pFCPSTRet'] as String?,
      vFCPSTRet: json['vFCPSTRet'] as String?,
      pRedBCEfet: json['pRedBCEfet'] as String?,
      vBCEfet: json['vBCEfet'] as String?,
      pICMSEfet: json['pICMSEfet'] as String?,
      vICMSEfet: json['vICMSEfet'] as String?,
    );

Map<String, dynamic> _$ICMSSN500ComplexType_ICMSToJson(
        ICMSSN500ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
      'vBCSTRet': instance.vBCSTRet,
      'pST': instance.pST,
      'vICMSSubstituto': instance.vICMSSubstituto,
      'vICMSSTRet': instance.vICMSSTRet,
      'vBCFCPSTRet': instance.vBCFCPSTRet,
      'pFCPSTRet': instance.pFCPSTRet,
      'vFCPSTRet': instance.vFCPSTRet,
      'pRedBCEfet': instance.pRedBCEfet,
      'vBCEfet': instance.vBCEfet,
      'pICMSEfet': instance.pICMSEfet,
      'vICMSEfet': instance.vICMSEfet,
    };

ICMSSN900ComplexType_ICMS _$ICMSSN900ComplexType_ICMSFromJson(
        Map<String, dynamic> json) =>
    ICMSSN900ComplexType_ICMS(
      xmlns: json['xmlns'] as String?,
      orig: _origEnumFromValue(json['orig'] as String),
      CSOSN: _CSOSNEnumFromValue(json['CSOSN'] as String),
      modBC: _modBCEnumFromMaybeValue(json['modBC'] as String?),
      vBC: json['vBC'] as String?,
      pRedBC: json['pRedBC'] as String?,
      pICMS: json['pICMS'] as String?,
      vICMS: json['vICMS'] as String?,
      modBCST: _modBCSTEnumFromMaybeValue(json['modBCST'] as String?),
      pMVAST: json['pMVAST'] as String?,
      pRedBCST: json['pRedBCST'] as String?,
      vBCST: json['vBCST'] as String?,
      pICMSST: json['pICMSST'] as String?,
      vICMSST: json['vICMSST'] as String?,
      vBCFCPST: json['vBCFCPST'] as String?,
      pFCPST: json['pFCPST'] as String?,
      vFCPST: json['vFCPST'] as String?,
      pCredSN: json['pCredSN'] as String?,
      vCredICMSSN: json['vCredICMSSN'] as String?,
    );

Map<String, dynamic> _$ICMSSN900ComplexType_ICMSToJson(
        ICMSSN900ComplexType_ICMS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'orig': _origEnumToValue(instance.orig),
      'CSOSN': _CSOSNEnumToValue(instance.CSOSN),
      'modBC': _modBCEnumToMaybeValue(instance.modBC),
      'vBC': instance.vBC,
      'pRedBC': instance.pRedBC,
      'pICMS': instance.pICMS,
      'vICMS': instance.vICMS,
      'modBCST': _modBCSTEnumToMaybeValue(instance.modBCST),
      'pMVAST': instance.pMVAST,
      'pRedBCST': instance.pRedBCST,
      'vBCST': instance.vBCST,
      'pICMSST': instance.pICMSST,
      'vICMSST': instance.vICMSST,
      'vBCFCPST': instance.vBCFCPST,
      'pFCPST': instance.pFCPST,
      'vFCPST': instance.vFCPST,
      'pCredSN': instance.pCredSN,
      'vCredICMSSN': instance.vCredICMSSN,
    };

PISAliqComplexType_PIS _$PISAliqComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISAliqComplexType_PIS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBC: json['vBC'] as String,
      pPIS: json['pPIS'] as String,
      vPIS: json['vPIS'] as String,
    );

Map<String, dynamic> _$PISAliqComplexType_PISToJson(
        PISAliqComplexType_PIS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'vBC': instance.vBC,
      'pPIS': instance.pPIS,
      'vPIS': instance.vPIS,
    };

PISQtdeComplexType_PIS _$PISQtdeComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISQtdeComplexType_PIS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      qBCProd: json['qBCProd'] as String,
      vAliqProd: json['vAliqProd'] as String,
      vPIS: json['vPIS'] as String,
    );

Map<String, dynamic> _$PISQtdeComplexType_PISToJson(
        PISQtdeComplexType_PIS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vPIS': instance.vPIS,
    };

PISNTComplexType_PIS _$PISNTComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISNTComplexType_PIS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
    );

Map<String, dynamic> _$PISNTComplexType_PISToJson(
        PISNTComplexType_PIS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
    };

PISOutrComplexType_PIS _$PISOutrComplexType_PISFromJson(
        Map<String, dynamic> json) =>
    PISOutrComplexType_PIS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBC: json['vBC'] as String?,
      pPIS: json['pPIS'] as String?,
      qBCProd: json['qBCProd'] as String?,
      vAliqProd: json['vAliqProd'] as String?,
      vPIS: json['vPIS'] as String,
    );

Map<String, dynamic> _$PISOutrComplexType_PISToJson(
        PISOutrComplexType_PIS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'vBC': instance.vBC,
      'pPIS': instance.pPIS,
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vPIS': instance.vPIS,
    };

COFINSAliqComplexType_COFINS _$COFINSAliqComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSAliqComplexType_COFINS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBC: json['vBC'] as String,
      pCOFINS: json['pCOFINS'] as String,
      vCOFINS: json['vCOFINS'] as String,
    );

Map<String, dynamic> _$COFINSAliqComplexType_COFINSToJson(
        COFINSAliqComplexType_COFINS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'vBC': instance.vBC,
      'pCOFINS': instance.pCOFINS,
      'vCOFINS': instance.vCOFINS,
    };

COFINSQtdeComplexType_COFINS _$COFINSQtdeComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSQtdeComplexType_COFINS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      qBCProd: json['qBCProd'] as String,
      vAliqProd: json['vAliqProd'] as String,
      vCOFINS: json['vCOFINS'] as String,
    );

Map<String, dynamic> _$COFINSQtdeComplexType_COFINSToJson(
        COFINSQtdeComplexType_COFINS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vCOFINS': instance.vCOFINS,
    };

COFINSNTComplexType_COFINS _$COFINSNTComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSNTComplexType_COFINS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
    );

Map<String, dynamic> _$COFINSNTComplexType_COFINSToJson(
        COFINSNTComplexType_COFINS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
    };

COFINSOutrComplexType_COFINS _$COFINSOutrComplexType_COFINSFromJson(
        Map<String, dynamic> json) =>
    COFINSOutrComplexType_COFINS(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBC: json['vBC'] as String?,
      pCOFINS: json['pCOFINS'] as String?,
      qBCProd: json['qBCProd'] as String?,
      vAliqProd: json['vAliqProd'] as String?,
      vCOFINS: json['vCOFINS'] as String,
    );

Map<String, dynamic> _$COFINSOutrComplexType_COFINSToJson(
        COFINSOutrComplexType_COFINS instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'vBC': instance.vBC,
      'pCOFINS': instance.pCOFINS,
      'qBCProd': instance.qBCProd,
      'vAliqProd': instance.vAliqProd,
      'vCOFINS': instance.vCOFINS,
    };

SignatureTypeComplexType _$SignatureTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureTypeComplexType(
      xmlns: json['xmlns'] as String?,
      SignedInfo: _SignedInfoTypeComplexTypeFromJson(
          json['SignedInfo'] as Map<String, dynamic>),
      SignatureValue: _SignatureValueTypeComplexTypeFromJson(
          json['SignatureValue'] as Map<String, dynamic>),
      KeyInfo: _KeyInfoTypeComplexTypeFromJson(
          json['KeyInfo'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignatureTypeComplexTypeToJson(
        SignatureTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'SignedInfo': _SignedInfoTypeComplexTypeToJson(instance.SignedInfo),
      'SignatureValue':
          _SignatureValueTypeComplexTypeToJson(instance.SignatureValue),
      'KeyInfo': _KeyInfoTypeComplexTypeToJson(instance.KeyInfo),
      'Id': instance.Id,
    };

TLocalComplexType _$TLocalComplexTypeFromJson(Map<String, dynamic> json) =>
    TLocalComplexType(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String?,
      CPF: json['CPF'] as String?,
      xNome: json['xNome'] as String?,
      xLgr: json['xLgr'] as String,
      nro: json['nro'] as String,
      xCpl: json['xCpl'] as String?,
      xBairro: json['xBairro'] as String,
      cMun: json['cMun'] as String,
      xMun: json['xMun'] as String,
      UF: _UFEnumFromValue(json['UF'] as String),
      CEP: json['CEP'] as String?,
      cPais: json['cPais'] as String?,
      xPais: json['xPais'] as String?,
      fone: json['fone'] as String?,
      email: json['email'] as String?,
      IE: json['IE'] as String?,
    );

Map<String, dynamic> _$TLocalComplexTypeToJson(TLocalComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'CPF': instance.CPF,
      'xNome': instance.xNome,
      'xLgr': instance.xLgr,
      'nro': instance.nro,
      'xCpl': instance.xCpl,
      'xBairro': instance.xBairro,
      'cMun': instance.cMun,
      'xMun': instance.xMun,
      'UF': _UFEnumToValue(instance.UF),
      'CEP': instance.CEP,
      'cPais': instance.cPais,
      'xPais': instance.xPais,
      'fone': instance.fone,
      'email': instance.email,
      'IE': instance.IE,
    };

TInfRespTecComplexType _$TInfRespTecComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TInfRespTecComplexType(
      xmlns: json['xmlns'] as String?,
      CNPJ: json['CNPJ'] as String,
      xContato: json['xContato'] as String,
      email: json['email'] as String,
      fone: json['fone'] as String,
      idCSRT: json['idCSRT'] as String?,
      hashCSRT: json['hashCSRT'] as String?,
    );

Map<String, dynamic> _$TInfRespTecComplexTypeToJson(
        TInfRespTecComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJ': instance.CNPJ,
      'xContato': instance.xContato,
      'email': instance.email,
      'fone': instance.fone,
      'idCSRT': instance.idCSRT,
      'hashCSRT': instance.hashCSRT,
    };

TEnderEmiComplexType _$TEnderEmiComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TEnderEmiComplexType(
      xmlns: json['xmlns'] as String?,
      xLgr: json['xLgr'] as String,
      nro: json['nro'] as String,
      xCpl: json['xCpl'] as String?,
      xBairro: json['xBairro'] as String,
      cMun: json['cMun'] as String,
      xMun: json['xMun'] as String,
      UF: _UFEnumFromValue(json['UF'] as String),
      CEP: json['CEP'] as String,
      cPais: _cPaisEnumFromMaybeValue(json['cPais'] as String?),
      xPais: _xPaisEnumFromMaybeValue(json['xPais'] as String?),
      fone: json['fone'] as String?,
    );

Map<String, dynamic> _$TEnderEmiComplexTypeToJson(
        TEnderEmiComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xLgr': instance.xLgr,
      'nro': instance.nro,
      'xCpl': instance.xCpl,
      'xBairro': instance.xBairro,
      'cMun': instance.cMun,
      'xMun': instance.xMun,
      'UF': _UFEnumToValue(instance.UF),
      'CEP': instance.CEP,
      'cPais': _cPaisEnumToMaybeValue(instance.cPais),
      'xPais': _xPaisEnumToMaybeValue(instance.xPais),
      'fone': instance.fone,
    };

TEnderecoComplexType _$TEnderecoComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TEnderecoComplexType(
      xmlns: json['xmlns'] as String?,
      xLgr: json['xLgr'] as String,
      nro: json['nro'] as String,
      xCpl: json['xCpl'] as String?,
      xBairro: json['xBairro'] as String,
      cMun: json['cMun'] as String,
      xMun: json['xMun'] as String,
      UF: _UFEnumFromValue(json['UF'] as String),
      CEP: json['CEP'] as String?,
      cPais: json['cPais'] as String?,
      xPais: json['xPais'] as String?,
      fone: json['fone'] as String?,
    );

Map<String, dynamic> _$TEnderecoComplexTypeToJson(
        TEnderecoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'xLgr': instance.xLgr,
      'nro': instance.nro,
      'xCpl': instance.xCpl,
      'xBairro': instance.xBairro,
      'cMun': instance.cMun,
      'xMun': instance.xMun,
      'UF': _UFEnumToValue(instance.UF),
      'CEP': instance.CEP,
      'cPais': instance.cPais,
      'xPais': instance.xPais,
      'fone': instance.fone,
    };

TVeiculoComplexType _$TVeiculoComplexTypeFromJson(Map<String, dynamic> json) =>
    TVeiculoComplexType(
      xmlns: json['xmlns'] as String?,
      placa: json['placa'] as String,
      UF: _UFEnumFromMaybeValue(json['UF'] as String?),
      RNTC: json['RNTC'] as String?,
    );

Map<String, dynamic> _$TVeiculoComplexTypeToJson(
        TVeiculoComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'placa': instance.placa,
      'UF': _UFEnumToMaybeValue(instance.UF),
      'RNTC': instance.RNTC,
    };

TIpiComplexType _$TIpiComplexTypeFromJson(Map<String, dynamic> json) =>
    TIpiComplexType(
      xmlns: json['xmlns'] as String?,
      CNPJProd: json['CNPJProd'] as String?,
      cSelo: json['cSelo'] as String?,
      qSelo: json['qSelo'] as String?,
      cEnq: json['cEnq'] as String,
      IPITrib: _IPITribComplexType_TIpiMaybeFromJson(
          json['IPITrib'] as Map<String, dynamic>?),
      IPINT: _IPINTComplexType_TIpiMaybeFromJson(
          json['IPINT'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$TIpiComplexTypeToJson(TIpiComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CNPJProd': instance.CNPJProd,
      'cSelo': instance.cSelo,
      'qSelo': instance.qSelo,
      'cEnq': instance.cEnq,
      'IPITrib': _IPITribComplexType_TIpiMaybeToJson(instance.IPITrib),
      'IPINT': _IPINTComplexType_TIpiMaybeToJson(instance.IPINT),
    };

SignedInfoTypeComplexType _$SignedInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignedInfoTypeComplexType(
      xmlns: json['xmlns'] as String?,
      CanonicalizationMethod:
          _CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
              json['CanonicalizationMethod'] as Map<String, dynamic>),
      SignatureMethod: _SignatureMethodComplexType_SignedInfoTypeFromJson(
          json['SignatureMethod'] as Map<String, dynamic>),
      Reference: _ReferenceTypeComplexTypeFromJson(
          json['Reference'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignedInfoTypeComplexTypeToJson(
        SignedInfoTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CanonicalizationMethod':
          _CanonicalizationMethodComplexType_SignedInfoTypeToJson(
              instance.CanonicalizationMethod),
      'SignatureMethod': _SignatureMethodComplexType_SignedInfoTypeToJson(
          instance.SignatureMethod),
      'Reference': _ReferenceTypeComplexTypeToJson(instance.Reference),
      'Id': instance.Id,
    };

SignatureValueTypeComplexType _$SignatureValueTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    SignatureValueTypeComplexType(
      xmlns: json['xmlns'] as String?,
      SignatureValueType: json['SignatureValueType'] as String,
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$SignatureValueTypeComplexTypeToJson(
        SignatureValueTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'SignatureValueType': instance.SignatureValueType,
      'Id': instance.Id,
    };

KeyInfoTypeComplexType _$KeyInfoTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    KeyInfoTypeComplexType(
      xmlns: json['xmlns'] as String?,
      X509Data: _X509DataTypeComplexTypeFromJson(
          json['X509Data'] as Map<String, dynamic>),
      Id: json['Id'] as String?,
    );

Map<String, dynamic> _$KeyInfoTypeComplexTypeToJson(
        KeyInfoTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'X509Data': _X509DataTypeComplexTypeToJson(instance.X509Data),
      'Id': instance.Id,
    };

ReferenceTypeComplexType _$ReferenceTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    ReferenceTypeComplexType(
      xmlns: json['xmlns'] as String?,
      Transforms: _TransformsTypeComplexTypeFromJson(
          json['Transforms'] as Map<String, dynamic>),
      DigestMethod: _DigestMethodComplexType_ReferenceTypeFromJson(
          json['DigestMethod'] as Map<String, dynamic>),
      DigestValue: json['DigestValue'] as String,
      Id: json['Id'] as String?,
      URI: json['URI'] as String,
      Type: json['Type'] as String?,
    );

Map<String, dynamic> _$ReferenceTypeComplexTypeToJson(
        ReferenceTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Transforms': _TransformsTypeComplexTypeToJson(instance.Transforms),
      'DigestMethod':
          _DigestMethodComplexType_ReferenceTypeToJson(instance.DigestMethod),
      'DigestValue': instance.DigestValue,
      'Id': instance.Id,
      'URI': instance.URI,
      'Type': instance.Type,
    };

X509DataTypeComplexType _$X509DataTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    X509DataTypeComplexType(
      xmlns: json['xmlns'] as String?,
      X509Certificate: json['X509Certificate'] as String,
    );

Map<String, dynamic> _$X509DataTypeComplexTypeToJson(
        X509DataTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'X509Certificate': instance.X509Certificate,
    };

TransformsTypeComplexType _$TransformsTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformsTypeComplexType(
      xmlns: json['xmlns'] as String?,
      Transform:
          _TransformTypeComplexTypeListFromJson(json['Transform'] as List),
    );

Map<String, dynamic> _$TransformsTypeComplexTypeToJson(
        TransformsTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Transform': _TransformTypeComplexTypeListToJson(instance.Transform),
    };

TransformTypeComplexType _$TransformTypeComplexTypeFromJson(
        Map<String, dynamic> json) =>
    TransformTypeComplexType(
      xmlns: json['xmlns'] as String?,
      XPath: json['XPath'] as String?,
      Algorithm: _AlgorithmEnumFromValue(json['Algorithm'] as String),
    );

Map<String, dynamic> _$TransformTypeComplexTypeToJson(
        TransformTypeComplexType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'XPath': instance.XPath,
      'Algorithm': _AlgorithmEnumToValue(instance.Algorithm),
    };

IPITribComplexType_TIpi _$IPITribComplexType_TIpiFromJson(
        Map<String, dynamic> json) =>
    IPITribComplexType_TIpi(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
      vBC: json['vBC'] as String?,
      pIPI: json['pIPI'] as String?,
      qUnid: json['qUnid'] as String?,
      vUnid: json['vUnid'] as String?,
      vIPI: json['vIPI'] as String,
    );

Map<String, dynamic> _$IPITribComplexType_TIpiToJson(
        IPITribComplexType_TIpi instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
      'vBC': instance.vBC,
      'pIPI': instance.pIPI,
      'qUnid': instance.qUnid,
      'vUnid': instance.vUnid,
      'vIPI': instance.vIPI,
    };

IPINTComplexType_TIpi _$IPINTComplexType_TIpiFromJson(
        Map<String, dynamic> json) =>
    IPINTComplexType_TIpi(
      xmlns: json['xmlns'] as String?,
      CST: _CSTEnumFromValue(json['CST'] as String),
    );

Map<String, dynamic> _$IPINTComplexType_TIpiToJson(
        IPINTComplexType_TIpi instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'CST': _CSTEnumToValue(instance.CST),
    };

CanonicalizationMethodComplexType_SignedInfoType
    _$CanonicalizationMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        CanonicalizationMethodComplexType_SignedInfoType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/TR/2001/REC-xml-c14n-20010315',
        );

Map<String, dynamic> _$CanonicalizationMethodComplexType_SignedInfoTypeToJson(
        CanonicalizationMethodComplexType_SignedInfoType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };

SignatureMethodComplexType_SignedInfoType
    _$SignatureMethodComplexType_SignedInfoTypeFromJson(
            Map<String, dynamic> json) =>
        SignatureMethodComplexType_SignedInfoType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/2000/09/xmldsig#rsa-sha1',
        );

Map<String, dynamic> _$SignatureMethodComplexType_SignedInfoTypeToJson(
        SignatureMethodComplexType_SignedInfoType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };

DigestMethodComplexType_ReferenceType
    _$DigestMethodComplexType_ReferenceTypeFromJson(
            Map<String, dynamic> json) =>
        DigestMethodComplexType_ReferenceType(
          xmlns: json['xmlns'] as String?,
          Algorithm: json['Algorithm'] as String? ??
              'http://www.w3.org/2000/09/xmldsig#sha1',
        );

Map<String, dynamic> _$DigestMethodComplexType_ReferenceTypeToJson(
        DigestMethodComplexType_ReferenceType instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'Algorithm': instance.Algorithm,
    };
