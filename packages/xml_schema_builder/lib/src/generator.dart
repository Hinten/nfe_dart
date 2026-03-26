import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:xml_schema_builder/src/templates/xsd.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart' as xsd;
import 'visitors.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
// dart build_runner build --delete-conflicting-outputs
class XsdSchemaGenerator extends GeneratorForAnnotation<xsd.FromSchema>{

  Map<Element, XMLSchemaVisitor> visitors = {};

  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) async {
    for (var annotatedElement in library.annotatedWith(typeChecker)){
      visitors[annotatedElement.element] ??= _visitElement(annotatedElement.element, annotatedElement.annotation, buildStep);
    }
    return super.generate(library, buildStep);
  }

  XMLSchemaVisitor _visitElement(Element element, ConstantReader annotation, BuildStep buildStep){
    var visitor = XMLSchemaVisitor(buildStep, typeChecker.firstAnnotationOf(element)!);
    element.visitChildren(visitor);
    if (element.kind == ElementKind.TYPE_ALIAS){
      visitor.visitTypeAliasElement(element as TypeAliasElement);
      visitor.visitXsd();
    }
    return visitor;
  }

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    final XMLSchemaVisitor visitor = visitors[element]!;
    StringBuffer buffer = StringBuffer();
    final template = XsdTemplate(
      element: element,
      visitor: visitor,
      annotation: annotation,
      buildStep: buildStep,
    );
    template.write(buffer);
    return buffer.toString();
  }

}