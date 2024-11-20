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
  group('scarddlg.dll', () {
    test('SCardUIDlgSelectCard can be instantiated', () {
      check(_SCardUIDlgSelectCard).isA<Function>();
    });
  });
}

@Native<Int32 Function(Pointer<OPENCARDNAME_EX>)>(
  symbol: 'SCardUIDlgSelectCardW',
)
external int _SCardUIDlgSelectCard(Pointer<OPENCARDNAME_EX> param0);
