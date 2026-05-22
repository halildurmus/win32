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
  group('propsys.dll', () {
    test('PropVariantToStringWithDefault can be instantiated', () {
      check(_PropVariantToStringWithDefault).isA<Function>();
    });
    test('PropVariantToStrRet can be instantiated', () {
      check(_PropVariantToStrRet).isA<Function>();
    });
  });
}

final _propsys = DynamicLibrary.open('propsys.dll');

final _PropVariantToStringWithDefault = _propsys
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<PROPVARIANT>, Pointer<Utf16>),
      Pointer<Utf16> Function(Pointer<PROPVARIANT>, Pointer<Utf16>)
    >('PropVariantToStringWithDefault');

final _PropVariantToStrRet = _propsys
    .lookupFunction<
      Int32 Function(Pointer<PROPVARIANT>, Pointer<STRRET>),
      int Function(Pointer<PROPVARIANT>, Pointer<STRRET>)
    >('PropVariantToStrRet');
