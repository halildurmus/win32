// console.dart

// Shows usage of console APIs. For more console examples and a high-level API
// to the underlying Win32 console API, see
// https://pub.dev/packages/dart_console, which provides a platform-independent
// API to the console across Windows, Linux and macOS.

// Sample is an adaptation of:
//   https://docs.microsoft.com/en-us/windows/console/using-the-high-level-input-and-output-functions

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const normalPrompt = 'Type a line and press Enter, or q to quit: ';
const echoOffPrompt = 'Type any key, or q to quit: ';

final stdin = GetStdHandle(STD_INPUT_HANDLE);
final stdout = GetStdHandle(STD_OUTPUT_HANDLE);

CONSOLE_SCREEN_BUFFER_INFO bufferInfo;

/// Convert a byte array pointer into a Dart string
String fromCString(Pointer<Uint8> buffer, int maxLength) =>
    String.fromCharCodes(buffer.asTypedList(maxLength), 0, maxLength);

/// Convert a Dart string to a heap stored byte array that can be passed through
/// FFI to an unmanaged API.
///
/// The returned string is _not_ null-terminated.
Pointer<Uint8> toCString(String buffer) {
  final units = utf8.encode(buffer);
  final Pointer<Uint8> result = allocate<Uint8>(count: units.length);
  final nativeString = result.asTypedList(units.length);
  nativeString.setAll(0, units);
  return result.cast();
}

/// The newLine function handles carriage returns when the processed input mode
/// is disabled. It gets the current cursor position and resets it to the first
/// cell of the next row.
void newLine() {
  GetConsoleScreenBufferInfo(stdout, bufferInfo.addressOf);

  bufferInfo.dwCursorPositionX = 0;
  if (bufferInfo.dwSizeY - 1 == bufferInfo.dwCursorPositionY) {
    scrollScreenBuffer(stdout, 1);
  } else {
    bufferInfo.dwCursorPositionY += 1;
  }

  // When nested structs are supported, the second parameter will be
  // bufferInfo.dwCursorPosition instead of the current one.
  SetConsoleCursorPosition(stdout,
      bufferInfo.dwCursorPositionY << 16 + bufferInfo.dwCursorPositionX);
}

void scrollScreenBuffer(int handle, int x) {
  final scrollRect = SMALL_RECT.allocate();
  scrollRect.Left = 0;
  scrollRect.Top = 1;
  scrollRect.Right = bufferInfo.dwSizeX - x;
  scrollRect.Bottom = bufferInfo.dwSizeY - x;

  // The destination for the scroll rectangle is one row up.
  final coordDest = COORD.allocate();
  coordDest.X = 0;
  coordDest.Y = 0;

  final clipRect = scrollRect;

  final fillChar = CHAR_INFO.allocate();
  fillChar.Attributes = FOREGROUND_RED | FOREGROUND_INTENSITY;
  fillChar.UnicodeChar = ' '.codeUnits.first;

  ScrollConsoleScreenBuffer(handle, scrollRect.addressOf, clipRect.addressOf,
      coordDest.Y << 16 + coordDest.X, fillChar.addressOf);

  free(scrollRect.addressOf);
  free(coordDest.addressOf);
  free(fillChar.addressOf);
}

void main() {
  bufferInfo = CONSOLE_SCREEN_BUFFER_INFO.allocate();
  GetConsoleScreenBufferInfo(stdout, bufferInfo.addressOf);

  print('Some console metrics:');
  print('  Window dimensions LTRB: (${bufferInfo.srWindowLeft}, '
      '${bufferInfo.srWindowTop}, ${bufferInfo.srWindowRight}, '
      '${bufferInfo.srWindowBottom})');
  print('  Cursor position X/Y: (${bufferInfo.dwCursorPositionX}, '
      '${bufferInfo.dwCursorPositionY})');
  print('  Window size X/Y: (${bufferInfo.dwSizeX}, ${bufferInfo.dwSizeY})');
  print('  Maximum window size X/Y: (${bufferInfo.dwMaximumWindowSizeX}, '
      '${bufferInfo.dwMaximumWindowSizeY})\n');

  // Set the text attributes to draw red text on black background.
  final originalAttributes = bufferInfo.wAttributes;
  SetConsoleTextAttribute(stdout, FOREGROUND_RED | FOREGROUND_INTENSITY);

  final cWritten = allocate<Uint32>();
  final buffer = allocate<Uint8>(count: 256);
  final cRead = allocate<Uint32>();

  // Write to STDOUT and read from STDIN by using the default
  // modes. Input is echoed automatically, and ReadFile
  // does not return until a carriage return is typed.
  //
  // The default input modes are line, processed, and echo.
  // The default output modes are processed and wrap at EOL.

  while (true) {
    WriteFile(
        stdout, // output handle
        toCString(normalPrompt), // prompt string
        normalPrompt.length, // string length
        cWritten, // bytes written
        nullptr); // not overlapped
    ReadFile(stdin, buffer, 255, cRead, nullptr);
    final inputString = fromCString(buffer, cRead.value);
    if (inputString.startsWith('q')) {
      break;
    }
  }

  // Turn off the line input and echo input modes
  final originalConsoleMode = allocate<Uint32>();
  GetConsoleMode(stdin, originalConsoleMode);
  final mode =
      originalConsoleMode.value & ~(ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT);
  SetConsoleMode(stdin, mode);

  newLine();

  while (true) {
    WriteFile(stdout, toCString(echoOffPrompt), echoOffPrompt.length, cWritten,
        nullptr);

    // ReadFile returns when any input is available.
    // WriteFile is used to echo input.
    if (ReadFile(stdin, buffer, 1, cRead, nullptr) == 0) break;

    if (String.fromCharCode(buffer.value) == '\r') {
      newLine();
    } else if (WriteFile(stdout, buffer, cRead.value, cWritten, nullptr) == 0) {
      break;
    } else {
      newLine();
    }

    if (String.fromCharCode(buffer.value) == 'q') {
      break;
    }
  }

  SetConsoleMode(stdin, originalConsoleMode.value);
  SetConsoleTextAttribute(stdout, originalAttributes);

  free(bufferInfo.addressOf);
  free(cWritten);
  free(buffer);
  free(cRead);
  free(originalConsoleMode);
}
