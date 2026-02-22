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
import 'package:win32/src/_internal/wevtapi.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('wevtapi.dll', () {
    test('EvtClose can be instantiated', () {
      check(EvtClose_Wrapper).isA<Function>();
    });
    test('EvtCreateBookmark can be instantiated', () {
      check(EvtCreateBookmark_Wrapper).isA<Function>();
    });
    test('EvtCreateRenderContext can be instantiated', () {
      check(EvtCreateRenderContext_Wrapper).isA<Function>();
    });
    test('EvtGetExtendedStatus can be instantiated', () {
      check(_EvtGetExtendedStatus).isA<Function>();
    });
    test('EvtGetQueryInfo can be instantiated', () {
      check(EvtGetQueryInfo_Wrapper).isA<Function>();
    });
    test('EvtNext can be instantiated', () {
      check(EvtNext_Wrapper).isA<Function>();
    });
    test('EvtOpenSession can be instantiated', () {
      check(EvtOpenSession_Wrapper).isA<Function>();
    });
    test('EvtQuery can be instantiated', () {
      check(EvtQuery_Wrapper).isA<Function>();
    });
    test('EvtRender can be instantiated', () {
      check(EvtRender_Wrapper).isA<Function>();
    });
    test('EvtSeek can be instantiated', () {
      check(EvtSeek_Wrapper).isA<Function>();
    });
    test('EvtUpdateBookmark can be instantiated', () {
      check(EvtUpdateBookmark_Wrapper).isA<Function>();
    });
  });
}

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Pointer<Uint32>)>(
  symbol: 'EvtGetExtendedStatus',
)
external int _EvtGetExtendedStatus(
  int bufferSize,
  Pointer<Utf16> buffer,
  Pointer<Uint32> bufferUsed,
);
