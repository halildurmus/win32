// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  test('ClipboardException', () {
    const exception = ClipboardException('Test message');
    check(exception.toString()).equals('ClipboardException: Test message');
  });
}
