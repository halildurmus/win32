import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

import 'generate_struct_sizes_cpp.dart';

bool methodMatches(String methodName, String rawPrototype) =>
    rawPrototype.contains(' $methodName(');

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
    ..writeln(func.prototype.split('\\n').join('\n/// '))
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
      ..removeWhere((key, value) => value.dllLibrary != library);

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
  final mainWindowsRuntimeTypesToGenerate = windowsRuntimeTypesToGenerate
    ..removeWhere((type) => excludedWindowsRuntimeTypes.contains(type));
  final typesToGenerate = <String>{};

  for (final type in mainWindowsRuntimeTypesToGenerate) {
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? WinRTInterfaceProjection(typeDef)
        : WinRTClassProjection(typeDef);

    // The main type e.g. 'Windows.Globalization.Calendar'
    typesToGenerate.add(type);

    // Interfaces that the type implements e.g.'Windows.Globalization.ICalendar'
    final implementsInterfaces = [
      ...projection.typeDef.interfaces.map((interface) => interface.name)
    ];
    typesToGenerate.addAll(implementsInterfaces);

    // The type's factory and static interfaces e.g. 'Windows.Globalization.ICalendarFactory'
    if (projection is WinRTClassProjection) {
      final factoryAndStaticInterfaces = [
        ...projection.factoryInterfaces,
        ...projection.staticInterfaces
      ];
      typesToGenerate.addAll(factoryAndStaticInterfaces);
    }
  }

  typesToGenerate
    // Remove generic interfaces. See https://github.com/timsneath/win32/issues/480
    ..removeWhere((type) => type.isEmpty)
    // Remove excluded WinRT types
    ..removeWhere((type) => excludedWindowsRuntimeTypes.contains(type));

  for (final type in typesToGenerate) {
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? WinRTInterfaceProjection(typeDef)
        : WinRTClassProjection(typeDef);

    final dartClass = projection.toString();
    final classOutputPath =
        '../../lib/src/winrt/${filePathFromWinRTType(type)}';

    try {
      final formattedDartClass = DartFormatter().format(dartClass);
      File(classOutputPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(formattedDartClass);
    } catch (_) {
      // Better to write even on failure, so we can figure out what syntax error
      // it was that thwarted DartFormatter.
      print('Unable to format class. Writing unformatted...');
      File(classOutputPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(dartClass);
    }
  }
}

void generateWinRTEnumerations() {
  final enums = windowsRuntimeEnumsToGenerate;
  final namespaceGroups = groupTypesByParentNamespace(enums.keys);

  for (final namespaceGroup in namespaceGroups) {
    final enumProjections = <EnumProjection>[];
    final folderPath = folderFromWinRTType(namespaceGroup.types.first);
    final file = File('../../lib/src/winrt/$folderPath/enums.g.dart')
      ..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw Exception("Can't find $type");

      final EnumProjection enumProjection;
      if (typeDef.existsAttribute('System.FlagsAttribute')) {
        enumProjection = FlagsEnumProjection(
            typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
            comment: enums[typeDef.name]!);
      } else {
        enumProjection = EnumProjection(
            typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
            comment: enums[typeDef.name]!);
      }
      enumProjections.add(enumProjection);
    }

    enumProjections.sort((a, b) =>
        lastComponent(a.enumName).compareTo(lastComponent(b.enumName)));

    final import =
        "import '${relativePathToSrcDirectory(file)}winrt/foundation/winrt_enum.dart';";
    final enumsFile = [winrtEnumFileHeader, import, ...enumProjections].join();
    file.writeAsStringSync(DartFormatter().format(enumsFile));
  }
}

void generateWinRTStructs() {
  final structs = windowsRuntimeStructsToGenerate;
  final namespaceGroups = groupTypesByParentNamespace(structs.keys);

  for (final namespaceGroup in namespaceGroups) {
    final structProjections = <StructProjection>[];
    final folderPath = folderFromWinRTType(namespaceGroup.types.first);
    final file = File('../../lib/src/winrt/$folderPath/structs.g.dart')
      ..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw Exception("Can't find $type");

      final structProjection = StructProjection(
          typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
          comment: structs[typeDef.name]!);
      structProjections.add(structProjection);
    }

    structProjections.sort((a, b) =>
        lastComponent(a.structName).compareTo(lastComponent(b.structName)));

    final structsFile = [winrtStructFileHeader, ...structProjections].join();
    file.writeAsStringSync(DartFormatter().format(structsFile));
  }
}

void main() {
  print('Loading and sorting functions...');
  final functionsToGenerate = loadFunctionsFromJson();
  saveFunctionsToJson(functionsToGenerate);

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

  print('Generating Windows Runtime enumerations...');
  generateWinRTEnumerations();

  print('Generating Windows Runtime structs...');
  generateWinRTStructs();
}
