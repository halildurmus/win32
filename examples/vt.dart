// Demonstrates enabling and using ANSI / VT escape sequences in the Windows
// console.
//
// For a more comprehensive library that uses these functions, check out
// dart_console(https://pub.dev/packages/dart_console).

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const _esc = '\x1b';
const _csi = '\x1b[';

void esc(String sequence) => stdout.write(_esc + sequence);
void csi(String command) => stdout.write(_csi + command);
void printf(String output) => stdout.write(output);

/// Enables virtual terminal processing on STDOUT.
bool enableVirtualTerminal() => using((arena) {
  final hOut = GetStdHandle(STD_OUTPUT_HANDLE).value;
  if (hOut == INVALID_HANDLE_VALUE) return false;

  final dwMode = arena<DWORD>();
  if (!GetConsoleMode(hOut, dwMode).value) return false;

  dwMode.value |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
  return SetConsoleMode(hOut, CONSOLE_MODE(dwMode.value)).value;
});

/// Returns the visible console size (columns, rows).
({int cols, int rows}) getConsoleSize() => using((arena) {
  final handle = GetStdHandle(STD_OUTPUT_HANDLE).value;
  final info = arena<CONSOLE_SCREEN_BUFFER_INFO>();

  final Win32Result(:value, :error) = GetConsoleScreenBufferInfo(handle, info);
  if (!value) throw WindowsException(error.toHRESULT());

  final SMALL_RECT(:Right, :Left, :Bottom, :Top) = info.ref.srWindow;
  final cols = Right - Left + 1;
  final rows = Bottom - Top + 1;
  return (cols: cols, rows: rows);
});

void drawVerticalBorder() {
  esc('(0'); // Enter Line drawing mode
  csi('104;93m'); // bright yellow on bright blue
  printf('x'); // in line drawing mode, \x78 -> \u2502 "Vertical Bar"
  csi('0m'); // restore color
  esc('(B'); // exit line drawing mode
}

void drawHorizontalBorder(int width, {required bool isTop}) {
  esc('(0'); // Enter Line drawing mode
  csi('104;93m'); // Make the border bright yellow on bright blue
  printf(isTop ? 'l' : 'm'); // print left corner

  for (var i = 1; i < width - 1; i++) {
    printf(
      'q',
    ); // in line drawing mode, \x71 -> \u2500 "HORIZONTAL SCAN LINE-5"
  }

  printf(isTop ? 'k' : 'j'); // print right corner
  csi('0m');
  esc('(B'); // exit line drawing mode
}

void statusLine(String text, int row) {
  csi('$row;1H');
  csi('K'); // clear the line
  printf(text);
}

void main() {
  if (!enableVirtualTerminal()) {
    stderr.writeln(
      'Virtual terminal processing is not available on this console.',
    );
    exit(1);
  }

  final size = getConsoleSize();
  final numLines = size.rows - 4;

  // Enter the alternate buffer
  csi('?1049h');

  // Clear screen, tab stops, set, stop at columns 16, 32
  csi('1;1H');
  csi('2J'); // Clear screen

  const tabStopCount = 4; // (0, 20, 40, width)
  csi('3g'); // clear all tab stops
  csi('1;20H'); // Move to column 20
  esc('H'); // set a tab stop

  csi('1;40H'); // Move to column 40
  esc('H'); // set a tab stop

  // Set scrolling margins to 3, h-2
  csi('3;${size.rows - 2}r');

  csi('1;1H');
  csi('102;30m');
  printf('Dart Win32 - VT Console Demo');
  csi('0m');

  // Print a top border - Yellow
  csi('2;1H');
  drawHorizontalBorder(size.cols, isTop: true);

  // Print a bottom border
  csi('${size.rows - 1};1H');
  drawHorizontalBorder(size.cols, isTop: false);

  // draw columns
  csi('3;1H');
  for (var line = 0; line < numLines * tabStopCount; line++) {
    drawVerticalBorder();

    // don't advance to next line if this is the last line
    if (line + 1 != numLines * tabStopCount) {
      printf('\t'); // advance to next tab stop
    }
  }

  statusLine('Press Enter to fill columns with text.', size.rows);
  stdin.readLineSync();

  // Fill columns with output
  csi('3;1H');
  for (var line = 0; line < numLines; line++) {
    for (var tab = 0; tab < tabStopCount - 1; tab++) {
      drawVerticalBorder();
      printf('line=$line');
      printf('\t'); // advance to next tab stop
    }
    drawVerticalBorder(); // print border at right side
    if (line + 1 != numLines) {
      printf('\t'); // advance to next tab stop, (on the next line)
    }
  }

  statusLine('Press Enter to demonstrate scroll margins.', size.rows);
  stdin.readLineSync();

  csi('3;1H');
  for (var line = 0; line < numLines * 2; line++) {
    csi('K'); // clear the line
    var tab = 0;
    for (tab = 0; tab < tabStopCount - 1; tab++) {
      drawVerticalBorder();
      printf('line=$line');
      printf('\t'); // advance to next tab stop
    }
    drawVerticalBorder(); // print border at right side
    if (line + 1 != numLines * 2) {
      // Advance to next line. If we're at the bottom of the margins, the text
      // will scroll.
      printf('\n');
      printf('\r'); // return to first col in buffer
    }
  }

  statusLine('Press Enter to exit.', size.rows);
  stdin.readLineSync();

  // Exit the alternate buffer
  csi('?1049l');
}
