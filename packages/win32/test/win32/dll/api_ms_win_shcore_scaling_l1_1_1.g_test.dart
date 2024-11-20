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
  group('api-ms-win-shcore-scaling-l1-1-1.dll', () {
    test('GetDpiForMonitor can be instantiated', () {
      check(_GetDpiForMonitor).isA<Function>();
    });
    test('GetProcessDpiAwareness can be instantiated', () {
      check(_GetProcessDpiAwareness).isA<Function>();
    });
    test('GetScaleFactorForMonitor can be instantiated', () {
      check(_GetScaleFactorForMonitor).isA<Function>();
    });
    test('SetProcessDpiAwareness can be instantiated', () {
      check(_SetProcessDpiAwareness).isA<Function>();
    });
  });
}

@Native<Int32 Function(Pointer, Int32, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetDpiForMonitor',
)
external int _GetDpiForMonitor(
  Pointer hmonitor,
  int dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
);

@Native<Int32 Function(Pointer, Pointer<Int32>)>(
  symbol: 'GetProcessDpiAwareness',
)
external int _GetProcessDpiAwareness(Pointer hprocess, Pointer<Int32> value);

@Native<Int32 Function(Pointer, Pointer<Int32>)>(
  symbol: 'GetScaleFactorForMonitor',
)
external int _GetScaleFactorForMonitor(Pointer hMon, Pointer<Int32> pScale);

@Native<Int32 Function(Int32)>(symbol: 'SetProcessDpiAwareness')
external int _SetProcessDpiAwareness(int value);
