@TestOn('windows')
library;

import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('RegistryKey', () {
    const basePath = r'SOFTWARE\Win32RegistryTest';

    late RegistryKey root;

    setUp(() {
      root = CURRENT_USER.create(basePath);
    });

    tearDown(() {
      try {
        root.close();
        CURRENT_USER.removeSubkey(basePath);
      } catch (_) {}
    });

    test('can read from predefined key', () {
      final software = CURRENT_USER.open('SOFTWARE');
      check(software.hkey.isValid).isTrue();
      software.close();
    });

    group('path-based get* operations', () {
      test('with path reads from subkey', () {
        root.create('Subkey')
          ..setValue('TestValue', const .string('hello from subkey'))
          ..close();
        final value = root.getString('TestValue', path: 'Subkey');
        check(value).isNotNull().equals('hello from subkey');
      });

      test('with nested path', () {
        root.create(r'Level1\Level2')
          ..setValue('deep', const .dword(42))
          ..close();
        final value = root.getInt('deep', path: r'Level1\Level2');
        check(value).isNotNull().equals(42);
      });

      test('with path returns null for missing value', () {
        root.create('SubPath').close();
        final value = root.getString('NonExistent', path: 'SubPath');
        check(value).isNull();
      });

      test('with invalid path returns null', () {
        check(root.getString('test', path: 'NonExistentPath')).isNull();
      });
    });

    group('value types', () {
      test('NoneValue roundtrip', () {
        root.setValue('none', const .none());
        check(
          root.getValue('none'),
        ).isNotNull().isA<NoneValue>().equals(const .new());
      });

      test('LinkValue roundtrip', () {
        root.setValue('link', const .link(r'C:\Windows\System32'));
        check(root.getValue('link')).isNotNull().isA<LinkValue>().equals(
          const .new(r'C:\Windows\System32'),
        );
        check(
          root.getString('link'),
        ).isNotNull().equals(r'C:\Windows\System32');
      });

      test('large binary value', () {
        final largeBytes = Uint8List.fromList(
          List.generate(10000, (i) => i % 256),
        );
        root.setValue('large', .binary(largeBytes));
        check(
          root.getValue('large'),
        ).isNotNull().isA<BinaryValue>().equals(.new(largeBytes));
        check(root.getBinary('large')).isNotNull().deepEquals(largeBytes);
      });

      test('max dword value', () {
        const maxDword = 0xFFFFFFFF;
        root.setValue('maxdword', const .dword(maxDword));
        check(
          root.getValue('maxdword'),
        ).isNotNull().isA<DwordValue>().equals(const .new(maxDword));
        check(root.getInt('maxdword')).isNotNull().equals(maxDword);
      });

      test('max qword value', () {
        const maxQword = 0x7FFFFFFFFFFFFFFF;
        root.setValue('maxqword', const .qword(maxQword));
        check(
          root.getValue('maxqword'),
        ).isNotNull().isA<QwordValue>().equals(const .new(maxQword));
        check(root.getInt('maxqword')).isNotNull().equals(maxQword);
      });
    });

    group('info', () {
      test('reflects current state', () {
        final info = root.info;
        check(info.subKeyCount).isGreaterOrEqual(0);
        check(info.valuesCount).isGreaterOrEqual(0);
        check(info.valueNameMaxLength).isGreaterOrEqual(0);
        check(info.subKeyNameMaxLength).isGreaterOrEqual(0);
      });

      test('updates after adding subkey', () {
        final initialInfo = root.info;
        root.create('NewSubKey').close();
        final updatedInfo = root.info;
        check(updatedInfo.subKeyCount).equals(initialInfo.subKeyCount + 1);
      });

      test('updates after adding value', () {
        final initialInfo = root.info;
        root.setValue('newval', const .string('test'));
        final updatedInfo = root.info;
        check(updatedInfo.valuesCount).equals(initialInfo.valuesCount + 1);
      });

      test('tracks maxValueNameLength', () {
        root
          ..setValue('short', const .string('x'))
          ..setValue('verylongvaluename', const .string('y'));
        final info = root.info;
        check(info.valueNameMaxLength).isGreaterOrEqual(17);
      });

      test('tracks maxValueDataSize', () {
        final largeData = Uint8List(5000);
        root.setValue('large', .binary(largeData));
        final info = root.info;
        check(info.valueDataMaxSizeInBytes).isGreaterOrEqual(5000);
      });

      test('lastWriteTime is set', () {
        root.setValue('trigger', const .string('update'));
        final info = root.info;
        check(info.lastWriteTime).isNotNull();
        final now = DateTime.now();
        check(
          info.lastWriteTime!.isBefore(now) ||
              info.lastWriteTime!.isAtSameMomentAs(now),
        ).isTrue();
      });
    });

    group('case insensitivity', () {
      test('key names are case insensitive', () {
        root.create('TestKey').close();
        final lower = root.open('testkey');
        final upper = root.open('TESTKEY');
        final mixed = root.open('TeStKeY');
        check(lower.hkey.isValid).isTrue();
        check(upper.hkey.isValid).isTrue();
        check(mixed.hkey.isValid).isTrue();
        lower.close();
        upper.close();
        mixed.close();
      });

      test('value names are case insensitive', () {
        root.setValue('TestValue', const .string('data'));
        check(root.getString('testvalue')).equals('data');
        check(root.getString('TESTVALUE')).equals('data');
        check(root.getString('TeStVaLuE')).equals('data');
      });

      test('removeValue is case insensitive', () {
        root
          ..setValue('TestValue', const .string('data'))
          ..removeValue('TESTVALUE');
        check(root.getValue('testvalue')).isNull();
      });

      test('getType is case insensitive', () {
        root.setValue('TestValue', const .dword(123));
        check(root.getType('testvalue')).equals(.dword);
        check(root.getType('TESTVALUE')).equals(.dword);
      });
    });

    group('complex nested operations', () {
      test('deep nesting create and open', () {
        final deep = root.create(r'A\B\C\D\E\F')
          ..setValue('value', const .string('deep'));
        check(deep.getString('value')).equals('deep');
        deep.close();
      });

      test('enumerate deeply nested subkeys', () {
        root.create(r'Parent\Child1').close();
        root.create(r'Parent\Child2').close();
        root.create(r'Parent\Child3').close();
        final parent = root.open('Parent');
        final children = parent.keys;
        check(children.length).equals(3);
        check(children)
          ..contains('Child1')
          ..contains('Child2')
          ..contains('Child3');
        parent.close();
      });

      test('removeSubkey removes nested tree', () {
        root.create(r'Tree\Branch\Leaf1').close();
        root.create(r'Tree\Branch\Leaf2').close();
        root.removeSubkey('Tree');
        check(() => root.open('Tree')).throws<WindowsException>()
          ..has((e) => e.hr, 'hr').equals(ERROR_FILE_NOT_FOUND.toHRESULT())
          ..has(
            (e) => e.message,
            'message',
          ).equals('The system cannot find the file specified.');
      });

      test('removeTree preserves key but clears contents', () {
        root
          ..create('Child1').close()
          ..create('Child2').close()
          ..setValue('value1', const .string('x'))
          ..setValue('value2', const .dword(1))
          ..removeTree();
        check(root.keys).isEmpty();
        check(root.values).isEmpty();
        check(root.hkey.isValid).isTrue();
      });

      test('copy values between keys', () {
        final source = root.create('Source')
          ..setValue('str', const .string('hello'))
          ..setValue('int', const .dword(42))
          ..setValue('bin', .binary(.fromList([1, 2, 3])));
        final dest = root.create('Dest');
        for (final (:name, :value) in source.values) {
          dest.setValue(name, value);
        }
        check(dest.getString('str')).equals('hello');
        check(dest.getInt('int')).equals(42);
        check(dest.getBinary('bin')).isNotNull().deepEquals([1, 2, 3]);
        source.close();
        dest.close();
      });
    });

    test('open with readWrite access allows write', () {
      final key = root.create('ReadWriteKey')
        ..setValue('test', const .string('value'));
      check(key.getString('test')).equals('value');
      key.close();
    });

    test('open with read access prevents write', () {
      root.create('ReadOnlyKey').close();
      final readOnly = root.open('ReadOnlyKey');
      check(
          () => readOnly.setValue('test', const .string('fail')),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(ERROR_ACCESS_DENIED.toHRESULT())
        ..has((e) => e.message, 'message').equals('Access is denied.');
      readOnly.close();
    });

    test('open with create=false fails for missing key', () {
      check(() => root.open('DoesNotExist')).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(ERROR_FILE_NOT_FOUND.toHRESULT())
        ..has(
          (e) => e.message,
          'message',
        ).equals('The system cannot find the file specified.');
    });

    test('open with create=true creates missing key', () {
      final key = root.open('AutoCreated', config: const .new(create: true));
      check(key.hkey.isValid).isTrue();
      check(root.keys).contains('AutoCreated');
      key.close();
    });

    group('edge cases and error handling', () {
      test('backslash only path throws', () {
        check(() => root.create(r'\')).throws<WindowsException>()
          ..has((e) => e.hr, 'hr').equals(ERROR_BAD_PATHNAME.toHRESULT())
          ..has(
            (e) => e.message,
            'message',
          ).equals('The specified path is invalid.');
      });

      test('null characters in value name', () {
        // Registry should handle this (gets truncated)
        root.setValue('test\x00after', const .string('value'));
        // The value name will be truncated at the null.
        check(
          root.values,
        ).contains((name: 'test', value: const .string('value')));
      });

      test('special characters in key name', () {
        // Backslash is path separator, but other special chars should work.
        final special = root.create('Test-Key_123!@#');
        check(special.hkey.isValid).isTrue();
        special.close();
      });

      test('very long key path', () {
        // Registry has limits, but test a reasonably long path.
        final longPath = List.generate(10, (i) => 'Level$i').join(r'\');
        final deep = root.create(longPath);
        check(deep.hkey.isValid).isTrue();
        deep.close();
      });

      test('unicode in value data', () {
        const unicode = 'Hello 世界 🌍 Привет';
        root.setValue('unicode', const .string(unicode));
        check(root.getString('unicode')).isNotNull().equals(unicode);
      });

      test('empty multi-string list throws', () {
        check(
          () => root.setValue('empty', const .multiString([])),
        ).throws<ArgumentError>();
      });

      test('multi-string with empty strings not allowed', () {
        check(
          () => root.setValue('multi', const .multiString(['', 'x', ''])),
        ).throws<ArgumentError>();
      });

      test('accessing closed key throws StateError', () {
        final key = root.create('CloseTest')..close();
        check(() => key.keys).throws<StateError>();
        check(() => key.values).throws<StateError>();
        check(() => key.info).throws<StateError>();
        check(() => key.getValue('x')).throws<StateError>();
        check(() => key.setValue('x', const .string('y'))).throws<StateError>();
        check(() => key.getString('x')).throws<StateError>();
        check(() => key.getInt('x')).throws<StateError>();
        check(() => key.getBinary('x')).throws<StateError>();
        check(() => key.getMultiString('x')).throws<StateError>();
        check(() => key.getUnexpandedString('x')).throws<StateError>();
        check(() => key.removeValue('x')).throws<StateError>();
        check(() => key.removeSubkey('x')).throws<StateError>();
        check(key.removeTree).throws<StateError>();
        check(key.removeValues).throws<StateError>();
        check(() => key.rename(null, 'y')).throws<StateError>();
        check(() => key.create('x')).throws<StateError>();
        check(() => key.open('x')).throws<StateError>();
      });

      test('isClosed property works', () {
        final key = root.create('CloseCheck');
        check(key.isClosed).isFalse();
        key.close();
        check(key.isClosed).isTrue();
      });

      test('removing non-existent subkey throws', () {
        check(
            () => root.removeSubkey('DoesNotExist'),
          ).throws<WindowsException>()
          ..has((e) => e.hr, 'hr').equals(ERROR_FILE_NOT_FOUND.toHRESULT())
          ..has(
            (e) => e.message,
            'message',
          ).equals('The system cannot find the file specified.');
      });
    });

    test('renamed key retains values', () {
      root.create('Original')
        ..setValue('data', const .string('preserved'))
        ..close();
      root.rename('Original', 'Renamed');
      final renamed = root.open('Renamed');
      check(renamed.getString('data')).equals('preserved');
      renamed.close();
    });

    test('renaming current key', () {
      final key = root.create('Original')..rename(null, 'Renamed');
      final renamed = root.open('Renamed');
      check(renamed.hkey.isValid).isTrue();
      renamed.close();
      key.close();
    });

    group('removeValues', () {
      test('clears all values', () {
        root
          ..setValue('v1', const .string('x'))
          ..setValue('v2', const .dword(1))
          ..setValue('v3', .binary(.fromList([1, 2])))
          ..removeValues();
        check(root.values).isEmpty();
      });

      test('does not affect subkeys', () {
        root
          ..create('SubKey').close()
          ..setValue('value', const .string('x'))
          ..removeValues();
        check(root.values).isEmpty();
        check(root.keys).contains('SubKey');
      });

      test('on empty key succeeds', () {
        check(() => root.removeValues()).returnsNormally();
      });
    });

    test('values list all values', () {
      root
        ..setValue('c', const .string('3'))
        ..setValue('a', const .string('1'))
        ..setValue('b', const .string('2'));
      final values = root.values;
      check(values.length).equals(3);
      // Registry may return in any order, just verify all are present.
      final names = values.map((v) => v.name).toList();
      check(names)
        ..contains('a')
        ..contains('b')
        ..contains('c');
    });

    test('keys list all subkeys', () {
      for (var i = 0; i < 5; i++) {
        root.create('Key$i').close();
      }

      final keys = root.keys;
      check(keys.length).equals(5);
      for (var i = 0; i < 5; i++) {
        check(keys).contains('Key$i');
      }
    });

    test('empty key has no values or subkeys', () {
      check(root.values).isEmpty();
      check(root.keys).isEmpty();
    });

    test('openCurrentUser() can read SOFTWARE', () {
      final currentUser = RegistryKey.openCurrentUser();
      final software = currentUser.open('SOFTWARE');
      check(software.hkey.isValid).isTrue();
      software.close();
      currentUser.close();
    });

    group('expandPaths behavior', () {
      test('expandPaths=true expands environment variables', () {
        root.setValue('path', const .unexpandedString(r'%USERPROFILE%\test'));
        check(root.getString('path', expandPaths: true)).isNotNull()
          ..not((it) => it.contains('%USERPROFILE%'))
          ..contains(r'\test');
        check(root.getUnexpandedString('path', expandPaths: true)).isNotNull()
          ..not((it) => it.contains('%USERPROFILE%'))
          ..contains(r'\test');
      });

      test('expandPaths=false preserves variable syntax', () {
        root.setValue('path', const .unexpandedString(r'%USERPROFILE%\test'));
        check(root.getString('path')).isNotNull().equals(r'%USERPROFILE%\test');
        check(
          root.getUnexpandedString('path'),
        ).isNotNull().equals(r'%USERPROFILE%\test');
      });

      test('multiple environment variables expand', () {
        root.setValue(
          'multi',
          const .unexpandedString(r'%USERPROFILE%\%COMPUTERNAME%'),
        );
        final expanded = root.getString('multi', expandPaths: true);
        check(expanded).isNotNull()
          ..not((it) => it.contains('%USERPROFILE%'))
          ..not((it) => it.contains('%COMPUTERNAME%'));
      });
    });

    test('getType returns correct types', () {
      root
        ..setValue('s', const .string('x'))
        ..setValue('d', const .dword(1))
        ..setValue('q', const .qword(2))
        ..setValue('b', .binary(.fromList([1])))
        ..setValue('m', const .multiString(['x']))
        ..setValue('e', const .unexpandedString('x'))
        ..setValue('n', const .none())
        ..setValue('l', const .link('x'));
      check(root.getType('s')).equals(.string);
      check(root.getType('d')).equals(.dword);
      check(root.getType('q')).equals(.qword);
      check(root.getType('b')).equals(.binary);
      check(root.getType('m')).equals(.multiString);
      check(root.getType('e')).equals(.unexpandedString);
      check(root.getType('n')).equals(.none);
      check(root.getType('l')).equals(.link);
    });

    test('type-mismatched getters return null', () {
      root.setValue('str', const .string('hello'));
      check(root.getBinary('str')).isNull();
      check(root.getInt('str')).isNull();
      check(root.getMultiString('str')).isNull();
      check(root.getUnexpandedString('str')).isNull();
    });

    group('stress tests', () {
      const count = 100;

      test('many subkeys', () {
        for (var i = 0; i < count; i++) {
          root.create('Sub$i').close();
        }
        check(root.keys.length).equals(count);
      });

      test('many values', () {
        for (var i = 0; i < count; i++) {
          root.setValue('Val$i', .dword(i));
        }
        check(root.values.length).equals(count);
      });

      test('value overwrite repeatedly', () {
        for (var i = 0; i < count; i++) {
          root.setValue('counter', .dword(i));
        }
        check(root.getInt('counter')).equals(count - 1);
      });
    });
  });
}
