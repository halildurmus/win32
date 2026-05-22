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
      check(_MagSetInputTransform).isA<Function>();
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

final _magnification = DynamicLibrary.open('magnification.dll');

final _MagGetColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>),
      int Function(Pointer, Pointer<MAGCOLOREFFECT>)
    >('MagGetColorEffect');

final _MagGetFullscreenColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer<MAGCOLOREFFECT>),
      int Function(Pointer<MAGCOLOREFFECT>)
    >('MagGetFullscreenColorEffect');

final _MagGetFullscreenTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>),
      int Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>)
    >('MagGetFullscreenTransform');

final _MagGetImageScalingCallback = _magnification
    .lookupFunction<
      Pointer<NativeFunction<MagImageScalingCallback>> Function(Pointer),
      Pointer<NativeFunction<MagImageScalingCallback>> Function(Pointer)
    >('MagGetImageScalingCallback');

final _MagGetInputTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer<Int32>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<Int32>, Pointer<RECT>, Pointer<RECT>)
    >('MagGetInputTransform');

final _MagGetWindowFilterList = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Int32, Pointer<Pointer>),
      int Function(Pointer, Pointer<Uint32>, int, Pointer<Pointer>)
    >('MagGetWindowFilterList');

final _MagGetWindowSource = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('MagGetWindowSource');

final _MagGetWindowTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGTRANSFORM>),
      int Function(Pointer, Pointer<MAGTRANSFORM>)
    >('MagGetWindowTransform');

final _MagInitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagInitialize');

final _MagSetColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>),
      int Function(Pointer, Pointer<MAGCOLOREFFECT>)
    >('MagSetColorEffect');

final _MagSetFullscreenColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer<MAGCOLOREFFECT>),
      int Function(Pointer<MAGCOLOREFFECT>)
    >('MagSetFullscreenColorEffect');

final _MagSetFullscreenTransform = _magnification
    .lookupFunction<
      Int32 Function(Float, Int32, Int32),
      int Function(double, int, int)
    >('MagSetFullscreenTransform');

final _MagSetImageScalingCallback = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<MagImageScalingCallback>>),
      int Function(Pointer, Pointer<NativeFunction<MagImageScalingCallback>>)
    >('MagSetImageScalingCallback');

final _MagSetInputTransform = _magnification
    .lookupFunction<
      Int32 Function(Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(int, Pointer<RECT>, Pointer<RECT>)
    >('MagSetInputTransform');

final _MagSetWindowFilterList = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('MagSetWindowFilterList');

final _MagSetWindowSource = _magnification
    .lookupFunction<Int32 Function(Pointer, RECT), int Function(Pointer, RECT)>(
      'MagSetWindowSource',
    );

final _MagSetWindowTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGTRANSFORM>),
      int Function(Pointer, Pointer<MAGTRANSFORM>)
    >('MagSetWindowTransform');

final _MagShowSystemCursor = _magnification
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'MagShowSystemCursor',
    );

final _MagUninitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagUninitialize');
