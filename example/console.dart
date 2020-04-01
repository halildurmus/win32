// console.dart

// Shows usage of console APIs

import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE);
  print('Output handle (DWORD): $outputHandle');

  final bufferInfo = CONSOLE_SCREEN_BUFFER_INFO.allocate();
  GetConsoleScreenBufferInfo(outputHandle, bufferInfo.addressOf);

  print('Window dimensions LTRB: (${bufferInfo.srWindowLeft}, '
      '${bufferInfo.srWindowTop}, ${bufferInfo.srWindowRight}, '
      '${bufferInfo.srWindowBottom})');
  print('Cursor position X/Y: (${bufferInfo.dwCursorPositionX}, '
      '${bufferInfo.dwCursorPositionY})');
  print('Window size X/Y: (${bufferInfo.dwSizeX}, ${bufferInfo.dwSizeY})');
  print('Maximum window size X/Y: (${bufferInfo.dwMaximumWindowSizeX}, '
      '${bufferInfo.dwMaximumWindowSizeY})');

  // set cursor to (15, 3)
  final cursorPosition = (15 << 16) + 3;

  SetConsoleCursorPosition(outputHandle, cursorPosition);
  GetConsoleScreenBufferInfo(outputHandle, bufferInfo.addressOf);
  print('Cursor position X/Y: (${bufferInfo.dwCursorPositionX}, '
      '${bufferInfo.dwCursorPositionY})');
}
