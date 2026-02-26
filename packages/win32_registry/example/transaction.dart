import 'package:win32_registry/win32_registry.dart';

void main() {
  const subkeyPath = r'Software\Win32Registry';
  final tx = Transaction();
  RegistryKey? key;

  try {
    key =
        CURRENT_USER.create(
            subkeyPath,
            config: .new(access: .write, create: true, transaction: tx),
          )
          ..setValue('Safe', const .string('Yes'))
          ..setValue('Version', const .dword(1));
    tx.commit();
  } finally {
    tx.close();
    if (key != null) {
      key.close();
      CURRENT_USER.removeSubkey(subkeyPath);
    }
  }
}
