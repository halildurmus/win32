import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('MetadataLookup', () {
    test('constantIndex', () {
      check(metadata.constantIndex.length).equals(294);
    });

    test('functionIndex', () {
      check(metadata.functionIndex.length).equals(220);
    });

    test('typeIndex', () {
      check(metadata.typeIndex.length).equals(322);
    });

    group('findConstant', () {
      test('throws for non-existent constant', () {
        check(
              () => metadata.findConstant(
                'Windows.Win32.Foundation',
                'NonExistentConstant',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals(
              'Constant not found: Windows.Win32.Foundation.NonExistentConstant',
            );
      });

      test('returns the correct constant', () {
        final constant = metadata.findConstant(
          'Windows.Win32.Foundation',
          'E_FAIL',
        );
        check(constant.name).equals('E_FAIL');
        check(constant.parent.namespace).equals('Windows.Win32.Foundation');
        check(constant.parent.name).equals('Apis');
      });
    });

    group('findConstantByName', () {
      test('throws for non-existent constant', () {
        check(() => metadata.findConstantByName('NonExistentConstant'))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Constant not found: NonExistentConstant');
      });

      test('returns the correct constant', () {
        final constant = metadata.findConstantByName('E_FAIL');
        check(constant.name).equals('E_FAIL');
        check(constant.parent.namespace).equals('Windows.Win32.Foundation');
        check(constant.parent.name).equals('Apis');
      });
    });

    group('tryFindConstant', () {
      test('returns null for non-existent constant', () {
        check(
          metadata.tryFindConstant(
            'Windows.Win32.Foundation',
            'NonExistentConstant',
          ),
        ).isNull();
      });

      test('returns the correct constant', () {
        final constant = metadata.tryFindConstant(
          'Windows.Win32.Foundation',
          'E_FAIL',
        );
        check(constant).isNotNull();
        check(constant!.name).equals('E_FAIL');
        check(constant.parent.namespace).equals('Windows.Win32.Foundation');
        check(constant.parent.name).equals('Apis');
      });
    });

    group('tryFindConstantByName', () {
      test('returns null for non-existent constant', () {
        check(metadata.tryFindConstantByName('NonExistentConstant')).isNull();
      });

      test('returns the correct constant', () {
        final constant = metadata.tryFindConstantByName('E_FAIL');
        check(constant).isNotNull();
        check(constant!.name).equals('E_FAIL');
        check(constant.parent.namespace).equals('Windows.Win32.Foundation');
        check(constant.parent.name).equals('Apis');
      });
    });

    group('findFunction', () {
      test('throws for non-existent function', () {
        check(
              () => metadata.findFunction(
                'Windows.Win32.Foundation',
                'NonExistentFunction',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals(
              'Function not found: Windows.Win32.Foundation.NonExistentFunction',
            );
      });

      test('returns the correct function', () {
        final function = metadata.findFunction(
          'Windows.Win32.Foundation',
          'GetLastError',
        );
        check(function.name).equals('GetLastError');
        check(function.parent.namespace).equals('Windows.Win32.Foundation');
        check(function.parent.name).equals('Apis');
      });
    });

    group('findFunctionByName', () {
      test('throws for non-existent function', () {
        check(() => metadata.findFunctionByName('NonExistentFunction'))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Function not found: NonExistentFunction');
      });

      test('returns the correct function', () {
        final function = metadata.findFunctionByName('GetLastError');
        check(function.name).equals('GetLastError');
        check(function.parent.namespace).equals('Windows.Win32.Foundation');
        check(function.parent.name).equals('Apis');
      });
    });

    group('tryFindFunction', () {
      test('returns null for non-existent function', () {
        check(
          metadata.tryFindFunction(
            'Windows.Win32.Foundation',
            'NonExistentFunction',
          ),
        ).isNull();
      });

      test('returns the correct function', () {
        final function = metadata.tryFindFunction(
          'Windows.Win32.Foundation',
          'GetLastError',
        );
        check(function).isNotNull();
        check(function!.name).equals('GetLastError');
        check(function.parent.namespace).equals('Windows.Win32.Foundation');
        check(function.parent.name).equals('Apis');
      });
    });

    group('tryFindFunctionByName', () {
      test('returns null for non-existent function', () {
        check(metadata.tryFindFunctionByName('NonExistentFunction')).isNull();
      });

      test('returns the correct function', () {
        final function = metadata.tryFindFunctionByName('GetLastError');
        check(function).isNotNull();
        check(function!.name).equals('GetLastError');
        check(function.parent.namespace).equals('Windows.Win32.Foundation');
        check(function.parent.name).equals('Apis');
      });
    });

    group('findTypes', () {
      test('returns empty iterable for non-existing type', () {
        final types = metadata.findTypes(
          'Windows.Win32.System.Com',
          'NonExistingType',
        );
        check(types).isEmpty();
      });

      test('returns correct types', () {
        final types = metadata
            .findTypes('Windows.Win32.System.Kernel', 'SLIST_HEADER')
            .toList();
        check(types.length).equals(3);

        check(types[0].namespace).equals('Windows.Win32.System.Kernel');
        check(types[0].name).equals('SLIST_HEADER');
        check(
          types[0]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(4)); // Architecture.Arm64

        check(types[1].namespace).equals('Windows.Win32.System.Kernel');
        check(types[1].name).equals('SLIST_HEADER');
        check(
          types[1]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(2)); // Architecture.X64

        check(types[2].namespace).equals('Windows.Win32.System.Kernel');
        check(types[2].name).equals('SLIST_HEADER');
        check(
          types[2]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(1)); // Architecture.X86
      });
    });

    group('findTypesByName', () {
      test('returns empty iterable for non-existing type', () {
        final types = metadata.findTypesByName('NonExistingType');
        check(types).isEmpty();
      });

      test('returns correct types', () {
        final types = metadata.findTypesByName('SLIST_HEADER').toList();
        check(types.length).equals(3);

        check(types[0].namespace).equals('Windows.Win32.System.Kernel');
        check(types[0].name).equals('SLIST_HEADER');
        check(
          types[0]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(4)); // Architecture.Arm64

        check(types[1].namespace).equals('Windows.Win32.System.Kernel');
        check(types[1].name).equals('SLIST_HEADER');
        check(
          types[1]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(2)); // Architecture.X64

        check(types[2].namespace).equals('Windows.Win32.System.Kernel');
        check(types[2].name).equals('SLIST_HEADER');
        check(
          types[2]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(1)); // Architecture.X86
      });
    });

    group('findSingleType', () {
      test('throws for non-existing type', () {
        check(
              () => metadata.findSingleType(
                'Windows.Win32.System.Com',
                'NonExistingType',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Type not found: Windows.Win32.System.Com.NonExistingType');
      });

      test('throws for non-unique type', () {
        check(
              () => metadata.findSingleType(
                'Windows.Win32.System.Kernel',
                'SLIST_HEADER',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals(
              'More than one type found: '
              'Windows.Win32.System.Kernel.SLIST_HEADER',
            );
      });

      test('returns correct type', () {
        final type = metadata.findSingleType(
          'Windows.Win32.System.Com',
          'IUnknown',
        );
        check(type.namespace).equals('Windows.Win32.System.Com');
        check(type.name).equals('IUnknown');
      });
    });

    group('findSingleTypeByName', () {
      group('findSingleType', () {
        test('throws for non-existing type', () {
          check(() => metadata.findSingleTypeByName('NonExistingType'))
              .throws<WinmdException>()
              .has((it) => it.message, 'message')
              .equals('Type not found: NonExistingType');
        });

        test('throws for non-unique type', () {
          check(() => metadata.findSingleTypeByName('SLIST_HEADER'))
              .throws<WinmdException>()
              .has((it) => it.message, 'message')
              .equals('More than one type found: SLIST_HEADER');
        });

        test('returns correct type', () {
          final type = metadata.findSingleTypeByName('IUnknown');
          check(type.namespace).equals('Windows.Win32.System.Com');
          check(type.name).equals('IUnknown');
        });
      });
    });

    group('tryFindSingleType', () {
      test('returns null for non-existing type', () {
        check(
          metadata.tryFindSingleType(
            'Windows.Win32.System.Com',
            'NonExistingType',
          ),
        ).isNull();
      });

      test('returns null for non-unique type', () {
        check(
          metadata.tryFindSingleType(
            'Windows.Win32.System.Kernel',
            'SLIST_HEADER',
          ),
        ).isNull();
      });

      test('returns correct type', () {
        final type = metadata.tryFindSingleType(
          'Windows.Win32.System.Com',
          'IUnknown',
        );
        check(type).isNotNull();
        check(type!.namespace).equals('Windows.Win32.System.Com');
        check(type.name).equals('IUnknown');
      });
    });

    group('tryFindSingleTypeByName', () {
      test('returns null for non-existing type', () {
        check(metadata.tryFindSingleTypeByName('NonExistingType')).isNull();
      });

      test('returns null for non-unique type', () {
        check(metadata.tryFindSingleTypeByName('SLIST_HEADER')).isNull();
      });

      test('returns correct type', () {
        final type = metadata.tryFindSingleTypeByName('IUnknown');
        check(type).isNotNull();
        check(type!.namespace).equals('Windows.Win32.System.Com');
        check(type.name).equals('IUnknown');
      });
    });
  });
}
