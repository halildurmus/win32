import 'dart:collection';

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

final SplayTreeMap<String, Win32Function> functionsToGenerate =
    loadFunctionsFromJson(r'data\win32_functions.json');

void main() {
  setUpAll(() async {
    await WindowsMetadata.load();
    saveFunctionsToJson(functionsToGenerate, r'data\win32_functions.json');
  });

  group('MetadataIndex', () {
    test('constants', () {
      check(WindowsMetadata.index.constants)
        ..isNotEmpty()
        ..every(
          (c) => c.has((f) => f.parent.name, 'parent.name').endsWith('Apis'),
        );
    });

    test('functions', () {
      check(WindowsMetadata.index.functions)
        ..isNotEmpty()
        ..every(
          (f) => f.has((f) => f.parent.name, 'parent.name').endsWith('Apis'),
        );
    });

    test('methodsFromLibrary', () {
      const libraryName = 'ole32.dll';
      final methods = WindowsMetadata.index.methodsFromLibrary(
        libraryName,
        functionsToGenerate.values.toFixedList(),
      );
      check(methods).isNotEmpty();

      for (final method in methods) {
        check(method.module!.name.toLowerCase()).equals(libraryName);
      }
    });
  });
}
