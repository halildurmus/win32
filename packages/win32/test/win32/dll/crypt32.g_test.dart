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
import 'package:win32/src/_internal/crypt32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('crypt32.dll', () {
    test('CryptProtectData can be instantiated', () {
      check(CryptProtectData_Wrapper).isA<Function>();
    });
    test('CryptProtectMemory can be instantiated', () {
      check(CryptProtectMemory_Wrapper).isA<Function>();
    });
    test('CryptUnprotectData can be instantiated', () {
      check(CryptUnprotectData_Wrapper).isA<Function>();
    });
    test('CryptUnprotectMemory can be instantiated', () {
      check(CryptUnprotectMemory_Wrapper).isA<Function>();
    });
    test('CryptUpdateProtectedState can be instantiated', () {
      check(CryptUpdateProtectedState_Wrapper).isA<Function>();
    });
  });
}
