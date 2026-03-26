class FromSchema{
  final String filePath;
  final String? rootElementName;
  final List<String>? imports;
  const FromSchema(
    this.filePath, {
    this.rootElementName,
    this.imports,
  });
}