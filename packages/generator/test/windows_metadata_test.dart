@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('WindowsMetadata', () {
    test('scopes excludes Windows.winmd', () {
      check(WindowsMetadata.scopes)
        ..length.equals(2)
        ..first.has((s) => s.name, 'name').equals('Windows.Wdk.winmd')
        ..last.has((s) => s.name, 'name').equals('Windows.Win32.winmd');
    });

    test('constants', () {
      check(WindowsMetadata.constants)
        ..isNotEmpty()
        ..every(
          (c) => c.has((f) => f.parent.name, 'parent.name').endsWith('Apis'),
        );
    });

    test('delegates', () {
      check(WindowsMetadata.delegates)
        ..isNotEmpty()
        ..every((d) => d.has((t) => t.isDelegate, 'isDelegate').isTrue());
    });

    test('enums', () {
      check(WindowsMetadata.enums)
        ..isNotEmpty()
        ..every((e) => e.has((t) => t.isEnum, 'isEnum').isTrue());
    });

    test('functions', () {
      check(WindowsMetadata.functions)
        ..isNotEmpty()
        ..every(
          (f) => f.has((f) => f.parent.name, 'parent.name').endsWith('Apis'),
        );
    });

    test('interfaces', () {
      check(WindowsMetadata.interfaces)
        ..isNotEmpty()
        ..every((i) => i.has((t) => t.isInterface, 'isInterface').isTrue());
    });

    test('structs', () {
      check(WindowsMetadata.structs)
        ..isNotEmpty()
        ..every((s) => s.has((t) => t.isStruct, 'isStruct').isTrue());
    });

    test('typeDefs', () {
      check(WindowsMetadata.typeDefs)
        ..isNotEmpty()
        ..length.isGreaterThan(30_000);
    });

    group('constant', () {
      test('finds constant by name', () {
        check(
          WindowsMetadata.constant('E_NOINTERFACE').name,
        ).equals('E_NOINTERFACE');
      });

      test('finds constant by fully qualified name', () {
        check(
          WindowsMetadata.constant(
            'Windows.Win32.Foundation.Apis.E_NOINTERFACE',
          ).name,
        ).equals('E_NOINTERFACE');
      });

      test('throws StateError for non-existent constant', () {
        check(
          () => WindowsMetadata.constant('NonExistentConstant'),
        ).throws<StateError>();
      });
    });

    group('function', () {
      test('finds function by name', () {
        check(
          WindowsMetadata.function('CreateFileW').name,
        ).equals('CreateFileW');
      });

      test('finds function by fully qualified name', () {
        check(
          WindowsMetadata.function(
            'Windows.Win32.Storage.FileSystem.Apis.CreateFileW',
          ).name,
        ).equals('CreateFileW');
      });

      test('throws StateError for non-existent function', () {
        check(
          () => WindowsMetadata.function('NonExistentFunction'),
        ).throws<StateError>();
      });
    });

    group('typeDef', () {
      test('finds typeDef by name', () {
        check(
          WindowsMetadata.typeDef('IUnknown').simpleName,
        ).equals('IUnknown');
      });

      test('finds typeDef by fully qualified name', () {
        check(
          WindowsMetadata.typeDef(
            'Windows.Win32.System.Com.IUnknown',
          ).simpleName,
        ).equals('IUnknown');
      });

      test('throws StateError for non-existent typeDef', () {
        check(
          () => WindowsMetadata.typeDef('NonExistentTypeDef'),
        ).throws<StateError>();
      });
    });
  });

  tearDownAll(WindowsMetadata.close);
}
