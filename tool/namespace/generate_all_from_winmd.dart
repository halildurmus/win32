import 'dart:io';

import 'package:winmd/winmd.dart';

import 'win32_enum_printer.dart';
import 'win32_func_printer.dart';
import 'win32_struct_printer.dart';

// The Win32 metadata
final scope = MetadataStore.getWin32Scope();

/// The metadata namespaces we're generating
const namespaces = <String>['Windows.Win32.Foundation'];

List<String> namespacesInScope(Scope scope) {
  // Use a Set to avoid duplication
  final namespaceSet = <String>{};

  final scope = MetadataStore.getWin32Scope();
  for (final td in scope.typeDefs) {
    if (td.name.startsWith('Windows.Win32')) {
      final namespace = td.name.split('.')[2];
      namespaceSet.add('Windows.Win32.$namespace');
    }
  }
  return namespaceSet.toList()..sort((a, b) => a.compareTo(b));
}

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

  final file = File('${folderForNamespace(namespace)}/functions.dart');
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
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));
  print('structs: $structs');

  final file = File('${folderForNamespace(namespace)}/structs.dart');
  generateStructsFile(file, structs);
}

void generateWin32Enums(String namespace) {
  final enums = scope.enums
      .where((typedef) => typedef.name.startsWith(namespace))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));
  print('enums: $enums');

  final file = File('${folderForNamespace(namespace)}/enums.dart');
  generateEnumsFile(file, enums);
}

void generateLibraryExport(List<String> namespaces) {
  final writer = File('lib/win32.g.dart').openSync(mode: FileMode.writeOnly);

  for (final namespace in namespaces) {
    writer.writeStringSync('''
  export '${folderForNamespace(namespace)}/functions.dart';
  export '${folderForNamespace(namespace)}/structs.dart';
  export '${folderForNamespace(namespace)}/enums.dart';
''');
  }

  writer.closeSync();
}

void main() {
  for (final namespace in namespaces) {
    createDirectory(namespace);
    generateWin32Functions(namespace);
    generateWin32Structs(namespace);
    generateWin32Enums(namespace);
  }
  generateLibraryExport(namespaces);
}
