import 'dart:io';

import 'package:winmd/winmd.dart';

import 'com_interfaces.dart';
import 'exclusions.dart';
import 'win32_callbacks.dart';
import 'win32_constants.dart';
import 'win32_enums.dart';
import 'win32_functions.dart';
import 'win32_structs.dart';

// The Win32 metadata
final scope = MetadataStore.getWin32Scope();

/// The metadata namespaces we're generating
const namespaces = <String>[
  'Windows.Win32.Foundation',
  'Windows.Win32.Graphics.Gdi',
  'Windows.Win32.Media.Multimedia',
  'Windows.Win32.System.Console',
  'Windows.Win32.System.SystemInformation',
  'Windows.Win32.System.Time',
  'Windows.Win32.UI.KeyboardAndMouseInput',
  'Windows.Win32.UI.PointerInput',
  'Windows.Win32.UI.TouchInput',
  'Windows.Win32.UI.WindowsAndMessaging',
  // 'Windows.Win32.System.Com',
  // 'Windows.Win32.System.Diagnostics.Debug',
  // 'Windows.Win32.System.OleAutomation',
  // 'Windows.Win32.UI.Controls',
  // 'Windows.Win32.UI.TextServices',
];

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

/// Turn a Win32 namespace into the appropriate path. For example, turn
/// `Windows.Win32.System.Console` into `lib/src/system/console`.
String folderForNamespace(String namespace) =>
    'lib/src/${namespace.split('.').skip(2).join('/').toLowerCase()}';

void createDirectory(String namespace) =>
    Directory(folderForNamespace(namespace)).createSync(recursive: true);

void generateWin32Functions(String namespace) {
  final funcs = scope.typeDefs
      .where((typedef) => (typedef.name == '$namespace.Apis'))
      .first;

  final file = File('${folderForNamespace(namespace)}/functions.g.dart');
  generateFfiFile(file, funcs);
}

void generateWin32Structs(String namespace) {
  // Ignore "structs" that are just native values; we'll deal with them
  // elsewhere. Examples include HANDLE, BOOL and BSTR.
  final structs = scope.typeDefs
      .where((typedef) => typedef.name.startsWith(namespace))
      .where((typedef) => typedef.isClass)
      .where((typedef) => typedef.parent?.name == 'System.ValueType')
      .where((typedef) => !typedef.name.endsWith('A'))
      .where((typedef) => !excludedStructs.contains(typedef.name))
      .where((typedef) => typedef.customAttributes
          .where((attrib) =>
              attrib.name == 'Windows.Win32.Interop.NativeTypedefAttribute')
          .isEmpty)
      .where((typedef) => !typedefIsGuidConstant(typedef))
      .where(supportsAmd64)
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/structs.g.dart');
  generateStructsFile(file, structs);
}

bool supportsAmd64(TypeDef typedef) {
  final supportedArch = typedef.customAttributeAsBytes(
      'Windows.Win32.Interop.SupportedArchitectureAttribute');
  return !(supportedArch.length >= 3 && supportedArch[2] & 0x02 != 0x02);
}

bool typedefIsGuidConstant(TypeDef typedef) {
  final inheritsValueType = typedef.parent?.name == 'System.ValueType';
  final guid = typedef.guid;

  return inheritsValueType && guid != null;
}

void generateWin32Enums(String namespace) {
  final enums = scope.enums
      .where((typedef) => typedef.name.startsWith(namespace))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/enums.g.dart');
  generateEnumsFile(file, enums);
}

void generateWin32Constants(String namespace) {
  final constants = scope.typeDefs
      .where((typedef) => (typedef.name == '$namespace.Apis'))
      .first
      .fields;

  final file = File('${folderForNamespace(namespace)}/constants.g.dart');
  generateConstantsFile(file, constants);

  final guidConstants = scope.typeDefs
      .where((typedef) => typedef.name.startsWith(namespace))
      .where(typedefIsGuidConstant)
      .toList();
  appendGuidConstantsFile(file, guidConstants);
}

void generateWin32Callbacks(String namespace) {
  final callbacks = scope.typeDefs
      .where(
          (typedef) => typedef.name.startsWith(namespace) && typedef.isDelegate)
      .where((typedef) => !typedef.name.endsWith('A'))
      .where((typedef) => !excludedCallbacks.contains(typedef.name))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/callbacks.g.dart');
  generateCallbacksFile(file, callbacks);
}

void generateComInterfaces(String namespace) {
  final interfaces = scope.typeDefs
      .where((typedef) => typedef.name.startsWith(namespace))
      .where((typedef) => typedef.isInterface)
      .toList();

  final directory = Directory(folderForNamespace(namespace));
  generateInterfaceFiles(directory, interfaces, scope);
}

void generateLibraryExport(List<String> namespaces) {
  // TODO: Check that each of these files exist.
  final writer = File('lib/win32.g.dart').openSync(mode: FileMode.writeOnly);

  writer.writeStringSync('// ignore_for_file: directives_ordering\n\n');
  for (final namespace in namespaces) {
    final relativePath = folderForNamespace(namespace).substring(4);
    writer.writeStringSync('''
  export '$relativePath/callbacks.g.dart';
  export '$relativePath/constants.g.dart';
  export '$relativePath/enums.g.dart';
  export '$relativePath/functions.g.dart';
  export '$relativePath/structs.g.dart';\n
''');
  }

  writer.closeSync();
}

void main() {
  for (final namespace in namespaces) {
    print('Generating $namespace...');

    createDirectory(namespace);
    generateWin32Functions(namespace);
    generateWin32Structs(namespace);
    generateWin32Enums(namespace);
    generateWin32Constants(namespace);
    generateWin32Callbacks(namespace);
    generateComInterfaces(namespace);
  }
  generateLibraryExport(namespaces);
}
