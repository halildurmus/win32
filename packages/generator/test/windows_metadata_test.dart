import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('WindowsMetadata', () {
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

    group('findConstantByName', () {
      test('finds constant by name', () {
        check(
          WindowsMetadata.findConstantByName('E_NOINTERFACE').name,
        ).equals('E_NOINTERFACE');
      });

      test('throws for non-existent constant', () {
        check(
          () => WindowsMetadata.findConstantByName('NonExistentConstant'),
        ).throws<WinmdException>();
      });
    });

    group('findFunctionByName', () {
      test('finds function by name', () {
        check(
          WindowsMetadata.findFunctionByName('CreateFileW').name,
        ).equals('CreateFileW');
      });

      test('throws for non-existent function', () {
        check(
          () => WindowsMetadata.findFunctionByName('NonExistentFunction'),
        ).throws<WinmdException>();
      });
    });

    group('findTypeDefByName', () {
      test('finds typeDef by name', () {
        check(
          WindowsMetadata.findTypeDefByName('IUnknown').name,
        ).equals('IUnknown');
      });

      test('throws for non-existent typeDef', () {
        check(
          () => WindowsMetadata.findTypeDefByName('NonExistentTypeDef'),
        ).throws<GeneratorException>();
      });
    });
  });
}
