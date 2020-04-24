import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const VK_A = 0x41;

void main() {
  print('Switching to Notepad and going to sleep for a second.');
  ShellExecute(0, TEXT('open'), TEXT('notepad.exe'), nullptr, nullptr, SW_SHOW);
  Sleep(1000);

  print('Sending the "A" key and the Unicode character "€".');
  final kbd = KEYBDINPUT.allocate();

  kbd.wVk = VK_A;
  var result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.dwFlags = KEYEVENTF_KEYUP;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.wVk = 0;
  kbd.wScan = 0x20AC; // euro sign
  kbd.dwFlags = KEYEVENTF_UNICODE;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  free(kbd.addressOf);

  print('Sending a right-click mouse event.');
  final mouse = MOUSEINPUT.allocate();

  mouse.dwFlags = MOUSEEVENTF_RIGHTDOWN;
  result = SendInput(
      1, Pointer.fromAddress(mouse.addressOf.address), sizeOf<MOUSEINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  Sleep(1000);
  mouse.dwFlags = MOUSEEVENTF_RIGHTUP;
  result = SendInput(
      1, Pointer.fromAddress(mouse.addressOf.address), sizeOf<MOUSEINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  free(mouse.addressOf);
}
