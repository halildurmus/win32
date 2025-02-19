import 'dart:typed_data';

import 'package:win32_registry/win32_registry.dart';

void main() {
  final hkcu = Registry.currentUser;
  const subkeyName = 'DemoTestKey';
  final subkey = hkcu.createKey(subkeyName);

  const dword = RegistryValue.int32('TestDWORD', 0xFACEFEED);
  subkey.createValue(dword);

  const qword = RegistryValue.int64('TestQWORD', 0x0123456789ABCDEF);
  subkey.createValue(qword);

  const string = RegistryValue.string(
    'TestString',
    'The human race has one really effective weapon, and that is laughter.',
  );
  subkey.createValue(string);

  const stringArray = RegistryValue.stringArray('TestStringArray', [
    'One',
    'Two',
    'Three',
  ]);
  subkey.createValue(stringArray);

  const unexpandedString = RegistryValue.unexpandedString(
    'TestUnexpandedString',
    r'%SystemRoot%\System32',
  );
  subkey.createValue(unexpandedString);

  final binary = RegistryValue.binary(
    'TestBinary',
    Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]),
  );
  subkey.createValue(binary);

  const none = RegistryValue.none('TestNone');
  subkey
    ..createValue(none)
    ..close();

  hkcu.close();
}
