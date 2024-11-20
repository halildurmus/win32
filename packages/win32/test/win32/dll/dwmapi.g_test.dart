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

@Native<Int32 Function(Pointer, Pointer<DWM_BLURBEHIND>)>(
  symbol: 'DwmEnableBlurBehindWindow',
)
external int _DwmEnableBlurBehindWindow(
  Pointer hWnd,
  Pointer<DWM_BLURBEHIND> pBlurBehind,
);

@Native<Int32 Function(Int32)>(symbol: 'DwmEnableMMCSS')
external int _DwmEnableMMCSS(int fEnableMMCSS);

@Native<Int32 Function(Pointer, Pointer<MARGINS>)>(
  symbol: 'DwmExtendFrameIntoClientArea',
)
external int _DwmExtendFrameIntoClientArea(
  Pointer hWnd,
  Pointer<MARGINS> pMarInset,
);

@Native<Int32 Function()>(symbol: 'DwmFlush')
external int _DwmFlush();

@Native<Int32 Function(Pointer<Uint32>, Pointer<Int32>)>(
  symbol: 'DwmGetColorizationColor',
)
external int _DwmGetColorizationColor(
  Pointer<Uint32> pcrColorization,
  Pointer<Int32> pfOpaqueBlend,
);

@Native<Int32 Function(Pointer<Int32>, Pointer<Int32>, Pointer<Uint32>)>(
  symbol: 'DwmGetTransportAttributes',
)
external int _DwmGetTransportAttributes(
  Pointer<Int32> pfIsRemoting,
  Pointer<Int32> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
);

@Native<Int32 Function(Pointer, Uint32, Pointer, Uint32)>(
  symbol: 'DwmGetWindowAttribute',
)
external int _DwmGetWindowAttribute(
  Pointer hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);

@Native<Int32 Function(Pointer)>(symbol: 'DwmInvalidateIconicBitmaps')
external int _DwmInvalidateIconicBitmaps(Pointer hwnd);

@Native<Int32 Function(Int32, Uint32, Pointer<Uint32>, Pointer<POINT>)>(
  symbol: 'DwmRenderGesture',
)
external int _DwmRenderGesture(
  int gt,
  int cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
);

@Native<Int32 Function(Pointer, Uint32, Pointer, Uint32)>(
  symbol: 'DwmSetWindowAttribute',
)
external int _DwmSetWindowAttribute(
  Pointer hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);

@Native<Int32 Function(Uint32, Uint32)>(symbol: 'DwmShowContact')
external int _DwmShowContact(int dwPointerID, int eShowContact);
