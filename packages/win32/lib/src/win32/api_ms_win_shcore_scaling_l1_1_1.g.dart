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

final _api_ms_win_shcore_scaling_l1_1_1 = DynamicLibrary.open(
  'api-ms-win-shcore-scaling-l1-1-1.dll',
);

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
  HMONITOR hmonitor,
  MONITOR_DPI_TYPE dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
) {
  final hr$ = HRESULT(_GetDpiForMonitor(hmonitor, dpiType, dpiX, dpiY));
  if (hr$.isError) throw WindowsException(hr$);
}

final _GetDpiForMonitor = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint32>, Pointer<Uint32>)
    >('GetDpiForMonitor');

/// Retrieves the dots per inch (dpi) awareness of the specified process.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getprocessdpiawareness>.
///
/// {@category shcore}
PROCESS_DPI_AWARENESS GetProcessDpiAwareness(HANDLE? hprocess) {
  final value = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(_GetProcessDpiAwareness(hprocess ?? nullptr, value));
  if (hr$.isError) {
    free(value);
    throw WindowsException(hr$);
  }
  final result$ = value.value;
  free(value);
  return .new(result$);
}

final _GetProcessDpiAwareness = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetProcessDpiAwareness');

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
DEVICE_SCALE_FACTOR GetScaleFactorForMonitor(HMONITOR hMon) {
  final pScale = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(_GetScaleFactorForMonitor(hMon, pScale));
  if (hr$.isError) {
    free(pScale);
    throw WindowsException(hr$);
  }
  final result$ = pScale.value;
  free(pScale);
  return .new(result$);
}

final _GetScaleFactorForMonitor = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetScaleFactorForMonitor');

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

final _SetProcessDpiAwareness = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetProcessDpiAwareness',
    );
