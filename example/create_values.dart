import 'package:win32_registry/win32_registry.dart';

void main() {
  final hkcu = Registry.open(RegistryHive.currentUser,
      accessRights: AccessRights.allAccess);
  const subkeyName = 'DemoTestKey';
  final subkey = hkcu.createSubkey(subkeyName);

  final dword =
      const RegistryValue('TestDWORD', RegistryValueKind.int32, 0xFACEFEED);
  subkey.createValue(dword);

  final qword = const RegistryValue(
      'TestQWORD', RegistryValueKind.int64, 0x0123456789ABCDEF);
  subkey.createValue(qword);

  final string = const RegistryValue('TestString', RegistryValueKind.string,
      'The human race has one really effective weapon, and that is laughter.');
  subkey.createValue(string);
}
