import 'package:win32/win32.dart';

/// One of the predefined keys that point into one or more hives that Windows
/// stores.
///
/// An application can use handles to these keys as entry points to the
/// registry. Predefined keys help an application navigate in the registry and
/// make it possible to develop tools that allow a system administrator to
/// manipulate categories of data. Applications that add data to the registry
/// should always work within the framework of predefined keys, so
/// administrative tools can find and use the new data.
enum RegistryHive {
  /// Registry entries subordinate to this key define the physical state of the
  /// computer, including data about the bus type, system memory, and installed
  /// hardware and software.
  localMachine,

  /// Registry entries subordinate to this key define the preferences of the
  /// current user. These preferences include the settings of environment
  /// variables, data about program groups, colors, printers, network
  /// connections, and application preferences. This key makes it easier to
  /// establish the current user's settings; the key maps to the current user's
  /// branch in `HKEY_USERS`.
  currentUser,

  /// Registry entries subordinate to this key define the default user
  /// configuration for new users on the local computer and the user
  /// configuration for the current user.
  allUsers,

  /// Registry entries subordinate to this key define types (or classes) of
  /// documents and the properties associated with those types. Shell and COM
  /// applications use the information stored under this key.
  classesRoot,

  /// Contains information about the current hardware profile of the local
  /// computer system. The information under `HKEY_CURRENT_CONFIG` describes
  /// only the differences between the current hardware configuration and the
  /// standard configuration.
  currentConfig,

  /// Registry entries subordinate to this key allow you to access performance
  /// data. The data is not actually stored in the registry; the registry
  /// functions cause the system to collect the data from its source.
  performanceData;

  /// Returns the handle for a predefined key.
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
