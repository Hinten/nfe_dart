import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:soap_client/src/nfex509.dart';
import 'package:xml/xml.dart' as xml;
import 'dart:math';

/// Base class for objects that hold resources that must be released.
abstract class Disposeable {
  void dispose();
  const Disposeable();
}

class SoapException implements Exception {
  final String? url;
  final String? code;
  final String? headers;
  final String? message;

  SoapException({this.url, this.code, this.headers, this.message});

  @override
  String toString() {
    return '''SoapException: url: $url\n code: $code\n headers: $headers\n message: $message''';
  }
}

class SoapClient extends Disposeable {
  final HttpClient client;
  final String version;

  @override
  void dispose() {
    client.close();
  }

  SoapClient._({
    required this.client,
    this.version = '1.2',
  });

  factory SoapClient.init({
    String version = '1.2',
    List<int>? privateKey,
    List<int>? certificate,
    List<List<int>> trustedCertificates = const [],
  }) {
    final context = SecurityContext();

    if (privateKey != null) {
      context.usePrivateKeyBytes(privateKey);
    }

    if (certificate != null) {
      context.useCertificateChainBytes(certificate);
    }

    for (final cert in trustedCertificates) {
      context.setTrustedCertificatesBytes(cert);
    }

    context.allowLegacyUnsafeRenegotiation = true;

    final client = HttpClient(
      context: context,
    );

    client.connectionTimeout = const Duration(seconds: 10);

    return SoapClient._(
      client: client,
      version: version,
    );
  }

  factory SoapClient.nfe({
    String version = '1.2',
    List<int>? privateKey,
    List<int>? certificate,
    List<List<int>> trustedCertificates = const [],
  }) {
    final context = SecurityContext();

    if (privateKey != null) {
      context.usePrivateKeyBytes(privateKey, password: '123456');
    }

    if (certificate != null) {
      context.useCertificateChainBytes(certificate);
    }

    for (final cert in trustedCertificates) {
      context.setTrustedCertificatesBytes(cert);
    }

    for (final cert in nfeCerts.values){
      context.setTrustedCertificatesBytes(base64Decode(cert));
    }

    for (final cert in autoridades.values){
      context.setTrustedCertificatesBytes(base64Decode(cert));
    }


    for (final cert in autoridades.values){
      context.setClientAuthoritiesBytes(base64Decode(cert));
    }

    context.allowLegacyUnsafeRenegotiation = true;

    final client = HttpClient(
      context: context,
    );

    return SoapClient._(
      client: client,
      version: version,
    );
  }

  Future<SoapManager> autoDiscover(String endpoint) {
    return SoapManager.autoDiscover(
      client: client,
      endpoint: endpoint,
      version: version,
    );
  }
}

class SoapManager {
  final HttpClient client;
  final Uri endpoint;
  final String targetNamespace;
  Iterable<Service> services;
  final String version;
  late final _versionTrim;

  String get soapxmlns {
    switch (version) {
      case '1.2':
        return 'http://www.w3.org/2003/05/soap-envelope';
      case '1.1':
        return 'http://schemas.xmlsoap.org/soap/envelope/';
      default:
        throw Exception('Invalid SOAP version');
    }
  }

  @override
  String toString() {
    return '''SoapManager: endpoint: $endpoint\n targetNamespace: $targetNamespace\n services: $services\n version: $version''';
  }

  SoapManager({
    required this.client,
    required this.endpoint,
    required this.targetNamespace,
    required this.version,
    this.services = const [],
  }) {
    _versionTrim = version.replaceAll('.', '');
  }

