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
  group('scarddlg.dll', () {
    test('SCardUIDlgSelectCard can be instantiated', () {
      check(_SCardUIDlgSelectCard).isA<Function>();
    });
  });
}

final _scarddlg = DynamicLibrary.open('scarddlg.dll');

final _SCardUIDlgSelectCard = _scarddlg
    .lookupFunction<
      Int32 Function(Pointer<OPENCARDNAME_EX>),
      int Function(Pointer<OPENCARDNAME_EX>)
    >('SCardUIDlgSelectCardW');
