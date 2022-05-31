// ignore_for_file: unused_import

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

import 'generate_struct_sizes_cpp.dart';

bool methodMatches(String methodName, List<String> rawPrototype) =>
    rawPrototype.join('\n').contains(' $methodName(');

String generateDocComment(Win32Function func) {
  final comment = StringBuffer();

  if (func.comment.isNotEmpty) {
    comment
      ..writeln(wrapCommentText(func.comment))
      ..writeln('///');
  }

  comment
    ..writeln('/// ```c')
    ..write('/// ')
    ..writeln(func.prototype.first.split('\\n').join('\n/// '))
    ..writeln('/// ```')
    ..write('/// {@category ${func.category}}');
  return comment.toString();
}

int generateStructs(Map<String, String> structs) {
  final scope = MetadataStore.getWin32Scope();

  final file = File('../../lib/src/structs.g.dart');

  final typeDefs = scope.typeDefs
      .where((typeDef) => structs.keys.contains(typeDef.name))
      .where((typeDef) => typeDef.supportedArchitectures.x64)
      .toList()
    ..sort((a, b) => lastComponent(a.name).compareTo(lastComponent(b.name)));

  final structProjections = typeDefs.map((struct) => StructProjection(
      struct, stripAnsiUnicodeSuffix(lastComponent(struct.name)),
      comment: structs[struct.name]!));

  final structsFile = [structFileHeader, ...structProjections].join();

  file.writeAsStringSync(DartFormatter().format(structsFile));
  return structProjections.length;
}

int generateStructSizeTests() {
  var testsGenerated = 0;
  final buffer = StringBuffer()..write('''
$testStructsHeader

void main() {
  final is64bitOS = sizeOf<IntPtr>() == 8;
''');

  for (final struct in structSize64.keys) {
    if (structSize64[struct] == structSize32[struct]) {
      buffer.write('''
  test('Struct $struct is the right size', () {
    expect(sizeOf<$struct>(), equals(${structSize64[struct]}));
  });
    ''');
    } else {
      buffer.write('''
  test('Struct $struct is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<$struct>(), equals(${structSize64[struct]}));
    }
    else {
      expect(sizeOf<$struct>(), equals(${structSize32[struct]}));
    }
  });
''');
    }
    testsGenerated++;
  }

  buffer.write('}');

  File('../../test/struct_test.dart')
      .writeAsStringSync(DartFormatter().format(buffer.toString()));

  return testsGenerated;
}

void generateFunctions(Map<String, Win32Function> functions) {
  final methods = <Method>[];
  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis'));
  for (final api in apis) {
    methods.addAll(api.methods);
  }

  for (final library in dllLibraries) {
    final buffer = StringBuffer();

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    buffer.write('''
$functionsFileHeader

final _$libraryDartName = DynamicLibrary.open('${libraryFromDllName(library)}');\n
''');

    // Subset of functions that belong to the library we're projecting.
    final filteredFunctionList = Map<String, Win32Function>.of(functions)
      ..removeWhere((key, value) => value.dllLibrary != library);

    for (final function in filteredFunctionList.keys) {
      try {
        final method = methods.firstWhere((m) =>
            methodMatches(m.name, filteredFunctionList[function]!.prototype));
        buffer.write('''
${generateDocComment(filteredFunctionList[function]!)}
${FunctionProjection(method, libraryDartName).toString()}
''');
      } on StateError {
        continue;
      }
    }

    File('../../lib/src/$libraryDartName.dart')
        .writeAsStringSync(DartFormatter().format(buffer.toString()));
  }
}

int generateFunctionTests(Map<String, Win32Function> functions) {
  final methods = <Method>[];
  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis'));
  for (final api in apis) {
    methods.addAll(api.methods);
  }
  var testsGenerated = 0;
  final buffer = StringBuffer()..write('''
$testFunctionsHeader

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
''');
  // Generate a list of libs, e.g. [kernel32, gdi32, ...]
  // The .toSet() removes duplicates.
  // GitHub Actions doesn't install Native Wifi API on runners, so we remove
  // wlanapi manually to prevent test failures.
  final libraries = functions.values.map((e) => e.dllLibrary).toSet().toList()
    ..removeWhere((library) => library == 'wlanapi');

  for (final library in libraries) {
    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    buffer.write("group('Test $library functions', () {\n");

    final filteredFunctions = Map<String, Win32Function>.of(functions)
      ..removeWhere((key, value) => value.dllLibrary != library)
      ..removeWhere(
          (key, value) => value.prototype.contains('SetWindowLongPtrW'));

    for (final function in filteredFunctions.keys) {
      if (!filteredFunctions[function]!.test) continue;

      late Method method;
      try {
        method = methods.firstWhere((m) =>
            methodMatches(m.name, filteredFunctions[function]!.prototype));
      } on StateError {
        print("Couldn't find $function");
        continue;
      }

      final prototype = FunctionProjection(method, libraryDartName);

      final returnFFIType =
          TypeProjection(method.returnType.typeIdentifier).nativeType;
      final returnDartType =
          TypeProjection(method.returnType.typeIdentifier).dartType;

      final minimumWindowsVersion =
          filteredFunctions[function]!.minimumWindowsVersion;

      final test = '''
      test('Can instantiate $function', () {
        final $libraryDartName = DynamicLibrary.open('${libraryFromDllName(library)}');
        final $function = $libraryDartName.lookupFunction<\n
          $returnFFIType Function(${prototype.nativeParams}),
          $returnDartType Function(${prototype.dartParams})>
          ('${method.name}');
        expect($function, isA<Function>());
      });''';

      if (minimumWindowsVersion > 0) {
        buffer.write('''
        if (windowsBuildNumber >= $minimumWindowsVersion) {
          $test
        }''');
      } else {
        buffer.write(test);
      }
      buffer.writeln();
      testsGenerated++;
    }
    buffer.write('});\n\n');
  }
  buffer.write('}');
  File('../../test/api_test.dart')
      .writeAsStringSync(DartFormatter().format(buffer.toString()));

  return testsGenerated;
}

