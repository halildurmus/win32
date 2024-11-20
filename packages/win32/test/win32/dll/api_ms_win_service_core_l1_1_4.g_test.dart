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
  group('api-ms-win-service-core-l1-1-4.dll', () {
    test(
      'GetServiceDirectory can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_GetServiceDirectory).isA<Function>();
      },
    );
  });
}

@Native<
  Uint32 Function(SERVICE_STATUS_HANDLE, Int32, PWSTR, Uint32, Pointer<Uint32>)
>(symbol: 'GetServiceDirectory')
external int _GetServiceDirectory(
  int hServiceStatus,
  int eDirectoryType,
  PWSTR lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
);
