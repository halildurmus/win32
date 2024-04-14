// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32_registry/win32_registry.dart';

void main() {
  const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
  final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);

  print('Values:');
  for (final value in key.values) {
    print(' - ${value.toString()}');
  }

  print('\n${'-' * 80}\n');

  print('Subkeys:');
  for (final subkey in key.subkeyNames) {
    print(' - $subkey');
  }

  key.close();
}
