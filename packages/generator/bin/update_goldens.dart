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
import 'dart:io' as io;

import 'package:args/args.dart';
import 'package:generator/generator.dart';
import 'package:generator/src/golden_type.dart';
import 'package:winmd/winmd.dart';

void updateGolden<T extends Projection>(
  io.File file,
  T Function(TypeDef) projectionFactory,
) {
  final identifier = file.identifier;
  final typeDef = WindowsMetadata.findTypeDefByName(identifier);
  final projection = projectionFactory(typeDef);
  updateGoldenFile(file, projection);
}

void updateConstantGolden(io.File file) {
  final constant = WindowsMetadata.findConstantByName(file.identifier);
  final projection = ConstantProjection(constant);
  updateGoldenFile(file, projection);
}

void updateDynamicLibraryGolden(
  SplayTreeMap<String, Win32Function> functionsToGenerate,
  io.File file,
) {
  final library = file.identifier;
  final methods = WindowsMetadata.index.methodsFromLibrary(
    library,
    functionsToGenerate.values.toFixedList(),
  );
  final projection = DynamicLibraryProjection(methods[0].module!, methods);
  updateGoldenFile(file, projection);
}

void updateDynamicLibraryTestGolden(
  SplayTreeMap<String, Win32Function> functionsToGenerate,
  io.File file,
) {
  final library = file.identifier;
  final functions = functionsToGenerate.values.toFixedList();
  final methods = WindowsMetadata.index.methodsFromLibrary(library, functions);
  final projection = DynamicLibraryTestProjection(
    methods[0].module!,
    methods,
    functions,
  );
  updateGoldenFile(file, projection);
}

void updateFunctionGolden(io.File file) {
  final function = WindowsMetadata.findFunctionByName(file.identifier);
  final projection = FunctionProjection(function);
  updateGoldenFile(file, projection);
}

void updateGoldenFile(io.File file, Projection projection) {
  final oldContents = file.readAsStringSync();
  final newContents = '${file.identifier}|\n$projection';

  if (oldContents != newContents) {
    file.writeAsStringSync(newContents);
    print(yellow('✅ Updated ${file.goldenType}/${file.fileName}.'));
    updatedGoldenFiles++;
  }
}

String yellow(String message) => '\x1B[33m$message\x1B[0m';

void updateMethodGolden(io.File file) {
  final [parent, methodName] = file.identifier.split('.');
  final typeDef = WindowsMetadata.findTypeDefByName(parent);
  final method = typeDef.findMethod(methodName);
  assert(
    !method.isGetProperty && !method.isSetProperty,
    'Method "$methodName" must not be a property.',
  );

  final projection = ComMethodProjection(method);
  updateGoldenFile(file, projection);
}

void updatePropertyGolden(io.File file) {
  final [parent, propertyName] = file.identifier.split('.');
  final typeDef = WindowsMetadata.findTypeDefByName(parent);
  final method = typeDef.findMethod(propertyName);
  final projection = switch (method) {
    _ when method.canBeProjectedAsGetter => ComGetPropertyProjection(method),
    _ when method.canBeProjectedAsSetter => ComSetPropertyProjection(method),
    _ => throw StateError(
      'Method "$propertyName" cannot be projected as a property.',
    ),
  };
  updateGoldenFile(file, projection);
}

extension on io.File {
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
  final parser = ArgParser()
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
    io.exit(255);
  }

  if (argResults.flag('help')) {
    printUsage();
    io.exit(0);
  }

  // Set logging level based on the provided option.
  // setLogLevel(argResults.option('logLevel')!);
  generatorLogger
  // ..fine('🔧 Logging level set to $logLevel.')
  .fine('📚 Loading Windows metadata and docs...');
  await WindowsMetadata.load();

  generatorLogger.fine('🔄 Loading and sorting functions...');
  final functionsToGenerate = loadFunctionsFromJson();
  saveFunctionsToJson(functionsToGenerate);

  generatorLogger.fine('🔍 Searching for golden files...');
  final goldenFiles =
      io.Directory(io.Platform.script.resolve('../test/golden').toFilePath())
          .listSync(recursive: true)
          .whereType<io.File>()
          .where((file) => file.path.endsWith('.golden'));
  generatorLogger.fine('📝 Found ${goldenFiles.length} golden file(s).');

  for (final file in goldenFiles) {
    generatorLogger.finest(
      '⏳ Processing ${file.goldenType}/${file.fileName}...',
    );
    switch (file.goldenType) {
      case GoldenType.callback:
        updateGolden(file, CallbackProjection.new);
      case GoldenType.constant:
        updateConstantGolden(file);
      case GoldenType.dynamicLibrary:
        updateDynamicLibraryGolden(functionsToGenerate, file);
      case GoldenType.dynamicLibraryTest:
        updateDynamicLibraryTestGolden(functionsToGenerate, file);
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

  generatorLogger.fine(
    updatedGoldenFiles == 0
        ? '✨ No golden files were updated.'
        : '✅ Updated $updatedGoldenFiles golden file(s).',
  );
}
