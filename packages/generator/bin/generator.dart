// This script generates Dart projections for various components of the Win32
// API, including callbacks, constants, enums, functions, interfaces, and
// structs from Windows metadata using the `winmd` package.
//
// Each section is responsible for generating specific parts of the API
// (callbacks, constants, etc.), ensuring that metadata is processed and
// converted into Dart code.

import 'dart:collection';
import 'dart:io' as io;

import 'package:args/args.dart';
import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:logging/logging.dart';
import 'package:nuget/nuget.dart';
import 'package:winmd/winmd.dart' as winmd;

const generatedFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

''';

const callbackFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 callbacks.
//
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
''';

const constantFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 constants.
//
// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'guid.dart';
import 'hresult.dart';
import 'ntstatus.dart';
import 'pcwstr.dart';
import 'structs.g.dart';
''';

const dynamicLibraryFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import
''';

const dynamicLibraryTestFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;
''';

const dynamicLibraryWrapperCFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

''';

const dynamicLibraryWrapperDartFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;
''';

const enumFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 enums.
//
// ignore_for_file: camel_case_types, constant_identifier_names

import 'rpc_status.dart';
import 'win32_error.dart';
''';

const interfaceHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import
''';

const structFileHeader = '''
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 structs.
//
// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: non_constant_identifier_names, unnecessary_this
// ignore_for_file: unused_field

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_com.g.dart';
import '../_win32.g.dart';
import 'bstr.dart';
import 'callbacks.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/_internal.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'hresult.dart';
import 'pstr.dart';
import 'pwstr.dart';
import 'types.dart';
import 'win32_error.dart';
import 'win32_result.dart';
''';

const excludedNamespaces = <String>{
  'Windows.Win32.Foundation.Metadata',
  'Windows.Win32.System.Diagnostics.Debug.WebApp',
  'Windows.Win32.System.WinRT.Xaml',
  'Windows.Win32.UI.Xaml',
  'Windows.Win32.Web.MsHtml',
};

/// Generates Dart projections for Win32 API callbacks.
///
/// This method extracts callback definitions and generates a Dart file (
/// `callbacks.g.dart`) located in the directory `packages/win32/lib/src/` that
/// contains the callback projections.
void generateCallbacks() {
  final win32CallbacksPath = io.Platform.script
      .resolve('../data/win32_callbacks.json')
      .toFilePath();
  final callbacks = loadMap(win32CallbacksPath);
  saveMap(callbacks, win32CallbacksPath);
  generateProjections(
    items: callbacks,
    outputPath: '../../win32/lib/src/callbacks.g.dart',
    fileHeader: callbackFileHeader,
    projectionFactory: CallbackProjection.new,
  );
  logger.info('🚀 Total callbacks generated: ${callbacks.length}');
}

/// Generates Dart projections for Win32 API constants.
///
/// This method extracts constant definitions and generates a Dart file (
/// `constants.g.dart`) located in the directory `packages/win32/lib/src/` that
/// contains the constant projections.
void generateConstants() {
  final win32ConstantsPath = io.Platform.script
      .resolve('../data/win32_constants.json')
      .toFilePath();
  final constants = loadMap(win32ConstantsPath);
  saveMap(constants, win32ConstantsPath);
  final constantKeys = constants.keys.toSet();
  final fields = <winmd.Field>[];
  final metadataKeys = <String>{};
  for (final f in WindowsMetadata.constants) {
    final key = '${f.parent.namespace}.${f.parent.name}.${f.name}';
    if (constantKeys.contains(key)) {
      fields.add(f);
      metadataKeys.add(key);
    }
  }
  for (final constant in constantKeys) {
    if (!metadataKeys.contains(constant)) {
      logger.warning('⚠️ Constant not found: $constant');
    }
  }
  fields.sort((a, b) => a.name.compareTo(b.name));
  final projections = fields.map(ConstantProjection.new).toFixedList();
  final buffer = StringBuffer()
    ..writeln(constantFileHeader)
    ..writeAll(projections, '\n');
  final filePath = io.Platform.script
      .resolve('../../win32/lib/src/constants.g.dart')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
  logger.info('🚀 Total constants generated: ${constants.length}');
}

/// Generates Dart projections for Win32 API enums.
///
/// This method extracts enum definitions and generates a Dart file (
/// `enums.g.dart`) located in the directory `packages/win32/lib/src/` that
/// contains the enum projections.
void generateEnums() {
  final win32EnumsPath = io.Platform.script
      .resolve('../data/win32_enums.json')
      .toFilePath();
  final enums = loadMap(win32EnumsPath);
  saveMap(enums, win32EnumsPath);
  generateProjections(
    items: enums,
    outputPath: '../../win32/lib/src/enums.g.dart',
    fileHeader: enumFileHeader,
    projectionFactory: EnumProjection.new,
  );
  logger.info('🚀 Total enums generated: ${enums.length}');
}

/// Generates a Dart file for a specified dynamic [library] (e.g.,
/// `kernel32.dll`) containing Win32 functions defined by the provided
/// [methods].
///
/// The generated file is saved in the directory `packages/win32/lib/src/win32/`
/// and named after the dynamic library (e.g., `kernel32.g.dart` for
/// `kernel32.dll`).
///
/// This file contains function declarations for all the methods from the
/// dynamic library that are projected into Dart.
void generateDynamicLibrary(
  winmd.ModuleRef library,
  List<winmd.MethodDef> methods,
) {
  final fileName = library.safeName.safeFilename;
  final projection = DynamicLibraryProjection(methods[0].module!, methods);
  final buffer = StringBuffer()
    ..writeln(dynamicLibraryFileHeader)
    ..write(projection);
  final filePath = io.Platform.script
      .resolve('../../win32/lib/src/win32/$fileName')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
}

/// Generates a Dart file that contains;
/// - a constant set of all dynamic libraries projected from the Win32 API
/// - a constant list of all dynamic libraries that have wrappers to preserve
///   the result of `GetLastError()`.
///
/// These constants are used in the build process to determine which dynamic
/// libraries to include as code assets.
///
/// The generated file is saved in the directory `packages/win32/hook/` and
/// named `_internal.g.dart`.
void generateDynamicLibrariesConstant(
  Set<winmd.ModuleRef> dynamicLibraries,
  Set<winmd.ModuleRef> wrappedLibraries,
) {
  final buffer = StringBuffer(generatedFileHeader);

  final librariesBuffer = StringBuffer()..writeln('const dynamicLibraries = {');
  for (final library in dynamicLibraries) {
    librariesBuffer.writeln("  '${library.name.toLowerCase()}',");
  }
  librariesBuffer.writeln('};');

  final sourcesBuffer = StringBuffer()..writeln('const sources = [');
  for (final library in wrappedLibraries) {
    final safeName = library.safeName;
    sourcesBuffer.writeln("  'src/${safeName.toLowerCase()}.g.c',");
  }
  sourcesBuffer.writeln('];');

  buffer
    ..writeln(librariesBuffer.toString())
    ..write(sourcesBuffer.toString());

  final filePath = io.Platform.script
      .resolve('../../win32/hook/_internal.g.dart')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
}

/// Generates a Dart file that exports all the dynamic libraries projected from
/// the Win32 API.
///
/// The generated file is saved in the directory `packages/win32/lib/` and named
/// `_win32.g.dart`.
void generateDynamicLibraryExports(Set<winmd.ModuleRef> dynamicLibraries) {
  final buffer = StringBuffer(generatedFileHeader)
    ..writeln('/// @nodoc\nlibrary;\n');
  for (final library in dynamicLibraries) {
    final fileName = library.safeName.safeFilename;
    buffer.writeln("export 'src/win32/$fileName';");
  }
  final filePath = io.Platform.script
      .resolve('../../win32/lib/_win32.g.dart')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
}

/// Generates Dart test file for the specified dynamic [library] (e.g.,
/// `kernel32.dll`) that tests the projected functions provided in [methods] and
/// [functions].
///
/// The generated file is saved in the directory
/// `packages/win32/test/win32/dll/` and named after the dynamic library (e.g.,
/// `kernel32.g_test.dart` for `kernel32.dll`).
///
/// This file contains unit tests for all the functions projected from the
/// dynamic library.
void generateDynamicLibraryTests(
  winmd.ModuleRef library,
  List<winmd.MethodDef> methods,
  List<Win32Function> functions,
) {
  final libraryName = library.safeName;
  final projection = DynamicLibraryTestProjection(
    methods[0].module!,
    methods,
    functions,
  );
  final buffer = StringBuffer()
    ..writeln(dynamicLibraryTestFileHeader)
    ..write(projection);
  final filePath = io.Platform.script
      .resolve('../../win32/test/win32/dll/$libraryName.g_test.dart')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
}

/// Generates dynamic library wrappers for the specified [library] and its
/// [methods].
///
/// This method creates three files for each dynamic library:
/// - A C header file (e.g., `kernel32.g.h`) containing function prototypes.
/// - A C source file (e.g., `kernel32.g.c`) with function implementations.
/// - A Dart file (e.g., `kernel32.g.dart`) with native bindings.
///
/// These wrappers are used to call the native functions from Dart and preserve
/// the result of `GetLastError()` so that errors can be handled reliably.
void generateDynamicLibraryWrappers(
  winmd.ModuleRef library,
  List<winmd.MethodDef> methods,
) {
  final libraryName = library.name.toLowerCase();
  final safeLibraryName = library.safeName;
  const includes = <String, List<String>>{
    'aclui.dll': ['aclui.h'],
    'advapi32.dll': [
      'evntrace.h',
      'ntsecapi.h',
      'perflib.h',
      'wct.h',
      'wincred.h',
      'winsafer.h',
    ],
    'authz.dll': ['authz.h'],
    'bluetoothapis.dll': ['bluetoothapis.h'],
    'bthprops.cpl': ['bluetoothapis.h'],
    'cabinet.dll': ['compressapi.h'],
    'clfsw32.dll': ['clfs.h', 'clfsmgmt.h', 'clfsmgmtw32.h'],
    'clusapi.dll': ['clusapi.h'],
    'crypt32.dll': ['mssip.h'],
    'cryptui.dll': ['cryptuiapi.h'],
    'dbghelp.dll': ['dbghelp.h'],
    'dnsapi.dll': ['windns.h'],
    'dxva2.dll': [
      'highlevelmonitorconfigurationapi.h',
      'lowlevelmonitorconfigurationapi.h',
      'physicalmonitorenumerationapi.h',
    ],
    'fwpuclnt.dll': ['fwpmu.h'],
    'imagehlp.dll': ['dbghelp.h', 'imagehlp.h', 'wintrust.h'],
    'iphlpapi.dll': ['ipexport.h', 'netioapi.h', 'winternl.h'],
    'kernel32.dll': ['oobenotification.h', 'tlhelp32.h'],
    'mgmtapi.dll': ['snmp.h'],
    'mswsock.dll': ['nspapi.h'],
    'powrprof.dll': ['powrprof.h'],
    'psapi.dll': ['psapi.h'],
    'resutils.dll': ['clusapi.h'],
    'sensapi.dll': ['sensapi.h'],
    'setupapi.dll': ['setupapi.h'],
    'sfc.dll': ['sfc.h'],
    'snmpapi.dll': ['snmp.h'],
    'txfw32.dll': ['clfs.h', 'txfw32.h'],
    'userenv.dll': ['userenv.h'],
    'uxtheme.dll': ['uxtheme.h'],
    'wdsclientapi.dll': ['wdsclientapi.h'],
    'winfax.dll': ['winfax.h'],
    'winhttp.dll': ['winhttp.h'],
    'wininet.dll': ['wininet.h', 'winineti.h'],
    'wintrust.dll': ['mscat.h', 'wintrust.h'],
    'winusb.dll': ['winusb.h'],
    'wldap32.dll': ['winldap.h'],
    'ws2_32.dll': ['winsock2.h', 'ws2spi.h', 'ws2tcpip.h'],
    'wtsapi32.dll': ['wtsapi32.h'],
  };

  final hFilePath = io.Platform.script
      .resolve('../../win32/src/$safeLibraryName.g.h')
      .toFilePath();
  final cFilePath = io.Platform.script
      .resolve('../../win32/src/$safeLibraryName.g.c')
      .toFilePath();
  final dartFilePath = io.Platform.script
      .resolve('../../win32/lib/src/_internal/$safeLibraryName.g.dart')
      .toFilePath();

  final hBuffer = StringBuffer()..write(dynamicLibraryWrapperCFileHeader);
  final cBuffer = StringBuffer()..write(dynamicLibraryWrapperCFileHeader);
  final dartBuffer = StringBuffer()..write(dynamicLibraryWrapperDartFileHeader);

  void writeIncludes(StringBuffer buffer) {
    if (libraryName != 'ws2_32.dll') {
      buffer.writeln('#include "win32.h"');
    }

    includes[libraryName]?.forEach(
      (include) => buffer.writeln('#include <$include>'),
    );

    if (libraryName == 'ws2_32.dll') {
      buffer.writeln('#include "win32.h"');
    }

    buffer.writeln();
  }

  String generatePrototype(FunctionProjection p) {
    final returnType = p.originalReturnType.cType == 'void'
        ? 'DWORD'
        : 'Win32Result';
    final parameters = p.parameters
        .map(
          (param) => switch (param.name) {
            // Special cases where the parameter types needs to be adjusted.
            'hRegHandle' => 'HANDLE hRegHandle',
            'liDistanceToMove' => 'LARGE_INTEGER liDistanceToMove',
            _ => '${param.type.cType} ${param.name}',
          },
        )
        .join(', ');

    return '$returnType ${p.wrapperName}($parameters)';
  }

  void writeFunctionHeader(FunctionProjection p, StringBuffer buffer) {
    buffer.writeln('MYLIB_EXPORT ${generatePrototype(p)};');
  }

  String generateFunctionCall(FunctionProjection p) {
    final arguments = p.parameters
        .map((param) {
          if (param.type.isInterface) return '${param.name}.lpVtbl';
          return param.name;
        })
        .join(', ');
    final functionCall = '${p.originalName}($arguments);';
    if (p.originalReturnType.cType == 'void') return functionCall;
    return '${p.originalReturnType.cType} value_ = $functionCall';
  }

  String generateReturnStatement(FunctionProjection p) {
    if (p.originalReturnType.cType == 'void') return 'return error_;';
    final type = p.win32ResultType;
    return 'return (Win32Result){error_, .value = {.$type = value_}};';
  }

  void writeFunctionImplementation(FunctionProjection p, StringBuffer buffer) {
    buffer
      ..writeln('${generatePrototype(p)} {')
      ..writeln('  ${generateFunctionCall(p)}')
      ..writeln('  DWORD error_ = GetLastError();')
      ..writeln('  ${generateReturnStatement(p)}')
      ..writeln('}');
  }

  void writeNativeFunction(FunctionProjection p, StringBuffer buffer) {
    final ffiReturnType = p.originalReturnType.cType == 'void'
        ? 'DWORD'
        : 'NativeWin32Result';
    final dartReturnType = p.originalReturnType.cType == 'void'
        ? 'int'
        : 'NativeWin32Result';
    buffer
      ..writeln('@internal')
      ..writeln(
        '@Native<$ffiReturnType Function(${p.parameters.map((p) => '${p.nativeProjection.symbol}').join(', ')})>(${p.method.isLeaf ? 'isLeaf: true' : ''})',
      )
      ..writeln(
        'external $dartReturnType ${p.wrapperName}(${p.parameters.map((p) => '${p.dartProjection.symbol} ${p.name}').join(', ')});',
      );
  }

  void processMethods() {
    for (var i = 0; i < methods.length; i++) {
      final projection = FunctionProjection(methods[i]);
      writeFunctionHeader(projection, hBuffer);
      writeFunctionImplementation(projection, cBuffer);
      writeNativeFunction(projection, dartBuffer);
      if (i < methods.length - 1) {
        hBuffer.writeln();
        cBuffer.writeln();
        dartBuffer.writeln();
      }
    }
  }

  writeIncludes(hBuffer);
  cBuffer
    ..writeln('#include "$safeLibraryName.g.h"')
    ..writeln();
  processMethods();
  writeToFile(hFilePath, hBuffer.toString());
  writeToFile(cFilePath, cBuffer.toString());
  writeToFile(
    dartFilePath,
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(dartBuffer.toString()),
  );
}

/// Generates Dart projections for Win32 API functions.
///
/// This method generates the Dart files for the projected functions from
/// different dynamic libraries. Test files are also generated for these
/// functions in the corresponding dynamic library test directory.
void generateFunctions() {
  final functions = loadFunctionsFromJson();
  saveFunctionsToJson(functions);
  final filteredMethods = functions.values
      .map((f) => WindowsMetadata.findFunctionByName(f.originalName))
      .where((m) => !m.isObsolete)
      .toFixedList();
  final dynamicLibraries = SplayTreeSet<winmd.ModuleRef>.from(
    filteredMethods.map((m) => m.module!).toFixedList(),
    (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
  );
  final wrappedLibraries = SplayTreeSet<winmd.ModuleRef>(
    (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
  );

  for (final library in dynamicLibraries) {
    final methods = filteredMethods
        .where((m) => m.module!.safeName == library.safeName)
        .toFixedList();
    generateDynamicLibrary(library, methods);
    if (methods.any((m) => m.supportsLastError)) {
      wrappedLibraries.add(library);
      generateDynamicLibraryWrappers(
        library,
        methods.where((m) => m.supportsLastError).toFixedList(),
      );
    }
    // As GitHub Actions runners do not include the Native Wifi API by default,
    // 'wlanapi.dll' is excluded to prevent test failures.
    if (library.safeName == 'wlanapi') continue;
    generateDynamicLibraryTests(
      library,
      methods,
      functions.values.toFixedList(),
    );
  }

  // generateDynamicLibrariesConstant(dynamicLibraries, wrappedLibraries);
  generateDynamicLibraryExports(dynamicLibraries);
  logger.info('🚀 Total functions generated: ${functions.length}');
}

/// Generates a Dart file that contains predefined `ComInterface` companions map
/// for COM interfaces projected from the Win32 API.
///
/// The generated file is saved in the directory `packages/win32/lib/src/com/`
/// and named `interface.g.dart`.
void generatePredefinedCompanions(Set<winmd.TypeDef> interfaces) {
  final buffer = StringBuffer(generatedFileHeader)
    ..writeln("import 'package:meta/meta.dart';")
    ..writeln()
    ..writeln("import '../guid.dart';")
    ..writeln("import '../types.dart';");
  for (final interface in interfaces.where((i) => i.guid != null)) {
    final name = interface.safeIdentifier;
    final fileName = name.safeFilename;
    buffer.writeln("import '$fileName';");
  }
  buffer
    ..writeln()
    ..writeln("part 'interface.dart';")
    ..writeln()
    ..writeln('const _predefinedCompanions = <Type, ComCompanion>{');
  for (final interface in interfaces.where((i) => i.guid != null)) {
    final name = interface.safeIdentifier;
    buffer.writeln('  $name: ${name}Companion(),');
  }
  buffer.writeln('};');
  final filePath = io.Platform.script
      .resolve('../../win32/lib/src/com/interface.g.dart')
      .toFilePath();
  writeToFile(
    filePath,
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(buffer.toString()),
  );
}

/// Generates a Dart file that exports all the COM interfaces projected from the
/// Win32 API.
///
/// The generated file is saved in the directory `packages/win32/lib/` and named
/// `_com.g.dart`.
void generateInterfaceExports(Set<winmd.TypeDef> interfaces) {
  final buffer = StringBuffer(generatedFileHeader)
    ..writeln('/// @nodoc\nlibrary;\n');
  for (final interface in interfaces) {
    final name = interface.safeIdentifier;
    final fileName = name.safeFilename;
    final hiddenTypes = [if (interface.guid != null) '${name}Companion'];
    final hide = hiddenTypes.isNotEmpty ? 'hide ${hiddenTypes.join(', ')}' : '';
    buffer.writeln("export 'src/com/$fileName'$hide;");
  }
  final filePath = io.Platform.script
      .resolve('../../win32/lib/_com.g.dart')
      .toFilePath();
  writeToFile(
    filePath,
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(buffer.toString()),
  );
}

/// Generates Dart projections for COM interfaces.
///
/// This method generates individual Dart files for each COM interface (e.g.,
/// `iunknown.g.dart`) located in the directory `packages/win32/lib/src/com/`.
void generateInterfaces() {
  final comTypesPath = io.Platform.script
      .resolve('../data/com_types.json')
      .toFilePath();
  final interfaces = loadMap(comTypesPath);
  saveMap(interfaces, comTypesPath);
  final typeDefs = SplayTreeSet<winmd.TypeDef>(
    (a, b) => a.nameWithoutEncoding.safeFilename.compareTo(
      b.nameWithoutEncoding.safeFilename,
    ),
  );

  for (final interface in interfaces.keys) {
    final interfaceName = interface.split('.');
    final typeDef = WindowsMetadata.findTypeDef(
      interfaceName.take(interfaceName.length - 1).join('.'), // namespace
      interfaceName.last, // name
    );
    final interfaceProjection = ComInterfaceProjection(typeDef);
    final fileName = typeDef.nameWithoutEncoding.safeFilename;
    typeDefs.add(typeDef);
    final buffer = StringBuffer()
      ..writeln(interfaceHeader)
      ..write(interfaceProjection);
    final filePath = io.Platform.script
        .resolve('../../win32/lib/src/com/$fileName')
        .toFilePath();
    writeToFile(filePath, buffer.toString());
  }

  generatePredefinedCompanions(typeDefs);
  generateInterfaceExports(typeDefs);
  logger.info('🚀 Total COM interfaces generated: ${interfaces.length}');
}

/// Generates Dart code projections for Win32 API components based on metadata
/// provided in [items] and.
///
/// This method processes the metadata in [items] and applies
/// [projectionFactory] to generate Dart code for each matched Win32 API
/// component (e.g., enums, structs, functions).
///
/// The generated Dart file will be written to the location specified by
/// [outputPath].
void generateProjections({
  required Map<String, String> items,
  required String outputPath,
  required String fileHeader,
  required Projection Function(winmd.TypeDef) projectionFactory,
}) {
  final itemKeys = items.keys.toSet();
  final matchedTypeDefs = <winmd.TypeDef>[];
  final matchedKeys = <String>{};

  for (final t in WindowsMetadata.index.typeDef) {
    if (excludedNamespaces.contains(t.namespace)) continue;
    if (!t.supportedArchitectures.x64) continue;

    final key = '${t.namespace}.${t.name}';
    if (itemKeys.contains(key)) {
      matchedTypeDefs.add(t);
      matchedKeys.add(key);
    }
  }
  for (final key in itemKeys) {
    if (!matchedKeys.contains(key)) {
      logger.warning('⚠️ Metadata item not found: $key');
    }
  }
  matchedTypeDefs.sort((a, b) => a.safeTypeName.compareTo(b.safeTypeName));
  final projections = matchedTypeDefs.map(projectionFactory).toFixedList();
  final buffer = StringBuffer()
    ..writeln(fileHeader)
    ..writeAll(projections, '\n');
  final filePath = io.Platform.script.resolve(outputPath).toFilePath();
  writeToFile(filePath, buffer.toString());
}

/// Generates Dart projections for Win32 API structs.
///
/// This method extracts struct definitions and generates a Dart file (
/// `structs.g.dart`) located in the directory `packages/win32/lib/src/` that
/// contains the struct projections.
void generateStructs() {
  final win32StructsPath = io.Platform.script
      .resolve('../data/win32_structs.json')
      .toFilePath();
  final structs = loadMap(win32StructsPath);
  saveMap(structs, win32StructsPath);
  generateProjections(
    items: structs,
    outputPath: '../../win32/lib/src/structs.g.dart',
    fileHeader: structFileHeader,
    projectionFactory: StructProjection.new,
  );
  logger.info('🚀 Total structs generated: ${structs.length}');
}

/// Create a file at [path] and write [content] to it synchronously.
void writeToFile(String path, String content) => io.File(path)
  ..createSync(recursive: true)
  ..writeAsStringSync(content);

/// Parses the command-line arguments provided in [args] and returns the parsed
/// arguments.
ArgResults parseArgs(List<String> args) {
  // List of all supported flags.
  const supportedFlags = [
    '--callbacks',
    '--constants',
    '--enums',
    '--functions',
    '--interfaces',
    '--structs',
  ];

  // Check if any of the supported flags are provided in the arguments.
  // If no flags are provided, all flags should be enabled by default.
  final isFlagExplicitlyProvided = args.any(supportedFlags.contains);

  final parser = ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Show this help message.',
    )
    ..addFlag('latest', help: 'Use the latest metadata versions.')
    ..addOption(
      'logLevel',
      abbr: 'l',
      defaultsTo: 'info',
      allowed: const [
        'all',
        'finest',
        'finer',
        'fine',
        'config',
        'info',
        'warning',
        'severe',
        'shout',
        'off',
      ],
      help: 'Set the logging level.',
    )
    ..addFlag(
      'callbacks',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate callbacks.',
    )
    ..addFlag(
      'constants',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate constants.',
    )
    ..addFlag(
      'enums',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate enums.',
    )
    ..addFlag(
      'functions',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate functions.',
    )
    ..addFlag(
      'interfaces',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate COM interfaces.',
    )
    ..addFlag(
      'structs',
      defaultsTo: !isFlagExplicitlyProvided,
      help: 'Generate structs.',
    );

  void printUsage() {
    print('''
