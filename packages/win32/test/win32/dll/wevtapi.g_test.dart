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
  group('wevtapi.dll', () {
    test('EvtClose can be instantiated', () {
      check(_EvtClose).isA<Function>();
    });
    test('EvtCreateBookmark can be instantiated', () {
      check(_EvtCreateBookmark).isA<Function>();
    });
    test('EvtCreateRenderContext can be instantiated', () {
      check(_EvtCreateRenderContext).isA<Function>();
    });
    test('EvtGetExtendedStatus can be instantiated', () {
      check(_EvtGetExtendedStatus).isA<Function>();
    });
    test('EvtGetQueryInfo can be instantiated', () {
      check(_EvtGetQueryInfo).isA<Function>();
    });
    test('EvtNext can be instantiated', () {
      check(_EvtNext).isA<Function>();
    });
    test('EvtOpenSession can be instantiated', () {
      check(_EvtOpenSession).isA<Function>();
    });
    test('EvtQuery can be instantiated', () {
      check(_EvtQuery).isA<Function>();
    });
    test('EvtRender can be instantiated', () {
      check(_EvtRender).isA<Function>();
    });
    test('EvtSeek can be instantiated', () {
      check(_EvtSeek).isA<Function>();
    });
    test('EvtUpdateBookmark can be instantiated', () {
      check(_EvtUpdateBookmark).isA<Function>();
    });
  });
}

final _wevtapi = DynamicLibrary.open('wevtapi.dll');

final _EvtClose = _wevtapi
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('EvtClose');

final _EvtCreateBookmark = _wevtapi
    .lookupFunction<
      IntPtr Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('EvtCreateBookmark');

final _EvtCreateRenderContext = _wevtapi
    .lookupFunction<
      IntPtr Function(Uint32, Pointer<Pointer<Utf16>>, Uint32),
      int Function(int, Pointer<Pointer<Utf16>>, int)
    >('EvtCreateRenderContext');

final _EvtGetExtendedStatus = _wevtapi
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('EvtGetExtendedStatus');

final _EvtGetQueryInfo = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Int32,
        Uint32,
        Pointer<EVT_VARIANT>,
        Pointer<Uint32>,
      ),
      int Function(int, int, int, Pointer<EVT_VARIANT>, Pointer<Uint32>)
    >('EvtGetQueryInfo');

final _EvtNext = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Uint32,
        Pointer<IntPtr>,
        Uint32,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(int, int, Pointer<IntPtr>, int, int, Pointer<Uint32>)
    >('EvtNext');

final _EvtOpenSession = _wevtapi
    .lookupFunction<
      IntPtr Function(Int32, Pointer, Uint32, Uint32),
      int Function(int, Pointer, int, int)
    >('EvtOpenSession');

final _EvtQuery = _wevtapi
    .lookupFunction<
      IntPtr Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, int)
    >('EvtQuery');

final _EvtRender = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        IntPtr,
        Uint32,
        Uint32,
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        int,
        int,
        int,
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EvtRender');

final _EvtSeek = _wevtapi
    .lookupFunction<
      Int32 Function(IntPtr, Int64, IntPtr, Uint32, Uint32),
      int Function(int, int, int, int, int)
    >('EvtSeek');

final _EvtUpdateBookmark = _wevtapi
    .lookupFunction<Int32 Function(IntPtr, IntPtr), int Function(int, int)>(
      'EvtUpdateBookmark',
    );
