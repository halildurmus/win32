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
  group('wtsapi32.dll', () {
    test('WTSRegisterSessionNotification can be instantiated', () {
      check(_WTSRegisterSessionNotification).isA<Function>();
    });
    test('WTSUnRegisterSessionNotification can be instantiated', () {
      check(_WTSUnRegisterSessionNotification).isA<Function>();
    });
  });
}

final _wtsapi32 = DynamicLibrary.open('wtsapi32.dll');

final _WTSRegisterSessionNotification = _wtsapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WTSRegisterSessionNotification');

final _WTSUnRegisterSessionNotification = _wtsapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WTSUnRegisterSessionNotification',
    );
