@TestOn('windows')

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

const VK_A = 0x41;

void main() {
  test('Anonymous nested unions work', () {
    final kbd = calloc<INPUT>();
    kbd.ref.type = INPUT_KEYBOARD;
    kbd.ref.ki.wVk = VK_A;
    kbd.ref.ki.dwFlags = KEYEVENTF_KEYUP;

    expect(kbd.ref.ki.wVk, equals(VK_A));

    kbd.ref.ki.wVk = 0;
    kbd.ref.ki.wScan = 0x20AC; // euro sign
    kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE;

    expect(kbd.ref.type, equals(INPUT_KEYBOARD));
    expect(kbd.ref.ki.wVk, isZero);
    expect(kbd.ref.ki.dwFlags, equals(KEYEVENTF_UNICODE));
    free(kbd);
  });
}