  static Future<SoapManager> autoDiscover({
    required String endpoint,
    required HttpClient client,
    String version = '1.2',
    int maxRetires = 3,
  }) async {
    final targetEndpoint = Uri.parse(endpoint);
    final uri = targetEndpoint.replace(query: 'WSDL');

    HttpClientResponse? data;
    int currentRetires = 0;

    while (data == null && currentRetires < maxRetires) {
      try {
        final request = await client.getUrl(uri);
        request.headers.add('Content-Type', 'text/xml; charset=utf-8');
        data = await request.close();
        if (data.statusCode < 200 || data.statusCode > 299) {
          throw SoapException(
            url: endpoint.toString(),
            code: data.statusCode.toString(),
            headers: data.headers.toString(),
            message: await data.transform(utf8.decoder).join(),
          );
        }
      } on SocketException catch (e) {
        print(e);
        if (e.osError?.errorCode == 104) {
          currentRetires++;
          if (currentRetires >= maxRetires){
            rethrow;
          }
          print('retry autoDiscover $currentRetires');
          await Future.delayed(Duration(seconds: (2 + pow(2, currentRetires).toInt())));
        } else {
          rethrow;
        }
      }
    }

    if (data == null){
      throw Exception('Failed to get WSDL');
    }

    final body = await data.transform(utf8.decoder).join();
    final document = xml.XmlDocument.parse(body);

    final definitions =
        document.childElements.firstWhere((e) => e.name.local == 'definitions');
    final types =
        definitions.childElements.firstWhere((e) => e.name.local == 'types');
    final schema =
        types.childElements.firstWhere((e) => e.name.local == 'schema');
    final targetNamespace = schema.getAttribute('targetNamespace')!;

    final soapService = SoapManager(
      client: client,
      endpoint: targetEndpoint,
      targetNamespace: targetNamespace,
      version: version,
    );

    soapService.services = Service.fromXml(
      document: document,
      soapService: soapService,
    );

    return soapService;
  }

  String envelope({
    required String body,
    String? header,
  }) {
    final buffer = StringBuffer();

    buffer.write('<?xml version="1.0" encoding="utf-8"?>');
    buffer.write(
        '<soap$_versionTrim:Envelope xmlns:soap$_versionTrim="$soapxmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">');
    if (header != null) {
      buffer.write('<soap$_versionTrim:Header>');
      buffer.write(header);
      buffer.write('</soap$_versionTrim:Header>');
    }

    buffer.write('<soap$_versionTrim:Body>');
    buffer.write(body);
    buffer.write('</soap$_versionTrim:Body>');
    buffer.write('</soap$_versionTrim:Envelope>');
    return buffer.toString();
  }

  Future<String> request({
    required String soapAction,
    required String location,
    required xml.XmlDocument document,
    xml.XmlDocument? header,
    int maxRetries = 3,
  }) async {
    final _payload = envelope(
      body: document.toXmlString(pretty: false, indent: ''),
      header: header?.toXmlString(pretty: false, indent: ''),
    );

    HttpClientResponse? data;
    int totalRetries = 0;

    while (data == null && totalRetries < maxRetries ) {
      try {
        final request = await client.postUrl(Uri.parse(location));

        if (version == '1.2') {
          request.headers.add('Content-Type',
              'application/soap+xml; charset=utf-8; action="$soapAction"');
        } else if (version == '1.1') {
          request.headers.add('Content-Type', 'text/xml; charset=utf-8');
          request.headers.add('SOAPAction', soapAction);
        } else {
          throw UnimplementedError('Unimplemented SOAP version $version');
        }
        request.write(_payload);

        data = await request.close();
        if (data.statusCode < 200 || data.statusCode > 299) {
          throw SoapException(
            url: endpoint.toString(),
            code: data.statusCode.toString(),
            headers: data.headers.toString(),
            message: await data.transform(utf8.decoder).join(),
          );
        }
      } on SocketException catch (e) {
        if (e.osError?.errorCode == 104) {
          totalRetries++;

          if (totalRetries >= maxRetries){
            rethrow;
          }
          print('retry request $totalRetries');
          await Future.delayed(Duration(seconds: (2 + pow(2, totalRetries).toInt())));

        } else {
          rethrow;
        }
      }
    }

    if (data == null){
      throw Exception('Failed to get response');
    }

    final body = await data.transform(utf8.decoder).join();
    final response = xml.XmlDocument.parse(body);
    final openBody = bodyFromEnvelope(response);
    if (openBody.length > 1) {
      throw SoapException(
        url: endpoint.toString(),
        code: data.statusCode.toString(),
        headers: data.headers.toString(),
        message: 'More than one body element found\n ${openBody.toString()}',
      );
    }
    return openBody.first;
  }

