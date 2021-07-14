import 'package:winmd/winmd.dart';

import 'win32_func_printer.dart';

const namespaces = <String>['Microsoft.Win32.Foundation'];

void generateWin32Functions() {
  for (final namespace in namespaces) {
    final scope = MetadataStore.getWin32Scope();

    final funcs = scope.typeDefs
        .where((typedef) => (typedef.name == '$namespace.Apis'))
        .first;

    // List of distinct modules in the namespace -- are there multiple?
    final modules = [
      funcs.methods.map((method) => method.module.name).toSet().toList().first
    ];

    for (final module in modules) {
      generateFfiFile(module, funcs);
    }
  }
}

void main() {
  generateWin32Functions();
}
