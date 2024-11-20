// Demonstrates sending input to another window via SendInput().

// ignore_for_file: constant_identifier_names

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
  var result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ref.ki.dwFlags = KEYEVENTF_KEYUP;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ref.ki.wVk = const VIRTUAL_KEY(0);
  kbd.ref.ki.wScan = 0x20AC; // euro sign
  kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ref.ki.dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  free(kbd);

  print('Sending a right-click mouse event.');
  final mouse = loggingCalloc<INPUT>();
  mouse.ref.type = INPUT_MOUSE;
  mouse.ref.mi.dwFlags = MOUSEEVENTF_RIGHTDOWN;
  result = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  Sleep(1000);
  mouse.ref.mi.dwFlags = MOUSEEVENTF_RIGHTUP;
  result = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  free(mouse);
}
