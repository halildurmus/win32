// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
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

/// Queries the dots per inch (dpi) of a display.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getdpiformonitor>.
///
/// {@category shcore}
@pragma('vm:prefer-inline')
void GetDpiForMonitor(
  int hmonitor,
  MONITOR_DPI_TYPE dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
) {
  final hr$ = HRESULT(_GetDpiForMonitor(hmonitor, dpiType, dpiX, dpiY));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HMONITOR, Int32, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetDpiForMonitor',
)
external int _GetDpiForMonitor(
  int hmonitor,
  int dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
);

/// Retrieves the dots per inch (dpi) awareness of the specified process.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getprocessdpiawareness>.
///
/// {@category shcore}
PROCESS_DPI_AWARENESS GetProcessDpiAwareness(int? hprocess) {
  final value = loggingCalloc<Int32>();
  final hr$ = HRESULT(_GetProcessDpiAwareness(hprocess ?? NULL, value));
  if (hr$.isError) {
    free(value);
    throw WindowsException(hr$);
  }
  final result$ = value.value;
  free(value);
  return PROCESS_DPI_AWARENESS(result$);
}

@Native<Int32 Function(HANDLE, Pointer<Int32>)>(
  symbol: 'GetProcessDpiAwareness',
)
external int _GetProcessDpiAwareness(int hprocess, Pointer<Int32> value);

/// Gets the scale factor of a specific monitor.
///
/// This function replaces GetScaleFactorForDevice.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getscalefactorformonitor>.
///
/// {@category shcore}
DEVICE_SCALE_FACTOR GetScaleFactorForMonitor(int hMon) {
  final pScale = loggingCalloc<Int32>();
  final hr$ = HRESULT(_GetScaleFactorForMonitor(hMon, pScale));
  if (hr$.isError) {
    free(pScale);
    throw WindowsException(hr$);
  }
  final result$ = pScale.value;
  free(pScale);
  return DEVICE_SCALE_FACTOR(result$);
}

@Native<Int32 Function(HMONITOR, Pointer<Int32>)>(
  symbol: 'GetScaleFactorForMonitor',
)
external int _GetScaleFactorForMonitor(int hMon, Pointer<Int32> pScale);

/// Sets the process-default DPI awareness level.
///
/// This is equivalent to calling SetProcessDpiAwarenessContext with the
/// corresponding DPI_AWARENESS_CONTEXT value.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-setprocessdpiawareness>.
///
/// {@category shcore}
@pragma('vm:prefer-inline')
void SetProcessDpiAwareness(PROCESS_DPI_AWARENESS value) {
  final hr$ = HRESULT(_SetProcessDpiAwareness(value));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Int32)>(symbol: 'SetProcessDpiAwareness')
external int _SetProcessDpiAwareness(int value);
