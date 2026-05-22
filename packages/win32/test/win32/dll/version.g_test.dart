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
  group('version.dll', () {
    test('GetFileVersionInfo can be instantiated', () {
      check(_GetFileVersionInfo).isA<Function>();
    });
    test('GetFileVersionInfoEx can be instantiated', () {
      check(_GetFileVersionInfoEx).isA<Function>();
    });
    test('GetFileVersionInfoSize can be instantiated', () {
      check(_GetFileVersionInfoSize).isA<Function>();
    });
    test('GetFileVersionInfoSizeEx can be instantiated', () {
      check(_GetFileVersionInfoSizeEx).isA<Function>();
    });
    test('VerFindFile can be instantiated', () {
      check(_VerFindFile).isA<Function>();
    });
    test('VerInstallFile can be instantiated', () {
      check(_VerInstallFile).isA<Function>();
    });
    test('VerQueryValue can be instantiated', () {
      check(_VerQueryValue).isA<Function>();
    });
  });
}

final _version = DynamicLibrary.open('version.dll');

final _GetFileVersionInfo = _version
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Uint32, Pointer),
      int Function(Pointer<Utf16>, int, int, Pointer)
    >('GetFileVersionInfoW');

final _GetFileVersionInfoEx = _version
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Uint32, Uint32, Pointer),
      int Function(int, Pointer<Utf16>, int, int, Pointer)
    >('GetFileVersionInfoExW');

final _GetFileVersionInfoSize = _version
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetFileVersionInfoSizeW');

final _GetFileVersionInfoSizeEx = _version
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('GetFileVersionInfoSizeExW');

final _VerFindFile = _version
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('VerFindFileW');

final _VerInstallFile = _version
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('VerInstallFileW');

final _VerQueryValue = _version
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>, Pointer<Uint32>)
    >('VerQueryValueW');
