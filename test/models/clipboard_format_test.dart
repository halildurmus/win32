// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  group('ClipboardFormat', () {
    test('text', () {
      const format = ClipboardFormat.text;
      check(format.formatId).equals(CLIPBOARD_FORMAT.CF_UNICODETEXT);
      check(format.name).equals('CF_UNICODETEXT');
      check(format.toString())
          .equals('ClipboardFormat(13, name: CF_UNICODETEXT)');
    });

    test('toString', () {
      const format =
          ClipboardFormat(CLIPBOARD_FORMAT.CF_BITMAP, name: 'CF_BITMAP');
      check(format.toString()).equals('ClipboardFormat(2, name: CF_BITMAP)');
    });
  });
}
