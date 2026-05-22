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
  group('crypt32.dll', () {
    test('CryptProtectData can be instantiated', () {
      check(_CryptProtectData).isA<Function>();
    });
    test('CryptProtectMemory can be instantiated', () {
      check(_CryptProtectMemory).isA<Function>();
    });
    test('CryptUnprotectData can be instantiated', () {
      check(_CryptUnprotectData).isA<Function>();
    });
    test('CryptUnprotectMemory can be instantiated', () {
      check(_CryptUnprotectMemory).isA<Function>();
    });
    test('CryptUpdateProtectedState can be instantiated', () {
      check(_CryptUpdateProtectedState).isA<Function>();
    });
  });
}

final _crypt32 = DynamicLibrary.open('crypt32.dll');

final _CryptProtectData = _crypt32
    .lookupFunction<
      Int32 Function(
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer<Utf16>,
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
        Uint32,
        Pointer<CRYPT_INTEGER_BLOB>,
      ),
      int Function(
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer<Utf16>,
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
        int,
        Pointer<CRYPT_INTEGER_BLOB>,
      )
    >('CryptProtectData');

final _CryptProtectMemory = _crypt32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('CryptProtectMemory');

final _CryptUnprotectData = _crypt32
    .lookupFunction<
      Int32 Function(
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer<Pointer<Utf16>>,
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
        Uint32,
        Pointer<CRYPT_INTEGER_BLOB>,
      ),
      int Function(
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer<Pointer<Utf16>>,
        Pointer<CRYPT_INTEGER_BLOB>,
        Pointer,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
        int,
        Pointer<CRYPT_INTEGER_BLOB>,
      )
    >('CryptUnprotectData');

final _CryptUnprotectMemory = _crypt32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('CryptUnprotectMemory');

final _CryptUpdateProtectedState = _crypt32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('CryptUpdateProtectedState');
