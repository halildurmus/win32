import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

bool methodMatches(String methodName, String rawPrototype) =>
    rawPrototype.contains(' $methodName(');

String generateDocComment(Win32Function func, String libraryDartName) {
  final category = func.category.isNotEmpty ? func.category : libraryDartName;

  final comment = StringBuffer();

  if (func.comment.isNotEmpty) {
    comment
      ..writeln(wrapCommentText(func.comment))
      ..writeln('///');
  }

  comment
    ..writeln('/// ```c')
    ..write('/// ')
    ..writeln(func.prototype.split('\\n').join('\n/// '))
    ..writeln('/// ```')
    ..write('/// {@category $category}');
  return comment.toString();
}

int generateStructs(List<Scope> scopes, Map<String, String> structs) {
  final file = File('../win32/lib/src/structs.g.dart');

  final typeDefs = scopes.expand(
    (scope) =>
        scope.typeDefs
            .where((typeDef) => structs.keys.contains(typeDef.name))
            .where((typeDef) => typeDef.supportedArchitectures.x64)
            .toList()
          ..sort(
            (a, b) => lastComponent(a.name).compareTo(lastComponent(b.name)),
          ),
  );

  final structProjections = typeDefs.map(
    (struct) => StructProjection(
      struct,
      stripAnsiUnicodeSuffix(lastComponent(struct.name)),
      comment: structs[struct.name]!,
    ),
  );

  final structsFile = [structFileHeader, ...structProjections].join();

  file.writeAsStringSync(
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(structsFile),
  );
  return structProjections.length;
}

void generateDllFile(
  String library,
  List<Method> filteredMethods,
  Iterable<Win32Function> functions,
) {
  /// Methods we're trying to project
  final libraryMethods = filteredMethods.where(
    (method) => method.module.name.toLowerCase() == library,
  );

  final buffer = StringBuffer();

  // API set names aren't legal Dart identifiers, so we rename them.
  // Also strip off the trailing .dll (or .cpl, .drv, etc.).
  final libraryDartName = library.replaceAll('-', '_').split('.').first;

  buffer.write('''
  $functionsFileHeader

  final _$libraryDartName = DynamicLibrary.open('$library');\n
  ''');

  for (final method in libraryMethods) {
    final function = functions.firstWhere(
      (f) => f.functionSymbol == method.name,
    );
    buffer.write('''
  ${generateDocComment(function, libraryDartName)}
  ${FunctionProjection(method, libraryDartName).toString()}
  ''');
  }

  File('../win32/lib/src/win32/$libraryDartName.g.dart').writeAsStringSync(
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(buffer.toString()),
  );
}

void generateFunctions(
  List<Scope> scopes,
  Map<String, Win32Function> functions,
) {
  final apis = scopes.expand(
    (scope) => scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis')),
  );

  final methods = <Method>[];
  final filteredMethods = <Method>[];

  // Create a flat list for every method in the Win32 metadata, and a set
  // containing all the modules (DLLs) referenced.
  for (final api in apis) {
    methods.addAll(api.methods);
  }

  // Gather metadata for all the functions in the JSON file
  for (final function in functions.values) {
    final method = methods.where((m) => m.name == function.functionSymbol);
    if (method.length != 1) {
      throw Exception('${function.functionSymbol} metadata match error.');
    }
    filteredMethods.add(method.first);
  }

  // Gather a list of all the affected libraries
  final dllLibraries =
      filteredMethods.map((m) => m.module.name.toLowerCase()).toSet();

  final tests = <String>[];

  for (final library in dllLibraries) {
    generateDllFile(library, filteredMethods, functions.values);
    tests.add(
      generateFunctionTests(library, filteredMethods, functions.values),
    );
  }

  writeFunctionTests(tests);
}

void writeFunctionTests(Iterable<String> tests) {
  final testFile = '''
$testFunctionsHeader

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
  ${tests.join('\n')}
}
''';

  File('../win32/test/api_test.dart').writeAsStringSync(
    DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format(testFile),
  );
}

