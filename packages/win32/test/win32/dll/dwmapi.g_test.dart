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
  group('dwmapi.dll', () {
    test('DwmEnableBlurBehindWindow can be instantiated', () {
      check(_DwmEnableBlurBehindWindow).isA<Function>();
    });
    test('DwmEnableMMCSS can be instantiated', () {
      check(_DwmEnableMMCSS).isA<Function>();
    });
    test('DwmExtendFrameIntoClientArea can be instantiated', () {
      check(_DwmExtendFrameIntoClientArea).isA<Function>();
    });
    test('DwmFlush can be instantiated', () {
      check(_DwmFlush).isA<Function>();
    });
    test('DwmGetColorizationColor can be instantiated', () {
      check(_DwmGetColorizationColor).isA<Function>();
    });
    test('DwmGetTransportAttributes can be instantiated', () {
      check(_DwmGetTransportAttributes).isA<Function>();
    });
    test('DwmGetWindowAttribute can be instantiated', () {
      check(_DwmGetWindowAttribute).isA<Function>();
    });
    test('DwmInvalidateIconicBitmaps can be instantiated', () {
      check(_DwmInvalidateIconicBitmaps).isA<Function>();
    });
    test('DwmRenderGesture can be instantiated', () {
      check(_DwmRenderGesture).isA<Function>();
    });
    test('DwmSetWindowAttribute can be instantiated', () {
      check(_DwmSetWindowAttribute).isA<Function>();
    });
    test('DwmShowContact can be instantiated', () {
      check(_DwmShowContact).isA<Function>();
    });
  });
}

final _dwmapi = DynamicLibrary.open('dwmapi.dll');

final _DwmEnableBlurBehindWindow = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<DWM_BLURBEHIND>),
      int Function(Pointer, Pointer<DWM_BLURBEHIND>)
    >('DwmEnableBlurBehindWindow');

final _DwmEnableMMCSS = _dwmapi
    .lookupFunction<Int32 Function(Int32), int Function(int)>('DwmEnableMMCSS');

final _DwmExtendFrameIntoClientArea = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MARGINS>),
      int Function(Pointer, Pointer<MARGINS>)
    >('DwmExtendFrameIntoClientArea');

final _DwmFlush = _dwmapi.lookupFunction<Int32 Function(), int Function()>(
  'DwmFlush',
);

final _DwmGetColorizationColor = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Pointer<Int32>),
      int Function(Pointer<Uint32>, Pointer<Int32>)
    >('DwmGetColorizationColor');

final _DwmGetTransportAttributes = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer<Int32>, Pointer<Int32>, Pointer<Uint32>),
      int Function(Pointer<Int32>, Pointer<Int32>, Pointer<Uint32>)
    >('DwmGetTransportAttributes');

final _DwmGetWindowAttribute = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('DwmGetWindowAttribute');

final _DwmInvalidateIconicBitmaps = _dwmapi
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DwmInvalidateIconicBitmaps',
    );

final _DwmRenderGesture = _dwmapi
    .lookupFunction<
      Int32 Function(Int32, Uint32, Pointer<Uint32>, Pointer<POINT>),
      int Function(int, int, Pointer<Uint32>, Pointer<POINT>)
    >('DwmRenderGesture');

final _DwmSetWindowAttribute = _dwmapi
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('DwmSetWindowAttribute');

final _DwmShowContact = _dwmapi
    .lookupFunction<Int32 Function(Uint32, Uint32), int Function(int, int)>(
      'DwmShowContact',
    );
