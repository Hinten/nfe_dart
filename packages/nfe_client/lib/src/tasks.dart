import 'package:nfe_client/nfe_client.dart';

/// Inutilizes a range of NF-e numbers in SEFAZ.
///
/// This is the standalone (no-Firestore) version of the inutilizarNumeracao
/// task.  The caller is responsible for providing the [NFeConfig],
/// [CertificadoDigital] and the UF of the emitter.
///
/// Returns the updated [InutNumeracao] with [xml_enviado], [xml_retorno] and
/// [estado] filled in.  Throws on communication or assertion errors.
Future<InutNumeracao> inutilizarNumeracao({
  required InutNumeracao instance,
  required CertificadoDigital certificadoDigital,
  required NFeConfig configuracaoNFe,
  /// State of the emitter.
  required UFS uf,
  /// Emitter CNPJ (digits only).
  required String cnpj,
}) async {
  if (instance.xml_retorno != null) {
    throw Exception('Inutilização já realizada');
  }

  assert(
    instance.fim >= instance.inicio,
    'O número final deve ser maior ou igual ao inicial',
  );

  assert(certificadoDigital.isValid, 'Certificado digital inválido');

  final client = NFeV4.fromUF(
    uf,
    tpAmb: configuracaoNFe.tpAmb,
    privateKey: certificadoDigital.pem,
    certificate: certificadoDigital.x509,
  );

  try {
    final envXML = await instance.getEnvInutNFeXML(
      cUF: uf.cUF,
      cnpj: cnpj,
      mod: client.mod,
      tpAmb: client.tpAmb,
      privateKeyRsa: certificadoDigital.rsa,
      x509Certificate: certificadoDigital.x509,
    );

    final resp = await client.inutNFe(envXML);
    return instance.copyWith(
      estado: resp.infInut.cStat == '102'
          ? EstadoEnviNFeMsg.concluido
          : EstadoEnviNFeMsg.error,
      xml_enviado: envXML,
      xml_retorno: resp.toXml(xmlns: NFeV4.xmlns),
      error: '',
    );
  } catch (e) {
    return instance.copyWith(
      estado: EstadoEnviNFeMsg.error,
      error: e.toString(),
    );
  } finally {
    client.dispose();
  }
}
