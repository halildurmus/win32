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
    key.close();
  });

  test('Test key types 1', () {
    // Uses key types that should exist in any standard Windows configuration.
    final env =
        Registry.openPath(RegistryHive.currentUser, path: 'Environment');
    expect(
        env.getValue('Path')?.type, equals(RegistryValueType.unexpandedString));
    expect(env.getValue('Path')?.type.win32Value, equals(REG_EXPAND_SZ));
    expect(env.getValue('Path')?.type.win32Type, equals('REG_EXPAND_SZ'));

    expect(env.getValue('PROMPT')?.type, equals(RegistryValueType.string));
    expect(env.getValue('PROMPT')?.type.win32Value, equals(REG_SZ));
    expect(env.getValue('PROMPT')?.type.win32Type, equals('REG_SZ'));
    env.close();
  });

  test('Test key types 2', () {
    // Uses key types that should exist in any standard Windows configuration.
    final console =
        Registry.openPath(RegistryHive.currentUser, path: 'Console');
    expect(
        console.getValue('FullScreen')?.type, equals(RegistryValueType.int32));
    expect(console.getValue('FullScreen')?.type.win32Value, equals(REG_DWORD));
    expect(console.getValue('FullScreen')?.type.win32Type, equals('REG_DWORD'));
    console.close();
  });

  test('Test key types 3', () {
    // Uses key types that should exist in any standard Windows configuration.
    final windowMetrics = Registry.openPath(RegistryHive.currentUser,
        path: r'Control Panel\Desktop\WindowMetrics');
    expect(windowMetrics.getValue('IconFont')?.type,
        equals(RegistryValueType.binary));
    expect(windowMetrics.getValue('IconFont')?.type.win32Value,
        equals(REG_BINARY));
    expect(windowMetrics.getValue('IconFont')?.type.win32Type,
        equals('REG_BINARY'));
    windowMetrics.close();
  });

  test('Test key types 4', () {
    // Uses key types that should exist in any standard Windows configuration.
    final currentVersion = Registry.openPath(RegistryHive.localMachine,
        path: r'SOFTWARE\Microsoft\Windows NT\CurrentVersion');
    expect(currentVersion.getValue('InstallTime')?.type,
        equals(RegistryValueType.int64));
    currentVersion.close();
  });

  test('Test missing key', () {
    // Uses key that should be missing.
    expect(
        () => Registry.openPath(RegistryHive.localMachine,
            path: r'SOFTWARE\Dart\Missing\Key'),
        throwsA(isA<WindowsException>().having((ex) => ex.hr, 'hr',
            equals(HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND)))));
  });

  test('Test missing value', () {
    // Uses key that should be present and value that should be missing.
    final currentVersion = Registry.openPath(RegistryHive.localMachine,
        path: r'SOFTWARE\Microsoft\Windows NT\CurrentVersion');
    expect(currentVersion.getValue('NotepadPlusPlus'), isNull);
  });

  test('Create a subkey', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    expect(hkcu.subkeyNames.contains(subkeyName), false);
    hkcu.createKey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), true);
    hkcu.deleteKey(subkeyName);
    expect(hkcu.subkeyNames.contains(subkeyName), false);
  });

  test('Create a DWORD value (REG_DWORD)', () {
    final hkcu = Registry.currentUser;
    const subkeyName = 'Win32RegistryTestKey';
    final subkey = hkcu.createKey(subkeyName);
    final value =
        const RegistryValue('TestValue', RegistryValueType.int32, 1234);
    subkey.createValue(value);
    expect(subkey.values.where((v) => v.name == 'TestValue').first, value);

    expect(subkey.getValueAsInt('TestValue'), 1234);

    subkey.deleteValue('TestValue');
    expect(subkey.values.where((elem) => elem.name == 'TestValue'), isEmpty);
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
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.name, 'TestValue');
    expect(retrievedValue?.type, RegistryValueType.int64);
    expect(retrievedValue?.data as int, 0xFEEDFACECAFEBEEF);

    expect(key.getValueAsInt('TestValue'), 0xFEEDFACECAFEBEEF);

    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
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
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueType.string);
    final data = retrievedValue?.data as String;
    expect(data, 'Some text here.');

    expect(key.getValueAsString('TestValue'), 'Some text here.');
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
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
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueType.stringArray);
    final array = retrievedValue?.data as List<String>;
    expect(array.length, 3);
    expect(array.first, 'One');
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
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
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueType.binary);
    final array = retrievedValue?.data as List<int>;
    expect(array.length, 4);
    expect(array.first, 0xFF);
    expect(array.last, 0xAA);
    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
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
    expect(retrievedValue, isNotNull);
    expect(retrievedValue?.type, RegistryValueType.unexpandedString);

    // Unexpanded should be as stored
    expect(key.getValueAsString('TestValue', expandPaths: false),
        r'%SystemRoot%\System32\MirrorDrvCompat.dll');

    // Expanded should replace %SystemRoot% with an actual system path
    expect(key.getValueAsString('TestValue', expandPaths: true),
        isNot(contains('%SystemRoot%')));
    expect(key.getValueAsString('TestValue', expandPaths: true),
        endsWith(r'\System32\MirrorDrvCompat.dll'));

    key.deleteValue('TestValue');
    expect(key.values.where((elem) => elem.name == 'TestValue'), isEmpty);
    hkcu.deleteKey(keyName);
  });

  test('Rename a subkey', () {
    final hkcu = Registry.openPath(RegistryHive.currentUser)
      ..createKey('Win32RegistryTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isTrue);

    hkcu.renameSubkey('Win32RegistryTestKey', 'MyNewTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isFalse);
    expect(hkcu.subkeyNames.contains('MyNewTestKey'), isTrue);

    hkcu.deleteKey('MyNewTestKey');
    expect(hkcu.subkeyNames.contains('Win32RegistryTestKey'), isFalse);
    expect(hkcu.subkeyNames.contains('MyNewTestKey'), isFalse);
  });

  test('Create a subkey without write access should fail', () {
    final hkcu = Registry.openPath(RegistryHive.localMachine);
    const subkeyName = 'Win32RegistryTestKey';
    expect(hkcu.subkeyNames.contains(subkeyName), false);
    expect(() => hkcu.createKey(subkeyName), throwsA(isA<WindowsException>()));
    expect(hkcu.subkeyNames.contains(subkeyName), false);
  });
}
