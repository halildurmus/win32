import 'dart:io';

import 'package:winmd/winmd.dart';

import 'win32_func_printer.dart';
import 'win32_struct_printer.dart';

// The Win32 metadata
final scope = MetadataStore.getWin32Scope();

/// The metadata namespaces we're generating
const namespaces = <String>['Windows.Win32.Foundation'];

String folderForNamespace(String namespace) =>
    'lib/src/${namespace.split('.').last.toLowerCase()}';

void createDirectory(String namespace) =>
    Directory(folderForNamespace(namespace)).createSync();

void generateWin32Functions(String namespace) {
  final funcs = scope.typeDefs
      .where((typedef) => (typedef.name == '$namespace.Apis'))
      .first;
  print('funcs: $funcs');

  // List of distinct modules in the namespace -- are there multiple?
  final modules =
      funcs.methods.map((method) => method.module.name).toSet().toList();

  final file = File('${folderForNamespace(namespace)}/apis.dart');
  if (file.existsSync()) {
    file.deleteSync();
  }
  generateFfiFile(file, modules, funcs);
}

void generateWin32Structs(String namespace) {
  // Ignore "structs" that are just native values; we'll deal with them
  // elsewhere. Examples include HANDLE, BOOL and BSTR.
  final structs = scope.typeDefs
      .where((typedef) =>
          typedef.name.startsWith(namespace) &&
          typedef.isClass &&
          typedef.parent?.name == 'System.ValueType' &&
          typedef.customAttributes
              .where((attrib) =>
                  attrib.name == 'Windows.Win32.Interop.NativeTypedefAttribute')
              .isEmpty)
      .toList();
  print('structs: $structs');

  final file = File('${folderForNamespace(namespace)}/structs.dart');
  generateStructsFile(file, structs);
}

void main() {
  for (final namespace in namespaces) {
    createDirectory(namespace);
    generateWin32Functions(namespace);
    generateWin32Structs(namespace);
  }
}
