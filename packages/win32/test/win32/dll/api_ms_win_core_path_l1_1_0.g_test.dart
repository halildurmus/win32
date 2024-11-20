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
  group('api-ms-win-core-path-l1-1-0.dll', () {
    test('PathAllocCanonicalize can be instantiated', () {
      check(_PathAllocCanonicalize).isA<Function>();
    });
    test('PathAllocCombine can be instantiated', () {
      check(_PathAllocCombine).isA<Function>();
    });
  });
}

@Native<Int32 Function(PCWSTR, Uint32, Pointer<PWSTR>)>(
  symbol: 'PathAllocCanonicalize',
)
external int _PathAllocCanonicalize(
  PCWSTR pszPathIn,
  int dwFlags,
  Pointer<PWSTR> ppszPathOut,
);

@Native<Int32 Function(PCWSTR, PCWSTR, Uint32, Pointer<PWSTR>)>(
  symbol: 'PathAllocCombine',
)
external int _PathAllocCombine(
  PCWSTR pszPathIn,
  PCWSTR pszMore,
  int dwFlags,
  Pointer<PWSTR> ppszPathOut,
);
