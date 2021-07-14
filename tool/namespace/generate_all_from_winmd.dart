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
  final modules = [
    funcs.methods.map((method) => method.module.name).toSet().toList().first
  ];

  for (final module in modules) {
    generateFfiFile(module, funcs);
  }
}

void generateWin32Structs(String namespace) {
  final structs = scope.typeDefs
      .where((typedef) =>
          typedef.name.startsWith(namespace) &&
          typedef.isClass &&
          typedef.parent?.name == 'System.ValueType')
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
