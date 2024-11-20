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

@Native<Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetColorEffect',
)
external int _MagGetColorEffect(Pointer hwnd, Pointer<MAGCOLOREFFECT> pEffect);

@Native<Int32 Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetFullscreenColorEffect',
)
external int _MagGetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

@Native<Int32 Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>)>(
  symbol: 'MagGetFullscreenTransform',
)
external int _MagGetFullscreenTransform(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
);

@Native<Pointer<NativeFunction<MagImageScalingCallback>> Function(Pointer)>(
  symbol: 'MagGetImageScalingCallback',
)
external Pointer<NativeFunction<MagImageScalingCallback>>
_MagGetImageScalingCallback(Pointer hwnd);

@Native<Int32 Function(Pointer<Int32>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'MagGetInputTransform',
)
external int _MagGetInputTransform(
  Pointer<Int32> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
);

@Native<Int32 Function(Pointer, Pointer<Uint32>, Int32, Pointer<Pointer>)>(
  symbol: 'MagGetWindowFilterList',
)
external int _MagGetWindowFilterList(
  Pointer hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<Pointer> pHWND,
);

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'MagGetWindowSource')
external int _MagGetWindowSource(Pointer hwnd, Pointer<RECT> pRect);

@Native<Int32 Function(Pointer, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagGetWindowTransform',
)
external int _MagGetWindowTransform(
  Pointer hwnd,
  Pointer<MAGTRANSFORM> pTransform,
);

@Native<Int32 Function()>(symbol: 'MagInitialize')
external int _MagInitialize();

@Native<Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetColorEffect',
)
external int _MagSetColorEffect(Pointer hwnd, Pointer<MAGCOLOREFFECT> pEffect);

@Native<Int32 Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetFullscreenColorEffect',
)
external int _MagSetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

@Native<Int32 Function(Float, Int32, Int32)>(
  symbol: 'MagSetFullscreenTransform',
)
external int _MagSetFullscreenTransform(
  double magLevel,
  int xOffset,
  int yOffset,
);

@Native<
  Int32 Function(Pointer, Pointer<NativeFunction<MagImageScalingCallback>>)
>(symbol: 'MagSetImageScalingCallback')
external int _MagSetImageScalingCallback(
  Pointer hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
);

@Native<Int32 Function(Pointer, Uint32, Int32, Pointer<Pointer>)>(
  symbol: 'MagSetWindowFilterList',
)
external int _MagSetWindowFilterList(
  Pointer hwnd,
  int dwFilterMode,
  int count,
  Pointer<Pointer> pHWND,
);

@Native<Int32 Function(Pointer, RECT)>(symbol: 'MagSetWindowSource')
external int _MagSetWindowSource(Pointer hwnd, RECT rect);

@Native<Int32 Function(Pointer, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagSetWindowTransform',
)
external int _MagSetWindowTransform(
  Pointer hwnd,
  Pointer<MAGTRANSFORM> pTransform,
);

@Native<Int32 Function(Int32)>(symbol: 'MagShowSystemCursor')
external int _MagShowSystemCursor(int fShowCursor);

@Native<Int32 Function()>(symbol: 'MagUninitialize')
external int _MagUninitialize();
