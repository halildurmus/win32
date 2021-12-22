import 'dart:io';
import 'dart:isolate';
import 'dart:math' show min;

import 'package:async/async.dart';
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

// How many isolates should be spun up simultaneously. This works well on a
// Xeon machine with 16 virtual cores; your mileage may vary.
const concurrentIsolates = 32;

// The Win32 metadata. Declared globally so it's accessible to all
// partitions.
final Scope scope = MetadataStore.getWin32Scope();

// This is the API for `dart format`
final formatter = DartFormatter();

class PartitionData {
  final SendPort port;
  final List<String> namespaces;
  final int partition;
  final Stopwatch stopwatch;

  const PartitionData(
      this.port, this.namespaces, this.partition, this.stopwatch);
}

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

bool typeDirectlyInNamespace(String type, String namespace) {
  final typeComponents = type.split('.');
  typeComponents.removeLast();
  return typeComponents.join('.') == namespace;
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
      .where((typedef) => !excludedConstants.contains(typedef.name))
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

/// Generate code for a partitioned subset of namespaces.
void generateForNamespaces(PartitionData data) async {
  final namespaces = data.namespaces;
  final stopwatch = data.stopwatch;
  final partition = data.partition;

  print('[${stopwatch.elapsed}] Creating directories (partition $partition)');
  namespaces.forEach(createDirectory);

  print('[${stopwatch.elapsed}] Generating constants (partition $partition)');
  namespaces.forEach(generateWin32Constants);

  print('[${stopwatch.elapsed}] Generating structs (partition $partition)');
  namespaces.forEach(generateWin32Structs);

  print('[${stopwatch.elapsed}] Generating enums (partition $partition)');
  namespaces.forEach(generateWin32Enums);

  print('[${stopwatch.elapsed}] Generating callbacks (partition $partition)');
  namespaces.forEach(generateWin32Callbacks);

  print(
      '[${stopwatch.elapsed}] Generating Win32 functions (partition $partition)');
  namespaces.forEach(generateWin32Functions);

  print(
      '[${stopwatch.elapsed}] Generating COM interfaces (partition $partition)');
  namespaces.forEach(generateComInterfaces);

  print('[${stopwatch.elapsed}] Completed (partition $partition)');

  Isolate.exit(data.port, true);
}

/// Partition a list into the given number of sublists.
List<List<T>> partitionList<T>(List<T> list, int partitions) {
  final chunkSize = (list.length / partitions).ceil();
  return [
    for (var i = 0; i < list.length; i += chunkSize)
      list.sublist(i, min(i + chunkSize, list.length))
  ];
}

// Example:
//   dart tool\v3\generate.dart Windows.Win32.System.Com
void main(List<String> args) async {
  // Uncomment this for interactive debugging.
  const namespacesToDebug = <String>[/*'Windows.Win32.System.Ole'*/];

  final stopwatch = Stopwatch()..start();
  print('[${stopwatch.elapsed}] Loading metadata');

  List<String> namespaces;
  if (args.isNotEmpty) {
    namespaces = [args[0]];
  } else if (namespacesToDebug.isNotEmpty) {
    namespaces = namespacesToDebug;
  } else {
    namespaces = namespacesInScope(scope);
  }

  final partitions = partitionList<String>(namespaces, concurrentIsolates);

  /// There could be fewer partitions than isolates, e.g. where we're only
  /// generating for a subset of namespaces.
  final ports = List.generate(partitions.length, (i) => ReceivePort());

  for (var i = 0; i < partitions.length; i++) {
    await Isolate.spawn<PartitionData>(generateForNamespaces,
        PartitionData(ports[i].sendPort, partitions[i], i, stopwatch));
  }

  final futureGroup = FutureGroup<dynamic>();
  for (final port in ports) {
    futureGroup.add(port.first);
  }
  futureGroup.close();
  await futureGroup.future;

  print('[${stopwatch.elapsed}] Generating library export');
  generateLibraryExport(namespaces);

  stopwatch.stop();
  print('[${stopwatch.elapsed}] Projection generation completed.');
}
