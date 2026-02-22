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
  group('propsys.dll', () {
    test('PropVariantToStringWithDefault can be instantiated', () {
      check(_PropVariantToStringWithDefault).isA<Function>();
    });
    test('PropVariantToStrRet can be instantiated', () {
      check(_PropVariantToStrRet).isA<Function>();
    });
  });
}

@Native<Pointer<Utf16> Function(Pointer<PROPVARIANT>, Pointer<Utf16>)>(
  symbol: 'PropVariantToStringWithDefault',
)
external Pointer<Utf16> _PropVariantToStringWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Utf16> pszDefault,
);

@Native<Int32 Function(Pointer<PROPVARIANT>, Pointer<STRRET>)>(
  symbol: 'PropVariantToStrRet',
)
external int _PropVariantToStrRet(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
);
