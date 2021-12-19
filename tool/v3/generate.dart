import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../projection/utils.dart';
import 'com_interfaces.dart';
import 'exclusions.dart';
import 'library.dart';
import 'win32_callbacks.dart';
import 'win32_constants.dart';
import 'win32_enums.dart';
import 'win32_functions.dart';
import 'win32_structs.dart';

// The Win32 metadata
final scope = MetadataStore.getWin32Scope();
final formatter = DartFormatter();

// TODO: Rationalize this set of utility functions with the ones in utils.dart.

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

void generateWin32Structs(String namespace) {
  // All structs that map to Dart structs. We ignore ANSI structs and structs
  // that are just GUID constants. We also ignore native values that are wrapped
  // for convenience (examples include HANDLE, BOOL and BSTR).
  final structs = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where(typedefIsStruct)
      .where(structIsNotWrapper)
      .where(typedefIsNotAnsi)
      .where((typedef) => !excludedStructs.contains(typedef.name))
      .where((typedef) => !typedefIsGuidConstant(typedef))
      .where((typedef) => typedef.supportedArchitectures.x64)
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

  final guidConstants = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where(typedefIsGuidConstant)
      .where((typedef) => !(constantIsClassClsid(typedef)))
      .toList();

  if (constants.isNotEmpty) {
    final file = File('${folderForNamespace(namespace)}/constants.g.dart');
    generateConstantsFile(file, constants.first.fields, guidConstants);
  }
}

void generateWin32Callbacks(String namespace) {
  final callbacks = scope.typeDefs
      .where((typedef) => typeDirectlyInNamespace(typedef.name, namespace))
      .where((typedef) => typedef.isDelegate)
      .where((typedef) => !typedefIsAnsi(typedef))
      .where((typedef) => !excludedCallbacks.contains(typedef.name))
      .where((typedef) => typedef.supportedArchitectures.x64)
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  if (callbacks.isNotEmpty) {
    final file = File('${folderForNamespace(namespace)}/callbacks.g.dart');
    generateCallbacksFile(file, callbacks);
  }
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
      .where(comInterfaceIsNotAnsi)
      .where((typedef) => !excludedComInterfaces.contains(typedef.name))
      .toList();

  final directory = Directory(folderForNamespace(namespace));
  generateInterfaceFiles(directory, interfaces, scope);
}

// Example:
//   dart tool\namespace\generate_all_from_winmd.dart Windows.Win32.System.Com
void main(List<String> args) {
  // final namespacesDefault = ['Windows.Win32.Devices.Bluetooth'];
  final stopwatch = Stopwatch()..start();
  final namespacesDefault = namespacesInScope(scope);
  final namespaces = args.isNotEmpty ? [args[0]] : namespacesDefault;

  print('[${stopwatch.elapsed}] Creating directories');
  namespaces.forEach(createDirectory);

  print('[${stopwatch.elapsed}] Generating constants');
  namespaces.forEach(generateWin32Constants);

  print('[${stopwatch.elapsed}] Generating structs');
  namespaces.forEach(generateWin32Structs);

  print('[${stopwatch.elapsed}] Generating enums');
  namespaces.forEach(generateWin32Enums);

  print('[${stopwatch.elapsed}] Generating callbacks');
  namespaces.forEach(generateWin32Callbacks);

  print('[${stopwatch.elapsed}] Generating Win32 functions');
  namespaces.forEach(generateWin32Functions);

  print('[${stopwatch.elapsed}] Generating COM interfaces');
  namespaces.forEach(generateComInterfaces);

  print('[${stopwatch.elapsed}] Generating library export');
  generateLibraryExport(namespaces);

  stopwatch.stop();
  print('[${stopwatch.elapsed}] Projection generation completed.');
}
