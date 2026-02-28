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
  group('d3dcompiler_47.dll', () {
    test('D3DDisassemble11Trace can be instantiated', () {
      check(_D3DDisassemble11Trace).isA<Function>();
    });
  });
}

@Native<
  Int32 Function(
    Pointer,
    IntPtr,
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DDisassemble11Trace')
external int _D3DDisassemble11Trace(
  Pointer pSrcData,
  int srcDataSize,
  VTablePointer pTrace,
  int startStep,
  int numSteps,
  int flags,
  Pointer<VTablePointer> ppDisassembly,
);
