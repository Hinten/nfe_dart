import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:analyzer/dart/constant/value.dart';
import 'package:xml_schema_validator/xml_schema_validator.dart';

class XMLSchemaVisitor extends SimpleElementVisitor{
  final BuildStep buildStep;
  final DartObject annotation;
  String get name => element.name;
  String get filePath => annotation.getField('filePath')!.toStringValue()!;
  String? get rootElementName => annotation.getField('rootElementName')!.toStringValue();
  List<String>? get imports => annotation.getField('imports')?.toListValue()?.map((e) => e.toStringValue()!).toList();
  late TypeAliasElement element;
  late final XSdSchema xsdSchema;


  XMLSchemaVisitor(this.buildStep, this.annotation);

  @override
  visitTypeAliasElement(TypeAliasElement element) {
    this.element = element;
    super.visitTypeAliasElement(element);
  }

  void visitXsd(){
    xsdSchema = XSdSchema.fromFile(filePath);
  }

}
