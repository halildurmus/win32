import 'dart:collection';

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

final SplayTreeMap<String, Win32Function> functionsToGenerate =
    loadFunctionsFromJson(r'data\win32_functions.json');

void main() {
  setUpAll(() async {
    await WindowsMetadata.load();
    saveFunctionsToJson(functionsToGenerate, r'data\win32_functions.json');
  });

  group('DynamicLibraryProjection', () {
    testDynamicLibrary('kernel32.dll', (projection) {
      check(projection.name).equals('kernel32.dll');
      check(projection.safeName).equals('kernel32');
      check(projection.methods)
        ..isNotEmpty()
        ..length.isGreaterThan(300);
      for (final method in projection.methods) {
        check(method.module!.name.toLowerCase()).equals('kernel32.dll');
      }
    });
  });

  group('DynamicLibraryTestProjection', () {
    testDynamicLibraryTest('kernel32.dll', (projection) {
      check(projection.name).equals('kernel32.dll');
      check(projection.safeName).equals('kernel32');
      check(projection.methods)
        ..isNotEmpty()
        ..length.isGreaterThan(300);
      for (final method in projection.methods) {
        check(method.module!.name.toLowerCase()).equals('kernel32.dll');
      }
    });
  });
}

@isTest
void testDynamicLibrary(
  String libraryName,
  void Function(DynamicLibraryProjection) projection,
) {
  test(libraryName, () {
    final methods = WindowsMetadata.index.methodsFromLibrary(
      libraryName,
      functionsToGenerate.values.toFixedList(),
    );
    projection(DynamicLibraryProjection(methods[0].module!, methods));
  });
}

@isTest
void testDynamicLibraryTest(
  String libraryName,
  void Function(DynamicLibraryTestProjection) projection,
) {
  test(libraryName, () {
    final functions = functionsToGenerate.values.toFixedList();
    final methods = WindowsMetadata.index.methodsFromLibrary(
      libraryName,
      functions,
    );
    projection(
      DynamicLibraryTestProjection(methods[0].module!, methods, functions),
    );
  });
}
