// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('LocalStorage can identify a path', () {
    final path = LocalStorage.path;
    check(path)
      ..isNotEmpty()
      ..contains('dart-windows_winmd')
      ..not(it()..endsWith('\\'));
  });

  test('Path should stay constant within same invocation', () {
    final path1 = LocalStorage.path;
    final path2 = LocalStorage.path;
    check(path1).equals(path2);
  });
}
