@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('OVERLAPPED struct', () {
    final pOverlapped = calloc<OVERLAPPED>();
    final overlapped = pOverlapped.ref
      ..Pointer_ = Pointer.fromAddress(0x0807060504030201);
    expect(overlapped.Pointer_.address, equals(0x0807060504030201));
    expect(overlapped.Offset, equals(0x04030201));
    expect(overlapped.OffsetHigh, equals(0x08070605));

    overlapped.Offset = 0xDEADBEEF;
    expect(overlapped.Offset, equals(0xDEADBEEF));
    expect(overlapped.OffsetHigh, equals(0x08070605));
    expect(overlapped.Pointer_.address, equals(0x08070605DEADBEEF));

    overlapped.OffsetHigh = 0xFACEFEED;
    expect(overlapped.Offset, equals(0xDEADBEEF));
    expect(overlapped.OffsetHigh, equals(0xFACEFEED));
    expect(overlapped.Pointer_.address, equals(0xFACEFEEDDEADBEEF));

    free(pOverlapped);
  });

  test('Test struct string packing with regular string', () {
    const testString = 'Non-null terminated string';
    final midiCaps = calloc<MIDIINCAPS>();

    midiCaps.ref.szPname = testString;
    expect(midiCaps.ref.szPname, equals(testString));

    free(midiCaps);
  });

  test('Test struct string packing with null terminated string', () {
    const testString = 'Null terminated string';
    final midiCaps = calloc<MIDIINCAPS>();

    midiCaps.ref.szPname = '$testString\x00';
    expect(midiCaps.ref.szPname, equals(testString));

    free(midiCaps);
  });

  test('Test struct string packing with garbage after null terminator', () {
    const testString = 'Null terminated string';
    final midiCaps = calloc<MIDIINCAPS>();

    midiCaps.ref.szPname = '$testString\x00Garbage';
    // Should trim at null terminator
    expect(midiCaps.ref.szPname, equals(testString));

    free(midiCaps);
  });

  test('Anonymous nested unions work', () {
    // ignore: constant_identifier_names
    const VK_A = 0x41;
    final kbd = calloc<INPUT>();
    kbd.ref
      ..type = INPUT_KEYBOARD
      ..ki.wVk = VK_A
      ..ki.dwFlags = KEYEVENTF_KEYUP;
    expect(kbd.ref.ki.wVk, equals(VK_A));

    kbd.ref
      ..ki.wVk = 0
      ..ki.wScan =
          0x20AC // euro sign
      ..ki.dwFlags = KEYEVENTF_UNICODE;
    expect(kbd.ref.type, equals(INPUT_KEYBOARD));
    expect(kbd.ref.ki.wVk, isZero);
    expect(kbd.ref.ki.dwFlags, equals(KEYEVENTF_UNICODE));

    free(kbd);
  });
}
