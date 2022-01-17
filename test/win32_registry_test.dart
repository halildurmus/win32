import 'package:test/test.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  test('Basic test', () {
    // In any working Windows configuration, this key should have a sizable
    // number of values.
    final key = Registry.open(RegistryHive.localMachine,
        subKey: r'Software\Microsoft\Windows NT\CurrentVersion');

    expect(key.values.length, greaterThan(0));
  });

  test('Create subkey', () {
    final hkcu = Registry.open(RegistryHive.currentUser,
        accessRights: AccessRights.allAccess);
    const subkeyName = 'Win32RegistryTestKey';
    expect(hkcu.subkeyNames.contains(subkeyName), false);
    hkcu.createSubkey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), true);
    hkcu.deleteSubkey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), false);
  });

  test('Add DWORD value', () {
    final hkcu = Registry.open(RegistryHive.currentUser,
        accessRights: AccessRights.allAccess);
    const subkeyName = 'Win32RegistryTestKey';
    final subkey = hkcu.createSubkey(subkeyName);
    final value =
        const RegistryValue('TestValue', RegistryValueKind.int32, 1234);
    subkey.createValue(value);
    expect(subkey.values.where((v) => v.name == 'TestValue').first, value);
    subkey.deleteValue('TestValue');
    expect(subkey.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(subkeyName);
  });

  test('Add QWORD value', () {
    final hkcu = Registry.open(RegistryHive.currentUser,
        accessRights: AccessRights.allAccess);
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
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteSubkey(keyName);
  });
}
