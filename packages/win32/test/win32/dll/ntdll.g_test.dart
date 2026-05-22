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
  group('ntdll.dll', () {
    test('NtQuerySystemInformation can be instantiated', () {
      check(_NtQuerySystemInformation).isA<Function>();
    });
    test('RtlGetVersion can be instantiated', () {
      check(_RtlGetVersion).isA<Function>();
    });
  });
}

final _ntdll = DynamicLibrary.open('ntdll.dll');

final _NtQuerySystemInformation = _ntdll
    .lookupFunction<
      Int32 Function(Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(int, Pointer, int, Pointer<Uint32>)
    >('NtQuerySystemInformation');

final _RtlGetVersion = _ntdll
    .lookupFunction<
      Int32 Function(Pointer<OSVERSIONINFO>),
      int Function(Pointer<OSVERSIONINFO>)
    >('RtlGetVersion');
