import 'package:encrypt/encrypt.dart';

// ---------------------------------------------------------------------------
// ⚠️  SECURITY NOTE
// ---------------------------------------------------------------------------
// This module uses AES-CBC with a FIXED IV.  A static IV is a cryptographic
// anti-pattern: using the same IV and key to encrypt different plaintexts
// leaks information about their relationship.
//
// ---------------------------------------------------------------------------

final _iv_base64 = String.fromEnvironment('NFE_CLIENT_IV_BASE64', defaultValue: 'THIS_IS_NOT_A_SECURE_IV==');

/// Derives a base-64 AES-256 key from a passphrase.
///
/// ⚠️  Short passphrases are left-padded with '1' to reach 32 bytes which
/// reduces effective entropy.  Use a 32-byte random key for new deployments.
String generateb64Key(String value) {
  final key = Key.fromUtf8(value.padLeft(32, '1').substring(0, 32));
  return key.base64;
}

String encryptar({required String value, required String b64key}) {
  final key = Key.fromBase64(b64key);
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  final iv = IV.fromBase64(_iv_base64);
  return encrypter.encrypt(value, iv: iv).base64;
}

String decryptar({required String value, required String b64key}) {
  final key = Key.fromBase64(b64key);
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  final iv = IV.fromBase64(_iv_base64);
  return encrypter.decrypt64(value, iv: iv);
}