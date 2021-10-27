import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/utils.dart';
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
  // Working on:
  'Windows.Win32.System.SystemServices',
  'Windows.Win32.Graphics.DirectDraw',
  'Windows.Win32.System.Diagnostics.Debug',

  // Already working:
  'Windows.Win32.Devices.Display',
  'Windows.Win32.Foundation',
  'Windows.Win32.Graphics.Direct3D9',
  'Windows.Win32.Graphics.Gdi',
  'Windows.Win32.Media.Multimedia',
  'Windows.Win32.Storage.FileSystem',
  'Windows.Win32.System.Console',
  'Windows.Win32.System.SystemInformation',
  'Windows.Win32.System.Time',
  'Windows.Win32.UI.Controls',
  'Windows.Win32.UI.DisplayDevices',
  'Windows.Win32.UI.KeyboardAndMouseInput',
  'Windows.Win32.UI.PointerInput',
  'Windows.Win32.UI.TextServices',
  'Windows.Win32.UI.TouchInput',
  'Windows.Win32.UI.WindowsAndMessaging',

  // Consider next:
  // 'Windows.Win32.System.Com',
  // 'Windows.Win32.System.OleAutomation',
];

const win32FileHeader = '''
library new_win32;

export 'src/constants_new.dart';
export 'src/exceptions.dart';
export 'src/macros.dart';
export 'src/types.dart';
export 'src/utils.dart';

export 'src/extensions/dialogs.dart';
export 'src/extensions/int_to_hexstring.dart';
export 'src/extensions/list_to_blob.dart';
export 'src/extensions/set_ansi.dart';
export 'src/extensions/set_string.dart';
export 'src/extensions/set_string_array.dart';
export 'src/extensions/unpack_utf16.dart';
''';

List<String> namespacesInScope(Scope scope) {
  // Use a Set to avoid duplication
  final namespaceSet = <String>{};

  final scope = MetadataStore.getWin32Scope();
  for (final td in scope.typeDefs) {
    if (td.name.startsWith('Windows.Win32')) {
      final namespace = td.name.split('.').skip(2).toList()..removeLast();
      namespaceSet.add('Windows.Win32.${namespace.join('.')}');
    }
  }
  return namespaceSet.toList()
    ..sort((a, b) => a.compareTo(b))
    ..removeWhere((namespace) => excludedNamespaces.contains(namespace));
}

/// Turn a Win32 namespace into the appropriate path. For example, turn
/// `Windows.Win32.System.Console` into `lib/src/system/console`.
String folderForNamespace(String namespace) =>
    'lib/src/${namespace.split('.').skip(2).join('/').toLowerCase()}';

void createDirectory(String namespace) =>
    Directory(folderForNamespace(namespace)).createSync(recursive: true);

void generateWin32Functions(String namespace) {
  final funcs =
      scope.typeDefs.where((typedef) => (typedef.name == '$namespace.Apis'));

  // Some namespaces may not contain a Win32 APIs subnamespace (e.g.
  // Windows.Win32.Media.Streaming does not contain
  // Windows.Win32.Media.Streaming.Apis)
  if (funcs.isNotEmpty) {
    final file = File('${folderForNamespace(namespace)}/functions.g.dart');
    generateFfiFile(file, funcs.first);
  }
}

bool typedefIsStruct(TypeDef typedef) =>
    typedef.isClass && typedef.parent?.name == 'System.ValueType';

bool structIsNotWrapper(TypeDef typedef) => typedef.customAttributes
    .where((attrib) =>
        attrib.name == 'Windows.Win32.Interop.NativeTypedefAttribute')
    .isEmpty;

bool supportsAmd64(TypeDef typedef) {
  final supportedArch = typedef.customAttributeAsBytes(
      'Windows.Win32.Interop.SupportedArchitectureAttribute');
  return !(supportedArch.length >= 3 && supportedArch[2] & 0x02 != 0x02);
}

