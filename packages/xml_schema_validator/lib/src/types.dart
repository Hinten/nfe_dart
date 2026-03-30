import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:xml/xml.dart' as xml;

//<?xml version="1.0" encoding="utf-8"?>
// <xs:schema xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xs="http://www.w3.org/2001/XMLSchema"
//     attributeFormDefault="unqualified" elementFormDefault="qualified"
//     targetNamespace="http://www.portalfiscal.inf.br/nfe" xmlns="http://www.portalfiscal.inf.br/nfe">
//     <xs:include schemaLocation="tiposDistDFe_v1.01.xsd" />
//     <xs:element name="distDFeInt">
//         <xs:annotation>
//             <xs:documentation>Schema de pedido de distribuição de DF-e de interesse
//             </xs:documentation>
//         </xs:annotation>
//         <xs:complexType>
//             <xs:sequence>
//                 <xs:element name="tpAmb" type="TAmb">
//                     <xs:annotation>
//                         <xs:documentation>
//                             Identificação do Ambiente:
//                             1 - Produção
//                             2 - Homologação
//                         </xs:documentation>
//                     </xs:annotation>
//                 </xs:element>
//                 <xs:element name="cUFAutor" minOccurs="0" type="TCodUfIBGE">
//                     <xs:annotation>
//                         <xs:documentation>Código da UF do Autor</xs:documentation>
//                     </xs:annotation>
//                 </xs:element>
//                 <xs:choice>
//                     <xs:element name="CNPJ" type="TCnpj">
//                         <xs:annotation>
//                             <xs:documentation>CNPJ do interessado no DF-e</xs:documentation>
//                         </xs:annotation>
//                     </xs:element>
//                     <xs:element name="CPF" type="TCpf">
//                         <xs:annotation>
//                             <xs:documentation>CPF do interessado no DF-e</xs:documentation>
//                         </xs:annotation>
//                     </xs:element>
//                 </xs:choice>
//                 <xs:choice>
//                     <xs:element name="distNSU">
//                         <xs:annotation>
//                             <xs:documentation>Grupo para distribuir DF-e de interesse
//                             </xs:documentation>
//                         </xs:annotation>
//                         <xs:complexType>
//                             <xs:sequence>
//                                 <xs:element name="ultNSU" type="TNSU">
//                                     <xs:annotation>
//                                         <xs:documentation>Último NSU recebido pelo ator. Caso seja
//                                             informado com zero, ou com um NSU muito antigo, a
//                                             consulta retornará unicamente as informações resumidas e
//                                             documentos fiscais eletrônicos que tenham sido
//                                             recepcionados pelo Ambiente Nacional nos últimos 3
//                                             meses.
//                                         </xs:documentation>
//                                     </xs:annotation>
//                                 </xs:element>
//                             </xs:sequence>
//                         </xs:complexType>
//                     </xs:element>
//                     <xs:element name="consNSU">
//                         <xs:annotation>
//                             <xs:documentation>Grupo para consultar um DF-e a partir de um NSU
//                                 específico
//                             </xs:documentation>
//                         </xs:annotation>
//                         <xs:complexType>
//                             <xs:sequence>
//                                 <xs:element name="NSU" type="TNSU">
//                                     <xs:annotation>
//                                         <xs:documentation>Número Sequencial Único. Geralmente esta
//                                             consulta será utilizada quando identificado pelo
//                                             interessado um NSU faltante. O Web Service retornará o
//                                             documento ou informará que o NSU não existe no Ambiente
//                                             Nacional. Assim, esta consulta fechará a lacuna do NSU
//                                             identificado como faltante.
//                                         </xs:documentation>
//                                     </xs:annotation>
//                                 </xs:element>
//                             </xs:sequence>
//                         </xs:complexType>
//                     </xs:element>
//                     <xs:element name="consChNFe">
//                         <xs:annotation>
//                             <xs:documentation>Grupo para consultar uma NF-e a partir da chave de
//                                 acesso
//                             </xs:documentation>
//                         </xs:annotation>
//                         <xs:complexType>
//                             <xs:sequence>
//                                 <xs:element name="chNFe" type="TChNFe">
//                                     <xs:annotation>
//                                         <xs:documentation>Chave de acesso da NF-e a ser consultada
//                                         </xs:documentation>
//                                     </xs:annotation>
//                                 </xs:element>
//                             </xs:sequence>
//                         </xs:complexType>
//                     </xs:element>
//                 </xs:choice>
//             </xs:sequence>
//             <xs:attribute name="versao" type="TVerDistDFe" use="required" />
//         </xs:complexType>
//     </xs:element>
// </xs:schema>


String _getPrefixedName(String name, [String? prefix]) {
  if (prefix == null) {
    return name;
  }
  return '$prefix:$name';
}

class XSDvalidationException implements Exception {
  final String nodeName;
  final String message;
  XSDvalidationException(this.nodeName, this.message);

  String toString() => "XSDvalidationException: $nodeName: $message";
}

class XSdSchema{
  final xml.XmlElement root;
  final String? xmlns;
  final String? prefix;
  final String attributeFormDefault;
  final String elementFormDefault;
  final String targetNamespace;
  final String version;
  final String encoding;
  final Iterable<XSdSchema> imports;
  final Iterable<Element> elements;
  final Iterable<SimpleTypes> simpleTypes;
  final _ComplexTypes? complexTypes;

  XSdSchema({
    required this.root,
    this.xmlns,
    this.prefix,
    required this.attributeFormDefault,
    required this.elementFormDefault,
    required this.targetNamespace,
    required this.version,
    required this.encoding,
    required this.imports,
    required this.elements,
    required this.simpleTypes,
    required this.complexTypes,
  });

  factory XSdSchema.fromFile(String filePath){
    final schema = File(filePath).readAsStringSync();
    final doc = xml.XmlDocument.parse(schema);
    final root = doc.rootElement;
    final xmlns = root.getAttribute('xmlns');
    final prefix = root.name.prefix;
    final attributeFormDefault = root.getAttribute('attributeFormDefault');
    final elementFormDefault = root.getAttribute('elementFormDefault');
    final targetNamespace = root.getAttribute('targetNamespace');
    final List<XSdSchema> otherSchemas = [];
    final List<XSdSchema> otherImports = [];

    final List<SimpleTypes> simpleTypes = [];

    final imports = root.findElements(_getPrefixedName('import', prefix));

    if (imports.isNotEmpty){
      for (final include in root.findElements(_getPrefixedName('import', prefix))) {
        final schemaLocation = include.getAttribute('schemaLocation');
        if (schemaLocation != null) {
          String includePath = path.join(path.dirname(filePath), schemaLocation);
          otherImports.add(XSdSchema.fromFile(includePath));
        }
      }
    }

    final include = root.findElements(_getPrefixedName('include', prefix));
    if (include.isNotEmpty){
      for (final include in root.findElements(_getPrefixedName('include', prefix))) {
        final schemaLocation = include.getAttribute('schemaLocation');
        if (schemaLocation != null) {
          String includePath =
              path.join(path.dirname(filePath), schemaLocation);
          otherSchemas.add(XSdSchema.fromFile(includePath));
        }
      }
    }

    final version = doc.declaration?.version;
    final encoding = doc.declaration?.encoding;
    simpleTypes.addAll(root.findAllElements(_getPrefixedName('simpleType', prefix)).where((element){
      return element.getAttribute('name') != null;
    }).map((e) {
          return SimpleTypes.fromElement(e, prefix);
    }));
    final complexTypes = _ComplexTypes.fromSchema(doc);
    final elements = root.findAllElements(_getPrefixedName('element', prefix)).where((element){
      return element.getAttribute('name') != null;
    }).map((e) {
      return Element.fromElement(e, prefix);
    }).toList();

    XSdSchema instance = XSdSchema(
      root: root,
      xmlns: xmlns,
      attributeFormDefault: attributeFormDefault!,
      elementFormDefault: elementFormDefault!,
      targetNamespace: targetNamespace!,
      version: version!,
      imports: otherImports,
      encoding: encoding!,
      elements: elements,
      simpleTypes: simpleTypes,
      complexTypes: complexTypes,
    );

    for (final otherSchema in otherSchemas) {
      instance = instance.merge(otherSchema);
    }
    return instance;
  }

