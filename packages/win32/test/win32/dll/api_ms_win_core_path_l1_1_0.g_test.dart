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
  group('api-ms-win-core-path-l1-1-0.dll', () {
    test('PathAllocCanonicalize can be instantiated', () {
      check(_PathAllocCanonicalize).isA<Function>();
    });
    test('PathAllocCombine can be instantiated', () {
      check(_PathAllocCombine).isA<Function>();
    });
  });
}

@Native<Int32 Function(Pointer<Utf16>, Uint32, Pointer<Pointer<Utf16>>)>(
  symbol: 'PathAllocCanonicalize',
)
external int _PathAllocCanonicalize(
  Pointer<Utf16> pszPathIn,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
);

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Pointer<Utf16>>,
  )
>(symbol: 'PathAllocCombine')
external int _PathAllocCombine(
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
);
