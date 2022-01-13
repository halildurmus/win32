// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../ui/magnification/structs.g.dart';
import '../../ui/magnification/callbacks.g.dart'; // -----------------------------------------------------------------------

// magnification.dll
// -----------------------------------------------------------------------
final _magnification = DynamicLibrary.open('magnification.dll');

int MagGetColorEffect(
  int hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
) =>
    _MagGetColorEffect(
      hwnd,
      pEffect,
    );

late final _MagGetColorEffect = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
),
    int Function(
  int hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
)>('MagGetColorEffect');

int MagGetFullscreenColorEffect(
  Pointer<MAGCOLOREFFECT> pEffect,
) =>
    _MagGetFullscreenColorEffect(
      pEffect,
    );

late final _MagGetFullscreenColorEffect = _magnification.lookupFunction<
    Int32 Function(
  Pointer<MAGCOLOREFFECT> pEffect,
),
    int Function(
  Pointer<MAGCOLOREFFECT> pEffect,
)>('MagGetFullscreenColorEffect');

int MagGetFullscreenTransform(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
) =>
    _MagGetFullscreenTransform(
      pMagLevel,
      pxOffset,
      pyOffset,
    );

late final _MagGetFullscreenTransform = _magnification.lookupFunction<
    Int32 Function(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
),
    int Function(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
)>('MagGetFullscreenTransform');

Pointer<NativeFunction<MagImageScalingCallback>> MagGetImageScalingCallback(
  int hwnd,
) =>
    _MagGetImageScalingCallback(
      hwnd,
    );

late final _MagGetImageScalingCallback = _magnification.lookupFunction<
    Pointer<NativeFunction<MagImageScalingCallback>> Function(
  IntPtr hwnd,
),
    Pointer<NativeFunction<MagImageScalingCallback>> Function(
  int hwnd,
)>('MagGetImageScalingCallback');

int MagGetInputTransform(
  Pointer<Int32> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) =>
    _MagGetInputTransform(
      pfEnabled,
      pRectSource,
      pRectDest,
    );

late final _MagGetInputTransform = _magnification.lookupFunction<
    Int32 Function(
  Pointer<Int32> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
),
    int Function(
  Pointer<Int32> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
)>('MagGetInputTransform');

int MagGetWindowFilterList(
  int hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<IntPtr> pHWND,
) =>
    _MagGetWindowFilterList(
      hwnd,
      pdwFilterMode,
      count,
      pHWND,
    );

late final _MagGetWindowFilterList = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Uint32> pdwFilterMode,
  Int32 count,
  Pointer<IntPtr> pHWND,
),
    int Function(
  int hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<IntPtr> pHWND,
)>('MagGetWindowFilterList');

int MagGetWindowSource(
  int hwnd,
  Pointer<RECT> pRect,
) =>
    _MagGetWindowSource(
      hwnd,
      pRect,
    );

late final _MagGetWindowSource = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<RECT> pRect,
),
    int Function(
  int hwnd,
  Pointer<RECT> pRect,
)>('MagGetWindowSource');

int MagGetWindowTransform(
  int hwnd,
  Pointer<MAGTRANSFORM> pTransform,
) =>
    _MagGetWindowTransform(
      hwnd,
      pTransform,
    );

late final _MagGetWindowTransform = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<MAGTRANSFORM> pTransform,
),
    int Function(
  int hwnd,
  Pointer<MAGTRANSFORM> pTransform,
)>('MagGetWindowTransform');

int MagInitialize() => _MagInitialize();

late final _MagInitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagInitialize');

int MagSetColorEffect(
  int hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
) =>
    _MagSetColorEffect(
      hwnd,
      pEffect,
    );

late final _MagSetColorEffect = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
),
    int Function(
  int hwnd,
  Pointer<MAGCOLOREFFECT> pEffect,
)>('MagSetColorEffect');

int MagSetFullscreenColorEffect(
  Pointer<MAGCOLOREFFECT> pEffect,
) =>
    _MagSetFullscreenColorEffect(
      pEffect,
    );

late final _MagSetFullscreenColorEffect = _magnification.lookupFunction<
    Int32 Function(
  Pointer<MAGCOLOREFFECT> pEffect,
),
    int Function(
  Pointer<MAGCOLOREFFECT> pEffect,
)>('MagSetFullscreenColorEffect');

int MagSetFullscreenTransform(
  double magLevel,
  int xOffset,
  int yOffset,
) =>
    _MagSetFullscreenTransform(
      magLevel,
      xOffset,
      yOffset,
    );

late final _MagSetFullscreenTransform = _magnification.lookupFunction<
    Int32 Function(
  Float magLevel,
  Int32 xOffset,
  Int32 yOffset,
),
    int Function(
  double magLevel,
  int xOffset,
  int yOffset,
)>('MagSetFullscreenTransform');

int MagSetImageScalingCallback(
  int hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
) =>
    _MagSetImageScalingCallback(
      hwnd,
      callback,
    );

late final _MagSetImageScalingCallback = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
),
    int Function(
  int hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
)>('MagSetImageScalingCallback');

int MagSetInputTransform(
  int fEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) =>
    _MagSetInputTransform(
      fEnabled,
      pRectSource,
      pRectDest,
    );

late final _MagSetInputTransform = _magnification.lookupFunction<
    Int32 Function(
  Int32 fEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
),
    int Function(
  int fEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
)>('MagSetInputTransform');

int MagSetWindowFilterList(
  int hwnd,
  int dwFilterMode,
  int count,
  Pointer<IntPtr> pHWND,
) =>
    _MagSetWindowFilterList(
      hwnd,
      dwFilterMode,
      count,
      pHWND,
    );

late final _MagSetWindowFilterList = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 dwFilterMode,
  Int32 count,
  Pointer<IntPtr> pHWND,
),
    int Function(
  int hwnd,
  int dwFilterMode,
  int count,
  Pointer<IntPtr> pHWND,
)>('MagSetWindowFilterList');

int MagSetWindowSource(
  int hwnd,
  RECT rect,
) =>
    _MagSetWindowSource(
      hwnd,
      rect,
    );

late final _MagSetWindowSource = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  RECT rect,
),
    int Function(
  int hwnd,
  RECT rect,
)>('MagSetWindowSource');

int MagSetWindowTransform(
  int hwnd,
  Pointer<MAGTRANSFORM> pTransform,
) =>
    _MagSetWindowTransform(
      hwnd,
      pTransform,
    );

late final _MagSetWindowTransform = _magnification.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<MAGTRANSFORM> pTransform,
),
    int Function(
  int hwnd,
  Pointer<MAGTRANSFORM> pTransform,
)>('MagSetWindowTransform');

int MagShowSystemCursor(
  int fShowCursor,
) =>
    _MagShowSystemCursor(
      fShowCursor,
    );

late final _MagShowSystemCursor = _magnification.lookupFunction<
    Int32 Function(
  Int32 fShowCursor,
),
    int Function(
  int fShowCursor,
)>('MagShowSystemCursor');

int MagUninitialize() => _MagUninitialize();

late final _MagUninitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagUninitialize');
