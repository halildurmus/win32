import 'package:win32/win32.dart';

/// One of the root keys that point into one or more hives that Windows stores.
enum RegistryHive {
  localMachine,
  currentUser,
  allUsers,
  classesRoot,
  currentConfig,
  performanceData;

  int get win32Value {
    switch (this) {
      case RegistryHive.localMachine:
        return HKEY_LOCAL_MACHINE;
      case RegistryHive.currentUser:
        return HKEY_CURRENT_USER;
      case RegistryHive.allUsers:
        return HKEY_USERS;
      case RegistryHive.classesRoot:
        return HKEY_CLASSES_ROOT;
      case RegistryHive.currentConfig:
        return HKEY_CURRENT_CONFIG;
      case RegistryHive.performanceData:
        return HKEY_PERFORMANCE_DATA;
    }
  }
}
