import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const VK_A = 0x41;

void main() {
  print('Switch to Notepad. Going to sleep for 5 seconds.');
  Sleep(5000);

  final kbd = KEYBDINPUT.allocate();

  kbd.wVk = VK_A;
  var result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.dwFlag = KEYEVENTF_KEYUP;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.wVk = 0;
  kbd.wScan = 0x20AC; // euro sign
  kbd.dwFlag = KEYEVENTF_UNICODE;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  kbd.dwFlag = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
  result = SendInput(
      1, Pointer.fromAddress(kbd.addressOf.address), sizeOf<KEYBDINPUT>());
  if (result != 1) print('Error: ${GetLastError()}');

  free(kbd.addressOf);
}