  Iterable<String> bodyFromEnvelope(xml.XmlDocument document) {
    final elements = document.childElements
        .firstWhere((element) =>
            element.name.local == 'Envelope' ||
            element.name.local == 'envelope')
        .childElements
        .where((element) =>
            element.name.local == 'Body' || element.name.local == 'body');
    if (elements.isEmpty) {
      throw Exception('Invalid SOAP response');
    }
    return elements.first.children
        .map((e) => e.toXmlString(pretty: false, indent: ''));
  }

  Iterable<xml.XmlDocument> headerFromEnvelope(xml.XmlDocument document) {
    final elements = document.findAllElements('Header');
    if (elements.isEmpty) {
      throw Exception('Invalid SOAP response');
    }
    return elements.first.children.map(
        (e) => xml.XmlDocument.parse(e.toXmlString(pretty: false, indent: '')));
  }
}

// <?xml version="1.0" encoding="utf-8"?>
// <wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NFeStatusServico4" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NFeStatusServico4" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
//   <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado à consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.</wsdl:documentation>
//   <wsdl:types>
//     <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NFeStatusServico4">
//       <s:element name="nfeDadosMsg">
//         <s:complexType mixed="true">
//           <s:sequence>
//             <s:any />
//           </s:sequence>
//         </s:complexType>
//       </s:element>
//       <s:element name="nfeResultMsg">
//         <s:complexType mixed="true">
//           <s:sequence>
//             <s:any />
//           </s:sequence>
//         </s:complexType>
//       </s:element>
//     </s:schema>
//   </wsdl:types>
//   <wsdl:message name="nfeStatusServicoNFSoap12In">
//     <wsdl:part name="nfeDadosMsg" element="tns:nfeDadosMsg" />
//   </wsdl:message>
//   <wsdl:message name="nfeStatusServicoNFSoap12Out">
//     <wsdl:part name="nfeStatusServicoNFResult" element="tns:nfeResultMsg" />
//   </wsdl:message>
//   <wsdl:portType name="NFeStatusServico4Soap12">
//     <wsdl:operation name="nfeStatusServicoNF">
//       <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Consulta Status do Serviço</wsdl:documentation>
//       <wsdl:input message="tns:nfeStatusServicoNFSoap12In" />
//       <wsdl:output message="tns:nfeStatusServicoNFSoap12Out" />
//     </wsdl:operation>
//   </wsdl:portType>
//   <wsdl:binding name="NFeStatusServico4Soap12" type="tns:NFeStatusServico4Soap12">
//     <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
//     <wsdl:operation name="nfeStatusServicoNF">
//       <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NFeStatusServico4/nfeStatusServicoNF" style="document" />
//       <wsdl:input>
//         <soap12:body use="literal" />
//       </wsdl:input>
//       <wsdl:output>
//         <soap12:body use="literal" />
//       </wsdl:output>
//     </wsdl:operation>
//   </wsdl:binding>
//   <wsdl:service name="NFeStatusServico4">
//     <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado à consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.</wsdl:documentation>
//     <wsdl:port name="NFeStatusServico4Soap12" binding="tns:NFeStatusServico4Soap12">
//       <soap12:address location="https://nfe.fazenda.sp.gov.br/ws/nfestatusservico4.asmx" />
//     </wsdl:port>
//   </wsdl:service>
// </wsdl:definitions>

