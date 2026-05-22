// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _api_ms_win_shcore_scaling_l1_1_1 = DynamicLibrary.open(
  'api-ms-win-shcore-scaling-l1-1-1.dll',
);

final _GetDpiForMonitor = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint32>, Pointer<Uint32>)
    >('GetDpiForMonitor');

final _GetProcessDpiAwareness = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetProcessDpiAwareness');

final _GetScaleFactorForMonitor = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetScaleFactorForMonitor');

final _SetProcessDpiAwareness = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetProcessDpiAwareness',
    );