generator -- Generates various Win32 API projections using Windows metadata.
''');
    print(parser.usage);
  }

  final ArgResults argResults;
  try {
    argResults = parser.parse(args);
  } on FormatException {
    printUsage();
    io.exit(255);
  }

  if (argResults.flag('help')) {
    printUsage();
    io.exit(0);
  }

  return argResults;
}

/// Checks for new versions of the metadata packages and logs the results.
///
/// This function compares the current metadata package versions defined in
/// the `..\lib\src\versions.yaml` file with the latest available versions on
/// NuGet.
///
/// If [updateVersions] is set to `true`, the versions in the file will be
/// updated to the latest versions.
Future<void> checkForNewMetadataVersions({bool updateVersions = false}) async {
  try {
    final versionManager = VersionManager.load();
    final currentVersions = versionManager.versions;
    final latestVersions = await getLatestPackageVersions(
      currentVersions.keys.toFixedList(),
    );
    final outdatedPackages = compareVersions(currentVersions, latestVersions);
    if (outdatedPackages.isNotEmpty) {
      if (updateVersions) {
        logger.info('📦 Updating metadata versions...');
        for (final package in outdatedPackages.keys) {
          final latestVersion = latestVersions[package]!;
          versionManager.updateVersion(package, latestVersion);
          logger.info(
            "${green('✅ Updated $package version to:')} "
            '${green(bold(latestVersion))}',
          );
        }
        versionManager.save();
        metadataUpdated = true;
      } else {
        logger.info(
          gray(
            bold(
              '💡 To update the metadata versions, run the script with the '
              '"--latest" flag.',
            ),
          ),
        );
      }
    }
  } catch (e) {
    logger
      ..severe('❌ Failed to check for new metadata versions.')
      ..severe(e);
  }
}

/// Fetches the latest versions of the specified NuGet packages.
Future<Map<NuGetPackage, String>> getLatestPackageVersions(
  List<NuGetPackage> packages,
) async {
  final client = NuGetClient();
  final latestVersions = <NuGetPackage, String>{};

  try {
    final versions = await packages
        .map(
          (package) => client.getLatestPackageVersion(
            package.packageId,
            includePrerelease: package != NuGetPackage.winrt,
          ),
        )
        .wait;
    for (var i = 0; i < packages.length; i++) {
      latestVersions[packages.elementAt(i)] = versions[i];
    }
  } finally {
    client.close();
  }

  return latestVersions;
}

/// Compares the current versions with the latest versions and returns a map of
/// outdated packages with their respective latest versions.
Map<NuGetPackage, String> compareVersions(
  Map<NuGetPackage, String> currentVersions,
  Map<NuGetPackage, String> latestVersions,
) {
  final outdatedPackages = <NuGetPackage, String>{};

  for (final MapEntry(key: packageName, value: latestVersion)
      in latestVersions.entries) {
    final currentVersion = currentVersions[packageName]!;
    if (currentVersion == latestVersion) {
      logger.info(
        gray('✅ $packageName is up-to-date (version: $currentVersion)'),
      );
    } else {
      outdatedPackages[packageName] = latestVersion;
      logger.info(
        "${yellow('⚠️ A new version of $packageName is available:')} "
        '${red(bold(currentVersion))} → ${green(bold(latestVersion))}',
      );
    }
  }

  return outdatedPackages;
}

/// Generates a Dart file (`_unicode_suffixed_types.g.dart`) located in the
/// directory `packages/generator/lib/src/extensions` that contains a set of
/// Unicode suffixed (`W`) functions and typeDefs without corresponding ANSI
/// variants.
void generateUnicodeSuffixedTypesWithoutAnsiVariants() {
  final pattern = RegExp(r'([0-9a-z]|_\d)W$');
  final filePath = io.Platform.script
      .resolve('../lib/src/extensions/_unicode_suffixed_types.g.dart')
      .toFilePath();
  final buffer = StringBuffer(generatedFileHeader);

  final unicodeSuffixedFunctions = SplayTreeSet<String>();
  final functions = WindowsMetadata.functions.toFixedList();
  for (final function in functions) {
    if (pattern.hasMatch(function.name) && !function.isUnicode) {
      final hasAnsiVariant = functions.any(
        (f) => f.name == function.name.stripAnsiUnicodeSuffix(),
      );
      if (!hasAnsiVariant) unicodeSuffixedFunctions.add(function.name);
    }
  }

  buffer.writeln('''
