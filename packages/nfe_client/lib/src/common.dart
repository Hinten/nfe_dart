/// Common types and utilities for nfe_client.
/// This file inlines definitions that were previously sourced from the
/// internal `global` package, making this package fully standalone.
library nfe_client.common;

import 'package:diacritic/diacritic.dart' show removeDiacritics;

// ---------------------------------------------------------------------------
// enchancedEnum
// ---------------------------------------------------------------------------

abstract class enchancedEnum {
  abstract final value;
  String get displayName;
  toJson();
}

// ---------------------------------------------------------------------------
// UFS – Brazilian state codes
// ---------------------------------------------------------------------------

UFS ufsFromJson(String json) => UFS.fromValue(json);
UFS? ufsFromNullableJson(String? json) {
  if (json == null) return null;
  return UFS.fromValue(json);
}

String ufsToJson(UFS ufs) => ufs.value;
String? ufsToNullableJson(UFS? ufs) {
  if (ufs == null) return null;
  return ufs.value;
}

enum UFS implements enchancedEnum {
  AC('AC'),
  AL('AL'),
  AM('AM'),
  AP('AP'),
  BA('BA'),
  CE('CE'),
  DF('DF'),
  ES('ES'),
  GO('GO'),
  MA('MA'),
  MG('MG'),
  MS('MS'),
  MT('MT'),
  PA('PA'),
  PB('PB'),
  PE('PE'),
  PI('PI'),
  PR('PR'),
  RJ('RJ'),
  RN('RN'),
  RS('RS'),
  RO('RO'),
  RR('RR'),
  SC('SC'),
  SE('SE'),
  TO('TO'),
  SP('SP'),
  EX('EX'); // Exterior

  final String value;
  const UFS(this.value);

  @override
  String get displayName {
    switch (this) {
      case UFS.AC: return 'Acre';
      case UFS.AL: return 'Alagoas';
      case UFS.AM: return 'Amazonas';
      case UFS.AP: return 'Amapá';
      case UFS.BA: return 'Bahia';
      case UFS.CE: return 'Ceará';
      case UFS.DF: return 'Distrito Federal';
      case UFS.ES: return 'Espírito Santo';
      case UFS.GO: return 'Goiás';
      case UFS.MA: return 'Maranhão';
      case UFS.MG: return 'Minas Gerais';
      case UFS.MS: return 'Mato Grosso do Sul';
      case UFS.MT: return 'Mato Grosso';
      case UFS.PA: return 'Pará';
      case UFS.PB: return 'Paraíba';
      case UFS.PE: return 'Pernambuco';
      case UFS.PI: return 'Piauí';
      case UFS.PR: return 'Paraná';
      case UFS.RJ: return 'Rio de Janeiro';
      case UFS.RN: return 'Rio Grande do Norte';
      case UFS.RS: return 'Rio Grande do Sul';
      case UFS.RO: return 'Rondônia';
      case UFS.RR: return 'Roraima';
      case UFS.SC: return 'Santa Catarina';
      case UFS.SE: return 'Sergipe';
      case UFS.TO: return 'Tocantins';
      case UFS.SP: return 'São Paulo';
      case UFS.EX: return 'Exterior';
    }
  }

  static const stateMap = {
    'SÃO PAULO': UFS.SP,
    'RIO DE JANEIRO': UFS.RJ,
    'MINAS GERAIS': UFS.MG,
    'ESPÍRITO SANTO': UFS.ES,
    'PARANÁ': UFS.PR,
    'RIO GRANDE DO SUL': UFS.RS,
    'SANTA CATARINA': UFS.SC,
    'MATO GROSSO DO SUL': UFS.MS,
    'MATO GROSSO': UFS.MT,
    'GOIÁS': UFS.GO,
    'DISTRITO FEDERAL': UFS.DF,
    'BAHIA': UFS.BA,
    'CEARÁ': UFS.CE,
    'PARÁ': UFS.PA,
    'PERNAMBUCO': UFS.PE,
    'TOCANTINS': UFS.TO,
    'ALAGOAS': UFS.AL,
    'AMAZONAS': UFS.AM,
    'AMAPÁ': UFS.AP,
    'MARANHÃO': UFS.MA,
    'PIAUÍ': UFS.PI,
    'RIO GRANDE DO NORTE': UFS.RN,
    'RONDÔNIA': UFS.RO,
    'SERGIPE': UFS.SE,
    'RORAIMA': UFS.RR,
    'ACRE': UFS.AC,
    'PARAÍBA': UFS.PB,
    'EXTERIOR': UFS.EX,
  };

