import 'package:win32_registry/win32_registry.dart';

void main() {
  const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';

  final key = Registry.open(RegistryHive.localMachine, path: keyPath);

  print('Values:\n');
  for (final value in key.values) {
    print(' - ${value.toString()}');
  }

  print('\n----------------------------------------'
      '----------------------------------------\n');

  print('Subkeys:\n');
  for (final subkey in key.subkeyNames) {
    print(' - $subkey');
  }
  key.close();
}
