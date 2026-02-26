import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryOpenOptions', () {
    test('predefined options have correct values', () {
      check(
        RegistryOpenOptions.nonVolatile.value,
      ).equals(REG_OPTION_NON_VOLATILE);
      check(RegistryOpenOptions.volatile.value).equals(REG_OPTION_VOLATILE);
      check(
        RegistryOpenOptions.createLink.value,
      ).equals(REG_OPTION_CREATE_LINK);
      check(
        RegistryOpenOptions.backupRestore.value,
      ).equals(REG_OPTION_BACKUP_RESTORE);
      check(RegistryOpenOptions.openLink.value).equals(REG_OPTION_OPEN_LINK);
      check(
        RegistryOpenOptions.dontVirtualize.value,
      ).equals(REG_OPTION_DONT_VIRTUALIZE);
    });

    test('combining options with | operator', () {
      final combined =
          RegistryOpenOptions.nonVolatile | RegistryOpenOptions.volatile;
      check(
        combined.value,
      ).equals(REG_OPTION_NON_VOLATILE | REG_OPTION_VOLATILE);
    });
  });
}
