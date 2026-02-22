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
  Uint32 Function(Pointer, Int32, Pointer<Utf16>, Uint32, Pointer<Uint32>)
>(symbol: 'GetServiceDirectory')
external int _GetServiceDirectory(
  Pointer hServiceStatus,
  int eDirectoryType,
  Pointer<Utf16> lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
);
