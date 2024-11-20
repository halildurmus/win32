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
  group('netapi32.dll', () {
    test('NetFreeAadJoinInformation can be instantiated', () {
      check(_NetFreeAadJoinInformation).isA<Function>();
    });
    test('NetGetAadJoinInformation can be instantiated', () {
      check(_NetGetAadJoinInformation).isA<Function>();
    });
  });
}

@Native<Void Function(Pointer<DSREG_JOIN_INFO>)>(
  symbol: 'NetFreeAadJoinInformation',
)
external void _NetFreeAadJoinInformation(Pointer<DSREG_JOIN_INFO> pJoinInfo);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Pointer<DSREG_JOIN_INFO>>)>(
  symbol: 'NetGetAadJoinInformation',
)
external int _NetGetAadJoinInformation(
  Pointer<Utf16> pcszTenantId,
  Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo,
);
