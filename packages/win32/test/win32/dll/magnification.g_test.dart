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
import 'package:win32/src/_internal/magnification.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('magnification.dll', () {
    test('MagGetColorEffect can be instantiated', () {
      check(_MagGetColorEffect).isA<Function>();
    });
    test('MagGetFullscreenColorEffect can be instantiated', () {
      check(_MagGetFullscreenColorEffect).isA<Function>();
    });
    test('MagGetFullscreenTransform can be instantiated', () {
      check(_MagGetFullscreenTransform).isA<Function>();
    });
    test('MagGetImageScalingCallback can be instantiated', () {
      check(_MagGetImageScalingCallback).isA<Function>();
    });
    test('MagGetInputTransform can be instantiated', () {
      check(_MagGetInputTransform).isA<Function>();
    });
    test('MagGetWindowFilterList can be instantiated', () {
      check(_MagGetWindowFilterList).isA<Function>();
    });
    test('MagGetWindowSource can be instantiated', () {
      check(_MagGetWindowSource).isA<Function>();
    });
    test('MagGetWindowTransform can be instantiated', () {
      check(_MagGetWindowTransform).isA<Function>();
    });
    test('MagInitialize can be instantiated', () {
      check(_MagInitialize).isA<Function>();
    });
    test('MagSetColorEffect can be instantiated', () {
      check(_MagSetColorEffect).isA<Function>();
    });
    test('MagSetFullscreenColorEffect can be instantiated', () {
      check(_MagSetFullscreenColorEffect).isA<Function>();
    });
    test('MagSetFullscreenTransform can be instantiated', () {
      check(_MagSetFullscreenTransform).isA<Function>();
    });
    test('MagSetImageScalingCallback can be instantiated', () {
      check(_MagSetImageScalingCallback).isA<Function>();
    });
    test('MagSetInputTransform can be instantiated', () {
      check(MagSetInputTransform_Wrapper).isA<Function>();
    });
    test('MagSetWindowFilterList can be instantiated', () {
      check(_MagSetWindowFilterList).isA<Function>();
    });
    test('MagSetWindowSource can be instantiated', () {
      check(_MagSetWindowSource).isA<Function>();
    });
    test('MagSetWindowTransform can be instantiated', () {
      check(_MagSetWindowTransform).isA<Function>();
    });
    test('MagShowSystemCursor can be instantiated', () {
      check(_MagShowSystemCursor).isA<Function>();
    });
    test('MagUninitialize can be instantiated', () {
      check(_MagUninitialize).isA<Function>();
    });
  });
}

@Native<BOOL Function(HWND, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetColorEffect',
)
external int _MagGetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect);

@Native<BOOL Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetFullscreenColorEffect',
)
external int _MagGetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

@Native<BOOL Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>)>(
  symbol: 'MagGetFullscreenTransform',
)
external int _MagGetFullscreenTransform(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
);

@Native<Pointer<NativeFunction<MagImageScalingCallback>> Function(HWND)>(
  symbol: 'MagGetImageScalingCallback',
)
external Pointer<NativeFunction<MagImageScalingCallback>>
_MagGetImageScalingCallback(int hwnd);

@Native<BOOL Function(Pointer<BOOL>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'MagGetInputTransform',
)
external int _MagGetInputTransform(
  Pointer<BOOL> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
);

@Native<Int32 Function(HWND, Pointer<Uint32>, Int32, Pointer<HWND>)>(
  symbol: 'MagGetWindowFilterList',
)
external int _MagGetWindowFilterList(
  int hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<HWND> pHWND,
);

@Native<BOOL Function(HWND, Pointer<RECT>)>(symbol: 'MagGetWindowSource')
external int _MagGetWindowSource(int hwnd, Pointer<RECT> pRect);

@Native<BOOL Function(HWND, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagGetWindowTransform',
)
external int _MagGetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform);

@Native<BOOL Function()>(symbol: 'MagInitialize')
external int _MagInitialize();

@Native<BOOL Function(HWND, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetColorEffect',
)
external int _MagSetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect);

@Native<BOOL Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetFullscreenColorEffect',
)
external int _MagSetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

@Native<BOOL Function(Float, Int32, Int32)>(symbol: 'MagSetFullscreenTransform')
external int _MagSetFullscreenTransform(
  double magLevel,
  int xOffset,
  int yOffset,
);

@Native<BOOL Function(HWND, Pointer<NativeFunction<MagImageScalingCallback>>)>(
  symbol: 'MagSetImageScalingCallback',
)
external int _MagSetImageScalingCallback(
  int hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
);

@Native<BOOL Function(HWND, Uint32, Int32, Pointer<HWND>)>(
  symbol: 'MagSetWindowFilterList',
)
external int _MagSetWindowFilterList(
  int hwnd,
  int dwFilterMode,
  int count,
  Pointer<HWND> pHWND,
);

@Native<BOOL Function(HWND, RECT)>(symbol: 'MagSetWindowSource')
external int _MagSetWindowSource(int hwnd, RECT rect);

@Native<BOOL Function(HWND, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagSetWindowTransform',
)
external int _MagSetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform);

@Native<BOOL Function(BOOL)>(symbol: 'MagShowSystemCursor')
external int _MagShowSystemCursor(int fShowCursor);

@Native<BOOL Function()>(symbol: 'MagUninitialize')
external int _MagUninitialize();