String generateFunctionTests(
  String library,
  Iterable<Method> methods,
  Iterable<Win32Function> functions,
) {
  final buffer = StringBuffer();

  // GitHub Actions doesn't install Native Wifi API on runners, so we remove
  // wlanapi manually to prevent test failures.
  if (library == 'wlanapi.dll') return '';

  /// Methods we're trying to project
  final filteredMethods = methods.where(
    (method) => method.module.name.toLowerCase() == library,
  );

  buffer.write("group('Test ${library.split('.').first} functions', () {\n");

  for (final method in filteredMethods) {
    // API set names aren't legal Dart identifiers, so we rename them.
    // Also strip off the trailing .dll (or .cpl, .drv, etc.).
    final libraryDartName = library.replaceAll('-', '_').split('.').first;

    final function = functions.firstWhere(
      (f) => f.functionSymbol == method.name,
    );

    // Some functions (e.g. TaskDialog APIs) can only be loaded if the EXE has a
    // manifest, so we ignore those for the purpose of test generation.
    if (!function.test) continue;

    final projection = FunctionProjection(method, libraryDartName);

    final returnFFIType =
        TypeProjection(method.returnType.typeIdentifier).nativeType;
    final returnDartType =
        TypeProjection(method.returnType.typeIdentifier).dartType;

    final methodDartName = stripAnsiUnicodeSuffix(method.name);

    final test = '''
      test('Can instantiate $methodDartName', () {
        final $libraryDartName = DynamicLibrary.open('$library');
        final $methodDartName = $libraryDartName.lookupFunction<\n
          $returnFFIType Function(${projection.nativeParams}),
          $returnDartType Function(${projection.dartParams})>
          ('${method.name}');
        expect($methodDartName, isA<Function>());
      });''';

    if (function.minimumWindowsVersion > 0) {
      buffer.writeln('''
          if (windowsBuildNumber >= ${function.minimumWindowsVersion}) {
            $test
          }''');
    } else {
      buffer.writeln(test);
    }
  }
  buffer.write('});\n\n');

  return buffer.toString();
}

void generateComApis(Scope scope, Map<String, String> comTypesToGenerate) {
  for (final interface in comTypesToGenerate.keys) {
    final typeDef = scope.findTypeDef(interface);
    if (typeDef == null) throw Exception("Can't find $interface");
    final comment = comTypesToGenerate[interface] ?? '';
    final interfaceProjection = ComInterfaceProjection(typeDef, comment);

    // In v2, we put classes and interfaces in the same file.
    final className = ComClassProjection.generateClassName(typeDef);
    final classNameExists = scope.findTypeDef(className) != null;

    final comObject =
        classNameExists
            ? ComClassProjection.fromInterface(
              typeDef,
              interfaceComment: comment,
            )
            : interfaceProjection;

    // Generate class
    final dartClass = comObject.toString();
    final classOutputFilename =
        stripAnsiUnicodeSuffix(lastComponent(interface)).toLowerCase();
    final classOutputPath = '../win32/lib/src/com/$classOutputFilename.dart';

    File(classOutputPath).writeAsStringSync(
      DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      ).format(dartClass),
    );
  }
}

void main() async {
  final stopwatch = Stopwatch()..start();

  print('[${stopwatch.elapsed}] Loading Windows metadata...');
  final wdkScope = await MetadataStore.loadWdkMetadata(
    version: wdkMetadataVersion,
  );
  final win32Scope = await MetadataStore.loadWin32Metadata(
    version: win32MetadataVersion,
  );
  // Additionally, load WinRT metadata to ensure the correct resolution of
  // references from Win32 metadata.
  await MetadataStore.loadWinrtMetadata();

  print('[${stopwatch.elapsed}] Loading and sorting functions...');
  final functionsToGenerate = loadFunctionsFromJson();
  saveFunctionsToJson(functionsToGenerate);

  print('[${stopwatch.elapsed}] Generating structs...');
  final structsToGenerate = loadMap('win32_structs.json');
  saveMap(structsToGenerate, 'win32_structs.json');
  generateStructs([wdkScope, win32Scope], structsToGenerate);

  print('[${stopwatch.elapsed}] Validating callbacks...');
  final callbacks = loadMap('win32_callbacks.json');
  saveMap(callbacks, 'win32_callbacks.json');
  // Win32 callbacks are manually created

  print('[${stopwatch.elapsed}] Generating FFI function bindings...');
  generateFunctions([wdkScope, win32Scope], functionsToGenerate);

  print('[${stopwatch.elapsed}] Generating COM interfaces...');
  final comTypesToGenerate = loadMap('com_types.json');
  saveMap(comTypesToGenerate, 'com_types.json');
  generateComApis(win32Scope, comTypesToGenerate);

  MetadataStore.close();
  stopwatch.stop();
  print('[${stopwatch.elapsed}] Completed.');
}