// <?xml version="1.0" encoding="utf-8"?>
// <wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
//   <wsdl:types>
//     <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe">
//       <s:element name="nfeDistDFeInteresse">
//         <s:complexType>
//           <s:sequence>
//             <s:element minOccurs="0" maxOccurs="1" name="nfeDadosMsg">
//               <s:complexType mixed="true">
//                 <s:sequence>
//                   <s:any/>
//                 </s:sequence>
//               </s:complexType>
//             </s:element>
//           </s:sequence>
//         </s:complexType>
//       </s:element>
//       <s:element name="nfeDistDFeInteresseResponse">
//         <s:complexType>
//           <s:sequence>
//             <s:element minOccurs="0" maxOccurs="1" name="nfeDistDFeInteresseResult">
//               <s:complexType mixed="true">
//                 <s:sequence>
//                   <s:any/>
//                 </s:sequence>
//               </s:complexType>
//             </s:element>
//           </s:sequence>
//         </s:complexType>
//       </s:element>
//     </s:schema>
//   </wsdl:types>
//   <wsdl:message name="nfeDistDFeInteresseSoapIn">
//     <wsdl:part name="parameters" element="tns:nfeDistDFeInteresse"/>
//   </wsdl:message>
//   <wsdl:message name="nfeDistDFeInteresseSoapOut">
//     <wsdl:part name="parameters" element="tns:nfeDistDFeInteresseResponse"/>
//   </wsdl:message>
//   <wsdl:portType name="NFeDistribuicaoDFeSoap">
//     <wsdl:operation name="nfeDistDFeInteresse">
//       <wsdl:input message="tns:nfeDistDFeInteresseSoapIn"/>
//       <wsdl:output message="tns:nfeDistDFeInteresseSoapOut"/>
//     </wsdl:operation>
//   </wsdl:portType>
//   <wsdl:binding name="NFeDistribuicaoDFeSoap" type="tns:NFeDistribuicaoDFeSoap">
//     <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
//     <wsdl:operation name="nfeDistDFeInteresse">
//       <soap:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe/nfeDistDFeInteresse" style="document"/>
//       <wsdl:input>
//         <soap:body use="literal"/>
//       </wsdl:input>
//       <wsdl:output>
//         <soap:body use="literal"/>
//       </wsdl:output>
//     </wsdl:operation>
//   </wsdl:binding>
//   <wsdl:binding name="NFeDistribuicaoDFeSoap12" type="tns:NFeDistribuicaoDFeSoap">
//     <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
//     <wsdl:operation name="nfeDistDFeInteresse">
//       <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe/nfeDistDFeInteresse" style="document"/>
//       <wsdl:input>
//         <soap12:body use="literal"/>
//       </wsdl:input>
//       <wsdl:output>
//         <soap12:body use="literal"/>
//       </wsdl:output>
//     </wsdl:operation>
//   </wsdl:binding>
//   <wsdl:service name="NFeDistribuicaoDFe">
//     <wsdl:port name="NFeDistribuicaoDFeSoap" binding="tns:NFeDistribuicaoDFeSoap">
//       <soap:address location="https://hom1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx"/>
//     </wsdl:port>
//     <wsdl:port name="NFeDistribuicaoDFeSoap12" binding="tns:NFeDistribuicaoDFeSoap12">
//       <soap12:address location="https://hom1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx"/>
//     </wsdl:port>
//   </wsdl:service>
// </wsdl:definitions>
class Service {
  final SoapManager soapService;
  final String name;
  final String targetNamespace;
  final String location;
  final String port;
  final String action;
  final xml.XmlDocument? inputMessageTree;
  final xml.XmlDocument? outputMessageTree;

  Service({
    required this.name,
    required this.targetNamespace,
    required this.location,
    required this.port,
    required this.action,
    required this.soapService,
    required this.inputMessageTree,
    required this.outputMessageTree,
  });

  @override
  String toString() {
    return 'Service(name: $name, targetNamespace: $targetNamespace, location: $location, port: $port, action: $action, soapService: $soapService)';
  }

