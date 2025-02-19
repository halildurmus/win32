import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryHive', () {
    test('classesRoot', () {
      const classesRoot = RegistryHive.classesRoot;
      check(classesRoot.value).equals(HKEY_CLASSES_ROOT);
      check(classesRoot.toString()).equals('HKEY_CLASSES_ROOT');
    });

    test('currentUser', () {
      const currentUser = RegistryHive.currentUser;
      check(currentUser.value).equals(HKEY_CURRENT_USER);
      check(currentUser.toString()).equals('HKEY_CURRENT_USER');
    });

    test('localMachine', () {
      const localMachine = RegistryHive.localMachine;
      check(localMachine.value).equals(HKEY_LOCAL_MACHINE);
      check(localMachine.toString()).equals('HKEY_LOCAL_MACHINE');
    });

    test('allUsers', () {
      const allUsers = RegistryHive.allUsers;
      check(allUsers.value).equals(HKEY_USERS);
      check(allUsers.toString()).equals('HKEY_USERS');
    });

    test('performanceData', () {
      const performanceData = RegistryHive.performanceData;
      check(performanceData.value).equals(HKEY_PERFORMANCE_DATA);
      check(performanceData.toString()).equals('HKEY_PERFORMANCE_DATA');
    });

    test('currentConfig', () {
      const currentConfig = RegistryHive.currentConfig;
      check(currentConfig.value).equals(HKEY_CURRENT_CONFIG);
      check(currentConfig.toString()).equals('HKEY_CURRENT_CONFIG');
    });

    test('fromWin32', () {
      check(
        RegistryHive.fromWin32(HKEY_CLASSES_ROOT),
      ).equals(RegistryHive.classesRoot);
      check(
        RegistryHive.fromWin32(HKEY_CURRENT_USER),
      ).equals(RegistryHive.currentUser);
      check(
        RegistryHive.fromWin32(HKEY_LOCAL_MACHINE),
      ).equals(RegistryHive.localMachine);
      check(RegistryHive.fromWin32(HKEY_USERS)).equals(RegistryHive.allUsers);
      check(
        RegistryHive.fromWin32(HKEY_PERFORMANCE_DATA),
      ).equals(RegistryHive.performanceData);
      check(
        RegistryHive.fromWin32(HKEY_CURRENT_CONFIG),
      ).equals(RegistryHive.currentConfig);
      check(() => RegistryHive.fromWin32(0))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Unknown registry hive: 0');
    });
  });
}
