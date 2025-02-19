import 'package:win32_registry/win32_registry.dart';

void main() {
  const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
  final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);

  print('Values:');
  for (final registryValue in key.values) {
    final RegistryValue(:name, :type) = registryValue;
    switch (registryValue) {
      case BinaryValue(:final value):
        print(' - $name ($type): $value');
      case Int32Value(:final value) || Int64Value(:final value):
        print(' - $name ($type): $value');
      case LinkValue(:final value) ||
          StringValue(:final value) ||
          UnexpandedStringValue(:final value):
        print(' - $name ($type): $value');
      case StringArrayValue(:final value):
        print(' - $name ($type): $value');
      case NoneValue():
        print(' - $name ($type)');
    }
  }

  print('\n${'-' * 80}\n');

  print('Subkeys:');
  for (final subkey in key.subkeyNames) {
    print(' - $subkey');
  }

  key.close();
}
