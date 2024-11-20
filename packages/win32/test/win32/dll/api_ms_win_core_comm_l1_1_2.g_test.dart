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
  group('api-ms-win-core-comm-l1-1-2.dll', () {
    test(
      'GetCommPorts can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetCommPorts).isA<Function>();
      },
    );
  });
}

@Native<Uint32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>(
  symbol: 'GetCommPorts',
)
external int _GetCommPorts(
  Pointer<Uint32> lpPortNumbers,
  int uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
);
