import 'package:win32_registry/win32_registry.dart';

void main() {
  const subKey = r'Software\Microsoft\Windows NT\CurrentVersion';

  final key = Registry.open(RegistryHive.localMachine, subKey: subKey);

  print('Values:');
  for (final value in key.values) {
    print(value.toString());
  }

  print('Subkeys:');
  for (final subkey in key.subkeyNames) {
    print(subkey);
  }
  key.close();
}
