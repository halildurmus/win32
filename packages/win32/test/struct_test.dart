@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  test('OVERLAPPED struct', () {
    final pOverlapped = loggingCalloc<OVERLAPPED>();
    final overlapped = pOverlapped.ref
      ..Pointer$ = Pointer.fromAddress(0x0807060504030201);
    check(overlapped.Pointer$.address).equals(0x0807060504030201);
    check(overlapped.Offset).equals(0x04030201);
    check(overlapped.OffsetHigh).equals(0x08070605);

    overlapped.Offset = 0xDEADBEEF;
    check(overlapped.Offset).equals(0xDEADBEEF);
    check(overlapped.OffsetHigh).equals(0x08070605);
    check(overlapped.Pointer$.address).equals(0x08070605DEADBEEF);

    overlapped.OffsetHigh = 0xFACEFEED;
    check(overlapped.Offset).equals(0xDEADBEEF);
    check(overlapped.OffsetHigh).equals(0xFACEFEED);
    check(overlapped.Pointer$.address).equals(0xFACEFEEDDEADBEEF);

    free(pOverlapped);
  });

  test('Test struct string packing with regular string', () {
    const testString = 'Non-null terminated string';
    final midiCaps = loggingCalloc<MIDIINCAPS>();

    midiCaps.ref.szPname = testString;
    check(midiCaps.ref.szPname).equals(testString);

    free(midiCaps);
  });

  test('Test struct string packing with null terminated string', () {
    const testString = 'Null terminated string';
    final midiCaps = loggingCalloc<MIDIINCAPS>();

    midiCaps.ref.szPname = '$testString\x00';
    check(midiCaps.ref.szPname).equals(testString);

    free(midiCaps);
  });

  test('Test struct string packing with garbage after null terminator', () {
    const testString = 'Null terminated string';
    final midiCaps = loggingCalloc<MIDIINCAPS>();

    midiCaps.ref.szPname = '$testString\x00Garbage';
    // Should trim at null terminator
    check(midiCaps.ref.szPname).equals(testString);

    free(midiCaps);
  });

  test('Anonymous nested unions work', () {
    final kbd = loggingCalloc<INPUT>();
    kbd.ref
      ..type = INPUT_KEYBOARD
      ..ki.wVk = VK_A
      ..ki.dwFlags = KEYEVENTF_KEYUP;
    check(kbd.ref.ki.wVk).equals(VK_A);

    kbd.ref
      ..ki.wVk = VK_A
      ..ki.wScan =
          0x20AC // euro sign
      ..ki.dwFlags = KEYEVENTF_UNICODE;
    check(kbd.ref.type).equals(INPUT_KEYBOARD);
    check(kbd.ref.ki.wVk).equals(VK_A);
    check(kbd.ref.ki.dwFlags).equals(KEYEVENTF_UNICODE);

    free(kbd);
  });
}
