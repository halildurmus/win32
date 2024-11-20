// This script updates golden files used for testing Dart projections of
// Win32 API.
//
// Golden files serve as reference snapshots to ensure generated Dart code
// remains consistent with expected outputs.
//
// Tasks performed by this script:
// - Loads Windows metadata and documentation required for generating
//   projections.
// - Iterates through existing golden files located in specific directories:
//   - "callback" for callback projections
//   - "constant" for constant projections
//   - "dynamic_library" for dynamic library projections
//   - "dynamic_library_test" for dynamic library test projections
//   - "enum" for enum projections
//   - "function" for function projections
//   - "interface" for COM interface projections
//   - "method" for COM method projections
//   - "property" for COM property projections
//   - "struct" for struct projections
// - Updates golden files if the generated projection differs from the current
//   content.

import 'dart:collection';
import 'dart:io';

import 'package:args/args.dart';
import 'package:generator/generator.dart';
import 'package:generator/src/golden_type.dart';
import 'package:generator/src/logger.dart';
import 'package:winmd/winmd.dart';

void updateGolden<T extends Projection>(
  File file,
  T Function(TypeDef) projectionFactory,
) {
  final identifier = file.identifier;
  final typeDef = WindowsMetadata.typeDef(identifier);
  final projection = projectionFactory(typeDef);
  updateGoldenFile(file, projection);
}

void updateConstantGolden(File file) {
  final constant = WindowsMetadata.constant(file.identifier);
  final projection = ConstantProjection(constant);
  updateGoldenFile(file, projection);
}

void updateDynamicLibraryGolden(
  Scope scope,
  SplayTreeMap<String, Win32Function> functionsToGenerate,
  File file,
) {
  final library = file.identifier;
  final methods = scope.methodsFromLibrary(
    library,
    functionsToGenerate.values.toFixedList(),
  );
  final projection = DynamicLibraryProjection(methods[0].module, methods);
  updateGoldenFile(file, projection);
}

void updateDynamicLibraryTestGolden(
  Scope scope,
  SplayTreeMap<String, Win32Function> functionsToGenerate,
  File file,
) {
  final library = file.identifier;
  final functions = functionsToGenerate.values.toFixedList();
  final methods = scope.methodsFromLibrary(library, functions);
  final projection = DynamicLibraryTestProjection(
    methods[0].module,
    methods,
    functions,
  );
  updateGoldenFile(file, projection);
}

void updateFunctionGolden(File file) {
  final function = WindowsMetadata.function(file.identifier);
  final projection = FunctionProjection(function);
  updateGoldenFile(file, projection);
}

void updateGoldenFile(File file, Projection projection) {
  final oldContents = file.readAsStringSync();
  final newContents = '${file.identifier}|\n$projection';

  if (oldContents != newContents) {
    file.writeAsStringSync(newContents);
    print(yellow('✅ Updated ${file.goldenType}/${file.fileName}.'));
    updatedGoldenFiles++;
  }
}

String yellow(String message) => '\x1B[33m$message\x1B[0m';

void updateMethodGolden(File file) {
  final [parent, methodName] = file.identifier.split('.');
  final typeDef = WindowsMetadata.typeDef(parent);
  final method = typeDef.method(methodName);
  assert(
    !method.isGetProperty && !method.isSetProperty,
    'Method "$methodName" must not be a property.',
  );

  final projection = ComMethodProjection(method);
  updateGoldenFile(file, projection);
}

void updatePropertyGolden(File file) {
  final [parent, propertyName] = file.identifier.split('.');
  final typeDef = WindowsMetadata.typeDef(parent);
  final method = typeDef.method(propertyName);
  final projection = switch (method) {
    _ when method.canBeProjectedAsGetter => ComGetPropertyProjection(method),
    _ when method.canBeProjectedAsSetter => ComSetPropertyProjection(method),
    _ =>
      throw StateError(
        'Method "$propertyName" cannot be projected as a property.',
      ),
  };
  updateGoldenFile(file, projection);
}

extension on File {
  /// Extracts the identifier from the first line of the golden file (e.g.,
  /// `HWND`, `ole32.dll`).
  String get identifier {
    final firstLine = readAsLinesSync().firstOrNull;
    if (firstLine?.contains('|') ?? false) return firstLine!.split('|').first;
    throw StateError('''
Invalid format in golden file: $fileName.
Expected format: Identifier followed by a "|" character.''');
  }

  String get fileName => path.split(RegExp(r'[/\\]')).last;

  GoldenType get goldenType {
    final dirName = path.split(RegExp(r'[/\\]')).reversed.skip(1).first;
    return GoldenType.fromDirectoryName(dirName);
  }
}

var updatedGoldenFiles = 0;

void main(List<String> args) async {
  final parser =
      ArgParser()
        ..addFlag(
          'help',
          abbr: 'h',
          negatable: false,
          help: 'Show this help message.',
        )
        ..addOption(
          'logLevel',
          abbr: 'l',
          defaultsTo: 'info',
          help: 'Set the logging level.',
        );

  void printUsage() {
    print('''
update_goldens -- Updates golden files used for testing Dart projections of Win32 API.
''');
    print(parser.usage);
  }

  final ArgResults argResults;
  try {
    argResults = parser.parse(args);
  } on FormatException {
    printUsage();
    exit(255);
  }

  if (argResults.flag('help')) {
    printUsage();
    exit(0);
  }

  // Set logging level based on the provided option.
  setLogLevel(argResults.option('logLevel')!);
  logger
    ..fine('🔧 Logging level set to $logLevel.')
    ..fine('📚 Loading Windows metadata and docs...');
  await WindowsMetadata.load();

  logger.fine('🔄 Loading and sorting functions...');
  final functionsToGenerate = loadFunctionsFromJson();
  saveFunctionsToJson(functionsToGenerate);

  logger.fine('🔍 Searching for golden files...');
  final goldenFiles = Directory(
        Platform.script.resolve('../test/golden').toFilePath(),
      )
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.golden'));
  logger.fine('📝 Found ${goldenFiles.length} golden file(s).');

  for (final file in goldenFiles) {
    logger.finest('⏳ Processing ${file.goldenType}/${file.fileName}...');
    switch (file.goldenType) {
      case GoldenType.callback:
        updateGolden(file, CallbackProjection.new);
      case GoldenType.constant:
        updateConstantGolden(file);
      case GoldenType.dynamicLibrary:
        updateDynamicLibraryGolden(
          WindowsMetadata.win32,
          functionsToGenerate,
          file,
        );
      case GoldenType.dynamicLibraryTest:
        updateDynamicLibraryTestGolden(
          WindowsMetadata.win32,
          functionsToGenerate,
          file,
        );
      case GoldenType.enum_:
        updateGolden(file, EnumProjection.new);
      case GoldenType.function:
        updateFunctionGolden(file);
      case GoldenType.interface:
        updateGolden(file, ComInterfaceProjection.new);
      case GoldenType.method:
        updateMethodGolden(file);
      case GoldenType.property:
        updatePropertyGolden(file);
      case GoldenType.struct:
        updateGolden(file, StructProjection.new);
    }
  }

  logger.fine(
    updatedGoldenFiles == 0
        ? '✨ No golden files were updated.'
        : '✅ Updated $updatedGoldenFiles golden file(s).',
  );

  WindowsMetadata.close();
}
