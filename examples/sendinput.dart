// Demonstrates sending input to another window via SendInput().

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    print('Switching to Notepad and going to sleep for a second.');
    ShellExecute(
      null,
      arena.pcwstr('open'),
      arena.pcwstr('notepad.exe'),
      null,
      null,
      SW_SHOW,
    );
    Sleep(1000);

    print('Sending the "A" key and the Unicode character "€".');
    final kbd = arena<INPUT>();
    kbd.ref
      ..type = INPUT_KEYBOARD
      ..ki.wVk = VK_A;
    var Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');

    kbd.ref.ki.dwFlags = KEYEVENTF_KEYUP;
    Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');
    kbd.ref
      ..ki.wVk = const VIRTUAL_KEY(0)
      ..ki.wScan =
          0x20AC // euro sign
      ..ki.dwFlags = KEYEVENTF_UNICODE;
    Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');

    kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
    Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');

    print('Sending a right-click mouse event.');
    final mouse = arena<INPUT>();
    mouse.ref
      ..type = INPUT_MOUSE
      ..mi.dwFlags = MOUSEEVENTF_RIGHTDOWN;
    Win32Result(value: result, :error) = SendInput(1, mouse, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');

    Sleep(1000);
    mouse.ref.mi.dwFlags = MOUSEEVENTF_RIGHTUP;
    Win32Result(value: result, :error) = SendInput(1, mouse, sizeOf<INPUT>());
    if (result != TRUE) print('Error: ${error.toHRESULT()}');
  });
}
