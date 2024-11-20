// Demonstrates sending input to another window via SendInput().

import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  print('Switching to Notepad and going to sleep for a second.');
  final operation = w('open');
  final file = w('notepad.exe');
  ShellExecute(null, operation.ptr, file.ptr, null, null, SW_SHOW);
  Sleep(1000);

  print('Sending the "A" key and the Unicode character "€".');
  final kbd = loggingCalloc<INPUT>();
  kbd.ref.type = INPUT_KEYBOARD;
  kbd.ref.ki.wVk = VK_A;
  var Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');

  kbd.ref.ki.dwFlags = KEYEVENTF_KEYUP;
  Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');
  kbd.ref.ki.wVk = const VIRTUAL_KEY(0);
  kbd.ref.ki.wScan = 0x20AC; // euro sign
  kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE;
  Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');

  kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
  Win32Result(value: result, :error) = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');

  free(kbd);

  print('Sending a right-click mouse event.');
  final mouse = loggingCalloc<INPUT>();
  mouse.ref.type = INPUT_MOUSE;
  mouse.ref.mi.dwFlags = MOUSEEVENTF_RIGHTDOWN;
  Win32Result(value: result, :error) = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');

  Sleep(1000);
  mouse.ref.mi.dwFlags = MOUSEEVENTF_RIGHTUP;
  Win32Result(value: result, :error) = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${error.toHRESULT()}');

  free(mouse);
}
