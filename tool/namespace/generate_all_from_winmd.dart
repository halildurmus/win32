import 'dart:io';

import 'package:winmd/winmd.dart';

import 'win32_func_printer.dart';

// The Win32 metadata
final scope = MetadataStore.getWin32Scope();

/// The metadata namespaces we're generating
const namespaces = <String>['Windows.Win32.Foundation'];

void createDirectory(String namespace) {
  final folder = namespace.split('.').last.toLowerCase();
  Directory('lib/src/$folder').createSync();
}

void generateWin32Functions(String namespace) {
  final funcs = scope.typeDefs
      .where((typedef) => (typedef.name == '$namespace.Apis'))
      .first;
  print('func: $funcs');

  // List of distinct modules in the namespace -- are there multiple?
  final modules = [
    funcs.methods.map((method) => method.module.name).toSet().toList().first
  ];

  for (final module in modules) {
    generateFfiFile(module, funcs);
  }
}

void main() {
  for (final namespace in namespaces) {
    createDirectory(namespace);
    generateWin32Functions(namespace);
  }
}