  static Iterable<Service> fromXml({
    required xml.XmlDocument document,
    required SoapManager soapService,
  }) {
    final definitions =
        document.childElements.firstWhere((e) => e.name.local == 'definitions');
    final types =
        definitions.childElements.firstWhere((e) => e.name.local == 'types');
    final schema =
        types.childElements.firstWhere((e) => e.name.local == 'schema');
    final targetNamespace = schema.getAttribute('targetNamespace')!;

    final services =
        definitions.childElements.where((e) => e.name.local == 'service');

    final List<Service> servicesInstances = [];

    for (final service in services) {
      final ports = service.childElements.where((e) => e.name.local == 'port');
      for (final port in ports) {
        final name = service.getAttribute('name');
        final portBiding = port.getAttribute('binding');
        final binding = definitions.childElements.firstWhere((e) =>
            e.name.local == 'binding' &&
            e.getAttribute('name') == portBiding?.replaceFirst('tns:', ''));
        final bindingType = binding.getAttribute('type');
        final portType = definitions.childElements.firstWhere((e) =>
            e.name.local == 'portType' &&
            e.getAttribute('name') == bindingType?.replaceFirst('tns:', ''));
        final address =
            port.childElements.firstWhere((e) => e.name.local == 'address');
        final location = address.getAttribute('location');
        final operation = binding.childElements
            .firstWhere((e) => e.name.local == 'operation');
        final soapAction = operation.childElements
            .firstWhere((element) => element.name.local == 'operation')
            .getAttribute('soapAction');

        final inputMessageDefinition = portType.childElements
            .firstWhere((e) =>
                e.name.local == 'operation' &&
                e.getAttribute('name') == operation.getAttribute('name'))
            .childElements
            .firstWhere((e) => e.name.local == 'input');
        final inputMessageName = inputMessageDefinition.getAttribute('message');
        final inputMessage = definitions.childElements.firstWhere((e) =>
            e.name.local == 'message' &&
            e.getAttribute('name') ==
                inputMessageName?.replaceFirst('tns:', ''));
        xml.XmlElement? inputMessageTree;
        if (inputMessage.childElements
                .where((element) => element.name.local == 'part')
                .length ==
            1) {
          final inputMessagePart = inputMessage.childElements
              .firstWhere((element) => element.name.local == 'part')
              .getAttribute('element')
              ?.replaceFirst('tns:', '');
          inputMessageTree = schema.childElements.firstWhere(
              (element) => element.getAttribute('name') == inputMessagePart);
        } else {
          throw Exception('Implementar input definition direto na message');
        }

        final outputMessageDefinition = portType.childElements
            .firstWhere((e) =>
                e.name.local == 'operation' &&
                e.getAttribute('name') == operation.getAttribute('name'))
            .childElements
            .firstWhere((e) => e.name.local == 'output');
        final outputMessageName =
            outputMessageDefinition.getAttribute('message');
        final outputMessage = definitions.childElements.firstWhere((e) =>
            e.name.local == 'message' &&
            e.getAttribute('name') ==
                outputMessageName?.replaceFirst('tns:', ''));
        xml.XmlElement? outputMessageTree;
        if (outputMessage.childElements
                .where((element) => element.name.local == 'part')
                .length ==
            1) {
          final outputMessagePart = outputMessage.childElements
              .firstWhere((element) => element.name.local == 'part')
              .getAttribute('element')
              ?.replaceFirst('tns:', '');
          outputMessageTree = schema.childElements.firstWhere(
              (element) => element.getAttribute('name') == outputMessagePart);
        } else {
          throw Exception('Implementar output definition direto na message');
        }

        servicesInstances.add(Service(
          name: name!,
          targetNamespace: targetNamespace,
          location: location!,
          port: port.getAttribute('name')!,
          action: soapAction!,
          soapService: soapService,
          inputMessageTree: inputMessageTree != null
              ? generateDocumentFromSchema(inputMessageTree,
                  targetNamespace: targetNamespace)
              : null,
          outputMessageTree: outputMessageTree != null
              ? generateDocumentFromSchema(outputMessageTree,
                  targetNamespace: targetNamespace)
              : null,
        ));
      }
    }
    return servicesInstances;
  }

