import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:source_gen/source_gen.dart' show ConstantReader;
import 'package:xml_schema_builder/src/visitors.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart' as xsd;
import 'package:xml/xml.dart' as xml;

String getComplexTypeName(xsd.ComplexType complexType) => '${complexType.name ?? complexType.elementName}ComplexType';

class XsdTemplate {
  final XMLSchemaVisitor visitor;
  final Element element;
  final ConstantReader annotation;
  final BuildStep buildStep;

  XsdTemplate({
    required this.visitor,
    required this.element,
    required this.annotation,
    required this.buildStep,
  });

  String get rootName => '_${visitor.name}';
  Set<xsd.ComplexType> complexTypesToBuild = {};
  Set<UnamedComplexType> unnamedComplexTypesToBuild = {};
  Set<String> unnamedComplexTypesBuilt = {};
  Set<String> complexTypesBuilt = {};

  Set<xsd.SimpleTypes> simpleTypesToBuild = {};
  Set<String> simpleTypesBuilt = {};

  Set<_Enum> enumsToBuild = {};
  Set<_Enum> enumsBuilt = {};

  String get className => '_$classNameNoUnderline';
  String get classNameNoUnderline => visitor.name;

  String getSimpleTypeName(xsd.SimpleTypes simpleType) => '${simpleType.name}SimpleType';
  String getElementName(xsd.Element element) => element.name ?? element.type!;

  String baseToDartType(String base){
    switch(base.split(':').last){
      case 'string':
        return 'String';
      case 'TString':
        return 'String';
      case 'int':
        return 'int';
      case 'integer':
        return 'int';
      case 'decimal':
        return 'double';
      case 'double':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'date':
        return 'String';
      case 'dateTime':
        return 'String';
      case 'time':
        return 'String';
      case 'duration':
        return 'Duration';
      case 'anyURI':
        return 'String';
      case 'QName':
        return 'String';
      case 'base64Binary':
        return 'String';
      case 'hexBinary':
        return 'String';
      case 'NOTATION':
        return 'String';
      case 'ID':
        return 'String';
      default:
        return 'String';
    }
  }

  void write(StringBuffer buffer) {
    buffer.write(buildClassElements());
  }

  String buildClassElements(){
    StringBuffer buffer = StringBuffer();
    final schema = visitor.xsdSchema;

    final root = schema.root;
    final rootElements = schema.elements;
    final rootChildren = root.childElements;
    if (rootChildren.length > 1){
      assert (visitor.rootElementName != null, "Multiple root elements found, please specify the root element name");
    }

    for (final xmlElement in rootChildren){

      if (xmlElement.name.local == 'element' && (visitor.rootElementName == null || visitor.rootElementName == xmlElement.getAttribute('name'))){
        final Set<String> constructorValidations = {};
        final Set<String> constructorElements = {};
        final Set<String> toXmlElements = {};
        final Set<String> toXmlAttributes = {};
        final Set<String> fromXmlElements = {};
        final Set<String> fromXmlAttributes = {};
        final _name = xmlElement.getAttribute('name');
        final _type = xmlElement.getAttribute('type');
        assert (_name != null);
        buffer.write("@JsonSerializable()");
        buffer.write("class $rootName {");
        buffer.writeln("String? xmlns;");
        buffer.write(buildElement(
          isRoot: true,
          schema.findElement(_name!),
          addToConstructor: (name) => constructorElements.add(name),
          addToConstructorValidations: (name) =>
              constructorValidations.add(name),
          toXmlElements: (name) => toXmlElements.add(name),
          toXmlAttributes: (name) => toXmlAttributes.add(name),
          fromXmlElements: (name) => fromXmlElements.add(name),
          fromXmlAttributes: (name) => fromXmlAttributes.add(name),
        ));
        buffer.write("$rootName(");
        buffer.write("{");
          buffer.writeln("this.xmlns,");
          if (constructorElements.isNotEmpty){
            buffer.write(constructorElements.join(',\n'));
          }
          buffer.write("}");
        buffer.write(")");
        if (constructorValidations.isNotEmpty){
          buffer.write("{");
          for (final item in constructorValidations){
            buffer.write('$item;');
          }
          buffer.write("}");
        } else {
          buffer.write(";");
        }

        buffer.writeln('$rootName.unsafe(');
          buffer.writeln('{');
          buffer.writeln("this.xmlns,");
          if (constructorElements.isNotEmpty) {
            buffer.writeln(constructorElements.join(',\n'));
          }
        buffer.writeln('}');
        buffer.writeln(');');

        buffer.writeln("String toXml({String name='$_name', bool pretty = false, String? xmlns}) {");
        buffer.writeln("final element = xml.XmlElement(xml.XmlName(name),");
        buffer.writeln("[");
        buffer.writeln("if (xmlns != null || this.xmlns != null) xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),");
        buffer.writeln("${toXmlAttributes.join(',\n')}],");
        buffer.writeln("[${toXmlElements.join(',\n')}]");
        buffer.writeln(");");
        buffer.writeln("return pretty ? element.toXmlString(pretty: true) : element.toXmlString();");
        buffer.write("}");

        buffer.writeln("factory $rootName.fromXml(String xmlString, {String name='$_name'}) {");
        buffer.writeln("final document = xml.XmlDocument.parse(xmlString);");
        buffer.writeln("final element = document.rootElement;");
        buffer.writeln("if(element.localName != name){throw Exception('Could not find root element \$name');};");
        buffer.writeln("return $rootName.unsafe(");
        buffer.writeln("xmlns: element.getAttribute('xmlns'),");
        for (final item in fromXmlAttributes){
          buffer.writeln("$item,");
        }
        for (final item in fromXmlElements){
          buffer.writeln("$item,");
        }
        buffer.writeln(");}");

        late final String jsonName;

        if (rootName.startsWith('_')){
          jsonName = rootName.replaceFirst('_', '');
        } else {
          jsonName = rootName;
        }

        buffer.writeln("factory $rootName.fromJson(Map<String, dynamic> json) => _\$${jsonName}FromJson(json);");
        buffer.writeln("Map<String, dynamic> toJson() => _\$${jsonName}ToJson(this);");

        buffer.write("}");
      }
    }

    Set<UnamedComplexType> currentBuildUnamed = Set.from(this.unnamedComplexTypesToBuild);
    Set<xsd.ComplexType> currentBuild = Set.from(this.complexTypesToBuild);

    while (currentBuildUnamed.isNotEmpty || currentBuild.isNotEmpty){
      while (currentBuildUnamed.isNotEmpty) {
        for (final t in currentBuildUnamed) {
          buffer.write(buildComplexType(t.complexType, elementName: t.name, buildName: t.buildName));
          unnamedComplexTypesBuilt.add(t.buildName);
        }
        currentBuildUnamed = Set.from(this.unnamedComplexTypesToBuild.where((element) => !unnamedComplexTypesBuilt.contains(element.buildName)));
        currentBuild = Set.from(this.complexTypesToBuild.where((element) => !complexTypesBuilt
                .contains(getComplexTypeName(element))));
      }

      while (currentBuild.isNotEmpty) {
        for (final complexType in currentBuild) {
          if (!this.complexTypesBuilt.contains(complexType)) {
            buffer.write(buildComplexType(complexType));
            complexTypesBuilt.add(getComplexTypeName(complexType));
          }
        }
        currentBuildUnamed = Set.from(this.unnamedComplexTypesToBuild.where((
            element) => !unnamedComplexTypesBuilt.contains(element.buildName)));
        currentBuild = Set.from(
            this.complexTypesToBuild.where((element) => !complexTypesBuilt
                .contains(getComplexTypeName(element))));
      }
    }

    Set<xsd.SimpleTypes> currentSimpleBuild = Set.from(this.simpleTypesToBuild);
    while(currentSimpleBuild.isNotEmpty){
      throw Exception('Simple types Build not implemented');
    }

    List<_Enum> currentEnumBuild = [];
    List<String> seen = [];
    for (final enumType in this.enumsToBuild){
      if (!seen.contains(enumType.name)){
        seen.add(enumType.name);
        currentEnumBuild.add(enumType);
      } else {
        final existing = currentEnumBuild.firstWhere((element) => element.name == enumType.name);
        final index = currentEnumBuild.indexOf(existing);
        currentEnumBuild[index] = existing.merge(enumType);
      }
    }
    for (final item in currentEnumBuild){
      buffer.write(buildEnum(item));
    }
    return buffer.toString();
  }

