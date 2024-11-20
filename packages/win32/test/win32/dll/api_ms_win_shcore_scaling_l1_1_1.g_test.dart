// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

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

@Native<Int32 Function(HMONITOR, Int32, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetDpiForMonitor',
)
external int _GetDpiForMonitor(
  int hmonitor,
  int dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
);

@Native<Int32 Function(HANDLE, Pointer<Int32>)>(
  symbol: 'GetProcessDpiAwareness',
)
external int _GetProcessDpiAwareness(int hprocess, Pointer<Int32> value);

@Native<Int32 Function(HMONITOR, Pointer<Int32>)>(
  symbol: 'GetScaleFactorForMonitor',
)
external int _GetScaleFactorForMonitor(int hMon, Pointer<Int32> pScale);

@Native<Int32 Function(Int32)>(symbol: 'SetProcessDpiAwareness')
external int _SetProcessDpiAwareness(int value);