void generateComApis() {
  final scope = MetadataStore.getWin32Scope();

  for (final interface in comInterfacesToGenerate) {
    final typeDef = scope.findTypeDef(interface);
    if (typeDef == null) throw Exception("Can't find $interface");
    final interfaceProjection = ComInterfaceProjection(typeDef);

    // In v2, we put classes and interfaces in the same file.
    final className = ComClassProjection.generateClassName(typeDef);
    final classNameExists = scope.findTypeDef(className) != null;

    final comObject = classNameExists
        ? ComClassProjection.fromInterface(typeDef)
        : interfaceProjection;

    // Generate class
    final dartClass = comObject.toString();
    final classOutputFilename =
        stripAnsiUnicodeSuffix(lastComponent(interface)).toLowerCase();
    final classOutputPath = '../../lib/src/com/$classOutputFilename.dart';

    File(classOutputPath).writeAsStringSync(DartFormatter().format(dartClass));

    // Generate test
    final dartTest = TestInterfaceProjection(typeDef, interfaceProjection);
    final testOutputPath = '../../test/com/${classOutputFilename}_test.dart';

    File(testOutputPath)
        .writeAsStringSync(DartFormatter().format(dartTest.toString()));
  }
}

void generateWinRTApis() {
  for (final interface in windowsRuntimeTypesToGenerate) {
    final typeDef = MetadataStore.getMetadataForType(interface);
    if (typeDef == null) throw Exception("Can't find $interface");
    final interfaceProjection = typeDef.isInterface
        ? WinRTInterfaceProjection(typeDef)
        : WinRTClassProjection(typeDef);

    final dartClass = interfaceProjection.toString();

    final classOutputFilename =
        stripAnsiUnicodeSuffix(lastComponent(interface)).toLowerCase();
    final classOutputPath = '../../lib/src/winrt/$classOutputFilename.dart';

    try {
      final formattedDartClass = DartFormatter().format(dartClass);
      File(classOutputPath).writeAsStringSync(formattedDartClass);
    } catch (_) {
      // Better to write even on failure, so we can figure out what syntax error
      // it was that thwarted DartFormatter.
      print('Unable to format class. Writing unformatted...');
      File(classOutputPath).writeAsStringSync(dartClass);
    }
  }
}

int generateWinRTStructs() {
  final structs = windowsRuntimeStructsToGenerate;
  final file = File('../../lib/src/winrt/structs.g.dart');
  var structProjectionsLength = 0;

  for (final typeName in structs.keys) {
    final scope = MetadataStore.getScopeForType(typeName);

    final typeDefs = scope.typeDefs
        .where((typeDef) => structs.keys.contains(typeDef.name))
        .where((typeDef) => typeDef.supportedArchitectures.x64)
        .toList()
      ..sort((a, b) => lastComponent(a.name).compareTo(lastComponent(b.name)));

    final structProjections = typeDefs.map((struct) => StructProjection(
        struct, stripAnsiUnicodeSuffix(lastComponent(struct.name)),
        comment: structs[struct.name]!));
    structProjectionsLength += structProjections.length;

    final structsFile = [winrtStructFileHeader, ...structProjections].join();

    file.writeAsStringSync(DartFormatter().format(structsFile));
  }

  return structProjectionsLength;
}

void main() {
  final functionsToGenerate = loadFunctionsFromJson();

  print('Generating struct_sizes.cpp...');
  generateStructSizeAnalyzer();

  print('Generating structs...');
  generateStructs(structsToGenerate);

  print('Generating struct tests...');
  generateStructSizeTests();

  print('Generating FFI function bindings...');
  generateFunctions(functionsToGenerate);

  print('Generating FFI function tests...');
  generateFunctionTests(functionsToGenerate);

  print('Generating COM interfaces and tests...');
  generateComApis();

  print('Generating Windows Runtime interfaces...');
  generateWinRTApis();

  print('Generating Windows Runtime structs...');
  generateWinRTStructs();
}
