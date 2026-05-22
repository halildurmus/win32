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
  group('ktmw32.dll', () {
    test('CommitTransaction can be instantiated', () {
      check(_CommitTransaction).isA<Function>();
    });
    test('CreateTransaction can be instantiated', () {
      check(_CreateTransaction).isA<Function>();
    });
    test('RollbackTransaction can be instantiated', () {
      check(_RollbackTransaction).isA<Function>();
    });
  });
}

final _ktmw32 = DynamicLibrary.open('ktmw32.dll');

final _CommitTransaction = _ktmw32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CommitTransaction',
    );

final _CreateTransaction = _ktmw32
    .lookupFunction<
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<GUID>,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
        Pointer<Utf16>,
      ),
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<GUID>,
        int,
        int,
        int,
        int,
        Pointer<Utf16>,
      )
    >('CreateTransaction');

final _RollbackTransaction = _ktmw32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'RollbackTransaction',
    );