/// Set of Unicode suffixed (`W`) functions without corresponding ANSI variants.
///
/// This set serves as a reference to identify functions that have Unicode
/// suffixes (`W`) but lack corresponding ANSI variants. These functions
/// typically do not possess the `UnicodeAttribute` and used to determine
/// whether a given function name should have its Unicode suffix stripped.
const unicodeSuffixedFunctions = <String>{''');
  for (final function in unicodeSuffixedFunctions) {
    buffer.writeln("  '$function',");
  }
  buffer
    ..writeln('};')
    ..writeln();

  final unicodeSuffixedTypeDefs = SplayTreeSet<String>();
  final typeDefs = WindowsMetadata.typeDefs.toFixedList();
  for (final typeDef in typeDefs) {
    if (typeDef.flags.has(winmd.TypeAttributes.windowsRuntime)) continue;

    if (pattern.hasMatch(typeDef.name) && !typeDef.isUnicode) {
      final hasAnsiVariant = typeDefs.any(
        (t) => t.name == typeDef.name.stripAnsiUnicodeSuffix(),
      );
      if (!hasAnsiVariant) unicodeSuffixedTypeDefs.add(typeDef.name);
    }
  }

  buffer.writeln('''
/// Set of Unicode suffixed (`W`) typeDefs without corresponding ANSI variants.
///
/// This set serves as a reference to identify typeDefs that have Unicode
/// suffixes (`W`) but lack corresponding ANSI variants. These typically do not
/// possess the `UnicodeAttribute` and used to determine whether a given typeDef
/// name should have its Unicode suffix stripped.
const unicodeSuffixedTypeDefs = <String>{''');
  for (final typeDef in unicodeSuffixedTypeDefs) {
    buffer.writeln("  '$typeDef',");
  }
  buffer.writeln('};');

  writeToFile(filePath, buffer.toString());
}

/// Generates Dart and C files for the `Win32ResultValue` union used in for
/// preserving `GetLastError()` results in Win32 API functions.
void generateWin32ResultValueUnion() {
  final dartFilePath = io.Platform.script
      .resolve('../../win32/lib/src/_internal/win32.g.dart')
      .toFilePath();
  final hFilePath = io.Platform.script
      .resolve('../../win32/src/win32.g.h')
      .toFilePath();

  final dartBuffer = StringBuffer(generatedFileHeader)
    ..writeln("""
import 'dart:ffi';

import 'package:meta/meta.dart';

import '../structs.g.dart';

@internal
final class NativeWin32ResultValue extends Union {
  @Int32()
  external int i32;

  @Int64()
  external int i64;

  @Uint8()
  external int u8;

  @Uint16()
  external int u16;

  @Uint32()
  external int u32;

  @Uint64()
  external int u64;

  external Pointer ptr;""");

  final hBuffer = StringBuffer(generatedFileHeader)
    ..writeln('''
#include <windows.h>
#include <winevt.h>
#include <winstring.h>
#include <bluetoothapis.h>
#include <SetupAPI.h>

typedef struct
{
  DWORD error;
  union
  {
    INT32 i32;
    INT64 i64;
    UINT8 u8;
    UINT16 u16;
    UINT32 u32;
    UINT64 u64;
    void *ptr;''');

  final functions = WindowsMetadata.functions.toFixedList();
  final fields = SplayTreeSet<String>();

  for (final func in functions) {
    if (func.supportsLastError) {
      final p = FunctionProjection(func);
      if (p.originalReturnType.cType == 'void') continue;
      switch (p.win32ResultType) {
        case 'i32':
        case 'i64':
        case 'u8':
        case 'u16':
        case 'u32':
        case 'u64':
        case 'ptr':
          // Already included.
          continue;
        default:
          break;
      }
      if (fields.contains(p.win32ResultType)) continue;
      fields.add(p.win32ResultType);
      dartBuffer.writeln(
        '  external ${p.originalReturnType.dartType} ${p.win32ResultType};',
      );
      hBuffer.writeln(
        '    ${p.originalReturnType.cType} ${p.win32ResultType};',
      );
    }
  }
  dartBuffer.writeln('}');
  hBuffer
    ..writeln('  } value;')
    ..writeln('} Win32Result;');

  writeToFile(dartFilePath, dartBuffer.toString());
  writeToFile(hFilePath, hBuffer.toString());
}

String bold(String message) => '\x1B[1m$message\x1B[0m';
String gray(String message) => '\x1B[90m$message\x1B[0m';
String green(String message) => '\x1B[32m$message\x1B[0m';
String red(String message) => '\x1B[31m$message\x1B[0m';
String yellow(String message) => '\x1B[33m$message\x1B[0m';

/// Mapping of generation tasks to their respective functions.
const Map<String, void Function()> generationTasks = {
  'callbacks': generateCallbacks,
  'constants': generateConstants,
  'enums': generateEnums,
  'functions': generateFunctions,
  'interfaces': generateInterfaces,
  'structs': generateStructs,
};

/// Whether the metadata has been updated.
var metadataUpdated = false;

void main(List<String> args) async {
  final stopwatch = Stopwatch()..start();
  final argResults = parseArgs(args);
  final logLevel = getLogLevel(argResults.option('logLevel')!);
  Logger.root
    ..level = logLevel
    ..onRecord.listen((record) {
      if (record.level >= Level.WARNING) {
        io.stderr.writeln(record.message);
      } else {
        io.stdout.writeln(record.message);
      }
      if (record.error != null) {
        io.stderr.writeln(record.error);
      }
      if (record.stackTrace != null) {
        io.stderr.writeln(record.stackTrace);
      }
    });
  logger
    ..info('🔧 Logging level set to $logLevel.')
    ..info('🔍 Checking for new metadata versions...');
  await checkForNewMetadataVersions(updateVersions: argResults.flag('latest'));

  logger.info('📦 Loading Windows metadata and docs...');
  await WindowsMetadata.load();
  if (metadataUpdated) {
    logger.info(
      '⚙️ Generating Unicode suffixed (`W`) types without ANSI variants...',
    );
    generateUnicodeSuffixedTypesWithoutAnsiVariants();
    logger.info('⚙️ Generating Win32ResultValue union...');
    generateWin32ResultValueUnion();
  }

  // Run the generation tasks based on the flags.
  for (final MapEntry(key: flag, value: task) in generationTasks.entries) {
    if (argResults.flag(flag)) {
      logger.info('⚙️ Generating $flag...');
      task();
    }
  }

  stopwatch.stop();
  logger.info('⏱️ Done in ${stopwatch.elapsed.inSeconds}s.');
}