  String buildElement(xsd.Element element, {
    bool isRoot = false,
    bool? isNullable,
    bool? isIterable,
    int? minOccurs,
    int? maxOccurs,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }){
    StringBuffer buffer = StringBuffer();
    final name = element.name;
    final type = element.type;
    final ref = element.ref;
    final _minOccurs = minOccurs ?? element.minOccurs;
    final _maxOccurs = maxOccurs ?? element.maxOccurs;

    if (isNullable == null){
      if (_minOccurs == null || _minOccurs > 0){
        isNullable = false;
      } else {
        isNullable = true;
      }
    }

    if (isIterable == null){
      if (_maxOccurs != null && _maxOccurs > 1){
        isIterable = true;
      } else if (_minOccurs != null && _minOccurs > 1){
        isIterable = true;
      } else {
        isIterable = false;
      }
    }

    final simpleTypes = element.simpleType;
    final complexTypes = element.complexType;
    final choice = element.choice;
    // final sequence = element.sequence;
    final attributes = element.attributes;
    if (type == 'base64Binary'){
      buffer.writeln(buildBase64Binary(
        element.name!,
        name: getElementName(element),
        minOccurs: minOccurs ?? element.minOccurs,
        maxOccurs: maxOccurs ?? element.maxOccurs,
        addToConstructor: (param) => addToConstructor?.call(param),
        addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
        toXmlElements: (element) => toXmlElements?.call(element),
        toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
        fromXmlElements: (element) => fromXmlElements?.call(element),
        fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
      ));
      return buffer.toString();
    }
    if (type == 'string' || type == 'xs:dateTime'  || type == 'dateTime' || type == 'xs:date'  || type == 'date'){
      buffer.writeln(buildString(
        element,
        name: getElementName(element),
        minOccurs: _minOccurs,
        maxOccurs: _maxOccurs,
        addToConstructor: (param) => addToConstructor?.call(param),
        addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
        toXmlElements: (element) => toXmlElements?.call(element),
        toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
        fromXmlElements: (element) => fromXmlElements?.call(element),
        fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
      ));
      return buffer.toString();
    }
    if (simpleTypes?.isNotEmpty ?? false){
      for (final simpleType in simpleTypes!){
        buffer.writeln(buildSimpleType(simpleType,
          name: getElementName(element),
          elementName: element.name!,
          isAttribute: false,
          isNullable: isNullable,
          minOccurs: _minOccurs,
          maxOccurs: _maxOccurs,
          addToConstructor: (param) => addToConstructor?.call(param),
          addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
    }

    else if (complexTypes?.isNotEmpty ?? false){
      complexTypesToBuild.addAll(complexTypes!.where((t) => t.name != null));
      final unnamedComplexTypes = complexTypes.where((t) => t.name == null);

      if (unnamedComplexTypes.isNotEmpty && element.element?.parentElement != null && ['choice', 'sequence'].contains(element.element!.parentElement!.localName) == false){
        if (unnamedComplexTypes.length != 1){
          throw UnimplementedError('Multiple unnamed complex types not implemented ${unnamedComplexTypes.length}');
        }
        assert (name != null);
        buffer.writeln(addComplexType(
          unnamedComplexTypes.first,
          name: getElementName(element),
          isIterable: isIterable,
          isNullable: isNullable,
          addToConstructor: (param) => addToConstructor?.call(param),
          addToConstructorValidations: (validation) =>
              addToConstructorValidations?.call(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
      else {
        final unnamed = UnamedComplexType(name: name!, complexType: unnamedComplexTypes.first, element: element);
      unnamedComplexTypesToBuild.add(unnamed);
      if (isNullable) {
        addToConstructor?.call('this.$name');
        if (isIterable) {
          buffer.writeln("@JsonKey(fromJson: _${unnamed.buildName}MaybeListFromJson, "
              "toJson: _${unnamed.buildName}MaybeListToJson)");
          buffer.writeln(
              'List<${unnamed.buildName}>? $name;');
          toXmlElements?.call(
              '...?$name?.map((e) => xml.XmlDocumentFragment.parse(e.toXml(name: "$name", pretty: pretty))).toList()');
          fromXmlElements?.call(
              '$name: element.findElements(\'$name\').map((e) => ${unnamed.buildName}.fromXml(e.toString(), name: "$name")).toList()');
        } else {
          buffer.writeln("@JsonKey(fromJson: _${unnamed.buildName}MaybeFromJson, "
              "toJson: _${unnamed.buildName}MaybeToJson)");
          buffer.writeln('${unnamed.buildName}? $name;');
          toXmlElements?.call(
              'if ($name != null) xml.XmlDocumentFragment.parse($name!.toXml(name: "$name", pretty: pretty))');
          fromXmlElements?.call(
              '$name: element.findElements(\'$name\').isNotEmpty? ${unnamed.buildName}.fromXml(element.findElements(\'$name\').first.toString(), name: "$name"): null');
        }
      } else {
        addToConstructor?.call('required this.$name');
        if (isIterable) {
          buffer.writeln("@JsonKey(fromJson: _${unnamed.buildName}ListFromJson, "
              "toJson: _${unnamed.buildName}ListToJson)");
          buffer.writeln(
              'List<${unnamed.buildName}> $name;');
          toXmlElements?.call(
              '...$name.map((e) => xml.XmlDocumentFragment.parse(e.toXml(name: "$name", pretty: pretty))).toList()');
          fromXmlElements?.call(
              '$name: element.findElements(\'$name\').map((e) => ${unnamed.buildName}.fromXml(e.toString(), name: "$name")).toList()');
        } else {
          buffer.writeln("@JsonKey(fromJson: _${unnamed.buildName}FromJson, "
              "toJson: _${unnamed.buildName}ToJson)");
          buffer.writeln('${unnamed.buildName} $name;');
          toXmlElements?.call(
              'xml.XmlDocumentFragment.parse($name.toXml(name: "$name", pretty: pretty))');
          fromXmlElements?.call('$name: ${unnamed.buildName}.fromXml(element.findElements(\'$name\').first.toString(), name: "$name")');
        }
      }
    }
    }
    else if (choice?.isNotEmpty ?? false){
      throw UnimplementedError('Choice for element is not implemented yet');
    }

    else if (type != null){

      final targetType = visitor.xsdSchema.findType(type);
      if (targetType is xsd.SimpleTypes){
        buffer.writeln(buildSimpleType(targetType,
          name: getElementName(element),
          elementName: element.name!,
          isAttribute: false,
          minOccurs: _minOccurs,
          maxOccurs: _maxOccurs,
          isNullable: isNullable,
          addToConstructor: (param) => addToConstructor?.call(param),
          addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
      else if (targetType is xsd.ComplexType){
        if (isRoot) {
          buffer.writeln(addComplexType(
            targetType,
            name: getElementName(element),
            isIterable: isIterable,
            isNullable: isNullable,
            addToConstructor: (param) => addToConstructor?.call(param),
            addToConstructorValidations: (validation) =>
                addToConstructorValidations?.call(validation),
            toXmlElements: (element) => toXmlElements?.call(element),
            toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
            fromXmlElements: (element) => fromXmlElements?.call(element),
            fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
          ));
        } else{
          complexTypesToBuild.add(targetType);
          if (isNullable){
            addToConstructor?.call('this.$name');
            if (isIterable) {
              buffer.writeln("@JsonKey(fromJson: _${getComplexTypeName(targetType)}MaybeListFromJson, toJson: _${getComplexTypeName(targetType)}MaybeListToJson)");
              buffer.writeln('List<${getComplexTypeName(targetType)}>? $name;');
              toXmlElements?.call('...?$name?.map((e) => xml.XmlDocumentFragment.parse(e.toXml(name: "$name", pretty: pretty))).toList()');
              fromXmlElements?.call('$name: element.findElements(\'$name\').map((e) => ${getComplexTypeName(targetType)}.fromXml(e.toString(), name: "$name")).toList()');
            } else{
              buffer.writeln("@JsonKey(fromJson: _${getComplexTypeName(targetType)}MaybeFromJson, toJson: _${getComplexTypeName(targetType)}MaybeToJson)");
              buffer.writeln('${getComplexTypeName(targetType)}? $name;');
              toXmlElements?.call('if ($name != null) xml.XmlDocumentFragment.parse($name!.toXml(name: "$name", pretty: pretty))');
              fromXmlElements?.call('$name: element.findElements(\'$name\').isNotEmpty ? ${getComplexTypeName(targetType)}.fromXml(element.findElements(\'$name\').first.toString(), name: "$name"): null');
            }
          } else{
            addToConstructor?.call('required this.$name');
            if (isIterable) {
              buffer.writeln("@JsonKey(fromJson: _${getComplexTypeName(targetType)}ListFromJson, toJson: _${getComplexTypeName(targetType)}ListToJson)");
              buffer.writeln('List<${getComplexTypeName(targetType)}> $name;');
              toXmlElements?.call('...$name.map((e) => xml.XmlDocumentFragment.parse(e.toXml(name: "$name", pretty: pretty))).toList()');
              fromXmlElements?.call('$name: element.findElements(\'$name\').map((e) => ${getComplexTypeName(targetType)}.fromXml(e.toString(), name: "$name")).toList()');
            } else{
              buffer.writeln("@JsonKey(fromJson: _${getComplexTypeName(targetType)}FromJson, toJson: _${getComplexTypeName(targetType)}ToJson)");
              buffer.writeln('${getComplexTypeName(targetType)} $name;');
              toXmlElements?.call('xml.XmlDocumentFragment.parse($name.toXml(name: "$name", pretty: pretty))');
              fromXmlElements?.call('$name: ${getComplexTypeName(targetType)}.fromXml(element.findElements(\'$name\').first.toString(), name: "$name")');
            }
          }
        }
      }
    }

    else if (ref != null){

      final targetElement = visitor.xsdSchema.findElement(ref);
      buffer.writeln(buildElement(targetElement,
        isRoot: isRoot,
        isNullable: isNullable,
        isIterable: isIterable,
        minOccurs: minOccurs ?? element.minOccurs,
        maxOccurs: maxOccurs ?? element.maxOccurs,
        addToConstructor: (param) => addToConstructor?.call(param),
        addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
        toXmlElements: (element) => toXmlElements?.call(element),
        toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
        fromXmlElements: (element) => fromXmlElements?.call(element),
        fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
      ));
    }

    return buffer.toString();
  }

  void _buildRestriction({
    required xsd.Restriction restriction,
    required String name,
    required String elementName,
    required bool isAttribute,
    required bool isNullable,
    required bool isIterable,
    Function(String)? addToConstructorValidations,
  }){
    final fractionDigits = restriction.fractionDigits;
    final length = restriction.length;
    final maxExclusive = restriction.maxExclusive;
    final maxInclusive = restriction.maxInclusive;
    final maxLength = restriction.maxLength;
    final minExclusive = restriction.minExclusive;
    final minInclusive = restriction.minInclusive;
    final minLength = restriction.minLength;
    final pattern = restriction.pattern;
    final totalDigits = restriction.totalDigits;
    final whiteSpace = restriction.whiteSpace;

    if (fractionDigits.isNotEmpty){
      for (final fractionDigit in fractionDigits){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e.toString().split('.').length == 1 || e.toString().split('.').last.length <= ${fractionDigit.value}) == false){
                  throw Exception('Invalid value for $name');
                }"""
            );
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name.toString().split('.').length == 1 || $name.toString().split('.').last.length <= ${fractionDigit.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e.toString().split('.').length == 1 || e.toString().split('.').last.length <= ${fractionDigit.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name.toString().split('.').length == 1 || $name.toString().split('.').last.length <= ${fractionDigit.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }

      }
    }

    if (length.isNotEmpty){
      for (final length in length){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e.toString().length == ${length.value}) == false){
                  throw Exception('Invalid value for $name');
                })""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name.toString().length == ${length.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e.toString().length == ${length.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name.toString().length == ${length.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (maxExclusive.isNotEmpty){
      for (final maxExclusive in maxExclusive){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e < ${maxExclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name < ${maxExclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e < ${maxExclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name < ${maxExclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (maxInclusive.isNotEmpty){
      for (final maxInclusive in maxInclusive){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e <= ${maxInclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name <= ${maxInclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e <= ${maxInclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name <= ${maxInclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (maxLength.isNotEmpty){
      for (final maxLength in maxLength){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e.toString().length <= ${maxLength.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name.toString().length <= ${maxLength.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e.toString().length <= ${maxLength.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name.toString().length <= ${maxLength.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (minExclusive.isNotEmpty){
      for (final minExclusive in minExclusive){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e > ${minExclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name > ${minExclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e > ${minExclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name > ${minExclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (minInclusive.isNotEmpty){
      for (final minInclusive in minInclusive){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e >= ${minInclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name >= ${minInclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e >= ${minInclusive.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name >= ${minInclusive.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (minLength.isNotEmpty){
      for (final minLength in minLength){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e.toString().length >= ${minLength.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name.toString().length >= ${minLength.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e.toString().length >= ${minLength.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name.toString().length >= ${minLength.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (pattern.isNotEmpty){
      for (final pattern in pattern){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => RegExp(r'${pattern.value}').hasMatch(e.toString()))) == false){
                  throw Exception('Invalid value for $name - \$$name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || RegExp(r'${pattern.value}').hasMatch($name.toString())) == false){
                  throw Exception('Invalid value for $name - \$$name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => RegExp(r'${pattern.value}').hasMatch(e.toString()))) == false){
                  throw Exception('Invalid value for $name - \$$name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if((RegExp(r'${pattern.value}').hasMatch($name.toString())) == false){
                  throw Exception('Invalid value for $name - \$$name');
                }""");
          }
        }
      }
    }

    if (totalDigits.isNotEmpty){
      for (final totalDigit in totalDigits){
        if (isNullable){
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name == null || $name!.every((e) => e.toString().length <= ${totalDigit.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name == null || $name.toString().length <= ${totalDigit.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        } else {
          if (isIterable) {
            addToConstructorValidations?.call(
                """if(($name.every((e) => e.toString().length <= ${totalDigit.value})) == false){
                  throw Exception('Invalid value for $name');
                }""");
          } else{
            addToConstructorValidations?.call(
                """if(($name.toString().length <= ${totalDigit.value}) == false){
                  throw Exception('Invalid value for $name');
                }""");
          }
        }
      }
    }

    if (whiteSpace.isNotEmpty){
      if (isNullable){
        if (isIterable) {
          addToConstructorValidations?.call(
              """if(($name == null || $name!.every((e) => e.toString().trim() == e.toString())) == false){
                  throw Exception('Invalid value for $name');
                }""");
        } else{
          addToConstructorValidations?.call(
              """if(($name == null || $name.toString().trim() == $name.toString()) == false){
                  throw Exception('Invalid value for $name');
                }""");
        }
      } else {
        if (isIterable) {
          addToConstructorValidations?.call(
              """if(($name.every((e) => e.toString().trim() == e.toString())) == false){
                  throw Exception('Invalid value for $name');
                }""");
        } else{
          addToConstructorValidations?.call(
              """if(($name.toString().trim() == $name.toString()) == false){
                  throw Exception('Invalid value for $name');
                }""");
        }
      }
    }
  }

  String buildVariableFromRestriction({
    required xsd.Restriction restriction,
    required String name,
    required String elementName,
    required bool isAttribute,
    final int? minOccurs,
    final int? maxOccurs,
    bool? isNullable,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }){
    final buffer = StringBuffer();
    final base = restriction.base;
    final enumerations = restriction.enumeration;
    dynamic baseType;

    try{
      baseType = visitor.xsdSchema.findType(base);
    } on xsd.XSDvalidationException catch(e){
      baseType = null;
    }


    bool isIterable = false;
    bool _isNullable = false;
    if (minOccurs == 0){
      isIterable = false;
      _isNullable = true;
    } else if (minOccurs == null){
      isIterable = false;
      _isNullable = false;
    } else if (minOccurs > 1){
      isIterable = true;
      _isNullable = false;
    }

    if (maxOccurs == 0){
      isIterable = false;
      _isNullable = true;
    } else if (maxOccurs == 1){
      isIterable = false;
    } else if (maxOccurs != null && maxOccurs > 1){
      isIterable = true;
    }

    isNullable ??= _isNullable;

    if (enumerations.isNotEmpty){
      final enumName = '${name}Enum';
      final values = enumerations.map((e) => e.value).toList();
      final novoEnum = _Enum(
          name: enumName,
          values: values,
          dartType: baseToDartType(base)
      );
      enumsToBuild.add(novoEnum);

      if (isIterable){
        buffer.writeln('@JsonKey(fromJson: ${novoEnum.fromList(isNullable)}, toJson: ${novoEnum.toList(isNullable)})');
        buffer.writeln('List<$enumName>${isNullable?'?':''} $name;');
        if (isAttribute){
          if (isNullable) {
            toXmlAttributes?.call('''
            ...?$name?.map((e) => xml.XmlAttribute(xml.XmlName('$elementName'), e.value))
          ''');
            fromXmlAttributes?.call('''
            $name: element.getAttribute('$elementName') != null? [$enumName.fromValue(element.getAttribute('$elementName')!)] : null
          ''');
          } else {
            toXmlAttributes?.call('''
            ...$name.map((e) => xml.XmlAttribute(xml.XmlName('$elementName'), e.value))
          ''');
            fromXmlAttributes?.call('''
            $name: [$enumName.fromValue(element.getAttribute('$elementName')!)]
          ''');
          }
        } else{
          if (isNullable) {
            toXmlElements?.call('''
            ...?$name?.map((e) => xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText(e.value)]))
          ''');
            fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => $enumName.fromValue(e.text)).toList()
          ''');
          } else {
            toXmlElements?.call('''
            ...$name.map((e) => xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText(e.value)]))
          ''');
            fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => $enumName.fromValue(e.text)).toList()
          ''');
          }
        }
      } else {
        buffer.writeln('@JsonKey(fromJson: ${novoEnum.fromValue(isNullable)}, toJson: ${novoEnum.toValue(isNullable)})');
        buffer.writeln('$enumName${isNullable?'?':''} $name;');
        if (isAttribute){
          if (isNullable){
            toXmlAttributes?.call('''
            if ($name != null) xml.XmlAttribute(xml.XmlName('$elementName'), $name.value)
          ''');
            fromXmlAttributes?.call('''
            $name: $enumName.fromValue(element.getAttribute('$elementName') != null? [$enumName.fromValue(element.getAttribute('$elementName')!)] : null
          ''');
          } else {
            toXmlAttributes?.call('''
            xml.XmlAttribute(xml.XmlName('$elementName'), $name.value)
          ''');
            fromXmlAttributes?.call('''
            $name: $enumName.fromValue(element.getAttribute('$elementName')!)
          ''');
          }
        } else {
          if (isNullable){
            toXmlElements?.call('''
            if ($name != null) xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText($name!.value)])
          ''');
            fromXmlElements?.call('''
            $name: element.findElements('$elementName').isNotEmpty? $enumName.fromValue(element.findElements('$elementName').first.text) : null
          ''');
          } else {
            toXmlElements?.call('''
            xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText($name.value)])
          ''');
            fromXmlElements?.call('''
            $name: $enumName.fromValue(element.findElements('$elementName').first.text)
          ''');
          }
        }
      }
    } else{
      if (isIterable){
        buffer.writeln('List<${baseToDartType(base)}>${isNullable?'?':''} $name;');
        if (isAttribute){
          if (isNullable) {
            toXmlAttributes?.call('''
            ...?$name?.map((e) => xml.XmlAttribute(xml.XmlName('$elementName'), e.toString()))
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlAttributes?.call('''
            $name: [$dartType.parse(element.getAttribute('$elementName')!)]
          ''');
            } else{
              fromXmlAttributes?.call('''
            $name: element.$dartType.parse(('$elementName').map((e) => e.text).toList()
          ''');
            }
          } else {
            toXmlAttributes?.call('''
            ...$name.map((e) => xml.XmlAttribute(xml.XmlName('$elementName'), e.toString()))
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlAttributes?.call('''
            $name: [$dartType.parse(element.getAttribute('$elementName')!)]
          ''');
            } else{
              fromXmlAttributes?.call('''
            $name: [element.getAttribute('$elementName')!]
          ''');
            }
          }
        } else {
          if (isNullable) {
            toXmlElements?.call('''
            ...?$name?.map((e) => xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText(e.toString())]))
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => $dartType.parse(e.text)).toList()
          ''');
            } else{
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => e.text).toList()
          ''');
            }
          } else {
            toXmlElements?.call('''
            ...$name.map((e) => xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText(e.toString())]))
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => $dartType.parse(e.text)).toList()
          ''');
            } else{
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').map((e) => e.text).toList()
          ''');
            }
          }
        }
      } else {
        buffer.writeln('${baseToDartType(base)}${isNullable?'?':''} $name;');
        if (isAttribute){
          if (isNullable){
            toXmlAttributes?.call('''
             if ($name != null) xml.XmlAttribute(xml.XmlName('$elementName'), $name.toString())
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlAttributes?.call('''
            $name: element.getAttribute('$elementName') != null? $dartType.parse(element.getAttribute('$elementName')!): null
          ''');
            } else {
              fromXmlAttributes?.call('''
            $name: element.getAttribute('$elementName')
          ''');
            }
          } else {
            if (isNullable){
              toXmlAttributes?.call('''
             if ($name != null) xml.XmlAttribute(xml.XmlName('$elementName'), $name.toString())''');
              final dartType = baseToDartType(base);
              if (dartType != 'String') {
                fromXmlAttributes?.call('''
                  $name: element.getAttribute('$elementName') != null? $dartType.parse(element.getAttribute('$elementName')!) : null''');
              } else {
                fromXmlAttributes?.call('''
                  $name: element.getAttribute('$elementName')
                ''');
              }
            } else {
              toXmlAttributes?.call('''
            xml.XmlAttribute(xml.XmlName('$elementName'), $name.toString())
          ''');
              final dartType = baseToDartType(base);
              if (dartType != 'String') {
                fromXmlAttributes?.call('''
            $name: $dartType.parse(element.getAttribute('$elementName')!)
          ''');
              } else {
                fromXmlAttributes?.call('''
            $name: element.getAttribute('$elementName')!
          ''');
              }
            }
          }
        } else {
          if (isNullable) {
            toXmlElements?.call('''
            if ($name != null) xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText($name.toString())])
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').isNotEmpty? $dartType.parse(element.findElements('$elementName').first.text) : null
          ''');
            } else{
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').isNotEmpty? element.findElements('$elementName').first.text : null
          ''');
            }
          } else {
            toXmlElements?.call('''
            xml.XmlElement(xml.XmlName('$elementName'), [], [xml.XmlText($name.toString())])
          ''');
            final dartType = baseToDartType(base);
            if (dartType != 'String') {
              fromXmlElements?.call('''
            $name: $dartType.parse(element.findElements('$elementName').first.text)
          ''');
            } else{
              fromXmlElements?.call('''
            $name: element.findElements('$elementName').first.text
          ''');
            }
          }
        }
      }
    }

    addToConstructor?.call(isNullable?'this.$name':'required this.$name');

    _buildRestriction(
      restriction: restriction,
      name: name,
      elementName: elementName,
      isAttribute: isAttribute,
      isNullable: isNullable,
      isIterable: isIterable,
      addToConstructorValidations: addToConstructorValidations,
    );

    if (baseType != null){
      if (baseType is xsd.SimpleTypes){
        final restrictions = baseType.restrictions;
        for (final rest in restrictions){
          _buildRestriction(
            restriction: rest,
            name: name,
            elementName: elementName,
            isAttribute: isAttribute,
            isNullable: isNullable,
            isIterable: isIterable,
            addToConstructorValidations: addToConstructorValidations,
          );
        }
      } else {
        throw UnimplementedError('Base type $baseType not implemented yet');
      }
    }
    return buffer.toString();
  }

  Set<String> buildSequence(xsd.Sequence sequence,{
    bool? isNullable,
    Function(String)? addToConstructorValidations,
    Function(String)? addToConstructor,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }){
    Set<String> written = {};
    final minOccurs = sequence.minOccurs;
    final maxOccurs = sequence.maxOccurs;
    final elements = sequence.elements;
    final choices = sequence.choice;
    final extraSequence = sequence.sequence;
    final simpleTypes = sequence.simpleTypes;
    final complexTypes = sequence.complexTypes;
    if (simpleTypes?.isNotEmpty ?? false){
      throw Exception('Simple types are not supported');
    }
    if (complexTypes?.isNotEmpty ?? false){
      throw Exception('Complex types are not supported');
    }
    bool isIterable = false;
    bool _isNullable = false;
    if (minOccurs == 0){
      isIterable = false;
      _isNullable = true;
    } else if (minOccurs == null){
      isIterable = false;
      _isNullable = false;
    } else if (minOccurs > 1){
      isIterable = true;
      _isNullable = false;
    }

    if (maxOccurs == 0){
      isIterable = false;
      _isNullable = true;
    } else if (maxOccurs == 1){
      isIterable = false;
    } else if (maxOccurs != null && maxOccurs > 1){
      isIterable = true;
    }

    isNullable ??= _isNullable;

    for (final child in sequence.childOrder){
      if (child is xsd.Element){
        written.add(buildElement(child,
          addToConstructor: addToConstructor,
          addToConstructorValidations: addToConstructorValidations,
          // isIterable: isIterable,
          isNullable: isNullable == true? isNullable : null,
          toXmlElements: toXmlElements,
          toXmlAttributes: toXmlAttributes,
          fromXmlElements: fromXmlElements,
          fromXmlAttributes: fromXmlAttributes,
        ).trim());
      } else if (child is xsd.Sequence){
        written.addAll(buildSequence(child,
          addToConstructor: addToConstructor,
          addToConstructorValidations: addToConstructorValidations,
          toXmlElements: toXmlElements,
          toXmlAttributes: toXmlAttributes,
          fromXmlElements: fromXmlElements,
          fromXmlAttributes: fromXmlAttributes,
        ));
      } else if (child is xsd.Choice){
        written.addAll(buildChoice(child,
          addToConstructor: addToConstructor,
          addToConstructorValidations: addToConstructorValidations,
          toXmlElements: toXmlElements,
          toXmlAttributes: toXmlAttributes,
          fromXmlElements: fromXmlElements,
          fromXmlAttributes: fromXmlAttributes,
        ));
      } else {
        throw UnimplementedError('Child $child not implemented yet');
      }
    }

    return written;
}


  Set<String> buildChoice(xsd.Choice choice, {
    Function(String)? addToConstructorValidations,
    Function(String)? addToConstructor,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }){
    Set<String> written = {};
    final minOccurs = choice.minOccurs;
    final maxOccurs = choice.maxOccurs;
    final elements = choice.elements;
    final sequences = choice.sequence;
    final choices = choice.choice;
    final simpleTypes = choice.simpleTypes;
    final complexTypes = choice.complexTypes;
    final Set<String> choicesList = {};
    final Set<String> sequenceChoicesList = {};
    if (simpleTypes?.isNotEmpty ?? false){
      throw Exception('Simple types are not supported');
    }
    if (complexTypes?.isNotEmpty ?? false){
      throw Exception('Complex types are not supported');
    }
    if (choices?.isNotEmpty ?? false){
      throw Exception('Child Choices of Choices are not supported');
    }
    bool isIterable = false;
    bool isNullable = false;
    if (minOccurs == 0){
      isIterable = false;
      isNullable = true;
    } else if (minOccurs == null){
      isIterable = false;
      isNullable = false;
    } else if (minOccurs > 1){
      isIterable = true;
      isNullable = false;
    }

    if (maxOccurs == 0){
      isIterable = false;
      isNullable = true;
    } else if (maxOccurs == 1){
      isIterable = false;
    } else if (maxOccurs != null && maxOccurs > 1){
      isIterable = true;
    }

    if (elements?.isNotEmpty ?? false){
      for (final element in elements!){
        written.add(buildElement(element,
            addToConstructor: (name) {
              addToConstructor?.call(name);
              choicesList.add(name.split('.').last);
            },
            addToConstructorValidations: addToConstructorValidations,
            isIterable: isIterable,
            isNullable: true,
            toXmlElements: toXmlElements,
            toXmlAttributes: toXmlAttributes,
            fromXmlElements: fromXmlElements,
            fromXmlAttributes: fromXmlAttributes,
        ).trim());
      }
    }

    if (sequences?.isNotEmpty ?? false){


      for (final sequence in sequences!){

        final List<String> _sequenceChoiceList = [];

        written.addAll(buildSequence(sequence,
            addToConstructor: (name) {
              addToConstructor?.call(name);
              if (name.startsWith('required')){
                _sequenceChoiceList.add("${name.split('.').last} != null");
              }
            },
            isNullable: true,
            addToConstructorValidations: addToConstructorValidations,
            toXmlElements: toXmlElements,
            toXmlAttributes: toXmlAttributes,
            fromXmlElements: fromXmlElements,
            fromXmlAttributes: fromXmlAttributes,
        ));

        if (_sequenceChoiceList.isNotEmpty){
          sequenceChoicesList.add(_sequenceChoiceList.join(' && '));
        }

      }
    }

    String asserts = choicesList.map((e) => '$e != null').join(',');
    if (sequenceChoicesList.isNotEmpty){
      asserts += ',${sequenceChoicesList.join(',')}';
    }
    final assertsName = "_\$${choicesList.map((e) => e).join('')}";
    addToConstructorValidations?.call('final $assertsName = [$asserts]');
    if (minOccurs != null && minOccurs >= 1){
      addToConstructorValidations?.call(
        """if(($assertsName.where((e) => e == true).length >= $minOccurs) == false){
          throw Exception('Choose at least $minOccurs of ${choicesList.join(', ')}');
        }"""
      );
    } else {
      addToConstructorValidations?.call(
        """if(($assertsName.every((e) => e == false) || $assertsName.where((e) => e == true).length == 1) == false){
          throw Exception('Choose one of ${choicesList.join(', ')}');
        }"""
      );
    }

    if (maxOccurs != null){
      addToConstructorValidations?.call(
          """if(($assertsName.where((e) => e == true).length <= $maxOccurs == false){
          throw Exception('Choose one of ${choicesList.join(', ')}');
        }"""
      );
    }
    return written;
  }

  String buildComplexType(xsd.ComplexType type, {
    String? elementName,
    String? buildName,
    bool extension = false,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }){
    StringBuffer buffer = StringBuffer();
    Set<String> writes = {};
    buildName ??= getComplexTypeName(type);

    bool shouldBuild = true;

    if (visitor.imports?.contains(buildName) ?? false){
      shouldBuild = false;
    }

    final name = elementName ?? type.name;
    final sequences = type.sequence;
    final complexTypes = type.complexTypes;
    final choice = type.choice;
    final attributes = type.attributes;
    final elements = type.elements;
    final simpleContent = type.simpleContent;
    final complexContent = type.complexContent;
    final Set<String> constructorValidations = {};
    final Set<String> constructorParams = {};
    final Set<String> toXmlElementsList = {};
    final Set<String> toXmlAttributesList = {};
    final Set<String> fromXmlElementsList = {};
    final Set<String> fromXmlAttributesList = {};

    toXmlElements ??= (name) => toXmlElementsList.add(name);
    toXmlAttributes ??= (name) => toXmlAttributesList.add(name);
    fromXmlElements ??= (name) => fromXmlElementsList.add(name);
    fromXmlAttributes ??= (name) => fromXmlAttributesList.add(name);
    if (!extension && shouldBuild){
      buffer.writeln('@JsonSerializable()');
      buffer.writeln('class $buildName {');
      buffer.writeln('String? xmlns;');
    }

    if (shouldBuild && (sequences?.isNotEmpty ?? false)){
      for (final sequence in sequences!){
        writes.addAll(buildSequence(sequence,
          addToConstructor: (param) => constructorParams.add(param),
          addToConstructorValidations: (validation) => constructorValidations.add(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
    }

    if (shouldBuild && (complexTypes?.isNotEmpty ?? false)){
      throw Exception('Complex types childs of complex types are not supported');
      // for (final complexType in complexTypes!){
      //   assert (complexType.name != null);
      //   buffer.writeln(addComplexType(complexType,
      //     name: complexType.name!,
      //     isIterable: false,
      //     isNullable: false,
      //     addToConstructor: (param) => constructorParams.add(param),
      //     addToConstructorValidations: (validation) => constructorValidations.add(validation),
      //   )
      //   );
      // }
    }


    if (shouldBuild && simpleContent != null){
      final minOccurs = type.minOccurs;
      writes.addAll(buildSimpleContent(simpleContent,
        name: name!,
        elementName: elementName ?? type.name ?? type.elementName,
        isNullable: minOccurs == 0,
        addToConstructor: (param) => constructorParams.add(param),
        addToConstructorValidations: (validation) => constructorValidations.add(validation),
        toXmlElements: (element) => toXmlElements?.call(element),
        toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
        fromXmlElements: (element) => fromXmlElements?.call(element),
        fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
      ));
    }
    if (shouldBuild && complexContent != null){
      throw UnimplementedError('Complex content is not implemented');
    }

    if (shouldBuild && (choice?.isNotEmpty ?? false)){
      for (final choice in choice!){
        writes.addAll(buildChoice(choice,
          addToConstructor: (param) => constructorParams.add(param),
          addToConstructorValidations: (validation) => constructorValidations.add(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
    }

    if (shouldBuild && (elements?.isNotEmpty ?? false)){
      throw Exception('Elements childs of complex types are not supported');
    }

    if (shouldBuild && (attributes?.isNotEmpty ?? false)){
      for (final attr in attributes!) {
        writes.add(buildAttribute(attr,
          addToConstructor: (param) => constructorParams.add(param),
          addToConstructorValidations: (validation) => constructorValidations.add(validation),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
    }

    buffer.writeln(writes.join('\n'));

    if (shouldBuild && !extension) {

      buffer.writeln('$buildName(');
        buffer.writeln('{');
        buffer.writeln('this.xmlns,');
        if (constructorParams.isNotEmpty) {
          buffer.writeln(constructorParams.toSet().toList().join(',\n'));
        }
        buffer.writeln('}');
      buffer.writeln(')');
      if (constructorValidations.isNotEmpty) {
        buffer.writeln('{');
        for (final validation in constructorValidations.toSet().toList()) {
          buffer.writeln('$validation;');
        }
        buffer.writeln('}');
      } else {
        buffer.writeln(';');
      }


      buffer.writeln('$buildName.unsafe(');
      buffer.writeln('{');
        buffer.writeln('this.xmlns,');
        if (constructorParams.isNotEmpty) {
          buffer.writeln(constructorParams.toSet().toList().join(',\n'));
        }
      buffer.writeln('}');
      buffer.writeln(');');

      buffer.writeln("String toXml({String name='$name', bool pretty = false, String? xmlns}) {");
      buffer.writeln("final element = xml.XmlElement(xml.XmlName(name),");
      buffer.writeln("[");
      buffer.writeln("if (xmlns != null || this.xmlns != null) xml.XmlAttribute(xml.XmlName('xmlns'), xmlns ?? this.xmlns!),");
      buffer.writeln("${toXmlAttributesList.toSet().toList().join(',\n')}],");
      buffer.writeln("[${toXmlElementsList.toSet().toList().join(',\n')}]");
      buffer.writeln(");");
      buffer.writeln("return pretty ? element.toXmlString(pretty: true) : element.toXmlString();");
      buffer.write("}");

      buffer.writeln("factory $buildName.fromXml(String xmlString, {String name='$name'}) {");
      buffer.writeln("final document = xml.XmlDocument.parse(xmlString);");
      buffer.writeln("final element = document.rootElement;");
      buffer.writeln("if(element.localName != name){throw Exception('Could not find root element \$name');}");
      buffer.writeln("return $buildName.unsafe(");
      buffer.writeln("xmlns: element.getAttribute('xmlns'),");
      for (final item in fromXmlAttributesList.toSet().toList()){
        buffer.writeln("$item,");
      }
      for (final item in fromXmlElementsList.toSet().toList()){
        buffer.writeln("$item,");
      }
      buffer.writeln(");}");

      late final String jsonName;

      if (buildName.startsWith('_')){
        jsonName = buildName.replaceFirst('_', '');
      } else {
        jsonName = buildName;
      }
      buffer.writeln('factory $buildName.fromJson(Map<String, dynamic> json) => _\$${jsonName}FromJson(json);');
      buffer.writeln('Map<String, dynamic> toJson() => _\$${jsonName}ToJson(this);');
      buffer.writeln('}');

      buffer.writeln("""List<$buildName> _${buildName}ListFromJson(List<dynamic> json) => json.map((e) => $buildName.fromJson(e as Map<String, dynamic>)).toList();""");
      buffer.writeln("""List<$buildName>? _${buildName}MaybeListFromJson(List<dynamic>? json) => json?.map((e) => $buildName.fromJson(e as Map<String, dynamic>)).toList();""");
      buffer.writeln("""List<Map<String, dynamic>> _${buildName}ListToJson(List<$buildName> list) => list.map((e) => e.toJson()).toList();""");
      buffer.writeln("""List<Map<String, dynamic>>? _${buildName}MaybeListToJson(List<$buildName>? list) => list?.map((e) => e.toJson()).toList();""");
      buffer.writeln("""$buildName _${buildName}FromJson(Map<String, dynamic> json) => $buildName.fromJson(json);""");
      buffer.writeln("""$buildName? _${buildName}MaybeFromJson(Map<String, dynamic>? json) => json != null? $buildName.fromJson(json): null;""");
      buffer.writeln("""Map<String, dynamic> _${buildName}ToJson($buildName instance) => instance.toJson();""");
      buffer.writeln("""Map<String, dynamic>? _${buildName}MaybeToJson($buildName? instance) => instance?.toJson();""");


    } else if (shouldBuild){
      for (final item in constructorParams.toSet().toList()) {
        addToConstructor?.call(item);
      }
      for (final item in constructorValidations.toSet().toList()) {
        addToConstructorValidations?.call(item);
      }
    } else {

      buffer.writeln("""List<$buildName> _${buildName}ListFromJson(List<dynamic> json) => json.map((e) => $buildName.fromJson(e as Map<String, dynamic>)).toList();""");
      buffer.writeln("""List<$buildName>? _${buildName}MaybeListFromJson(List<dynamic>? json) => json?.map((e) => $buildName.fromJson(e as Map<String, dynamic>)).toList();""");
      buffer.writeln("""List<Map<String, dynamic>> _${buildName}ListToJson(List<$buildName> list) => list.map((e) => e.toJson()).toList();""");
      buffer.writeln("""List<Map<String, dynamic>>? _${buildName}MaybeListToJson(List<$buildName>? list) => list?.map((e) => e.toJson()).toList();""");
      buffer.writeln("""$buildName _${buildName}FromJson(Map<String, dynamic> json) => $buildName.fromJson(json);""");
      buffer.writeln("""$buildName? _${buildName}MaybeFromJson(Map<String, dynamic>? json) => json != null? $buildName.fromJson(json): null;""");
      buffer.writeln("""Map<String, dynamic> _${buildName}ToJson($buildName instance) => instance.toJson();""");
      buffer.writeln("""Map<String, dynamic>? _${buildName}MaybeToJson($buildName? instance) => instance?.toJson();""");
    }
    return buffer.toString();
  }

  String addComplexType(xsd.ComplexType type, {
    required String name,
    bool isNullable = false,
    bool isIterable = false,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
}){
    if (name.isEmpty){
      throw Exception('Complex type name is empty\n $type');
    }
    return buildComplexType(
      type,
      elementName: name,
      extension: true,
      addToConstructor: (param) {
        addToConstructor?.call(param);
      },
      addToConstructorValidations: addToConstructorValidations,
      toXmlElements: (element) => toXmlElements?.call(element),
      toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
      fromXmlElements: (element) => fromXmlElements?.call(element),
      fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
    );
    // complexTypesToBuild.add(type);
    // final buildName = getComplexTypeName(type);
    // final buffer = StringBuffer();
    // if (isNullable){
    //   addToConstructor?.call('this.$name');
    //   if (isIterable) {
    //     buffer.writeln('List<$buildName>? $name;');
    //   } else{
    //     buffer.writeln('$buildName? $name;');
    //   }
    // } else{
    //   addToConstructor?.call('required this.$name');
    //   if (isIterable) {
    //     buffer.writeln('List<$buildName> $name;');
    //   } else{
    //     buffer.writeln('$buildName $name;');
    //   }
    // }
    // return buildName;
  }

  String buildAttribute(xsd.Attribute attr, {
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlAttributes,
  }){
    final String name = attr.name;
    final type = attr.type;
    final required = attr.required;
    final fixed = attr.fixed;
    final buffer = StringBuffer();
    if (name.isEmpty){
      throw Exception('Attribute name is empty\n $attr');
    }

    if (fixed != null){
      if (required){
        buffer.writeln('final String $name;');
        addToConstructor?.call('this.$name=\'$fixed\'');
        addToConstructorValidations?.call('if($name != \'$fixed\'){throw Exception("$name != \'$fixed\'");}');
        toXmlAttributes?.call('xml.XmlAttribute(xml.XmlName(\'$name\'), $name)');
        fromXmlAttributes?.call('$name: element.getAttribute("$name")!');
        return buffer.toString();
      }
      else {
        buffer.writeln('String? $name;');
        addToConstructor?.call('this.$name');
        toXmlAttributes?.call('if ($name != null) xml.XmlAttribute(xml.XmlName(\'$name\'), $name!)');
        fromXmlAttributes?.call('$name: element.getAttribute("$name")');
        return buffer.toString();
      }
    }

    if (type == null){
      if(attr.simpleType == null || attr.simpleType!.isEmpty){
        throw Exception('No type found \n $attr');
      }
    }

    if (type != null){
      try {
        final targetType = visitor.xsdSchema.findType(type);
        if (targetType is xsd.SimpleTypes) {
          buffer.writeln(buildSimpleType(targetType,
            name: name,
            elementName: attr.name,
            isAttribute: true,
            minOccurs: required ? 1 : 0,
            maxOccurs: 1,
            addToConstructor: (param) => addToConstructor?.call(param),
            addToConstructorValidations: (validation) =>
                addToConstructorValidations?.call(validation),
            toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
            fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
          ));
        } else {
          throw Exception('Attribute type is not a simple type\n $targetType');
        }
      } on xsd.XSDvalidationException catch (e){
        if ((type == 'ID' || type == 'anyURI' || type == 'base64Binary') && (fixed == null || fixed.isEmpty)){
          if (required){
            buffer.writeln('String $name;');
          } else{
            buffer.writeln('String? $name;');
          }
          if (required) {
            addToConstructor?.call('required this.$name');
            toXmlAttributes?.call('xml.XmlAttribute(xml.XmlName(\'$name\'), $name)');
            fromXmlAttributes?.call('$name: element.getAttribute("$name")!');
          } else {
            addToConstructor?.call('this.$name');
            toXmlAttributes?.call('if ($name != null) xml.XmlAttribute(xml.XmlName(\'$name\'), $name!)');
            fromXmlAttributes?.call('$name: element.getAttribute("$name")');
          }
        } else {
          if (required) {
            buffer.writeln('final String $name;');
            addToConstructor?.call('this.$name=\'$fixed\'');
            addToConstructorValidations?.call('if($name != \'$fixed\'){throw Exception("$name != \'$fixed\'");}');
            toXmlAttributes
                ?.call('xml.XmlAttribute(xml.XmlName(\'$name\'), $name)');
            fromXmlAttributes?.call('$name: element.getAttribute("$name")!');
          } else {
            buffer.writeln('String? $name;');
            addToConstructor?.call('this.$name');
            toXmlAttributes?.call('if ($name != null) xml.XmlAttribute(xml.XmlName(\'$name\'), $name!)');
            fromXmlAttributes?.call('$name: element.getAttribute("$name")');
          }
        }
      }
    } else {
      final targetType = attr.simpleType!.first;
      buffer.writeln(buildSimpleType(targetType,
        name: name,
        elementName: attr.name,
        isAttribute: true,
        minOccurs: required ? 1 : 0,
        maxOccurs: 1,
        addToConstructor: (param) => addToConstructor?.call(param),
        addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
        toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
        fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
      ));
    }
    return buffer.toString();
  }

  String buildSimpleType(xsd.SimpleTypes type, {
    required String name,
    required String elementName,
    required bool isAttribute,
    bool? isNullable,
    int? minOccurs,
    int? maxOccurs,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
}) {
    final buffer = StringBuffer();
    final restrictions = type.restrictions;
    if (restrictions.isEmpty){
      throw UnimplementedError('No restrictions found \n $type');
    } else {
      for (final restriction in restrictions){
        buffer.writeln(buildVariableFromRestriction(
          restriction: restriction,
          name: name,
          elementName: elementName,
          isAttribute: isAttribute,
          minOccurs: minOccurs,
          maxOccurs: maxOccurs,
          isNullable: isNullable,
          addToConstructor: (param) => addToConstructor?.call(param),
          addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
          toXmlElements: (element) => toXmlElements?.call(element),
          toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          fromXmlElements: (element) => fromXmlElements?.call(element),
          fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
        ));
      }
    }
    return buffer.toString();
  }

  List<String> buildSimpleContent(xsd.SimpleContent simpleContent, {
    required String name,
    required String elementName,
    bool isNullable = false,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }) {
    final List<String> writes = [];
    final extensions = simpleContent.extensions;

    final List<String> extensionWrites = [];
    final List<String> toXmlExtensionAttributes = [];
    final List<String> fromXmlExtensionAttributes = [];

    if (extensions?.isEmpty ?? true) {
      if (isNullable) {
        writes.add('String? $name;');
        addToConstructor?.call('this.$name');
        toXmlElements?.call(
            'if ($name != null) xml.XmlText($name)');
        fromXmlElements?.call('$name: element.text');
      } else {
        writes.add('String $name;');
        addToConstructor?.call('required this.$name');
        toXmlElements?.call('xml.XmlText($name)');
        fromXmlElements?.call('$name: element.text');
      }
    } else {
      for (final extension in extensions!) {
        bool baseIsAtrribute = false;
        final base = extension.base;
        if (base
            .split(':')
            .last == 'base64Binary') {
          if (isNullable) {
            writes.add('String? $name;');
            addToConstructor?.call('this.$name');
          } else {
            writes.add('String $name;');
            addToConstructor?.call('required this.$name');
          }
        }
        else {
          final targetType = visitor.xsdSchema.findType(base);
          if (targetType is xsd.SimpleTypes) {
            writes.add(buildSimpleType(
              targetType,
              name: name,
              elementName: elementName,
              isAttribute: false,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else if (targetType is xsd.ComplexType) {
            writes.add(addComplexType(
              targetType,
              name: name,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else if (targetType is xsd.Element) {
            writes.add(buildElement(
              targetType,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else if (targetType is xsd.Sequence) {
            writes.addAll(buildSequence(
              targetType,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else if (targetType is xsd.Choice) {
            writes.addAll(buildChoice(
              targetType,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else if (targetType is xsd.Attribute) {
            baseIsAtrribute = true;
            writes.add(buildAttribute(
              targetType,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlAttributes: (attribute) {
                toXmlExtensionAttributes.add(attribute);
              },
              fromXmlAttributes: (attribute) {
                fromXmlExtensionAttributes.add(attribute);
              },
            ));
          } else {
            throw Exception('Unknown type: $targetType');
          }
        }

        final extensionSimpleTypes = extension.simpleTypes;
        final extensionComplexTypes = extension.complexTypes;
        final extensionElements = extension.elements;
        final extensionSequences = extension.sequence;
        final extensionChoices = extension.choice;
        final extensionAttribute = extension.attributes;
        final extensionRestriction = extension.restrictions;

        if (extensionSimpleTypes?.isNotEmpty ?? false) {
          throw UnimplementedError(
              'Extension of simple types is not implemented');
          // for (final simpleType in extensionSimpleTypes!){
          //   writes.add(buildSimpleType(simpleType,
          //     name: name,
          //     elementName: elementName ?? name,
          //     isAttribute: false,
          //     isNullable: isNullable,
          //     addToConstructor: (param) => addToConstructor?.call(param),
          //     addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
          //     toXmlElements: (element) => toXmlElements?.call(element),
          //     toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          //     fromXmlElements: (element) => fromXmlElements?.call(element),
          //     fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
          //   ));
          // }
        }

        if (extensionComplexTypes?.isNotEmpty ?? false) {
          throw UnimplementedError(
              'Extension of complex types is not implemented');
          // for (final complexType in extensionComplexTypes!){
          //   writes.add(buildComplexType(complexType,
          //     addToConstructor: (param) => addToConstructor?.call(param),
          //     addToConstructorValidations: (validation) => addToConstructorValidations?.call(validation),
          //     toXmlElements: (element) => toXmlElements?.call(element),
          //     toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
          //     fromXmlElements: (element) => fromXmlElements?.call(element),
          //     fromXmlAttributes: (attribute) => fromXmlAttributes?.call(attribute),
          //   ));
          // }
        }

        if (extensionElements?.isNotEmpty ?? false) {
          for (final element in extensionElements!) {
            writes.add(buildElement(element,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) =>
                  fromXmlAttributes?.call(attribute),
            ));
          }
        }

        if (extensionSequences?.isNotEmpty ?? false) {
          for (final sequence in extensionSequences!) {
            writes.addAll(buildSequence(sequence,
              isNullable: isNullable,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) =>
                  fromXmlAttributes?.call(attribute),
            ));
          }
        }

        if (extensionChoices?.isNotEmpty ?? false) {
          for (final choice in extensionChoices!) {
            writes.addAll(buildChoice(choice,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlElements: (element) => toXmlElements?.call(element),
              toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
              fromXmlElements: (element) => fromXmlElements?.call(element),
              fromXmlAttributes: (attribute) =>
                  fromXmlAttributes?.call(attribute),
            ));
          }
        }

        if (extensionAttribute?.isNotEmpty ?? false) {
          for (final attribute in extensionAttribute!) {
            writes.add(buildAttribute(attribute,
              addToConstructor: (param) => addToConstructor?.call(param),
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
              toXmlAttributes: (attribute) => toXmlAttributes?.call(attribute),
              fromXmlAttributes: (attribute) =>
                  fromXmlAttributes?.call(attribute),
            ));
          }
        }

        if (extensionRestriction?.isNotEmpty ?? false) {
          for (final restriction in extensionRestriction!) {
            _buildRestriction(
              restriction: restriction,
              name: name,
              elementName: elementName ?? name,
              isAttribute: baseIsAtrribute,
              isNullable: isNullable,
              isIterable: false,
              addToConstructorValidations: (validation) =>
                  addToConstructorValidations?.call(validation),
            );
          }
        }
    }
  }
    if (isNullable) {
      toXmlElements?.call(
          'if ($name != null) xml.XmlText($name)');
      fromXmlElements?.call('$name: element.text');
      for (final item in toXmlExtensionAttributes) {
        toXmlAttributes?.call(item);
      }
      for (final item in fromXmlExtensionAttributes){
        fromXmlAttributes?.call(item);
      }
    } else {
      toXmlElements?.call(
          'xml.XmlText($name)');
      fromXmlElements?.call('$name: element.text');
      for (final item in toXmlExtensionAttributes) {
        toXmlAttributes?.call(item);
      }
      for (final item in fromXmlExtensionAttributes){
        fromXmlAttributes?.call(item);
      }
    }
  return writes;
  }


  String buildBase64Binary(String elementName, {
    required String name,
    int? minOccurs,
    int? maxOccurs,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
    bool elementNameFromConstructor = false,
  }) {
    final buffer = StringBuffer();
    if (minOccurs == null || minOccurs > 0) {
      buffer.writeln('String $name;');
      addToConstructor?.call('required this.$name');
      toXmlElements?.call("""xml.XmlElement(xml.XmlName(${elementNameFromConstructor? "name":"'$elementName'"}), [], [
        xml.XmlText($name),
      ]),""");
      fromXmlElements?.call("""$name: element.getElement(${elementNameFromConstructor? "name":"'$elementName'"})!.text""");
    } else {
      buffer.writeln('String? $name;');
      addToConstructor?.call('this.$name');
      toXmlElements?.call(
          """if ($name?.isNotEmpty ?? false) xml.XmlElement(xml.XmlName(${elementNameFromConstructor? "name":"'$elementName'"}), [], [
        xml.XmlText($name!)
      ])""");
      fromXmlElements?.call("""$name: element.getElement(${elementNameFromConstructor? "name":"'$name'"})?.text""");
    }
    return buffer.toString();
  }

  String buildString(xsd.Element element, {
    required String name,
    int? minOccurs,
    int? maxOccurs,
    Function(String)? addToConstructor,
    Function(String)? addToConstructorValidations,
    Function(String)? toXmlElements,
    Function(String)? toXmlAttributes,
    Function(String)? fromXmlElements,
    Function(String)? fromXmlAttributes,
  }) {
    final elementName = element.name;
    final buffer = StringBuffer();
    if (minOccurs != null && minOccurs > 0){
      buffer.writeln('String $name;');
      addToConstructor?.call('required this.$name');
      addToConstructor?.call('required this.$name');
      toXmlElements?.call("""xml.XmlElement(xml.XmlName('$elementName'), [], [
        xml.XmlText($name),
      ]),""");
      fromXmlElements?.call("""$name: element.getElement('$elementName')!.text""");
    } else {
      buffer.writeln('String? $name;');
      addToConstructor?.call('this.$name');
      toXmlElements?.call("""if ($name?.isNotEmpty ?? false) xml.XmlElement(xml.XmlName('$elementName'), [], [
        xml.XmlText($name!)
      ])""");
      fromXmlElements?.call("""$name: element.getElement('$elementName')?.text""");
    }
    return buffer.toString();
  }


  String buildEnum(_Enum item){
    final name = item.name;
    final values = item.values;
    final dartType = item.dartType;
    final buffer = StringBuffer();
    if ((visitor.imports?.contains(item.name) ?? false) == false){
      buffer.writeln('enum $name {');
      final options = [];
      final buildOptions = [];

      for (final e in values){
        String name = 'v_${e.replaceAll(RegExp('[^A-Za-z0-9]'), '')}';
        name = name.substring(0, name.length > 20? 20 : name.length);
        if (options.contains(name)){
          name += '_${options.where((element) => element == name).length}';
        }
        options.add(name);
        if (dartType == 'double' || dartType == 'int' || dartType == 'bool' || dartType == 'num'){
          buildOptions.add('$name($e)');
        } else {
          buildOptions.add('$name("$e")');
        }
      }

      buffer.writeln(buildOptions.join(','));
      buffer.write(';');

      buffer.writeln('final $dartType value;');
      buffer.writeln('const $name(this.value);');

      buffer.writeln('factory $name.fromValue($dartType value) {');
      buffer.writeln('for (final item in $name.values){');
      buffer.writeln('if (item.value == value){');
      buffer.writeln('return item;');
      buffer.writeln('}');
      buffer.writeln('}');
      buffer.writeln('throw ArgumentError("Invalid value for $name: \$value");');
      buffer.writeln('}');
      buffer.writeln('}');
    }

    buffer.writeln('''
      $name? ${item.fromValue(true)}($dartType? value) => value != null? $name.fromValue(value): null;
      $dartType? ${item.toValue(true)}($name? value) => value != null? value.value: null;
      
      $name ${item.fromValue(false)}($dartType value) => $name.fromValue(value);
      $dartType ${item.toValue(false)}($name value) => value.value;
      
      List<$name>? ${item.fromList(true)}(List<$dartType>? value) => value?.map((e) => $name.fromValue(e)).toList();
      List<$dartType>? ${item.toList(true)}(List<$name>? value) => value?.map((e) => e.value).toList();
      
      List<$name> ${item.fromList(false)}(List<$dartType> value) => value.map((e) => $name.fromValue(e)).toList();
      List<$dartType> ${item.toList(false)}(List<$name> value) => value.map((e) => e.value).toList();
    ''');

    return buffer.toString();
  }

}

class _Enum{
  final String name;
  final List<String> values;
  final String dartType;
  _Enum({
    required this.name,
    required this.values,
    this.dartType = 'dynamic'
  });

  String fromList(bool isNullable){
    if (isNullable){
      return "_${name}FromMaybeList";
    } else {
      return "_${name}FromList";
    }
  }

  String fromValue(bool isNullable){
    if (isNullable){
      return "_${name}FromMaybeValue";
    } else {
      return "_${name}FromValue";
    }
  }

  String toList(bool isNullable){
    if (isNullable){
      return "_${name}ToMaybeList";
    } else {
      return "_${name}ToList";
    }
  }

  String toValue(bool isNullable){
    if (isNullable){
      return "_${name}ToMaybeValue";
    } else {
      return "_${name}ToValue";
    }
  }

  _Enum merge(_Enum other){
    if (name != other.name){
      throw Exception('Cannot merge enums with different names');
    }
    if (dartType != other.dartType){
      throw Exception('Cannot merge enums with different dart types');
    }
    return _Enum(
      name: name,
      values: <String>{...values, ...other.values}.toList(),
      dartType: dartType,
    );
  }
}

class UnamedComplexType{
  final String name;
  final xsd.ComplexType complexType;
  final xsd.Element? element;

  const UnamedComplexType({
    required this.name,
    required this.complexType,
    this.element,
  });

  String get buildName{
    String? parentName;
    String? parentType;
    if (element != null){
      xml.XmlElement? parent = element!.element?.parentElement;
      parentName = parent?.getAttribute('name');
      parentType = parent?.getAttribute('type');

      while(parent != null && parentName == null && parentType == null){
        parent = parent.parentElement;
        parentName = parent?.getAttribute('name');
        parentType = parent?.getAttribute('type');
      }

      final targetName = parentName ?? parentType ?? element!.element!.parentElement!.name.local;
      return '${getComplexTypeName(complexType)}_$targetName';
    }
    return getComplexTypeName(complexType);
  }
}