// ignore_for_file: constant_identifier_names

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

const VK_A = 0x41;

void main() {
  test('Anonymous nested unions work', () {
    final kbd = calloc<INPUT>()
      ..ref.type = INPUT_TYPE.INPUT_KEYBOARD
      ..ref.ki.wVk = VK_A
      ..ref.ki.dwFlags = KEYBD_EVENT_FLAGS.KEYEVENTF_KEYUP;

    expect(kbd.ref.ki.wVk, equals(VK_A));

    kbd
      ..ref.ki.wVk = 0
      ..ref.ki.wScan = 0x20AC // euro sign
      ..ref.ki.dwFlags = KEYBD_EVENT_FLAGS.KEYEVENTF_UNICODE;

    expect(kbd.ref.type, equals(INPUT_TYPE.INPUT_KEYBOARD));
    expect(kbd.ref.ki.wVk, isZero);
    expect(kbd.ref.ki.dwFlags, equals(KEYBD_EVENT_FLAGS.KEYEVENTF_UNICODE));

    free(kbd);
  });
}
