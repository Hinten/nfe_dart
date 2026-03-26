import 'dart:typed_data';
import 'dart:convert';
import 'package:ninja/ninja.dart';
import 'package:ninja_pem/ninja_pem.dart';
import 'package:xml/xml.dart';
import 'package:xml_crypto/xml_crypto.dart';

bool validateXml(String xml, String x509Cert) {
  final doc = XmlDocument.parse(xml);
  final signature = doc.findAllElements('Signature').first;

  final sig = SignedXml();
  sig.signatureAlgorithm = "http://www.w3.org/2000/09/xmldsig#rsa-sha1";
  sig.keyInfoProvider = x509PublicKeyInfo(
    x509Cert: x509Cert,
  );
  sig.canonicalizationAlgorithm = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";


  sig.loadSignature(signature);
  final res = sig.checkSignature(xml);
  print('validou $res');
  if (!res) print(sig.validationErrors);
  return res;
}

class x509PublicKeyInfo implements KeyInfoProvider {

  final String x509Cert;
  late final String x509;

  @override
  Map<String, dynamic>? get attrs => null;

  x509PublicKeyInfo({
    required this.x509Cert,
  }){
    final pem = PemPart.decodeLabelled(x509Cert, ['CERTIFICATE']);
    x509 = pem.data;
  }

  @override
  String getKeyInfo(Uint8List? signingKey, String? prefix) {
    assert(signingKey != null);
    return '<X509Data><X509Certificate>$x509</X509Certificate></X509Data>';
  }
  @override
  Uint8List? getKey(String? keyInfo){
    return Uint8List.fromList(utf8.encode(x509Cert));
  }

}

class Base64PublicKeyInfo implements KeyInfoProvider {

  final String x509Cert;
  final String rsaKey;
  late final String x509;

  @override
  Map<String, dynamic>? get attrs => null;

  Base64PublicKeyInfo({
    required this.x509Cert,
    required this.rsaKey,
  }){
    final pem = PemPart.decodeLabelled(x509Cert, ['CERTIFICATE']);
    x509 = pem.data;
  }

  @override
  String getKeyInfo(Uint8List? signingKey, String? prefix) {
    assert(signingKey != null);
    return '<X509Data><X509Certificate>$x509</X509Certificate></X509Data>';
  }
  @override
  Uint8List? getKey(String? keyInfo){
    return Uint8List.fromList(utf8.encode(RSAPrivateKey.fromPEM(rsaKey).toPem()));
  }

}


String singXML({
  required String doc,
  required String xmlElementName,
  required String privateKeyRsa,
  required String x509Cert,
}){
  final sig = SignedXml();
  sig.signatureAlgorithm = "http://www.w3.org/2000/09/xmldsig#rsa-sha1";
  sig.keyInfoProvider = Base64PublicKeyInfo(
      x509Cert: x509Cert,
      rsaKey: privateKeyRsa,
  );
  sig.canonicalizationAlgorithm = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";
  sig.addReference("//*[local-name()='$xmlElementName']", [
    "http://www.w3.org/2000/09/xmldsig#enveloped-signature",
    "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"
  ],
      "http://www.w3.org/2000/09/xmldsig#sha1");
  sig.signingKey = Uint8List.fromList(utf8.encode(privateKeyRsa));

  //todo essa parte trava o codigo, arrumar
  sig.computeSignature(doc);

  final signed_doc = sig.signedXml;

  // validateXml(signed_doc, x509Cert);

  return signed_doc;
}
