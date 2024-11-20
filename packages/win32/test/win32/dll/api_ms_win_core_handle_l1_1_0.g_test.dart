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
  group('api-ms-win-core-handle-l1-1-0.dll', () {
    test('CompareObjectHandles can be instantiated', () {
      check(_CompareObjectHandles).isA<Function>();
    });
  });
}

@Native<BOOL Function(HANDLE, HANDLE)>(symbol: 'CompareObjectHandles')
external int _CompareObjectHandles(
  int hFirstObjectHandle,
  int hSecondObjectHandle,
);
