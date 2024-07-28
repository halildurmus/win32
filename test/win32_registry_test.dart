@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  test('Basic test', () {
    // In any working Windows configuration, this key should have a sizable
    // number of values.
    const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
    final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);
    check(key.values.length).isGreaterThan(0);
    key.close();
  });

  test('Test key types 1', () {
    // Uses key types that should exist in any standard Windows configuration.
    final env =
        Registry.openPath(RegistryHive.currentUser, path: 'Environment');
    final value = env.getValue('Path');
    check(value).isNotNull();
    final type = value!.type;
    check(type).equals(RegistryValueType.unexpandedString);
    check(type.win32Value).equals(REG_VALUE_TYPE.REG_EXPAND_SZ);
    check(type.win32Type).equals('REG_EXPAND_SZ');
    env.close();
  });

  test('Test key types 2', () {
    // Uses key types that should exist in any standard Windows configuration.
    final console =
        Registry.openPath(RegistryHive.currentUser, path: 'Console');
    final value = console.getValue('FullScreen');
    check(value).isNotNull();
    final type = value!.type;
    check(type).equals(RegistryValueType.int32);
    check(type.win32Value).equals(REG_VALUE_TYPE.REG_DWORD);
    check(type.win32Type).equals('REG_DWORD');
    console.close();
  });

  test('Test key types 3', () {
    // Uses key types that should exist in any standard Windows configuration.
    const keyPath = r'Control Panel\Desktop\WindowMetrics';
    final windowMetrics =
        Registry.openPath(RegistryHive.currentUser, path: keyPath);
    final value = windowMetrics.getValue('IconFont');
    check(value).isNotNull();
    final type = value!.type;
    check(type).equals(RegistryValueType.binary);
    check(type.win32Value).equals(REG_VALUE_TYPE.REG_BINARY);
    check(type.win32Type).equals('REG_BINARY');
    windowMetrics.close();
  });

  test('Test key types 4', () {
    // Uses key types that should exist in any standard Windows configuration.
    const keyPath = r'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
    final ntCurrentVersion =
        Registry.openPath(RegistryHive.localMachine, path: keyPath);
    final value = ntCurrentVersion.getValue('InstallTime');
    check(value).isNotNull();
    final type = value!.type;
    check(type).equals(RegistryValueType.int64);
    check(type.win32Value).equals(REG_VALUE_TYPE.REG_QWORD);
    check(type.win32Type).equals('REG_QWORD');
    ntCurrentVersion.close();
  });

  test('Test key types 5', () {
    // Uses key types that should exist in any standard Windows configuration.
    const keyPath = r'SOFTWARE\Microsoft\Windows\CurrentVersion';
    final currentVersion =
        Registry.openPath(RegistryHive.localMachine, path: keyPath);
    final value = currentVersion.getValue('ProgramFilesDir');
    check(value).isNotNull();
    final type = value!.type;
    check(type).equals(RegistryValueType.string);
    check(type.win32Value).equals(REG_VALUE_TYPE.REG_SZ);
    check(type.win32Type).equals('REG_SZ');
    currentVersion.close();
  });

  test('Test missing key', () {
    // Uses key that should be missing.
    check(() => Registry.openPath(
              RegistryHive.localMachine,
              path: r'SOFTWARE\Dart\Missing\Key',
            ))
        .throws<WindowsException>()
        .has((e) => e.hr, 'hr')
        .equals(HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_FILE_NOT_FOUND));
  });

  test('Test missing value', () {
    // Uses key that should be present and value that should be missing.
    const keyPath = r'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
    final currentVersion =
        Registry.openPath(RegistryHive.localMachine, path: keyPath);
    check(currentVersion.getValue('NotepadPlusPlus')).isNull();
  });

  test('Create a subkey', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
    hkcu.createKey(subkeyName);
    check(hkcu.subkeyNames.contains(subkeyName)).isTrue();
    hkcu.deleteKey(subkeyName);
    check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
  });

  test('Create a DWORD value (REG_DWORD)', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    final subkey = hkcu.createKey(subkeyName);
    final value =
        const RegistryValue('TestValue', RegistryValueType.int32, 1234);
    subkey.createValue(value);
    check(subkey.values.where((v) => v.name == 'TestValue').first)
        .equals(value);
    check(subkey.getValueAsInt('TestValue')).equals(1234);
    subkey.deleteValue('TestValue');
    check(subkey.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(subkeyName);
  });

  test('Create a QWORD value (REG_QWORD)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createKey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueType.int64, 0xFEEDFACECAFEBEEF);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    check(retrievedValue).isNotNull();
    check(retrievedValue!.name).equals('TestValue');
    check(retrievedValue.type).equals(RegistryValueType.int64);
    check(retrievedValue.data as int).equals(0xFEEDFACECAFEBEEF);
    check(key.getValueAsInt('TestValue')).equals(0xFEEDFACECAFEBEEF);
    key.deleteValue('TestValue');
    check(key.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(keyName);
  });

  test('Create a string value (REG_SZ)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createKey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueType.string, 'Some text here.');
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    check(retrievedValue).isNotNull();
    check(retrievedValue!.type).equals(RegistryValueType.string);
    final data = retrievedValue.data as String;
    check(data).equals('Some text here.');
    check(key.getValueAsString('TestValue')).equals('Some text here.');
    key.deleteValue('TestValue');
    check(key.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(keyName);
  });

  test('Create a string array (REG_MULTI_SZ)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createKey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueType.stringArray, ['One', 'Two', 'Three']);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    check(retrievedValue).isNotNull();
    check(retrievedValue!.type).equals(RegistryValueType.stringArray);
    final array = retrievedValue.data as List<String>;
    check(array.length).equals(3);
    check(array.first).equals('One');
    key.deleteValue('TestValue');
    check(key.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(keyName);
  });

  test('Create a binary value (REG_BINARY)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createKey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueType.binary, [0xFF, 0x33, 0x77, 0xAA]);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    check(retrievedValue).isNotNull();
    check(retrievedValue!.type).equals(RegistryValueType.binary);
    final array = retrievedValue.data as List<int>;
    check(array.length).equals(4);
    check(array.first).equals(0xFF);
    check(array.last).equals(0xAA);
    key.deleteValue('TestValue');
    check(key.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(keyName);
  });

  test('Create an expanded string value (REG_EXPAND_SZ)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createKey(keyName);
    final value = const RegistryValue(
        'TestValue',
        RegistryValueType.unexpandedString,
        r'%SystemRoot%\System32\MirrorDrvCompat.dll');
    key.createValue(value);

    final retrievedValue = key.getValue('TestValue', expandPaths: false);
    check(retrievedValue).isNotNull();
    check(retrievedValue!.type).equals(RegistryValueType.unexpandedString);

    // Unexpanded should be as stored
    check(key.getValueAsString('TestValue', expandPaths: false))
        .equals(r'%SystemRoot%\System32\MirrorDrvCompat.dll');

    // Expanded should replace %SystemRoot% with an actual system path
    check(key.getValueAsString('TestValue', expandPaths: true)!)
        .not((it) => it.contains('%SystemRoot%'));

    check(key.getValueAsString('TestValue', expandPaths: true)!)
        .endsWith(r'\System32\MirrorDrvCompat.dll');

    key.deleteValue('TestValue');
    check(key.values.where((elem) => elem.name == 'TestValue')).isEmpty();
    hkcu.deleteKey(keyName);
  });

  test('Rename a subkey', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser)
      ..createKey('Win32RegistryTestKey');
    check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isTrue();
    hkcu.renameSubkey('Win32RegistryTestKey', 'MyNewTestKey');
    check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isFalse();
    check(hkcu.subkeyNames.contains('MyNewTestKey')).isTrue();
    hkcu.deleteKey('MyNewTestKey');
    check(hkcu.subkeyNames.contains('Win32RegistryTestKey')).isFalse();
    check(hkcu.subkeyNames.contains('MyNewTestKey')).isFalse();
  });

  test('Create a subkey without write access should fail', () {
    final hkcu = Registry.openPath(RegistryHive.localMachine);
    const subkeyName = 'Win32RegistryTestKey';
    check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
    check(() => hkcu.createKey(subkeyName)).throws<WindowsException>();
    check(hkcu.subkeyNames.contains(subkeyName)).isFalse();
  });
}
