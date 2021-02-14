import 'package:winmd/winmd.dart';

class Win32Prototype {
  final String _nameWithoutEncoding;
  final Method _method;
  final String _lib;

  String get nativePrototype =>
      '${TypeBuilder.nativeType(_method.returnType.typeIdentifier)} Function($nativeParams)';

  String get nativeParams => _method.parameters
      .map((param) =>
          '${TypeBuilder.nativeType(param.typeIdentifier)} ${param.name}')
      .join(', ');

  String get dartPrototype =>
      '${TypeBuilder.dartType(_method.returnType.typeIdentifier)} Function($dartParams)';

  String get dartParams => _method.parameters
      .map((param) =>
          '${TypeBuilder.dartType(param.typeIdentifier)} ${param.name}')
      .join(', ');

  String get dartFfiMapping =>
      '${TypeBuilder.dartType(_method.returnType.typeIdentifier)} '
      '$_nameWithoutEncoding($dartParams) {\n'
      '  final _$_nameWithoutEncoding = _$_lib.lookupFunction<\n'
      '    $nativePrototype, \n'
      '    $dartPrototype\n'
      "  >('${_method.methodName}');\n"
      '  return _$_nameWithoutEncoding'
      '(${_method.parameters.map((param) => (param.name)).toList().join(', ')})'
      ';\n'
      '}\n';

  const Win32Prototype(this._nameWithoutEncoding, this._method, this._lib);
}

void main() {
  // Load WinMD metadata for Win32
  final scope = MetadataStore.getScopeForFile('tool/win32/Windows.Win32.winmd');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  // Sort the functions alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // // Convert the functions to their corresponding FFI declaration
  final gdiApis = sortedMethods
      .map((method) => Win32Prototype(method.methodName, method, 'gdi32'));
  print('There are ${gdiApis.length} APIs represented in this scope.');

  // Find a specific function
  const funcName = 'AddFontResourceW';
  final winmdMethod =
      gdiApi.methods.firstWhere((m) => m.methodName == funcName);

  final cdb = Win32Prototype('AddFontResource', winmdMethod, 'gdi32');

  // Print out some information about it
  print('This method is token #${cdb._method.token}');
  print('The mapping is:\n${cdb.dartFfiMapping}');
}
