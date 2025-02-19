@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('Registry', () {
    group('openPath', () {
      test('opens a registry key successfully', () {
        // In any working Windows configuration, this key should have a sizable
        // number of values.
        const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
        final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);
        check(key.values.length).isGreaterThan(0);
        key.close();
      });

      test('throws due to missing key', () {
        check(
              () => Registry.openPath(
                RegistryHive.localMachine,
                path: r'SOFTWARE\Dart\Missing\Key',
              ),
            )
            .throws<WindowsException>()
            .has((e) => e.hr, 'hr')
            .equals(HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND));
      });
    });

    test('allUsers', () {
      late RegistryKey key;
      check(() => key = Registry.allUsers).returnsNormally();
      key.close();
    });

    test('classesRoot', () {
      late RegistryKey key;
      check(() => key = Registry.classesRoot).returnsNormally();
      key.close();
    });

    test('currentConfig', () {
      late RegistryKey key;
      check(() => key = Registry.currentConfig).returnsNormally();
      key.close();
    });

    test('currentUser', () {
      late RegistryKey key;
      check(() => key = Registry.currentUser).returnsNormally();
      key.close();
    });

    test('localMachine', () {
      late RegistryKey key;
      check(() => key = Registry.localMachine).returnsNormally();
      key.close();
    });
  });
}
