import 'package:winmd/winmd.dart';
import 'win32api.dart';
import 'win32types.dart';

class Win32Prototype {
  final WinmdMethod _method;
  final String _lib;

  String get nativePrototype {
    var proto = '${getFfiNativeType(_method.returnType.typeIdentifier)} '
        'Function(';

    proto += _method.parameters
        .map((param) =>
            '${getFfiNativeType(param.typeIdentifier)} ${param.name!}')
        .join(', ');

    proto += ')';
    return proto;
  }

  String getFfiNativeType(WinmdTypeIdentifier typeIdentifier) {
    if (typeIdentifier.nativeType.isEmpty) {
      // Type is a Win32 type (e.g. HDC, BOOL, etc.)
      final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
      final ffiNativeType = convertToFFIType(win32Type);
      return ffiNativeType;
    } else {
      return typeIdentifier.nativeType;
    }
  }

  String get dartParams => _method.parameters
      .map((param) => '${getFfiDartType(param.typeIdentifier)} ${param.name!}')
      .join(', ');

  String get dartPrototype =>
      '${getFfiDartType(_method.returnType.typeIdentifier)} Function($dartParams)';

  String getFfiDartType(WinmdTypeIdentifier typeIdentifier) {
    // If it's a basic value type, we already know the Dart equivalent
    if (typeIdentifier.dartType.isNotEmpty) {
      return typeIdentifier.dartType;
    }

    // Type is a Win32 type (e.g. HDC, BOOL, etc.)
    final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
    final ffiNativeType = convertToFFIType(win32Type);
    final dartType = convertToDartType(ffiNativeType);
    return dartType;
  }

  String get dartFfiMapping =>
      '${getFfiDartType(_method.returnType.typeIdentifier)} '
      '${_method.methodName}($dartParams) {\n'
      '  final _${_method.methodName} = _$_lib.lookupFunction<\n'
      '    $nativePrototype, \n'
      '    $dartPrototype\n'
      "  >('${_method.methodName}');\n"
      '  return _${_method.methodName}'
      '(${_method.parameters.map((param) => (param.name!)).toList().join(', ')})'
      ';\n'
      '}\n';

  const Win32Prototype(this._method, this._lib);
}

void main() {
  // Load JSON file
  final win32 = Win32API(r'c:\src\win32\tool\win32\win32api.json');

  final gdiAPIs =
      win32.functions.values.where((func) => func.dllLibrary == 'gdi32');

  // Load WinMD metadata for Win32
  final scope = WinmdStore.getScopeForFile('tool/win32/Windows.Win32.winmd');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  // Sort the methods alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Convert the methods to the FFI native types
  final gdiApis =
      sortedMethods.map((method) => Win32Prototype(method, 'gdi32'));

  final createDIBitmap =
      gdiApi.methods.firstWhere((m) => m.methodName == 'CreateDIBitmap');

  final cdb = Win32Prototype(createDIBitmap, 'gdi32');

  print(cdb._method.parameters.length);
  print(cdb._method.token);
  print(cdb.dartFfiMapping);
  for (final p in cdb._method.parameters) {
    print(p.typeIdentifier.name);
  }
  // print(gdiApis.map((api) => api.dartFfiMapping).join('\n'));
}