  bool get elementFormDefaultQualified => elementFormDefault == 'qualified';

  bool hasChildElement(xml.XmlElement element){
    final targetElement = elements.any((e) => e.isElement(element) || e.hasChild(element));

    if (targetElement){
      return true;
    }
    final elementTypes = simpleTypes.any((e) => e.hasType(element));
    if (elementTypes) {
      return true;
    }
    final elementComplexTypes = complexTypes?.hasChildElement(element) ?? false;
    if (elementComplexTypes){
      return true;
    }
    return false;
  }

  dynamic findType(String typeName){
    final type = typeName.split(':').last;
    final xsType = 'xs:$type';
    final dsType = 'ds:$type';
    final simpleType = simpleTypes.where(
            (e) => e.name == type || e.name == xsType || e.name == dsType
    );
    if (simpleType.isNotEmpty){
      return simpleType.first;
    }
    final complexType = complexTypes?.findType(type) ?? complexTypes?.findType(xsType) ?? complexTypes?.findType(dsType);
    if (complexType != null){
      return complexType;
    }

    if (imports.isNotEmpty){
      for (final import in imports) {
        try {
          return import.findType(type);
        } catch (e) {
          continue;
        }
      }
    }
    throw XSDvalidationException(type, 'Type $type not found');
  }

  Element findElement(String name){
    final xsName = 'xs:$name';
    final dsName = 'ds:$name';
    final element = elements.where((e) => e.name == name || e.name == xsName || e.name == dsName);
    if (element.isNotEmpty){
      return element.first;
    }

    if (imports.isNotEmpty){
      for (final import in imports) {
        try {
          return import.findElement(name);
        } catch (e) {
          continue;
        }
      }
    }
    throw XSDvalidationException(name, 'Element $name not found');
  }

  // dynamic findPrefixedType(String type){
  //   try{
  //     return findType(type);
  //   } on XSDvalidationException catch (e){
  //     try{
  //       return findType('xs:$type');
  //     } on XSDvalidationException catch (e){
  //       try{
  //         return findType('xsd:$type');
  //       } on XSDvalidationException catch (e){
  //         return findType('ds:$type');
  //       }
  //     }
  //   }
  // }

  bool validateElement(xml.XmlElement element){
    final targetElement = elements.where((e) => e.name == element.name.local);
    final elementTypes = simpleTypes.where((e) => e.name == element.name.local);
    final elementComplexTypes = complexTypes?.complexTypes.where((e) => e.isElement(element) || e.hasChildElement(element));

    bool valid = true;
    if (targetElement.isNotEmpty){
      valid = targetElement.first.validate(
        element,
        simpleTypes:simpleTypes,
        complexTypes: complexTypes?.complexTypes,
        imports: imports,
        qualified: elementFormDefaultQualified,
      );
      if (!valid) throw XSDvalidationException(element.name.local, 'Unexpected value: ${element.text}');
    }
    else if (elementTypes.isNotEmpty) {
      final simpleType = elementTypes.first;
      valid = simpleType.validateElement(element);
      if (!valid) throw XSDvalidationException(element.name.local, 'Unexpected value: ${element.text}');
      if (element.childElements.isNotEmpty) {
        for (final child in element.childElements) {
          valid = validateElement(child);
          if (!valid) throw XSDvalidationException(child.name.local, 'Unexpected value: ${child.text}');
        }
      }
    } else if (elementComplexTypes?.isNotEmpty ?? false){
      final complexType = elementComplexTypes!.first;
        valid = complexType.validateElement(element,
            simpleTypes:simpleTypes,
            complexTypes: complexTypes?.complexTypes,
            qualified: elementFormDefaultQualified,
        );
        if (!valid) throw XSDvalidationException(element.name.local, 'Unexpected value: ${element.text}');
    } else {
      if (elementFormDefaultQualified) {
        throw XSDvalidationException(
            element.name.local, 'Unexpected element: ${element.name.local}');
      }
    }
    return valid;
  }

  bool validateDocument(xml.XmlDocument document){
    final root = document.rootElement;
    final documentXlns = root.getAttribute('xmlns');
    assert (xmlns == documentXlns, 'xmlns is not equal');
    return validateElement(root);
  }

  bool validateString(String xmlString){
    final document = xml.XmlDocument.parse(xmlString);
    return validateDocument(document);
  }

  XSdSchema merge(XSdSchema other){
    final elements = [...this.elements, ...other.elements];
    final simpleTypes = [...this.simpleTypes, ...other.simpleTypes];
    final complexTypes =  this.complexTypes?.merge(other.complexTypes) ?? other.complexTypes;
    return XSdSchema(
      root: this.root,
      xmlns: xmlns,
      attributeFormDefault: attributeFormDefault,
      elementFormDefault: elementFormDefault,
      targetNamespace: targetNamespace,
      version: version,
      encoding: encoding,
      imports: [...this.imports, ...other.imports],
      elements: elements,
      simpleTypes: simpleTypes,
      complexTypes: complexTypes,
    );
  }


}

class SimpleTypes{
  final xml.XmlElement? element;
  final String? name;
  final String? documentation;
  final Iterable<Restriction> restrictions;
  final Iterable<Attribute>? attributes;

  @override
  String toString() {
    return 'SimpleTypes{name: $name, documentation: $documentation, restrictions: $restrictions, attributes: $attributes}';
  }

  SimpleTypes({
    this.element,
    required this.name,
    this.documentation,
    required this.restrictions,
    this.attributes,
  });

  factory SimpleTypes.fromElement(xml.XmlElement element, String? prefix){
    final name = element.getAttribute('name');
    String? documentation;
    final annotation = element.findElements(_getPrefixedName('annotation', prefix));
    if (annotation.isNotEmpty){
      final documentationElement = annotation.first.findElements(_getPrefixedName('documentation', prefix));
      if (documentationElement.isNotEmpty){
        documentation = documentationElement.first.text;
      }
    }

    final attributes = element.findElements(_getPrefixedName('attribute', prefix)).map((e) => Attribute.fromElement(e, prefix));

    final restrictions = element.findElements(_getPrefixedName('restriction', prefix)).map((e) => Restriction.fromElement(e, prefix));

    return SimpleTypes(
      element: element,
      name: name,
      documentation: documentation,
      restrictions: restrictions,
      attributes: attributes,
    );
  }

  bool hasType(xml.XmlElement element){
    return name != null && element.getAttribute('type') == name;
  }

  bool validateElement(xml.XmlElement element){
    bool isValid = true;

    for (final restriction in restrictions){
      isValid = restriction.validate(element);
      if (!isValid){
        break;
      }
    }

    if (attributes?.isNotEmpty ?? false){
      for (final attribute in attributes!){
        if (attribute.needsValidation(element)) {
          isValid = attribute.validate(element, [this]);
          if (!isValid) {
            break;
          }
        }
      }
    }

    return isValid;
  }

  bool validateAttribute(String? value){
    bool isValid = true;

    for (final restriction in restrictions){
      isValid = restriction.validateAttribute(value);
      if (!isValid){
        break;
      }
    }

    return isValid;
  }

}

