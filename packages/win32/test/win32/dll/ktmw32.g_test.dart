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
import 'package:win32/src/_internal/ktmw32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('ktmw32.dll', () {
    test('CommitTransaction can be instantiated', () {
      check(CommitTransaction_Wrapper).isA<Function>();
    });
    test('CreateTransaction can be instantiated', () {
      check(CreateTransaction_Wrapper).isA<Function>();
    });
    test('RollbackTransaction can be instantiated', () {
      check(RollbackTransaction_Wrapper).isA<Function>();
    });
  });
}