  factory UFS.fromValue(Object value) {
    if (value is UFS) return value;
    if (value is String) {
      final targetValue = value.toUpperCase().trim();
      if (stateMap.containsKey(targetValue)) return stateMap[targetValue]!;
      for (final item in UFS.values) {
        if (item.value == targetValue) return item;
      }
    }
    throw Exception('Invalid UFS value: $value');
  }

  factory UFS.fromJson(String value) => UFS.fromValue(value);

  @override
  String toJson() => value;

  /// IBGE state code used in NF-e XML (cUF field).
  String get cUF {
    switch (this) {
      case UFS.AC: return '12';
      case UFS.AL: return '27';
      case UFS.AM: return '13';
      case UFS.AP: return '16';
      case UFS.BA: return '29';
      case UFS.CE: return '23';
      case UFS.DF: return '53';
      case UFS.ES: return '32';
      case UFS.GO: return '52';
      case UFS.MA: return '21';
      case UFS.MG: return '31';
      case UFS.MS: return '50';
      case UFS.MT: return '51';
      case UFS.PA: return '15';
      case UFS.PB: return '25';
      case UFS.PE: return '26';
      case UFS.PI: return '22';
      case UFS.PR: return '41';
      case UFS.RJ: return '33';
      case UFS.RN: return '24';
      case UFS.RS: return '43';
      case UFS.RO: return '11';
      case UFS.RR: return '14';
      case UFS.SC: return '42';
      case UFS.SE: return '28';
      case UFS.TO: return '17';
      case UFS.SP: return '35';
      case UFS.EX: return '99';
    }
  }
}

// ---------------------------------------------------------------------------
// JSON helper utilities (previously in global/src/utils.dart and models/utils.dart)
// ---------------------------------------------------------------------------

/// Returns null when the JSON string is empty, otherwise returns the value.
String? stringNotEmptyFromJson(String? json) {
  if (json == null || json.isEmpty) return null;
  return json;
}

/// Serializes null or empty string as null.
String? stringNotEmptyToJson(String? value) {
  if (value == null || value.isEmpty) return null;
  return value;
}

/// Deserializes a millisecond-epoch integer to DateTime.
DateTime? maybeDateTimeFromJson(int? value) {
  if (value != null) {
    return DateTime.fromMillisecondsSinceEpoch(value);
  }
  return null;
}

/// Serializes DateTime to millisecond-epoch integer.
int? maybeDateTimeToJson(DateTime? value) => value?.millisecondsSinceEpoch;

int dateTimeToJson(DateTime value) => value.millisecondsSinceEpoch;
DateTime dateTimeFromJson(int value) =>
    DateTime.fromMillisecondsSinceEpoch(value);

// ---------------------------------------------------------------------------
// Stub helpers kept for backward-compatibility with generated .g.dart code.
// In a standalone (non-Firestore) context, docId is just a plain String? and
// timestamp fields are stored as millisecond epoch integers.
// ---------------------------------------------------------------------------

String? documentIdFromJson(String? id) => id;
String? documentIdToJson(String? id) => id;

/// Deserializes a Firestore event-time field.  In the standalone context
/// these are stored as millisecond-epoch integers or ISO-8601 strings.
DateTime? eventDateTimeFromFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  if (value is String) return DateTime.tryParse(value);
  return null;
}

/// Serializes an optional DateTime to a millisecond-epoch integer (or null).
int? dateTimeToJsonNull(DateTime? value) => value?.millisecondsSinceEpoch;

// ---------------------------------------------------------------------------
// Text utilities (previously in global/src/utils.dart)
// ---------------------------------------------------------------------------

/// Removes diacritics (accents) from a string.
/// E.g. "João" → "Joao".
String removerAcentos(String str) => removeDiacritics(str);
