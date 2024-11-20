// Dart implementation of the Win32 sample of configuring a comms resource.

// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/devio/configuring-a-communications-resource

// This sample assumes that you have a working COM serial port.

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

void printCommState(DCB dcb) => print(
  'BaudRate = ${dcb.BaudRate}, '
  'ByteSize = ${dcb.ByteSize}, '
  'Parity = ${dcb.Parity}, '
  'StopBits = ${dcb.StopBits}',
);

void main() {
  final dcb = loggingCalloc<DCB>();

  try {
    final fileName = w('COM1');
    final hCom = CreateFile(
      fileName.ptr,
      GENERIC_READ | GENERIC_WRITE,
      FILE_SHARE_NONE,
      null,
      OPEN_EXISTING,
      FILE_ATTRIBUTE_NORMAL,
      null,
    );

    if (hCom == INVALID_HANDLE_VALUE) {
      print('Invalid handle.');
      exit(1);
    }

    dcb.ref.DCBlength = sizeOf<DCB>();

    if (!GetCommState(hCom, dcb)) {
      print('GetCommState failed.');
      exit(2);
    }
    printCommState(dcb.ref);

    dcb.ref
      ..BaudRate = CBR_57600
      ..ByteSize = 8
      ..Parity = NOPARITY
      ..StopBits = ONESTOPBIT;

    if (!SetCommState(hCom, dcb)) {
      print('SetCommState failed.');
      exit(3);
    }

    printCommState(dcb.ref);
  } finally {
    free(dcb);
  }
}
