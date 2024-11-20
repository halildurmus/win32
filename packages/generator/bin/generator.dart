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
// Dart representations of Win32 callbacks.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'pcwstr.dart';
import 'structs.g.dart';
''';

const constantFileHeader = '''
// Dart representations of Win32 constants.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'guid.dart';
import 'hresult.dart';
import 'ntstatus.dart';
import 'propertykey.dart';
''';

const dynamicLibraryFileHeader = '''
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import
''';

const dynamicLibraryTestFileHeader = '''
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;
''';

const dynamicLibraryWrapperCFileHeader = '''
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

''';

const dynamicLibraryWrapperDartFileHeader = '''
// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
''';

const enumFileHeader = '''
// Dart representations of Win32 enums.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_types, constant_identifier_names
''';

const interfaceHeader = '''
// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import
''';

const structFileHeader = '''
// Dart representations of Win32 structs.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: non_constant_identifier_names, unnecessary_this
// ignore_for_file: unused_field

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../_com.g.dart';
import 'callbacks.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/_internal.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'types.dart';
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
  generatorLogger.info('🚀 Total callbacks generated: ${callbacks.length}');
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
  final fields =
      WindowsMetadata.constants
          .where(
            (f) => constants.containsKey(
              '${f.parent.namespace}.${f.parent.name}.${f.name}',
            ),
          )
          .toFixedList()
        ..sort((a, b) => a.name.compareTo(b.name));
  final projections = fields.map(ConstantProjection.new).toFixedList();
  final buffer = StringBuffer()
    ..writeln(constantFileHeader)
    ..writeAll(projections, '\n');
  final filePath = io.Platform.script
      .resolve('../../win32/lib/src/constants.g.dart')
      .toFilePath();
  writeToFile(filePath, buffer.toString());
  generatorLogger.info('🚀 Total constants generated: ${constants.length}');
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
  generatorLogger.info('🚀 Total enums generated: ${enums.length}');
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
    'advapi32.dll': ['wincred.h'],
    'bluetoothapis.dll': ['bluetoothapis.h'],
    'bthprops.cpl': ['bluetoothapis.h'],
    'dbghelp.dll': ['DbgHelp.h'],
    'dxva2.dll': [
      'highlevelmonitorconfigurationapi.h',
      'physicalmonitorenumerationapi.h',
    ],
    'psapi.dll': ['Psapi.h'],
    'setupapi.dll': ['SetupAPI.h'],
    'ws2_32.dll': ['winsock2.h', 'ws2tcpip.h'],
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
    final parameters = p.parameters
        .map(
          (param) => switch (param.name) {
            'hRegHandle' => 'HBLUETOOTH_AUTHENTICATION_REGISTRATION hRegHandle',
            'liDistanceToMove' => 'LARGE_INTEGER liDistanceToMove',
            _ => '${param.type.cType} ${param.name}',
          },
        )
        .join(', ');

    return '${p.originalReturnType.cType} ${p.wrapperName}($parameters)';
  }

  void writeFunctionHeader(FunctionProjection p, StringBuffer buffer) {
    buffer.writeln('MYLIB_EXPORT ${generatePrototype(p)};');
  }

  void writeFunctionImplementation(FunctionProjection p, StringBuffer buffer) {
    final callStatement =
        '${p.originalReturnType.cType} result_ = ${p.originalName}(${p.parameters.map((param) => param.name).join(', ')});';
    buffer
      ..writeln('${generatePrototype(p)} {')
      ..writeln('  trace_print("Calling ${p.originalName}\\n");')
      ..writeln('  $callStatement')
      ..writeln(
        '  trace_print("${p.originalName} returned ${p.originalReturnType.isPointer || (p.originalReturnType is TypeDefType && (p.originalReturnType as TypeDefType).typeDef.isVoidPtrHandle) ? '%p' : '%d'}\\n", result_);',
      )
      ..writeln('  DWORD error = GetLastError();')
      ..writeln('  setLastError(error);')
      ..writeln(r'  trace_print("Set lastError to %d\n", error);')
      ..writeln('  return result_;')
      ..writeln('}');
  }

  void writeNativeFunction(FunctionProjection p, StringBuffer buffer) {
    buffer
      ..writeln('@internal')
      ..writeln(
        '@Native<${p.nativePrototype.accept(DartEmitter())}>(${p.method.isLeaf ? 'isLeaf: true' : ''})',
      )
      ..writeln(
        'external ${p.originalReturnType.dartType} ${p.wrapperName}(${p.parameters.map((p) => '${p.dartProjection.symbol} ${p.name}').join(', ')});',
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

  for (final library in dynamicLibraries) {
    final methods = filteredMethods
        .where((m) => m.module!.safeName == library.safeName)
        .toFixedList();
    generateDynamicLibrary(library, methods);
    if (methods.any((m) => m.supportsLastError)) {
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

  generateDynamicLibraryExports(dynamicLibraries);
  generatorLogger.info('🚀 Total functions generated: ${functions.length}');
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
  generatorLogger.info(
    '🚀 Total COM interfaces generated: ${interfaces.length}',
  );
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
  final typeDefs =
      WindowsMetadata.index.typeDef
          .where((t) => !excludedNamespaces.contains(t.namespace))
          .where(
            (t) =>
                items.containsKey('${t.namespace}.${t.name}') &&
                t.supportedArchitectures.x64,
          )
          .toFixedList()
        ..sort((a, b) => a.safeTypeName.compareTo(b.safeTypeName));
  final projections = typeDefs.map(projectionFactory).toFixedList();
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
  generatorLogger.info('🚀 Total structs generated: ${structs.length}');
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
  generatorLogger.info('🔍 Checking for new metadata versions...');
  try {
    final versionManager = VersionManager.load();
    final currentVersions = versionManager.versions;
    final latestVersions = await getLatestPackageVersions(
      currentVersions.keys.toFixedList(),
    );
    final outdatedPackages = compareVersions(currentVersions, latestVersions);
    if (outdatedPackages.isNotEmpty) {
      if (updateVersions) {
        generatorLogger.info('📦 Updating metadata versions...');
        for (final package in outdatedPackages.keys) {
          final latestVersion = latestVersions[package]!;
          versionManager.updateVersion(package, latestVersion);
          generatorLogger.info(
            "${green('✅ Updated $package version to:')} "
            '${green(bold(latestVersion))}',
          );
        }
        versionManager.save();
        metadataUpdated = true;
      } else {
        generatorLogger.info(
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
    generatorLogger
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
      generatorLogger.info(
        gray('✅ $packageName is up-to-date (version: $currentVersion)'),
      );
    } else {
      outdatedPackages[packageName] = latestVersion;
      generatorLogger.info(
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
  Logger.root
    ..level = Level.INFO
    ..onRecord.listen((record) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
  final stopwatch = Stopwatch()..start();
  final argResults = parseArgs(args);
  // setLogLevel(argResults.option('logLevel')!);
  // generatorLogger.info('🔧 Logging level set to $logLevel.');
  await checkForNewMetadataVersions(updateVersions: argResults.flag('latest'));

  generatorLogger.info('📦 Loading Windows metadata and docs...');
  await WindowsMetadata.load();
  if (metadataUpdated) {
    generatorLogger.info(
      '⚙️ Regenerating Unicode suffixed (`W`) types without ANSI variants...',
    );
    generateUnicodeSuffixedTypesWithoutAnsiVariants();
  }

  // Run the generation tasks based on the flags.
  for (final MapEntry(key: flag, value: task) in generationTasks.entries) {
    if (argResults.flag(flag)) {
      generatorLogger.info('⚙️ Generating $flag...');
      task();
    }
  }

  stopwatch.stop();
  generatorLogger.info('⏱️ Done in ${stopwatch.elapsed.inSeconds}s.');
}
