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
  group('api-ms-win-core-handle-l1-1-0.dll', () {
    test('CompareObjectHandles can be instantiated', () {
      check(_CompareObjectHandles).isA<Function>();
    });
  });
}

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'CompareObjectHandles')
external int _CompareObjectHandles(
  Pointer hFirstObjectHandle,
  Pointer hSecondObjectHandle,
);