  xml.XmlDocument makeInputMessage(xml.XmlDocument body) {
    if (inputMessageTree == null) {
      return body;
    }

    final builder = xml.XmlBuilder();
    final tree = inputMessageTree!.copy();
    xml.XmlElement lastChild = tree.rootElement;
    while (lastChild.firstElementChild != null) {
      lastChild = lastChild.firstElementChild!;
    }

    final fragment = body.toString();
    lastChild.children.add(xml.XmlDocumentFragment.parse(fragment));
    builder.xml(tree.toString());
    return builder.buildDocument();
  }

  Future<String> request({
    required xml.XmlDocument body,
    xml.XmlDocument? header,
  }) async {
    return soapService
        .request(
          document: makeInputMessage(body),
          header: header,
          soapAction: action,
          location: location,
        )
        .then((value) => _openEnvelope(value));
  }

  String _openEnvelope(String response) {
    if (outputMessageTree == null) {
      return response;
    }

    final tree = outputMessageTree!.copy();
    xml.XmlElement lastChild = tree.rootElement;
    Set<String> elements = {};
    elements.add(lastChild.name.local);
    while (lastChild.firstElementChild != null) {
      lastChild = lastChild.firstElementChild!;
      elements.add(lastChild.name.local);
    }

    final responseTree = xml.XmlDocument.parse(response);
    xml.XmlElement currentNode = responseTree.rootElement;

    while (currentNode.firstElementChild != null &&
        elements.contains(currentNode.localName)) {
      currentNode = currentNode.firstElementChild!;
    }
    return currentNode.toString();
  }
}

xml.XmlElement? _elementSequence(xml.XmlElement element) {
  if (element.childElements
          .firstWhere((e) => e.name.local == 'complexType')
          .childElements
          .where((e) => e.name.local == 'sequence')
          .length ==
      1) {
    final child = element.childElements
        .firstWhere((e) => e.name.local == 'complexType')
        .childElements
        .firstWhere((e) => e.name.local == 'sequence')
        .childElements
        .first;
    if (child.name.local == 'element') {
      return child;
    } else if (child.name.local == 'any') {
      return null;
    } else {
      throw UnimplementedError('Implementar ${child.name.local}');
    }
  } else if (element.childElements
          .firstWhere((e) => e.name.local == 'complexType')
          .childElements
          .where((e) => e.name.local == 'all')
          .length >
      1) {
    throw UnimplementedError('Implementar all');
  }
}

xml.XmlElement _generateForComplexType(xml.XmlElement element) {
  final builder = xml.XmlBuilder();
  builder.element(element.getAttribute('name')!, nest: () {
    _elementSequence(element) != null
        ? builder
            .xml(_generateForComplexType(_elementSequence(element)!).toString())
        : null;
  });
  return builder.buildFragment().firstElementChild!;
}

xml.XmlDocument generateDocumentFromSchema(
  xml.XmlElement schema, {
  String? targetNamespace,
}) {
  final builder = xml.XmlBuilder();
  final root = schema.getAttribute('name');
  final bool hasComplexType = schema.childElements
      .where((element) => element.name.local == 'complexType')
      .isNotEmpty;

  if (!hasComplexType) {
    builder.element(root!, nest: () {
      if (targetNamespace != null) builder.attribute('xmlns', targetNamespace);
    });
    return builder.buildDocument();
  }

  builder.element(root!, nest: () {
    if (targetNamespace != null) builder.attribute('xmlns', targetNamespace);
    _elementSequence(schema) != null
        ? builder
            .xml(_generateForComplexType(_elementSequence(schema)!).toString())
        : null;
  });
  return builder.buildDocument();
}
