// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

void main() {
  final packages = LocalStorage.packages;
  if (packages.isEmpty) {
    print('No packages found in local storage.');
    return;
  }

  print('Found ${packages.length} package(s) in local storage:');
  for (final package in LocalStorage.packages) {
    print(' - $package');
  }
}
