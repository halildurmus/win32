import 'package:win32_registry/win32_registry.dart';

void main() {
  final hkcu = Registry.currentUser;
  const subkeyName = 'DemoTestKey';
  final subkey = hkcu.createKey(subkeyName);

  final dword =
      const RegistryValue('TestDWORD', RegistryValueType.int32, 0xFACEFEED);
  subkey.createValue(dword);

  final qword = const RegistryValue(
      'TestQWORD', RegistryValueType.int64, 0x0123456789ABCDEF);
  subkey.createValue(qword);

  final string = const RegistryValue('TestString', RegistryValueType.string,
      'The human race has one really effective weapon, and that is laughter.');
  subkey
    ..createValue(string)
    ..close();
  hkcu.close();
}
