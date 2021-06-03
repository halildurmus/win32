import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void PrintCommState(DCB dcb) => print('BaudRate = ${dcb.BaudRate}, '
    'ByteSize = ${dcb.ByteSize}, '
    'Parity = ${dcb.Parity}, '
    'StopBits = ${dcb.StopBits}');

void main() {
  final pcCommPort = 'COM1'.toNativeUtf16();
  final dcb = calloc<DCB>();

  try {
    final hCom = CreateFile(pcCommPort, GENERIC_READ | GENERIC_WRITE, 0,
        nullptr, OPEN_EXISTING, 0, NULL);

    if (hCom == INVALID_HANDLE_VALUE) {
      print('Invalid handle');
      exit(1);
    }

    dcb.ref.DCBlength = sizeOf<DCB>();

    var fSuccess = GetCommState(hCom, dcb);
    if (fSuccess == 0) {
      print('GetCommState failed.');
      exit(2);
    }
    PrintCommState(dcb.ref);

    dcb
      ..ref.BaudRate = 57600
      ..ref.ByteSize = 8
      ..ref.Parity = 0
      ..ref.StopBits = 0;

    fSuccess = SetCommState(hCom, dcb);
    if (fSuccess == 0) {
      print('SetCommState failed.');
      exit(3);
    }

    PrintCommState(dcb.ref);
  } finally {
    free(pcCommPort);
    free(dcb);
  }
}
