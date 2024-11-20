// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('powrprof.dll', () {
    test('CallNtPowerInformation can be instantiated', () {
      check(_CallNtPowerInformation).isA<Function>();
    });
  });
}

@Native<Int32 Function(Int32, Pointer, Uint32, Pointer, Uint32)>(
  symbol: 'CallNtPowerInformation',
)
external int _CallNtPowerInformation(
  int informationLevel,
  Pointer inputBuffer,
  int inputBufferLength,
  Pointer outputBuffer,
  int outputBufferLength,
);
