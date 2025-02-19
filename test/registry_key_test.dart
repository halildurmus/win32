@TestOn('windows')
library;

import 'dart:ffi';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/src/utils.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryKey', () {
    group('getValue', () {
      test('binary', () {
        const keyPath = r'Control Panel\Desktop\WindowMetrics';
        final windowMetrics = Registry.openPath(
          RegistryHive.currentUser,
          path: keyPath,
        );
        final iconFont = windowMetrics.getValue('IconFont');
        check(iconFont).isNotNull();
        final type = iconFont!.type;
        check(type).equals(RegistryValueType.binary);
        check(type.value).equals(REG_BINARY);
        check(type.toString()).equals('REG_BINARY');
        check(windowMetrics.getBinaryValue('IconFont')).isNotNull();
        windowMetrics.close();
      });

      test('int32', () {
        final console = Registry.openPath(
          RegistryHive.currentUser,
          path: 'Console',
        );
        final fullScreen = console.getValue('FullScreen');
        check(fullScreen).isNotNull();
        final type = fullScreen!.type;
        check(type).equals(RegistryValueType.int32);
        check(type.value).equals(REG_DWORD);
        check(type.toString()).equals('REG_DWORD');
        check(console.getIntValue('FullScreen')).isNotNull();
        console.close();
      });

      test('int64', () {
        const keyPath = r'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
        final ntCurrentVersion = Registry.openPath(
          RegistryHive.localMachine,
          path: keyPath,
        );
        final installTime = ntCurrentVersion.getValue('InstallTime');
        check(installTime).isNotNull();
        final type = installTime!.type;
        check(type).equals(RegistryValueType.int64);
        check(type.value).equals(REG_QWORD);
        check(type.toString()).equals('REG_QWORD');
        check(ntCurrentVersion.getIntValue('InstallTime')).isNotNull();
        ntCurrentVersion.close();
      });

      test('string', () {
        const keyPath = r'SOFTWARE\Microsoft\Windows\CurrentVersion';
        final currentVersion = Registry.openPath(
          RegistryHive.localMachine,
          path: keyPath,
        );
        final programFilesDir = currentVersion.getValue('ProgramFilesDir');
        check(programFilesDir).isNotNull();
        final type = programFilesDir!.type;
        check(type).equals(RegistryValueType.string);
        check(type.value).equals(REG_SZ);
        check(type.toString()).equals('REG_SZ');
        check(currentVersion.getStringValue('ProgramFilesDir')).isNotNull();
        currentVersion.close();
      });

      test('unexpanded string', () {
        final env = Registry.openPath(
          RegistryHive.currentUser,
          path: 'Environment',
        );
        final path = env.getValue('Path');
        check(path).isNotNull();
        final type = path!.type;
        check(type).equals(RegistryValueType.unexpandedString);
        check(type.value).equals(REG_EXPAND_SZ);
        check(type.toString()).equals('REG_EXPAND_SZ');
        check(env.getStringValue('Path')).isNotNull();
        env.close();
      });

      test('missing value returns null', () {
        const keyPath = r'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
        final currentVersion = Registry.openPath(
          RegistryHive.localMachine,
          path: keyPath,
        );
        check(currentVersion.getValue('NotepadPlusPlus')).isNull();
        currentVersion.close();
      });
    });

    test('create a subkey', () {
      final hkcu = Registry.currentUser;
      const subkeyName = 'Win32RegistryTestKey';
      check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
      final subkey = hkcu.createKey(subkeyName);
      check(hkcu.subkeyNames.contains(subkeyName)).isTrue();
      subkey.close();
      hkcu.deleteKey(subkeyName);
      check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
      hkcu.close();
    });

    test('create a subkey without write access should fail', () {
      final hkcu = Registry.openPath(RegistryHive.localMachine);
      const subkeyName = 'Win32RegistryTestKey';
      check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
      check(() => hkcu.createKey(subkeyName)).throws<WindowsException>();
      check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
      hkcu.close();
    });

    test('rename a subkey', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      final subkey = hkcu.createKey('Win32RegistryTestKey');
      check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isTrue();
      hkcu.renameSubkey('Win32RegistryTestKey', 'MyNewTestKey');
      check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isFalse();
      check(hkcu.subkeyNames.contains('MyNewTestKey')).isTrue();
      subkey.close();
      hkcu.deleteKey('MyNewTestKey');
      check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isFalse();
      check(hkcu.subkeyNames.contains('MyNewTestKey')).isFalse();
      hkcu.close();
    });

    test('create a binary value (REG_BINARY)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      final registryValue = RegistryValue.binary(
        'TestValue',
        Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]),
      );
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<BinaryValue>();
      final BinaryValue(:name, :type, :value) = retrievedValue! as BinaryValue;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.binary);
      check(value.length).equals(4);
      check(value).deepEquals([0xFF, 0x33, 0x77, 0xAA]);
      check(subkey.getBinaryValue('TestValue')!).deepEquals(value);
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a int32 value (REG_DWORD)', () {
      final hkcu = Registry.currentUser;
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const value = RegistryValue.int32('TestValue', 1234);
      subkey.createValue(value);
      check(
        subkey.values.where((v) => v.name == 'TestValue').first,
      ).equals(value);
      check(subkey.getIntValue('TestValue')).equals(1234);
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a int64 value (REG_QWORD)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const registryValue = RegistryValue.int64(
        'TestValue',
        0xFEEDFACECAFEBEEF,
      );
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<Int64Value>();
      final Int64Value(:name, :type, :value) = retrievedValue! as Int64Value;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.int64);
      check(value).equals(0xFEEDFACECAFEBEEF);
      check(subkey.getIntValue('TestValue')).equals(0xFEEDFACECAFEBEEF);
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a link value (REG_LINK)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const registryValue = RegistryValue.link('TestValue', r'C:\Windows\Temp');
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<LinkValue>();
      final LinkValue(:name, :type, :value) = retrievedValue! as LinkValue;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.link);
      check(value).equals(r'C:\Windows\Temp');
      check(subkey.getStringValue('TestValue')).equals(r'C:\Windows\Temp');
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a none value (REG_NONE)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const registryValue = RegistryValue.none('TestValue');
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<NoneValue>();
      final NoneValue(:name, :type) = retrievedValue! as NoneValue;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.none);
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a string value (REG_SZ)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const registryValue = RegistryValue.string(
        'TestValue',
        'Some text here.',
      );
      final pointerData = registryValue.toWin32();
      check(pointerData.lengthInBytes).equals(sizeOf<Uint16>() * 16);
      free(pointerData.data);
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<StringValue>();
      final StringValue(:name, :type, :value) = retrievedValue! as StringValue;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.string);
      check(value).equals('Some text here.');
      check(subkey.getStringValue('TestValue')).equals('Some text here.');
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create a string array (REG_MULTI_SZ)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const registryValue = RegistryValue.stringArray('TestValue', [
        'One',
        'Two',
        'Three',
      ]);
      final pointerData = registryValue.toWin32();
      check(pointerData.lengthInBytes).equals(sizeOf<Uint16>() * 15);
      free(pointerData.data);
      subkey.createValue(registryValue);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue).isA<StringArrayValue>();
      final StringArrayValue(:name, :type, :value) =
          retrievedValue! as StringArrayValue;
      check(name).equals('TestValue');
      check(type).equals(RegistryValueType.stringArray);
      check(value.length).equals(3);
      check(value).deepEquals(['One', 'Two', 'Three']);
      check(subkey.getStringArrayValue('TestValue')!).deepEquals(value);
      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('create an unexpanded string value (REG_EXPAND_SZ)', () {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const subkeyName = 'Win32RegistryTestKey';
      final subkey = hkcu.createKey(subkeyName);
      const value = RegistryValue.unexpandedString(
        'TestValue',
        r'%LOCALAPPDATA%\win32_registry\win32_registry.dart',
      );
      final pointerData = value.toWin32();
      check(pointerData.lengthInBytes).equals(sizeOf<Uint16>() * 50);
      free(pointerData.data);
      subkey.createValue(value);
      final retrievedValue = subkey.getValue('TestValue');
      check(retrievedValue).isNotNull();
      check(retrievedValue!.type).equals(RegistryValueType.unexpandedString);

      // Unexpanded should be as stored.
      check(
        subkey.getStringValue('TestValue'),
      ).equals(r'%LOCALAPPDATA%\win32_registry\win32_registry.dart');

      // Expanded should replace %LOCALAPPDATA% with an actual system path.
      check(subkey.getStringValue('TestValue', expandPaths: true)!).which(
        (it) =>
            it
              ..not((it) => it.contains('%LOCALAPPDATA%'))
              ..endsWith(r'\win32_registry\win32_registry.dart'),
      );

      subkey.deleteValue('TestValue');
      check(subkey.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      hkcu
        ..deleteKey(subkeyName)
        ..close();
    });

    test('monitor registry key changes', () async {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const keyName = 'Win32RegistryTestKey';
      final key = hkcu.createKey(keyName);
      const subkeyName = 'Win32RegistryTestSubKey';
      final subkey = key.createKey(subkeyName);

      var numberOfEvents = 0;
      final subscription = key.onChanged().listen((_) => numberOfEvents++);

      // Allow time for the subscription to be set up.
      await Future.delayed(const Duration(milliseconds: 50));

      // Set some string value to the registry to simulate a change.
      const value = RegistryValue.string('TestValue', 'Some text here.');
      key.createValue(value);

      // Yield control to the Dart event loop to allow time for the registry key
      // change to be detected.
      await Future.delayed(const Duration(milliseconds: 10));

      // Expect the stream to emit exactly one event.
      check(numberOfEvents).equals(1);

      // Set some int value to the registry to simulate another change.
      const intValue = RegistryValue.int32('TestIntValue', 1234);
      key.createValue(intValue);
      await Future.delayed(const Duration(milliseconds: 10));

      // Expect the stream to emit exactly one event.
      check(numberOfEvents).equals(2);

      // Set some string value to the subkey.
      subkey.createValue(value);
      await Future.delayed(const Duration(milliseconds: 10));

      // The changes in the subkey should not trigger an event.
      check(numberOfEvents).equals(2);

      await subscription.cancel();
      key.deleteValue('TestValue');
      check(key.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      key.deleteKey(subkeyName);
      check(key.subkeyNames.contains(subkeyName)).isFalse();
      key.close();
      hkcu
        ..deleteKey(keyName)
        ..close();
    });

    test('monitor registry key changes (including subkey)', () async {
      final hkcu = Registry.openPath(RegistryHive.currentUser);
      const keyName = 'Win32RegistryTestKey';
      final key = hkcu.createKey(keyName);
      const subkeyName = 'Win32RegistryTestSubKey';
      final subkey = key.createKey(subkeyName);

      var numberOfEvents = 0;
      final subscription = key
          .onChanged(includeSubkeys: true)
          .listen((_) => numberOfEvents++);

      // Allow time for the subscription to be set up.
      await Future.delayed(const Duration(milliseconds: 50));

      // Set some string value to the registry to simulate a change.
      const value = RegistryValue.string('TestValue', 'Some text here.');
      key.createValue(value);

      // Yield control to the Dart event loop to allow time for the registry key
      // change to be detected.
      await Future.delayed(const Duration(milliseconds: 10));

      // Expect the stream to emit exactly one event.
      check(numberOfEvents).equals(1);

      // Set some int value to the registry to simulate another change.
      const intValue = RegistryValue.int32('TestIntValue', 1234);
      key.createValue(intValue);
      await Future.delayed(const Duration(milliseconds: 10));

      // Expect the stream to emit exactly one event.
      check(numberOfEvents).equals(2);

      // Set some string value to the subkey to simulate another change.
      subkey.createValue(value);
      await Future.delayed(const Duration(milliseconds: 10));

      // The changes in the subkey should trigger an event.
      check(numberOfEvents).equals(3);

      await subscription.cancel();
      key.deleteValue('TestValue');
      check(key.values.where((e) => e.name == 'TestValue')).isEmpty();
      subkey.close();
      key.deleteKey(subkeyName);
      check(key.subkeyNames.contains(subkeyName)).isFalse();
      key.close();
      hkcu
        ..deleteKey(keyName)
        ..close();
    });
  });
}