void generateWin32Structs(String namespace) {
  // All structs that map to Dart structs. We ignore ANSI structs and structs
  // that are just GUID constants. We also ignore native values that are wrapped
  // for convenience (examples include HANDLE, BOOL and BSTR).
  final structs = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where(typedefIsStruct)
      .where(structIsNotWrapper)
      .where((typedef) => !typedefIsAnsi(typedef))
      .where((typedef) => !excludedStructs.contains(typedef.name))
      .where((typedef) => !typedefIsGuidConstant(typedef))
      .where(supportsAmd64)
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/structs.g.dart');
  generateStructsFile(file, structs);
}

void generateWin32Enums(String namespace) {
  final enums = scope.enums
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/enums.g.dart');
  generateEnumsFile(file, enums);
}

bool typedefIsGuidConstant(TypeDef typedef) {
  final inheritsValueType = typedef.parent?.name == 'System.ValueType';
  final guid = typedef.guid;

  return inheritsValueType && guid != null;
}

bool constantIsClassClsid(TypeDef typedef) {
  final interfaceParts = typedef.name.split('.');
  final finalPart = interfaceParts.removeLast();
  final interface = '${interfaceParts.join('.')}.I$finalPart';

  return typedef.scope.findTypeDef(interface) != null;
}

void generateWin32Constants(String namespace) {
  final constants =
      scope.typeDefs.where((typedef) => (typedef.name == '$namespace.Apis'));

  if (constants.isNotEmpty) {
    final file = File('${folderForNamespace(namespace)}/constants.g.dart');
    generateConstantsFile(file, constants.first.fields);

    final guidConstants = scope.typeDefs
        .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
        .where(typedefIsGuidConstant)
        .where((typedef) => !(constantIsClassClsid(typedef)))
        .toList();
    appendGuidConstantsFile(file, guidConstants);
  }
}

void generateWin32Callbacks(String namespace) {
  final callbacks = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where((typedef) => typedef.isDelegate)
      .where((typedef) => !typedef.name.endsWith('A'))
      .where((typedef) => !excludedCallbacks.contains(typedef.name))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final file = File('${folderForNamespace(namespace)}/callbacks.g.dart');
  generateCallbacksFile(file, callbacks);
}

bool typeDirectlyInNamespace(String type, String namespace) {
  final typeComponents = type.split('.');
  typeComponents.removeLast();
  return typeComponents.join('.') == namespace;
}

void generateComInterfaces(String namespace) {
  final interfaces = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where((typedef) => typedef.isInterface)
      .where((typedef) => !excludedComInterfaces.contains(typedef.name))
      .toList();

  final directory = Directory(folderForNamespace(namespace));
  generateInterfaceFiles(directory, interfaces, scope);
}

void generateLibraryExport(List<String> namespaces) {
  final writer = File('lib/new_win32.dart').openSync(mode: FileMode.writeOnly);

  writer.writeStringSync('// ignore_for_file: directives_ordering\n\n');
  writer.writeStringSync(win32FileHeader);
  for (final namespace in namespaces) {
    final directory = Directory(folderForNamespace(namespace));

    final relativePath = folderForNamespace(namespace).substring(4);
    for (final file in directory.listSync()) {
      if (file.existsSync() && file.uri.toFilePath().endsWith('.dart')) {
        writer.writeStringSync(
            "  export '$relativePath/${file.path.split('\\').last}';\n");
      }
    }
  }
  writer.closeSync();
}

void main() {
  for (final namespace in namespacesInScope(scope)) {
    // if (namespace == 'Windows.Win32.System.Com') {
    print('Generating $namespace...');

    createDirectory(namespace);
    generateWin32Functions(namespace);
    generateWin32Structs(namespace);
    generateWin32Enums(namespace);
    generateWin32Constants(namespace);
    generateWin32Callbacks(namespace);
    generateComInterfaces(namespace);
    // }
  }
  generateLibraryExport(namespaces);
}
