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
import 'package:win32/src/_internal/wtsapi32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('wtsapi32.dll', () {
    test('WTSRegisterSessionNotification can be instantiated', () {
      check(WTSRegisterSessionNotification_Wrapper).isA<Function>();
    });
    test('WTSUnRegisterSessionNotification can be instantiated', () {
      check(WTSUnRegisterSessionNotification_Wrapper).isA<Function>();
    });
  });
}
