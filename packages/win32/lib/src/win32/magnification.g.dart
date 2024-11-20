// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/magnification.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Gets the color transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetcoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagGetColorEffect(hwnd, pEffect) != FALSE;

@Native<BOOL Function(HWND, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetColorEffect',
)
external int _MagGetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect);

/// Retrieves the color transformation matrix associated with the full-screen
/// magnifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetfullscreencoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagGetFullscreenColorEffect(pEffect) != FALSE;

@Native<BOOL Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagGetFullscreenColorEffect',
)
external int _MagGetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

/// Retrieves the magnification settings for the full-screen magnifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetfullscreentransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetFullscreenTransform(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
) => _MagGetFullscreenTransform(pMagLevel, pxOffset, pyOffset) != FALSE;

@Native<BOOL Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>)>(
  symbol: 'MagGetFullscreenTransform',
)
external int _MagGetFullscreenTransform(
  Pointer<Float> pMagLevel,
  Pointer<Int32> pxOffset,
  Pointer<Int32> pyOffset,
);

/// Retrieves the registered callback function that implements a custom
/// transform for image scaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetimagescalingcallback>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
Pointer<NativeFunction<MagImageScalingCallback>> MagGetImageScalingCallback(
  int hwnd,
) => _MagGetImageScalingCallback(hwnd);

@Native<Pointer<NativeFunction<MagImageScalingCallback>> Function(HWND)>(
  symbol: 'MagGetImageScalingCallback',
)
external Pointer<NativeFunction<MagImageScalingCallback>>
_MagGetImageScalingCallback(int hwnd);

/// Retrieves the current input transformation for pen and touch input,
/// represented as a source rectangle and a destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetinputtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetInputTransform(
  Pointer<BOOL> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) => _MagGetInputTransform(pfEnabled, pRectSource, pRectDest) != FALSE;

@Native<BOOL Function(Pointer<BOOL>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'MagGetInputTransform',
)
external int _MagGetInputTransform(
  Pointer<BOOL> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
);

/// Retrieves the list of windows that are magnified or excluded from
/// magnification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowfilterlist>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
int MagGetWindowFilterList(
  int hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<HWND> pHWND,
) => _MagGetWindowFilterList(hwnd, pdwFilterMode, count, pHWND);

@Native<Int32 Function(HWND, Pointer<Uint32>, Int32, Pointer<HWND>)>(
  symbol: 'MagGetWindowFilterList',
)
external int _MagGetWindowFilterList(
  int hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<HWND> pHWND,
);

/// Gets the rectangle of the area that is being magnified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowsource>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetWindowSource(int hwnd, Pointer<RECT> pRect) =>
    _MagGetWindowSource(hwnd, pRect) != FALSE;

@Native<BOOL Function(HWND, Pointer<RECT>)>(symbol: 'MagGetWindowSource')
external int _MagGetWindowSource(int hwnd, Pointer<RECT> pRect);

/// Retrieves the transformation matrix associated with a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform) =>
    _MagGetWindowTransform(hwnd, pTransform) != FALSE;

@Native<BOOL Function(HWND, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagGetWindowTransform',
)
external int _MagGetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform);

/// Creates and initializes the magnifier run-time objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maginitialize>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagInitialize() => _MagInitialize() != FALSE;

@Native<BOOL Function()>(symbol: 'MagInitialize')
external int _MagInitialize();

/// Sets the color transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetcoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagSetColorEffect(hwnd, pEffect) != FALSE;

@Native<BOOL Function(HWND, Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetColorEffect',
)
external int _MagSetColorEffect(int hwnd, Pointer<MAGCOLOREFFECT> pEffect);

/// Changes the color transformation matrix associated with the full-screen
/// magnifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetfullscreencoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagSetFullscreenColorEffect(pEffect) != FALSE;

@Native<BOOL Function(Pointer<MAGCOLOREFFECT>)>(
  symbol: 'MagSetFullscreenColorEffect',
)
external int _MagSetFullscreenColorEffect(Pointer<MAGCOLOREFFECT> pEffect);

/// Changes the magnification settings for the full-screen magnifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetfullscreentransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetFullscreenTransform(double magLevel, int xOffset, int yOffset) =>
    _MagSetFullscreenTransform(magLevel, xOffset, yOffset) != FALSE;

@Native<BOOL Function(Float, Int32, Int32)>(symbol: 'MagSetFullscreenTransform')
external int _MagSetFullscreenTransform(
  double magLevel,
  int xOffset,
  int yOffset,
);

/// Sets the callback function for external image filtering and scaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetimagescalingcallback>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetImageScalingCallback(
  int hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
) => _MagSetImageScalingCallback(hwnd, callback) != FALSE;

@Native<BOOL Function(HWND, Pointer<NativeFunction<MagImageScalingCallback>>)>(
  symbol: 'MagSetImageScalingCallback',
)
external int _MagSetImageScalingCallback(
  int hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
);

/// Sets the current active input transformation for pen and touch input,
/// represented as a source rectangle and a destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetinputtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetInputTransform(
  bool fEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) =>
    MagSetInputTransform_Wrapper(
      fEnabled ? TRUE : FALSE,
      pRectSource,
      pRectDest,
    ) !=
    FALSE;

/// Sets the list of windows to be magnified or the list of windows to be
/// excluded from magnification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowfilterlist>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowFilterList(
  int hwnd,
  MW_FILTERMODE dwFilterMode,
  int count,
  Pointer<HWND> pHWND,
) => _MagSetWindowFilterList(hwnd, dwFilterMode, count, pHWND) != FALSE;

@Native<BOOL Function(HWND, Uint32, Int32, Pointer<HWND>)>(
  symbol: 'MagSetWindowFilterList',
)
external int _MagSetWindowFilterList(
  int hwnd,
  int dwFilterMode,
  int count,
  Pointer<HWND> pHWND,
);

/// Sets the source rectangle for the magnification window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowsource>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowSource(int hwnd, RECT rect) =>
    _MagSetWindowSource(hwnd, rect) != FALSE;

@Native<BOOL Function(HWND, RECT)>(symbol: 'MagSetWindowSource')
external int _MagSetWindowSource(int hwnd, RECT rect);

/// Sets the transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform) =>
    _MagSetWindowTransform(hwnd, pTransform) != FALSE;

@Native<BOOL Function(HWND, Pointer<MAGTRANSFORM>)>(
  symbol: 'MagSetWindowTransform',
)
external int _MagSetWindowTransform(int hwnd, Pointer<MAGTRANSFORM> pTransform);

/// Shows or hides the system cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magshowsystemcursor>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagShowSystemCursor(bool fShowCursor) =>
    _MagShowSystemCursor(fShowCursor ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(BOOL)>(symbol: 'MagShowSystemCursor')
external int _MagShowSystemCursor(int fShowCursor);

/// Destroys the magnifier run-time objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maguninitialize>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagUninitialize() => _MagUninitialize() != FALSE;

@Native<BOOL Function()>(symbol: 'MagUninitialize')
external int _MagUninitialize();