class Restriction{
  final xml.XmlElement? debug;
  final String base;
  final Iterable<_Enumeration> enumeration;
  final Iterable<_FractionDigits> fractionDigits;
  final Iterable<_Length> length;
  final Iterable<_MaxExclusive> maxExclusive;
  final Iterable<_MaxInclusive> maxInclusive;
  final Iterable<_MaxLength> maxLength;
  final Iterable<_MinExclusive> minExclusive;
  final Iterable<_MinInclusive> minInclusive;
  final Iterable<_MinLength> minLength;
  final Iterable<_Pattern> pattern;
  final Iterable<_TotalDigits> totalDigits;
  final Iterable<_WhiteSpace> whiteSpace;
  final Map<dynamic, dynamic> attributes;


  Restriction(
      this.debug,
      this.base,
      this.enumeration,
      this.fractionDigits,
      this.length,
      this.maxExclusive,
      this.maxInclusive,
      this.maxLength,
      this.minLength,
      this.minExclusive,
      this.minInclusive,
      this.pattern,
      this.totalDigits,
      this.whiteSpace,
      this.attributes);

  @override
  String toString() {
    return 'Restriction{base: $base, enumeration: $enumeration, fractionDigits: $fractionDigits, length: $length, maxExclusive: $maxExclusive, maxInclusive: $maxInclusive, maxLength: $maxLength, minLength: $minLength, minExclusive: $minExclusive, minInclusive: $minInclusive, pattern: $pattern, totalDigits: $totalDigits, whiteSpace: $whiteSpace, attributes: $attributes}';
  }

  factory Restriction.fromElement(xml.XmlElement element, String? prefix){
    final base = element.getAttribute('base');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    final enumeration = element.findElements(_getPrefixedName('enumeration', prefix)).map((e) => _Enumeration.fromElement(e));
    final fractionDigits = element.findElements(_getPrefixedName('fractionDigits', prefix)).map((e) => _FractionDigits.fromElement(e));
    final length = element.findElements(_getPrefixedName('length', prefix)).map((e) => _Length.fromElement(e));
    final maxExclusive = element.findElements(_getPrefixedName('maxExclusive', prefix)).map((e) => _MaxExclusive.fromElement(e));
    final maxInclusive = element.findElements(_getPrefixedName('maxInclusive', prefix)).map((e) => _MaxInclusive.fromElement(e));
    final maxLength = element.findElements(_getPrefixedName('maxLength', prefix)).map((e) => _MaxLength.fromElement(e));
    final minExclusive = element.findElements(_getPrefixedName('minExclusive', prefix)).map((e) => _MinExclusive.fromElement(e));
    final minInclusive = element.findElements(_getPrefixedName('minInclusive', prefix)).map((e) => _MinInclusive.fromElement(e));
    final minLength = element.findElements(_getPrefixedName('minLength', prefix)).map((e) => _MinLength.fromElement(e));
    final pattern = element.findElements(_getPrefixedName('pattern', prefix)).map((e) => _Pattern.fromElement(e));
    final totalDigits = element.findElements(_getPrefixedName('totalDigits', prefix)).map((e) => _TotalDigits.fromElement(e));
    final whiteSpace = element.findElements(_getPrefixedName('whiteSpace', prefix)).map((e) => _WhiteSpace.fromElement(e));
    return Restriction(
      element,
      base!,
      enumeration,
      fractionDigits,
      length,
      maxExclusive,
      maxInclusive,
      maxLength,
      minLength,
      minExclusive,
      minInclusive,
      pattern,
      totalDigits,
      whiteSpace,
      attributes,
    );
  }

  bool validate(xml.XmlElement element){
    bool isValid = true;
    if (enumeration.isNotEmpty){
      isValid = enumeration.map((e) => e.validate(element)).contains(true);
      if (!isValid){
        throw XSDvalidationException(element.localName, 'Element ${element} is not a valid enumeration');
      }
    }

    for (final fractionDigits in fractionDigits){
      isValid = fractionDigits.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final length in length){
      isValid = length.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxExclusive in maxExclusive){
      isValid = maxExclusive.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxInclusive in maxInclusive){
      isValid = maxInclusive.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxLength in maxLength){
      isValid = maxLength.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final minExclusive in minExclusive){
      isValid = minExclusive.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final minInclusive in minInclusive){
      isValid = minInclusive.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final minLength in minLength){
      isValid = minLength.validate(element);
      if (!isValid){
        return isValid;
      }
    }

    for (final pattern in pattern){
      isValid = pattern.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final totalDigits in totalDigits){
      isValid = totalDigits.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    for (final whiteSpace in whiteSpace){
      isValid = whiteSpace.validate(element);
      if (!isValid){
        return isValid;
      }
    }
    return isValid;
  }

  bool validateAttribute(String? value){
    bool isValid = true;
    if (enumeration.isNotEmpty){
      isValid = enumeration.any((e) => e.validateValue(value));
      if (!isValid){
        for (final e in enumeration){
          print(e.value);
        }
        throw XSDvalidationException(value ?? 'null', 'Value $value is not a valid enumeration');
      }
    }

    for (final fractionDigits in fractionDigits){
      isValid = fractionDigits.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final length in length){
      isValid = length.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxExclusive in maxExclusive){
      isValid = maxExclusive.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxInclusive in maxInclusive){
      isValid = maxInclusive.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final maxLength in maxLength){
      isValid = maxLength.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final minExclusive in minExclusive){
      isValid = minExclusive.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final minInclusive in minInclusive){
      isValid = minInclusive.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final minLength in minLength){
      isValid = minLength.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }

    for (final pattern in pattern){
      isValid = pattern.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final totalDigits in totalDigits){
      isValid = totalDigits.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    for (final whiteSpace in whiteSpace){
      isValid = whiteSpace.validateValue(value);
      if (!isValid){
        return isValid;
      }
    }
    return isValid;
  }
}

class _Enumeration{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _Enumeration(this.value, this.attributes);

  factory _Enumeration.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _Enumeration(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    return element.text == value;
  }

  bool validateValue(String? value){
    return value == this.value;
  }
}

class _FractionDigits{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _FractionDigits(this.value, this.attributes);

  factory _FractionDigits.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _FractionDigits(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = element.text.split('.').last.length <= int.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has more than $value fraction digits');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = value!.split('.').last.length <= int.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value has more than $value fraction digits');
    }
    return response;
  }
}

class _Length{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _Length(this.value, this.attributes);

  factory _Length.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _Length(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = element.text.length == int.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has not the required length of $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = value!.length == int.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value has not the required length of $value');
    }
    return response;
  }
}

class _MaxExclusive{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MaxExclusive(this.value, this.attributes);

  factory _MaxExclusive.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MaxExclusive(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = double.parse(element.text) < double.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} is not less than $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = double.parse(value!) < double.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value is not less than $value');
    }
    return response;
  }
}

class _MaxInclusive{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MaxInclusive(this.value, this.attributes);

  factory _MaxInclusive.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MaxInclusive(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = double.parse(element.text) <= double.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} is not less or equal than $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = double.parse(value!) <= double.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value is not less or equal than $value');
    }
    return response;
  }
}

class _MaxLength{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MaxLength(this.value, this.attributes);

  factory _MaxLength.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MaxLength(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = element.text.length <= int.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has more than $value characters');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = value!.length <= int.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value has more than $value characters');
    }
    return response;
  }
}

class _MinExclusive{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MinExclusive(this.value, this.attributes);

  factory _MinExclusive.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MinExclusive(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = double.parse(element.text) > double.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} is not greater than $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = double.parse(value!) > double.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value is not greater than $value');
    }
    return response;
  }
}

class _MinInclusive{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MinInclusive(this.value, this.attributes);

  factory _MinInclusive.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MinInclusive(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = double.parse(element.text) >= double.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} is not greater or equal than $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = double.parse(value!) >= double.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value is not greater or equal than $value');
    }
    return response;
  }
}

class _MinLength{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _MinLength(this.value, this.attributes);

