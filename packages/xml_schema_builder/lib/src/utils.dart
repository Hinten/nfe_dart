import 'package:analyzer/dart/element/type.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

Iterable<DartType>? getGenericTypes(DartType type) {
  return type is ParameterizedType ? type.typeArguments : null;
}
