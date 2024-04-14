// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

/// One of the predefined keys that point into one or more hives that Windows
/// stores.
///
/// An application can use handles to these keys as entry points to the
/// Registry. Predefined keys help an application navigate in the registry and
/// make it possible to develop tools that allow a system administrator to
/// manipulate categories of data. Applications that add data to the registry
/// should always work within the framework of predefined keys, so
/// administrative tools can find and use the new data.
enum RegistryHive {
  /// Registry entries subordinate to this key define the physical state of the
  /// computer, including data about the bus type, system memory, and installed
  /// hardware and software.
  localMachine(HKEY_LOCAL_MACHINE),

  /// Registry entries subordinate to this key define the preferences of the
  /// current user. These preferences include the settings of environment
  /// variables, data about program groups, colors, printers, network
  /// connections, and application preferences. This key makes it easier to
  /// establish the current user's settings; the key maps to the current user's
  /// branch in `HKEY_USERS`.
  currentUser(HKEY_CURRENT_USER),

  /// Registry entries subordinate to this key define the default user
  /// configuration for new users on the local computer and the user
  /// configuration for the current user.
  allUsers(HKEY_USERS),

  /// Registry entries subordinate to this key define types (or classes) of
  /// documents and the properties associated with those types. Shell and COM
  /// applications use the information stored under this key.
  classesRoot(HKEY_CLASSES_ROOT),

  /// Contains information about the current hardware profile of the local
  /// computer system. The information under `HKEY_CURRENT_CONFIG` describes
  /// only the differences between the current hardware configuration and the
  /// standard configuration.
  currentConfig(HKEY_CURRENT_CONFIG),

  /// Registry entries subordinate to this key allow you to access performance
  /// data. The data is not actually stored in the registry; the registry
  /// functions cause the system to collect the data from its source.
  performanceData(HKEY_PERFORMANCE_DATA);

  /// Returns the handle for a predefined key.
  final int win32Value;

  const RegistryHive(this.win32Value);
}
