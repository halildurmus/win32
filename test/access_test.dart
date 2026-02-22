import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryAccess', () {
    test('predefined access rights have correct values', () {
      check(RegistryAccess.notify.value).equals(KEY_NOTIFY);
      check(RegistryAccess.read.value).equals(KEY_READ);
      check(RegistryAccess.write.value).equals(KEY_WRITE);
      check(RegistryAccess.readWrite.value).equals(KEY_READ | KEY_WRITE);
      check(RegistryAccess.all.value).equals(KEY_ALL_ACCESS);
    });

    test('combining access rights with | operator', () {
      final combined = RegistryAccess.read | RegistryAccess.write;
      check(combined.value).equals(KEY_READ | KEY_WRITE);
    });
  });
}
