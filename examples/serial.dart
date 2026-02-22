// Dart implementation of the Win32 sample of configuring a comms resource.
//
// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/devio/configuring-a-communications-resource
//
// This sample assumes that you have a working COM serial port.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void printCommState(DCB dcb) => print(
  'BaudRate = ${dcb.BaudRate}, '
  'ByteSize = ${dcb.ByteSize}, '
  'Parity = ${dcb.Parity}, '
  'StopBits = ${dcb.StopBits}',
);

void main() {
  using((arena) {
    final Win32Result(value: hCom, :error) = CreateFile(
      arena.pcwstr('COM1'),
      GENERIC_READ | GENERIC_WRITE,
      FILE_SHARE_NONE,
      null,
      OPEN_EXISTING,
      FILE_ATTRIBUTE_NORMAL,
      null,
    );
    if (hCom == INVALID_HANDLE_VALUE) {
      print('Invalid handle.');
      throw WindowsException(error.toHRESULT());
    }

    final dcb = arena<DCB>()..ref.DCBlength = sizeOf<DCB>();
    final result = GetCommState(hCom, dcb);
    if (!result.value) {
      print('GetCommState failed.');
      throw WindowsException(result.error.toHRESULT());
    }
    printCommState(dcb.ref);

    dcb.ref
      ..BaudRate = CBR_57600
      ..ByteSize = 8
      ..Parity = NOPARITY
      ..StopBits = ONESTOPBIT;

    if (!SetCommState(hCom, dcb).value) {
      print('SetCommState failed.');
      exit(3);
    }

    printCommState(dcb.ref);
  });
}