  factory _MinLength.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _MinLength(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = element.text.length >= int.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has less than $value characters');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = value!.length >= int.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value has less than $value characters');
    }
    return response;
  }
}

class _Pattern{
  final xml.XmlElement debug;
  final String value;
  final Map<dynamic, dynamic>? attributes;

  @override
  String toString() => 'Pattern: $value';

  _Pattern(this.debug, this.value, this.attributes);

  factory _Pattern.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _Pattern(element, value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = RegExp(value).hasMatch(element.text);
    if (!response){

      throw XSDvalidationException(element.localName, 'Element value ${element.text} does not match the pattern $value');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = RegExp(this.value).hasMatch(value!);
    if (!response){
      throw XSDvalidationException(value, 'Value $value does not match the pattern ${this.value}');
    }
    return response;
  }
}

class _TotalDigits{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _TotalDigits(this.value, this.attributes);

  factory _TotalDigits.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _TotalDigits(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = element.text.length == int.parse(value);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has more or less than $value digits');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = value!.length == int.parse(this.value);
    if (!response){
      throw XSDvalidationException(value, 'Value $value has more or less than $value digits');
    }
    return response;
  }
}

class _WhiteSpace{
  final String value;
  final Map<dynamic, dynamic>? attributes;

  _WhiteSpace(this.value, this.attributes);

  factory _WhiteSpace.fromElement(xml.XmlElement element){
    final value = element.getAttribute('value');
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _WhiteSpace(value!, attributes);
  }

  bool validate(xml.XmlElement element){
    final response = value == 'collapse' ? element.text.replaceAll(' ', '').replaceAll('\t', '').replaceAll('\n', '').replaceAll('\r', '') == element.text : true;
    if (!response){
      throw XSDvalidationException(element.localName, 'Element value ${element.text} has whitespaces');
    }
    return response;
  }

  bool validateValue(String? value){
    final response = this.value == 'collapse' ? value!.replaceAll(' ', '').replaceAll('\t', '').replaceAll('\n', '').replaceAll('\r', '') == value : true;
    if (!response){
      throw XSDvalidationException(value, 'Value $value has whitespaces');
    }
    return response;
  }
}

class _ComplexTypes{
  final Iterable<ComplexType> complexTypes;

  @override
  String toString() => complexTypes.toString();

  _ComplexTypes(this.complexTypes);

  factory _ComplexTypes.fromSchema(xml.XmlDocument schema){
    final prefix = schema.rootElement.name.prefix;
    final complexTypes = <ComplexType>[];
    schema.root.findAllElements(_getPrefixedName('complexType', prefix)).forEach((e) {
      final complexType = ComplexType.fromElement(e, e.localName, prefix);
      complexTypes.add(complexType);
    });
    return _ComplexTypes(complexTypes);
  }

  _ComplexTypes merge(_ComplexTypes? other){
    return _ComplexTypes({...complexTypes, ...other?.complexTypes ?? {}});
  }

  bool hasChildElement(xml.XmlElement element){
    return complexTypes.any((e) => e.isElement(element) || e.hasChildElement(element));
  }

  ComplexType? findType(String type){
    final resp = complexTypes.where((e) => e.name == type);
    if (resp.isNotEmpty){
      return resp.first;
    }
    return null;
  }

}

class ComplexType {
  xml.XmlElement? debug;
  final String elementName;
  final String? name;
  final String? ref;
  final int? minOccurs;
  final int? maxOccurs;
  final Iterable<Element>? elements;
  final Iterable<Sequence>? sequence;
  final Iterable<Choice>? choice;
  final Iterable<_All>? all;
  final Iterable<SimpleTypes>? simpleTypes;
  final Iterable<ComplexType>? complexTypes;
  final SimpleContent? simpleContent;
  final ComplexContent? complexContent;
  final Iterable<Attribute>? attributes;

  @override
  String toString() {
    return 'ComplexType{elementName: $elementName, name: $name, sequence: $sequence, choice: $choice, all: $all, complexType: $complexTypes simpleContent: $simpleContent, complexContent: $complexContent, attributes: $attributes}';
  }

  ComplexType({
        this.debug,
        this.minOccurs,
        this.maxOccurs,
        required this.elementName,
        required this.name,
        required this.ref,
        required this.elements,
        required this.sequence,
        required this.choice,
        required this.all,
        required this.simpleTypes,
        required this.complexTypes,
        required this.simpleContent,
        required this.complexContent,
        required this.attributes});

  factory ComplexType.fromElement(xml.XmlElement element, String elementName, String? prefix){

    final name = element.getAttribute('name');
    final ref = element.getAttribute('ref');
    final minOccurs = element.getAttribute('minOccurs');
    final maxOccurs = element.getAttribute('maxOccurs');

    final elements = element
        .findElements(_getPrefixedName('element', prefix)).map((e) => Element.fromElement(e, prefix));
    final sequence = element
        .findElements(_getPrefixedName('sequence', prefix)).map((e) => Sequence.fromElement(e, prefix));
    final choice = element
        .findElements(_getPrefixedName('choice', prefix))
        .map((e) => Choice.fromElement(e, prefix));
    final all = element
        .findElements(_getPrefixedName('all', prefix))
        .map((e) => _All.fromElement(e, prefix));
    final simpleContent = element
        .findElements(_getPrefixedName('simpleContent', prefix))
        .isNotEmpty ? SimpleContent.fromElement(element
        .findElements(_getPrefixedName('simpleContent', prefix))
        .first, prefix) : null;
    final complexContent = element
        .findElements(_getPrefixedName('complexContent', prefix))
        .isNotEmpty ? ComplexContent.fromElement(element
        .findElements(_getPrefixedName('complexContent', prefix))
        .first, prefix) : null;
    final complexTypes = element
        .findElements(_getPrefixedName('complexType', prefix)).map((e) => ComplexType.fromElement(e, e.localName, prefix));

    final simpleTypes = element
        .findElements(_getPrefixedName('simpleType', prefix)).map((e) => SimpleTypes.fromElement(e, prefix));

    final attributes = element
        .findElements(_getPrefixedName('attribute', prefix)).map((e) => Attribute.fromElement(e, prefix));
    return ComplexType(
      minOccurs: minOccurs != null ? int.tryParse(minOccurs) : null,
      maxOccurs: maxOccurs != null ? int.parse(maxOccurs) : null,
        debug: element,
        elementName: elementName,
        name: name,
        ref: ref,
        elements: elements,
        sequence: sequence,
        choice: choice,
        all: all,
        simpleTypes: simpleTypes,
        complexTypes: complexTypes,
        simpleContent: simpleContent,
        complexContent: complexContent,
        attributes: attributes);
  }

  bool isElement(xml.XmlElement element){
    return element.localName == elementName ||
        (element.getAttribute('name') != null && element.getAttribute('name') == name) ||
        (element.getAttribute('ref') != null && element.getAttribute('ref') == ref) ||
        (element.getAttribute('type') != null && element.getAttribute('type') == name);
  }

  bool isType(String type){
    return type == name;
  }

  bool hasChildElement(xml.XmlElement element){
    return (sequence?.any((e) => e.hasElement(element)) ?? false) ||
        (choice?.any((e) => e.hasChild(element)) ?? false) ||
        (all?.any((e) => e.hasElement(element)) ?? false) ||
        (complexTypes?.any((e) => e.isElement(element) || e.hasChildElement(element))?? false) ||
        (simpleTypes?.any((e) => e.hasType(element))?? false) ||
        (elements?.any((e) => e.isElement(element))?? false);
  }

