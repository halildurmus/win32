// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _magnification = DynamicLibrary.open('magnification.dll');

/// Gets the color transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetcoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetColorEffect(HWND hwnd, Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagGetColorEffect(hwnd, pEffect) != FALSE;

final _MagGetColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>),
      int Function(Pointer, Pointer<MAGCOLOREFFECT>)
    >('MagGetColorEffect');

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

final _MagGetFullscreenColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer<MAGCOLOREFFECT>),
      int Function(Pointer<MAGCOLOREFFECT>)
    >('MagGetFullscreenColorEffect');

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

final _MagGetFullscreenTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>),
      int Function(Pointer<Float>, Pointer<Int32>, Pointer<Int32>)
    >('MagGetFullscreenTransform');

/// Retrieves the registered callback function that implements a custom
/// transform for image scaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetimagescalingcallback>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
Pointer<NativeFunction<MagImageScalingCallback>> MagGetImageScalingCallback(
  HWND hwnd,
) => _MagGetImageScalingCallback(hwnd);

final _MagGetImageScalingCallback = _magnification
    .lookupFunction<
      Pointer<NativeFunction<MagImageScalingCallback>> Function(Pointer),
      Pointer<NativeFunction<MagImageScalingCallback>> Function(Pointer)
    >('MagGetImageScalingCallback');

/// Retrieves the current input transformation for pen and touch input,
/// represented as a source rectangle and a destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetinputtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetInputTransform(
  Pointer<Int32> pfEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) => _MagGetInputTransform(pfEnabled, pRectSource, pRectDest) != FALSE;

final _MagGetInputTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer<Int32>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<Int32>, Pointer<RECT>, Pointer<RECT>)
    >('MagGetInputTransform');

/// Retrieves the list of windows that are magnified or excluded from
/// magnification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowfilterlist>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
int MagGetWindowFilterList(
  HWND hwnd,
  Pointer<Uint32> pdwFilterMode,
  int count,
  Pointer<Pointer> pHWND,
) => _MagGetWindowFilterList(hwnd, pdwFilterMode, count, pHWND);

final _MagGetWindowFilterList = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Int32, Pointer<Pointer>),
      int Function(Pointer, Pointer<Uint32>, int, Pointer<Pointer>)
    >('MagGetWindowFilterList');

/// Gets the rectangle of the area that is being magnified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowsource>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetWindowSource(HWND hwnd, Pointer<RECT> pRect) =>
    _MagGetWindowSource(hwnd, pRect) != FALSE;

final _MagGetWindowSource = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('MagGetWindowSource');

/// Retrieves the transformation matrix associated with a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maggetwindowtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagGetWindowTransform(HWND hwnd, Pointer<MAGTRANSFORM> pTransform) =>
    _MagGetWindowTransform(hwnd, pTransform) != FALSE;

final _MagGetWindowTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGTRANSFORM>),
      int Function(Pointer, Pointer<MAGTRANSFORM>)
    >('MagGetWindowTransform');

/// Creates and initializes the magnifier run-time objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maginitialize>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagInitialize() => _MagInitialize() != FALSE;

final _MagInitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagInitialize');

/// Sets the color transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetcoloreffect>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetColorEffect(HWND hwnd, Pointer<MAGCOLOREFFECT> pEffect) =>
    _MagSetColorEffect(hwnd, pEffect) != FALSE;

final _MagSetColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGCOLOREFFECT>),
      int Function(Pointer, Pointer<MAGCOLOREFFECT>)
    >('MagSetColorEffect');

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

final _MagSetFullscreenColorEffect = _magnification
    .lookupFunction<
      Int32 Function(Pointer<MAGCOLOREFFECT>),
      int Function(Pointer<MAGCOLOREFFECT>)
    >('MagSetFullscreenColorEffect');

/// Changes the magnification settings for the full-screen magnifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetfullscreentransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetFullscreenTransform(double magLevel, int xOffset, int yOffset) =>
    _MagSetFullscreenTransform(magLevel, xOffset, yOffset) != FALSE;

final _MagSetFullscreenTransform = _magnification
    .lookupFunction<
      Int32 Function(Float, Int32, Int32),
      int Function(double, int, int)
    >('MagSetFullscreenTransform');

/// Sets the callback function for external image filtering and scaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetimagescalingcallback>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetImageScalingCallback(
  HWND hwnd,
  Pointer<NativeFunction<MagImageScalingCallback>> callback,
) => _MagSetImageScalingCallback(hwnd, callback) != FALSE;

final _MagSetImageScalingCallback = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<MagImageScalingCallback>>),
      int Function(Pointer, Pointer<NativeFunction<MagImageScalingCallback>>)
    >('MagSetImageScalingCallback');

/// Sets the current active input transformation for pen and touch input,
/// represented as a source rectangle and a destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetinputtransform>.
///
/// {@category magnification}
Win32Result<bool> MagSetInputTransform(
  bool fEnabled,
  Pointer<RECT> pRectSource,
  Pointer<RECT> pRectDest,
) {
  resolveGetLastError();
  final result_ = _MagSetInputTransform(
    fEnabled ? TRUE : FALSE,
    pRectSource,
    pRectDest,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MagSetInputTransform = _magnification
    .lookupFunction<
      Int32 Function(Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(int, Pointer<RECT>, Pointer<RECT>)
    >('MagSetInputTransform');

/// Sets the list of windows to be magnified or the list of windows to be
/// excluded from magnification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowfilterlist>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowFilterList(
  HWND hwnd,
  MW_FILTERMODE dwFilterMode,
  int count,
  Pointer<Pointer> pHWND,
) => _MagSetWindowFilterList(hwnd, dwFilterMode, count, pHWND) != FALSE;

final _MagSetWindowFilterList = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('MagSetWindowFilterList');

/// Sets the source rectangle for the magnification window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowsource>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowSource(HWND hwnd, RECT rect) =>
    _MagSetWindowSource(hwnd, rect) != FALSE;

final _MagSetWindowSource = _magnification
    .lookupFunction<Int32 Function(Pointer, RECT), int Function(Pointer, RECT)>(
      'MagSetWindowSource',
    );

/// Sets the transformation matrix for a magnifier control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magsetwindowtransform>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagSetWindowTransform(HWND hwnd, Pointer<MAGTRANSFORM> pTransform) =>
    _MagSetWindowTransform(hwnd, pTransform) != FALSE;

final _MagSetWindowTransform = _magnification
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MAGTRANSFORM>),
      int Function(Pointer, Pointer<MAGTRANSFORM>)
    >('MagSetWindowTransform');

/// Shows or hides the system cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-magshowsystemcursor>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagShowSystemCursor(bool fShowCursor) =>
    _MagShowSystemCursor(fShowCursor ? TRUE : FALSE) != FALSE;

final _MagShowSystemCursor = _magnification
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'MagShowSystemCursor',
    );

/// Destroys the magnifier run-time objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nf-magnification-maguninitialize>.
///
/// {@category magnification}
@pragma('vm:prefer-inline')
bool MagUninitialize() => _MagUninitialize() != FALSE;

final _MagUninitialize = _magnification
    .lookupFunction<Int32 Function(), int Function()>('MagUninitialize');
