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
  group('api-ms-win-ro-typeresolution-l1-1-1.dll', () {
    test(
      'RoIsApiContractMajorVersionPresent can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_RoIsApiContractMajorVersionPresent).isA<Function>();
      },
    );
    test(
      'RoIsApiContractPresent can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_RoIsApiContractPresent).isA<Function>();
      },
    );
  });
}

@Native<Int32 Function(Pointer<Utf16>, Uint16, Pointer<Int32>)>(
  symbol: 'RoIsApiContractMajorVersionPresent',
)
external int _RoIsApiContractMajorVersionPresent(
  Pointer<Utf16> name,
  int majorVersion,
  Pointer<Int32> present,
);

@Native<Int32 Function(Pointer<Utf16>, Uint16, Uint16, Pointer<Int32>)>(
  symbol: 'RoIsApiContractPresent',
)
external int _RoIsApiContractPresent(
  Pointer<Utf16> name,
  int majorVersion,
  int minorVersion,
  Pointer<Int32> present,
);
