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
  group('ntdll.dll', () {
    test('NtQuerySystemInformation can be instantiated', () {
      check(_NtQuerySystemInformation).isA<Function>();
    });
    test('RtlGetVersion can be instantiated', () {
      check(_RtlGetVersion).isA<Function>();
    });
  });
}

@Native<Int32 Function(Int32, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'NtQuerySystemInformation',
)
external int _NtQuerySystemInformation(
  int systemInformationClass,
  Pointer systemInformation,
  int systemInformationLength,
  Pointer<Uint32> returnLength,
);

@Native<Int32 Function(Pointer<OSVERSIONINFO>)>(symbol: 'RtlGetVersion')
external int _RtlGetVersion(Pointer<OSVERSIONINFO> lpVersionInformation);
