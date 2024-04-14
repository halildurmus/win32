// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can find mdmerge.exe', () {
    final path = MdMerge.executablePath;
    check(path)
      ..isNotEmpty()
      ..endsWith('mdmerge.exe');
  });
}
