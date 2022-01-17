import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  test('Basic test', () {
    // In any working Windows configuration, this key should have a sizable
    // number of values.
    final key = Registry.openPath(RegistryHive.localMachine,
        path: r'Software\Microsoft\Windows NT\CurrentVersion');

    expect(key.values.length, greaterThan(0));
  });

  test('Create a subkey', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    expect(hkcu.subkeyNames.contains(subkeyName), false);
    hkcu.createSubkey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), true);
    hkcu.deleteSubkey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), false);
  });

  test('Create a DWORD value (REG_DWORD)', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    final subkey = hkcu.createSubkey(subkeyName);
    final value =
        const RegistryValue('TestValue', RegistryValueKind.int32, 1234);
    subkey.createValue(value);
    expect(subkey.values.where((v) => v.name == 'TestValue').first, value);

    expect(subkey.getValueAsInt('TestValue'), 1234);

    subkey.deleteValue('TestValue');
    expect(subkey.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(subkeyName);
  });

  test('Create a QWORD value (REG_QWORD)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createSubkey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueKind.int64, 0xFEEDFACECAFEBEEF);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.name, 'TestValue');
    expect(retrievedValue?.type, RegistryValueKind.int64);
    expect(retrievedValue?.data as int, 0xFEEDFACECAFEBEEF);

    expect(key.getValueAsInt('TestValue'), 0xFEEDFACECAFEBEEF);

    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(keyName);
  });

  test('Create a string value (REG_SZ)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createSubkey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueKind.string, 'Some text here.');
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueKind.string);
    final data = retrievedValue?.data as String;
    expect(data, 'Some text here.');

    expect(key.getValueAsString('TestValue'), 'Some text here.');
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(keyName);
  });

  test('Create a string array (REG_MULTI_SZ)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createSubkey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueKind.stringArray, ['One', 'Two', 'Three']);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueKind.stringArray);
    final array = retrievedValue?.data as List<String>;
    expect(array.length, 3);
    expect(array.first, 'One');
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(keyName);
  });

  test('Create a binary value (REG_BINARY)', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser);
    const keyName = 'Win32RegistryTestKey';
    final key = hkcu.createSubkey(keyName);
    final value = const RegistryValue(
        'TestValue', RegistryValueKind.binary, [0xFF, 0x33, 0x77, 0xAA]);
    key.createValue(value);
    final retrievedValue = key.getValue('TestValue');
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueKind.binary);
    final array = retrievedValue?.data as List<int>;
    expect(array.length, 4);
    expect(array.first, 0xFF);
    expect(array.last, 0xAA);
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(keyName);
  });

  test('Rename a subkey', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser)
      ..createSubkey('Win32RegistryTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isTrue);

    hkcu.renameSubkey('Win32RegistryTestKey', 'MyNewTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isFalse);
    expect(hkcu.subkeyNames.contains('MyNewTestKey'), isTrue);

    hkcu.deleteSubkey('MyNewTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isFalse);
    expect(hkcu.subkeyNames.contains('MyNewTestKey'), isFalse);
  });

  test('Create a subkey without write access should fail', () {
    final hkcu = Registry.openPath(RegistryHive.localMachine);
    const subkeyName = 'Win32RegistryTestKey';
    expect(hkcu.subkeyNames.contains(subkeyName), false);
    expect(
        () => hkcu.createSubkey(subkeyName), throwsA(isA<WindowsException>()));
    expect(hkcu.subkeyNames.contains(subkeyName), false);
  });
}
