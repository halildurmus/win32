// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32_registry/win32_registry.dart';

class WindowsSystemConfiguration {
  static bool get isDarkMode {
    try {
      final registryKey = Registry.openPath(RegistryHive.currentUser,
          path:
              r'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize');

      // Default to light, since older versions of Windows that don't have this
      // key have no dark theme.
      final appsDarkTheme =
          registryKey.getValueAsInt('AppsUseLightTheme') == 0x00;

      registryKey.close();
      return appsDarkTheme;
    } on Exception {
      // Registry security issue or some other unknown problem
      return false;
    }
  }
}
