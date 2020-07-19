@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

import '../example/knownfolder.dart';

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

    // This will not be supported on a non-interactive console; skip the test if
    // so.
    if (result != FALSE) {
      expect(
          bufferInfo.dwCursorPositionX, lessThanOrEqualTo(bufferInfo.dwSizeX));
      expect(
          bufferInfo.dwCursorPositionY, lessThanOrEqualTo(bufferInfo.dwSizeY));
    }
  });

  test('SHGetKnownFolderPath', () {
    final legacyAPI = getFolderPath();
    final currentAPI = getKnownFolderPath();

    expect(
      currentAPI,
      allOf(
        [
          equals(legacyAPI),
          isNot(contains('error')),
        ],
      ),
    );
  });
}
