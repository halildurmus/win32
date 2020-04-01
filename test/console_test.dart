@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('GetStdHandle()', () {
    final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE);
    expect(outputHandle, isNot(INVALID_HANDLE_VALUE));
  });
  test('GetStdHandle() with invalid handle', () {
    final outputHandle = GetStdHandle(0xFFFF);
    expect(outputHandle, equals(INVALID_HANDLE_VALUE));
  });

  test('GetConsoleScreenBufferInfo', () {
    final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE);

    final bufferInfo = CONSOLE_SCREEN_BUFFER_INFO.allocate();
    final result =
        GetConsoleScreenBufferInfo(outputHandle, bufferInfo.addressOf);
    expect(result, isNot(0));

    expect(
        bufferInfo.dwSizeX, lessThanOrEqualTo(bufferInfo.dwMaximumWindowSizeX));
    expect(
        bufferInfo.dwSizeY, lessThanOrEqualTo(bufferInfo.dwMaximumWindowSizeY));
  });
}