  bool validateElement(
    xml.XmlElement element, {
    Iterable<ComplexType>? complexTypes,
    Iterable<SimpleTypes>? simpleTypes,
    Iterable<XSdSchema>? imports,
    bool qualified = true,
  }) {

    final _simpleTypes = [...?this.simpleTypes, ...?simpleTypes];
    final _complexTypes = [...?this.complexTypes, ...?complexTypes];

    bool isValid = true;
    for (final child in element.childElements) {
      if (sequence != null &&
          sequence!.isNotEmpty &&
          sequence!.any((e) => e.hasElement(child))
      ) {
        final targetSequence = sequence!.firstWhere((e) => e.hasElement(child));

        isValid = targetSequence.validate(child,
            complexTypes: complexTypes,
            simpleTypes: simpleTypes,
            imports: imports,
            qualified: qualified);

      }
      else if (choice != null &&
          choice!.isNotEmpty &&
          choice!.any((e) => e.hasChild(child))){
        final target = choice!.where((e) => e.hasChild(child)).first;
          isValid = target.validate(child,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
      }
      else if (all != null &&
          all!.isNotEmpty &&
          all!.any((e) => e.elements.where((e) => e.name == child.name.local).isNotEmpty)) {
        final elements = all!.where((e) => e.elements.where((e) => e.name == child.name.local).isNotEmpty).expand((element) => element.elements).where((e) => e.name == child.name.local);
        for (final _element in elements) {
          isValid = _element.validate(child,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
        }
      }
      else if (simpleContent != null) {
        isValid = simpleContent!.validate(child,
            complexTypes: complexTypes, simpleTypes: simpleTypes);
      }
      else if (complexContent != null) {
        isValid = complexContent!.validate(child,
            complexTypes: complexTypes, simpleTypes: simpleTypes);
      } else if (_simpleTypes.isNotEmpty &&
          _simpleTypes.any((e) => e.hasType(child))) {
        final targetSimpleType = _simpleTypes.firstWhere((e) => e.hasType(child));
        isValid = targetSimpleType.validateElement(child);
      } else if (_complexTypes.isNotEmpty &&
          _complexTypes.any((e) => e.isElement(child) || e.hasChildElement(child))) {
        final targetComplexType = _complexTypes.firstWhere((e) => e.isElement(child) || e.hasChildElement(child));
        isValid = targetComplexType.validateElement(child, complexTypes: complexTypes, simpleTypes: simpleTypes);
      } else if ((elements?.isNotEmpty ?? false) &&
          elements!.any((e) => e.isElement(child))) {
        final element = elements!.firstWhere((e) => e.isElement(child));
        isValid = element.validate(child,
            complexTypes: complexTypes, simpleTypes: simpleTypes);
      } else {
        if (qualified) {
          throw XSDvalidationException(
              child.name.local, 'Element ${child.name.local} is not valid \n $this');
        }
      }
    }

    // if (attributes?.isNotEmpty ?? false) {
    //   for (final attribute in attributes!) {
    //     if (attribute.needsValidation(element)) {
    //       attribute.validate(element, simpleTypes);
    //     }
    //   }
    // }

    return isValid;
  }
}

class _All{
  final List<Element> elements;
  final Map<dynamic, dynamic>? attributes;

  _All(this.elements, this.attributes);

  factory _All.fromElement(xml.XmlElement element, String? prefix){
    final elements = <Element>[];
    element.findElements(_getPrefixedName('element', prefix)).forEach((e) {
      elements.add(Element.fromElement(e, prefix));
    });
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return _All(elements, attributes);
  }

  bool hasElement(xml.XmlElement element){
    return elements.any((e) => e.isElement(element));
  }

  bool validate(xml.XmlElement element,
      {
      Iterable<ComplexType>? complexTypes,
      Iterable<SimpleTypes>? simpleTypes,
    }){
    final response = elements.every((e) => e.validate(element, complexTypes: complexTypes, simpleTypes: simpleTypes));
    if (!response){
      throw XSDvalidationException(element.localName, 'Element does not match the all definition');
    }
    return response;
  }
}

class ComplexContent{
  final Extension? extension;
  final Map<dynamic, dynamic>? attributes;

  ComplexContent(this.extension, this.attributes);

  factory ComplexContent.fromElement(xml.XmlElement element, String? prefix){
    final extension = element.findElements(_getPrefixedName('extension', prefix)).isNotEmpty ? Extension.fromElement(element.findElements(_getPrefixedName('extension', prefix)).first, prefix) : null;
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return ComplexContent(extension, attributes);
  }

  bool validate(xml.XmlElement element,
      {
      Iterable<ComplexType>? complexTypes,
      Iterable<SimpleTypes>? simpleTypes,
    }){
    final response = extension!.validate(element, complexTypes: complexTypes, simpleTypes: simpleTypes);
    if (!response){
      throw XSDvalidationException(element.localName, 'Element does not match the complex content definition');
    }
    return response;
  }
}

class Choice{
  final int? minOccurs;
  final int? maxOccurs;
  final Iterable<Element>? elements;
  final Iterable<SimpleTypes>? simpleTypes;
  final Iterable<ComplexType>? complexTypes;
  final Iterable<Choice>? choice;
  final Iterable<_All>? all;
  final Iterable<Sequence>? sequence;
  final Iterable<Attribute>? attributes;

  Choice({
    this.minOccurs,
    this.maxOccurs,
    this.elements,
    this.simpleTypes,
    this.complexTypes,
    this.choice,
    this.all,
    this.sequence,
    this.attributes,
  });

  @override
  String toString() {
    return 'Choice{elements: $elements, choice: $choice, all: $all, sequence: $sequence, attributes: $attributes}';
  }

  factory Choice.fromElement(xml.XmlElement element, String? prefix){
    final elements = <Element>[];
    element.findElements(_getPrefixedName('element', prefix)).forEach((e) {
      elements.add(Element.fromElement(e, prefix));
    });
    final minOccurs = element.getAttribute('minOccurs') != null ? int.tryParse(element.getAttribute('minOccurs')!) : null;
    final maxOccurs = element.getAttribute('maxOccurs') != null ? int.tryParse(element.getAttribute('maxOccurs')!) : null;
    final choice = element.findElements(_getPrefixedName('choice', prefix)).isNotEmpty ? element.findElements(_getPrefixedName('choice', prefix)).map((e) => Choice.fromElement(e, prefix)) : null;
    final all = element.findElements(_getPrefixedName('all', prefix)).isNotEmpty ? element.findElements(_getPrefixedName('all', prefix)).map((e) => _All.fromElement(e, prefix)) : null;
    final sequence = element.findElements(_getPrefixedName('sequence', prefix)).isNotEmpty ? element.findElements(_getPrefixedName('sequence', prefix)).map((e) => Sequence.fromElement(e, prefix)) : null;
    final attributes = element.findElements(_getPrefixedName('attribute', prefix)).map((e) => Attribute.fromElement(e, prefix));
    final simpleTypes = element.findElements(_getPrefixedName('simpleType', prefix)).map((e) => SimpleTypes.fromElement(e, prefix));
    final complexTypes = element.findElements(_getPrefixedName('complexType', prefix)).map((e) => ComplexType.fromElement(e, element.localName, prefix));
    return Choice(
      minOccurs: minOccurs,
      maxOccurs: maxOccurs,
      elements: elements,
      choice: choice,
      all: all,
      sequence: sequence,
      attributes: attributes,
      simpleTypes: simpleTypes,
      complexTypes: complexTypes,
    );

  }

  bool hasChild(xml.XmlElement element){
    return (elements?.any((e) => e.isElement(element)) ?? false) ||
        (choice?.any((e) => e.hasChild(element)) ?? false) ||
        (sequence?.any((e) => e.hasElement(element)) ?? false) ||
        (simpleTypes?.any((e) => e.hasType(element)) ?? false) ||
        (complexTypes?.any((e) => e.isElement(element) || e.hasChildElement(element)) ?? false);
  }

  bool validate(
      xml.XmlElement element, {
        Iterable<ComplexType>? complexTypes,
        Iterable<SimpleTypes>? simpleTypes,
        bool qualified = true,
      }) {
    bool isValid = true;
    bool achou = false;

    if (elements?.isNotEmpty ?? false) {
      for (final e in elements!) {
        if (e.isElement(element)) {
          isValid = e.validate(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (choice?.isNotEmpty ?? false)) {
      for (final e in choice!) {
        if (e.hasChild(element)) {
          isValid = e.validate(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (all?.isNotEmpty ?? false)) {
      for (final e in all!) {
        if (e.hasElement(element)) {
          isValid = e.validate(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (sequence?.isNotEmpty ?? false)) {
      for (final e in sequence!) {
        if (e.hasElement(element)) {
          assert(element.childElements.isNotEmpty);
          for (final child in element.childElements) {
            isValid = e.validate(child,
                complexTypes: [...?complexTypes, ...?this.complexTypes], simpleTypes: [...?simpleTypes, ...?this.simpleTypes]);
            achou = true;
            break;
          }
        }
      }
    }

    if (!achou && (simpleTypes?.isNotEmpty ?? false)) {
      for (final e in simpleTypes!) {
        if (e.hasType(element)) {
          isValid = e.validateElement(element);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (complexTypes?.isNotEmpty ?? false)) {
      for (final e in complexTypes!) {
        if (e.isElement(element) || e.hasChildElement(element)) {
          isValid = e.validateElement(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }

    for (final a in attributes!) {
      if (a.needsValidation(element)) {
        isValid = a.validate(element, simpleTypes);
      }
    }

    if (!achou && qualified){
      throw XSDvalidationException(element.localName, 'Element ${element.localName} does not match sequence child');
    }

    if (attributes?.isNotEmpty ?? false){
      for (final a in attributes!) {
        if (a.needsValidation(element)) {
          isValid = a.validate(element, simpleTypes);
        }
      }
    }

    return isValid;
  }
}

class Sequence {
  final int? minOccurs;
  final int? maxOccurs;
  final List<Element> elements;
  final Iterable<Choice>? choice;
  final Iterable<SimpleTypes>? simpleTypes;
  final Iterable<ComplexType>? complexTypes;
  final Iterable<_All>? all;
  final Iterable<Sequence>? sequence;
  final Iterable<Attribute> attributes;

  final List<dynamic> childOrder;


  Sequence(
      {this.minOccurs,
      this.maxOccurs,
      required this.elements,
      required this.attributes,
      this.choice,
      this.all,
      this.sequence,
      this.simpleTypes,
      this.complexTypes,
      required this.childOrder});

  @override
  String toString() {
    return 'Sequence{minOccurs: $minOccurs, maxOccurs: $maxOccurs, elements: $elements, choice: $choice, all: $all, sequence: $sequence, attributes: $attributes}';
  }

  bool hasElement(xml.XmlElement element){
    return elements.any((e) => e.isElement(element)) || (choice?.any((e) => e.hasChild(element)) ?? false)|| (all?.any((e) => e.hasElement(element)) ?? false) || (sequence?.any((e) => e.hasElement(element)) ?? false);
  }

  factory Sequence.fromElement(xml.XmlElement element, String? prefix){
    final minOccurs = element.getAttribute('minOccurs') != null ? int.tryParse(element.getAttribute('minOccurs')!) : null;
    final maxOccurs = element.getAttribute('maxOccurs') != null ? int.tryParse(element.getAttribute('maxOccurs')!) : null;

    final children = element.childElements;
    final elements = <Element>[];
    final choice = <Choice>[];
    final sequence = <Sequence>[];
    final simpleTypes = <SimpleTypes>[];
    final complexTypes = <ComplexType>[];
    final childOrder = <dynamic>[];


    for (final child in children){
      if (child.name.local == 'element' && child.namespacePrefix == prefix){
        final target = Element.fromElement(child, prefix);
        childOrder.add(target);
        elements.add(target);
      }
      if (child.name.local == 'choice' && child.namespacePrefix == prefix){
        final target = Choice.fromElement(child, prefix);
        childOrder.add(target);
        choice.add(target);
      }
      if (child.name.local == 'sequence' && child.namespacePrefix == prefix){
        final target = Sequence.fromElement(child, prefix);
        childOrder.add(target);
        sequence.add(target);
      }
      if (child.name.local == 'simpleType' && child.namespacePrefix == prefix){
        final target = SimpleTypes.fromElement(child, prefix);
        childOrder.add(target);
        simpleTypes.add(target);
      }
      if (child.name.local == 'complexType'&& child.namespacePrefix == prefix){
        final target = ComplexType.fromElement(child, element.localName, prefix);
        childOrder.add(target);
        complexTypes.add(target);
      }
    }

    final all = element
        .findElements(_getPrefixedName('all', prefix))
        .isNotEmpty ? element
        .findElements(_getPrefixedName('all', prefix))
        .map((e) => _All.fromElement(e, prefix)) : null;

    final attributes = element
        .findElements(_getPrefixedName('attribute', prefix))
        .map((e) => Attribute.fromElement(e, prefix));

    return Sequence(
        minOccurs: minOccurs,
        maxOccurs: maxOccurs,
        elements: elements,
        attributes: attributes,
        choice: choice,
        all: all,
        sequence: sequence,
        simpleTypes: simpleTypes,
        complexTypes: complexTypes,
        childOrder: childOrder,
    );
  }

  bool validate(xml.XmlElement element, {
    Iterable<ComplexType>? complexTypes,
    Iterable<SimpleTypes>? simpleTypes,
    Iterable<XSdSchema>? imports,
    bool qualified = true,
  }) {
    bool isValid = true;
    bool achou = false;

    final _simpleTypes = [...?simpleTypes, ...?this.simpleTypes];
    final _complexTypes = [...?complexTypes, ...?this.complexTypes];

    for (final e in elements){
      if (e.isElement(element) || e.hasChild(element)){
        isValid = e.validate(element, complexTypes: complexTypes, simpleTypes: simpleTypes, imports: imports);
        achou = true;
        break;
      }
    }
    if (!achou && (choice?.isNotEmpty ?? false)) {
      for (final e in choice!) {
        if (e.hasChild(element)) {
          isValid = e.validate(element,
              complexTypes: [...?complexTypes, ...?this.complexTypes], simpleTypes: [...?simpleTypes, ...?this.simpleTypes]);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (all?.isNotEmpty ?? false)) {
      for (final e in all!) {
        if (e.hasElement(element)) {
          isValid = e.validate(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }
    if (!achou && (sequence?.isNotEmpty ?? false)) {
      for (final e in sequence!) {
        if (e.hasElement(element)) {
          isValid = e.validate(element,
              complexTypes: complexTypes, simpleTypes: simpleTypes);
          achou = true;
          break;
        }
      }
    }

    if (!achou && _simpleTypes.isNotEmpty) {
      for (final e in _simpleTypes) {
        if (e.hasType(element)) {
          isValid = e.validateElement(element);
          achou = true;
          break;
        }
      }
    }

    if (!achou && _complexTypes.isNotEmpty) {
      for (final e in _complexTypes) {
        if (e.isElement(element) || e.hasChildElement(element)) {
          isValid = e.validateElement(element,
              complexTypes: _complexTypes, simpleTypes: _simpleTypes);
          achou = true;
          break;
        }
      }
    }

    // if (element.childElements.isNotEmpty){
    //   for (final e in element.childElements){
    //     validate(e, complexTypes: complexTypes, simpleTypes: simpleTypes, qualified: qualified);
    //   }
    // }

    if (!achou && qualified){
      throw XSDvalidationException(element.localName, 'Element ${element.localName} does not match sequence child \n $this');
    }

    for (final attr in attributes){
      if (attr.needsValidation(element)){
        isValid = attr.validate(element, simpleTypes);
      }
    }

    return isValid;
  }
}

class Element {
  final xml.XmlElement? element;
  final int? minOccurs;
  final int? maxOccurs;
  final String? name;
  final String? type;
  final String? ref;
  final Iterable<ComplexType>? complexType;
  final Iterable<SimpleTypes>? simpleType;
  final Iterable<Attribute>? attributes;
  // final Iterable<Sequence>? sequence;
  final Iterable<Choice>? choice;
  final Iterable<_All>? all;

  @override
  String toString() {
    return 'Element: $name $type $ref $complexType $simpleType $attributes $choice $all';
  }

  Element(this.element, this.minOccurs, this.maxOccurs, this.name, this.type, this.ref, this.complexType, this.simpleType,
      this.attributes,
      // this.sequence,
      this.choice,
      this.all){
    assert(name != null || ref != null);
  }

  bool isElement(xml.XmlElement element){
    return element.localName == name;
  }

  bool hasChild(xml.XmlElement element){
    return (complexType?.any((e) => e.isElement(element) || e.hasChildElement(element)) ?? false) ||
        (simpleType?.any((e) => e.hasType(element)) ?? false) ||
        // (sequence?.any((e) => e.hasElement(element)) ?? false) ||
        (choice?.any((e) => e.hasChild(element)) ?? false);
  }

  factory Element.fromElement(xml.XmlElement element, String? prefix){
    final name = element.getAttribute('name');
    final type = element.getAttribute('type')?.split(':').last;
    final ref = element.getAttribute('ref')?.split(':').last;
    final minOccurs = element.getAttribute('minOccurs') != null ? int.tryParse(element.getAttribute('minOccurs')!) : null;
    final maxOccurs = element.getAttribute('maxOccurs') != null ? int.tryParse(element.getAttribute('maxOccurs')!) : null;
    String? refName;
    if (ref != null){
      refName = ref.split(':').last;
    }

    final complexType = element
        .findElements(_getPrefixedName('complexType', prefix))
        .isNotEmpty ? element.findElements(_getPrefixedName('complexType', prefix)).map((e) =>
        ComplexType.fromElement(e, name!, prefix)) : null;
    final simpleType = element
        .findElements(_getPrefixedName('simpleType', prefix))
        .isNotEmpty ? element.findElements(_getPrefixedName('simpleType', prefix)).map((e) =>
        SimpleTypes.fromElement(e, prefix)) : null;

    final attributes = element
        .findElements(_getPrefixedName('attribute', prefix))
        .isNotEmpty ? element.findElements(_getPrefixedName('attribute', prefix)).map((e) =>
        Attribute.fromElement(e, prefix)) : null;
    final sequence = element
        .findElements(_getPrefixedName('sequence', prefix))
        .isNotEmpty ? element
        .findElements(_getPrefixedName('sequence', prefix))
        .map((e) => Sequence.fromElement(e, prefix)) : null;
    if (sequence?.isNotEmpty ?? false){
      throw Exception('Element with sequence???');
    }
    final choice = element
        .findElements(_getPrefixedName('choice', prefix))
        .isNotEmpty ? element
        .findElements(_getPrefixedName('choice', prefix))
        .map((e) => Choice.fromElement(e, prefix)) : null;
    final all = element
        .findElements(_getPrefixedName('all', prefix))
        .isNotEmpty ? element
        .findElements(_getPrefixedName('all', prefix))
        .map((e) => _All.fromElement(e, prefix)) : null;
    return Element(element, minOccurs, maxOccurs, name ?? refName, type, ref, complexType, simpleType, attributes,
        // sequence,
        choice, all);
  }

  bool validate(xml.XmlElement element,
      {Iterable<ComplexType>? complexTypes,
      Iterable<SimpleTypes>? simpleTypes,
      Iterable<XSdSchema>? imports,
      bool qualified = true}) {
    bool isValid = true;

    final _simpleTypes = [...?simpleTypes, ...?this.simpleType];
    final _complexTypes = [...?complexTypes, ...?this.complexType];

    if (type != null && isElement(element)) {
      final targetSimpleTypes = _simpleTypes.where((e) => e.name == type);
      final unamedSimpleTypes = _simpleTypes.where((e) => e.name == null);
      final targetComplexTypes = _complexTypes.where((e) => e.isElement(element) || e.hasChildElement(element) || e.isType(type!));

      if (unamedSimpleTypes.isNotEmpty){
        for (final simpleType in unamedSimpleTypes) {
          isValid = simpleType.validateElement(element);
        }
      }
      else if (targetSimpleTypes.isNotEmpty) {
        for (final simpleType in targetSimpleTypes) {
          isValid = simpleType.validateElement(element);
        }
      } else if (targetComplexTypes.isNotEmpty) {

        isValid = targetComplexTypes.first.validateElement(
            element,
            complexTypes: _complexTypes,
            simpleTypes: _simpleTypes,
            imports: imports,
        );
      }
      // else if(sequence?.isNotEmpty ?? false){
      //   assert(element.childElements.isNotEmpty);
      //   for (final child in element.childElements) {
      //     final targetSequence = sequence!.firstWhere((e) => e.hasElement(child), orElse: () => throw Exception('Element ${child.localName} does not match sequence child'));
      //     isValid = targetSequence.validate(element, complexTypes: _complexTypes, simpleTypes: _simpleTypes);
      //   }

      // }
    else {
        if (qualified) {
          print(this);
          throw XSDvalidationException(element.localName,
              'Element ${element.localName} does not match the type definition $type');
        }
      }
    } else if (isElement(element)) {

      if (ref != null) {

        assert (imports != null && imports.isNotEmpty);
        bool achou = false;
        for (final imported in imports!){
          if (imported.hasChildElement(element)){
            isValid = imported.validateElement(element);
            achou = true;
          }
        }
        if (!achou){
          throw XSDvalidationException(element.localName,
              'Element ${element.name.local} import not found');
        }
      }
      final unamedSimpleTypes = _simpleTypes.where((e) => e.name == null);
      if (complexType != null) {
        final complexTypes =
        complexType!.where((element) => element.elementName == name);
        if (complexTypes.isEmpty) {
          throw Exception('Complex type $name not found');
        }
        for (final complexType in complexTypes) {

          isValid = complexType.validateElement(
              element, complexTypes: _complexTypes, simpleTypes: _simpleTypes);
        }
      } else if (simpleType != null) {
        if (simpleType?.isEmpty ?? true) {
          throw Exception('Simple types is empty');
        }
        final simpleTypes = simpleType!.where((element) =>
        element.name == type);
        if (simpleTypes.isEmpty) {
          throw Exception('Simple type $type not found');
        }
        for (final simpleType in simpleTypes) {
          isValid = simpleType.validateElement(element);
        }
      } else if (unamedSimpleTypes.isNotEmpty){
        for (final simpleType in unamedSimpleTypes) {

          isValid = simpleType.validateElement(element);
        }
      }

      if (attributes != null) {
        for (final attribute in attributes!) {
          if (attribute.needsValidation(element)) {
            isValid = attribute.validate(element, simpleTypes);
          }
        }
      }
    } else {
      if (complexType?.any((e) => e.isElement(element) || e.hasChildElement(element)) ?? false){
        final targetComplexTypes = complexType!.firstWhere((e) => e.isElement(element) || e.hasChildElement(element));
        isValid = targetComplexTypes.validateElement(
          element,
          complexTypes: _complexTypes,
          simpleTypes: _simpleTypes,
          imports: imports,
        );
      } else if (simpleType?.any((e) => e.hasType(element)) ?? false){
        final targetSimpleTypes = simpleType!.firstWhere((e) => e.hasType(element));

        isValid = targetSimpleTypes.validateElement(element);
      }
      // else if (sequence?.any((e) => e.hasElement(element)) ?? false){
      //   final targetSequence = sequence!.firstWhere((e) => e.hasElement(element));
      //   isValid = targetSequence.validate(element, complexTypes: _complexTypes, simpleTypes: _simpleTypes);
      // }
      else if (choice?.any((e) => e.hasChild(element)) ?? false){
        final targetChoice = choice!.firstWhere((e) => e.hasChild(element));
        isValid = targetChoice.validate(element, complexTypes: _complexTypes, simpleTypes: _simpleTypes);
      } else {
        if (qualified) {
          throw XSDvalidationException(element.localName,
              'Element ${element.name.local} does not match the type definition $type');
        }
      }
    }

    if (attributes?.isNotEmpty ?? false){
      for (final attribute in attributes!){
        if (attribute.needsValidation(element)){
          isValid = attribute.validate(element, _simpleTypes);
        }
      }
    }

    return isValid;
  }
}

class Attribute{
  final String name;
  final String? type;
  final String? use;
  final String? default_;
  final String? fixed;
  final String? form;
  final String? ref;
  final String? value;
  final Iterable<SimpleTypes>? simpleType;

  bool get required => use == 'required';

  Attribute(this.name, this.type, this.use, this.default_, this.fixed, this.form, this.ref, this.value, this.simpleType);

  @override
  String toString(){
    return 'Attribute: $name, type: $type, use: $use, default: $default_, fixed: $fixed, form: $form, ref: $ref, value: $value, simpleType: $simpleType';
  }

  factory Attribute.fromElement(xml.XmlElement element, String? prefix){
    final name = element.getAttribute('name');
    final type = element.getAttribute('type');
    final use = element.getAttribute('use');
    final default_ = element.getAttribute('default');
    final fixed = element.getAttribute('fixed');
    final form = element.getAttribute('form');
    final ref = element.getAttribute('ref');
    final value = element.getAttribute('value');
    final simpleType = element.findElements(_getPrefixedName('simpleType', prefix)).map((e) => SimpleTypes.fromElement(e, prefix)).toList();
    final complexType = element.findElements(_getPrefixedName('complexType', prefix));
    if (complexType.isNotEmpty){
      throw Exception('Complex type not supported for Attributes');
    }

    return Attribute(name!, type, use, default_, fixed, form, ref, value, simpleType);
  }

  bool needsValidation(xml.XmlElement element) {
    return use == 'required' || (use == 'optional' && element.getAttribute(name) != null);
  }

  bool validate(xml.XmlElement element,
      Iterable<SimpleTypes>? simpleTypes,
      ){
    bool isValid = true;
    if (use == 'required'){
      if (element.getAttribute(name) == null){
        throw XSDvalidationException(element.localName, 'Attribute $name is required');
      }
    }
    if (type != null){
      final targetSimpleTypes = simpleTypes!.where((e) => e.name == type);
      if (targetSimpleTypes.isNotEmpty){
        for (final simpleType in targetSimpleTypes){
          final value = element.getAttribute(name);
          print('Validating $element with type $type');
          print('simpleType: $simpleType');
          isValid = simpleType.validateAttribute(value);
        }
      } else {
        throw XSDvalidationException(element.localName, 'Attribute $name does not match the type definition $type');
      }
    }
    return isValid;
  }
}

class SimpleContent{
  final List<Extension>? extensions;
  final Map<dynamic, dynamic>? attributes;

  SimpleContent(this.extensions, this.attributes);

  factory SimpleContent.fromElement(xml.XmlElement element, String? prefix){
    final _extensions = element.findElements(_getPrefixedName('extension', prefix));
    List<Extension>? extensions;
    if (_extensions.isNotEmpty){
      extensions = _extensions.map((e) => Extension.fromElement(e, prefix)).toList();
    }
    final attributes = Map.fromIterable(element.attributes.map((e) => MapEntry<String, String>(e.name.local, e.value)));
    return SimpleContent(extensions, attributes);
  }

  bool validate(xml.XmlElement element, {Iterable<ComplexType>? complexTypes, Iterable<SimpleTypes>? simpleTypes}){
    if (extensions != null){
      final validations = [];
      for (final extension in extensions!){
        if (extension.needsValidation(element)){
          validations.add(extension.validate(element, complexTypes: complexTypes, simpleTypes: simpleTypes));
        }
      }
      return validations.every((e) => e);
    }
    return true;
  }
}

class Extension{
  final String base;
  final Iterable<SimpleTypes>? simpleTypes;
  final Iterable<ComplexType>? complexTypes;
  final Iterable<Element>? elements;
  final Iterable<Sequence>? sequence;
  final Iterable<Choice>? choice;
  final Iterable<Attribute>? attributes;
  final Iterable<Restriction>? restrictions;

  Extension(
      this.base,
      this.simpleTypes,
      this.complexTypes,
      this.elements,
      this.sequence,
      this.choice,
      this.attributes,
      this.restrictions,
      );

  factory Extension.fromElement(xml.XmlElement element, String? prefix){
    final base = element.getAttribute('base');
    final name = element.getAttribute('name');
    final parentName = element.parentElement!.getAttribute('name');
    final _simpleTypes = element.findElements('simpleType');
    Iterable<SimpleTypes>? simpleTypes;
    if (_simpleTypes.isNotEmpty){
      simpleTypes = _simpleTypes.map((e) => SimpleTypes.fromElement(e, prefix)).toList();
    }

    final _complexTypes = element.findElements('complexType');
    Iterable<ComplexType>? complexTypes;
    if (_complexTypes.isNotEmpty){
      complexTypes = _complexTypes.map((e) => ComplexType.fromElement(e, name ?? parentName!, prefix)).toList();
    }

    final _elements = element.findElements('element');
    Iterable<Element>? elements;
    if (_elements.isNotEmpty){
      elements = _elements.map((e) => Element.fromElement(e, prefix)).toList();
    }

    final _sequence = element.findElements('sequence');
    Iterable<Sequence>? sequence;
    if (_sequence.isNotEmpty){
      sequence = _sequence.map((e) => Sequence.fromElement(e, prefix)).toList();
    }

    final _choice = element.findElements('choice');
    Iterable<Choice>? choice;
    if (_choice.isNotEmpty){
      choice = _choice.map((e) => Choice.fromElement(e, prefix)).toList();
    }

    final _attributes = element.findElements('attribute');
    Iterable<Attribute>? attributes;
    if (_attributes.isNotEmpty){
      attributes = _attributes.map((e) => Attribute.fromElement(e, prefix)).toList();
    }

    final _restrictions = element.findElements('restriction');
    Iterable<Restriction>? restrictions;
    if (_restrictions.isNotEmpty){
      restrictions = _restrictions.map((e) => Restriction.fromElement(e, prefix)).toList();
    }

    return Extension(base!, simpleTypes, complexTypes, elements, sequence, choice, attributes, restrictions);
  }


  bool needsValidation(xml.XmlElement element) {
    // return simpleType?.needsValidation(element) ?? complexType?.needsValidation(element) ?? false;
    // todo arrumar isso aqui
    return true;
  }

  bool validate(xml.XmlElement element, {Iterable<ComplexType>? complexTypes, Iterable<SimpleTypes>? simpleTypes}){

    final targetSimpleTypes = [...?this.simpleTypes, ...?simpleTypes].where((element) => element.name == base);
    final targetComplexTypes = [...?this.complexTypes, ...?complexTypes].where((element) => element.name == base);

    bool isValid = false;

    if (targetSimpleTypes.isEmpty && targetComplexTypes.isEmpty){
      throw XSDvalidationException(element.localName, 'Element ${element.name.local} does not match the definition');
    }

    for (final simpleType in targetSimpleTypes){
      isValid = simpleType.validateElement(element);
    }

    for (final complexType in targetComplexTypes){
      isValid = complexType.validateElement(element, complexTypes: complexTypes, simpleTypes: simpleTypes);
    }

    return isValid;
  }
}