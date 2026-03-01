// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/dxva2.g.dart';
import '../_internal/win32.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Closes a handle to a physical monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitor>.
///
/// {@category dxva2}
Win32Result<bool> DestroyPhysicalMonitor(HANDLE hMonitor) {
  final result_ = DestroyPhysicalMonitor_Wrapper(hMonitor);
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes an array of physical monitor handles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitors>.
///
/// {@category dxva2}
Win32Result<bool> DestroyPhysicalMonitors(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) {
  final result_ = DestroyPhysicalMonitors_Wrapper(
    dwPhysicalMonitorArraySize,
    pPhysicalMonitorArray,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a monitor's minimum, maximum, and current brightness settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorbrightness>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorBrightness(
  HANDLE hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
) {
  final result_ = GetMonitorBrightness_Wrapper(
    hMonitor,
    pdwMinimumBrightness,
    pdwCurrentBrightness,
    pdwMaximumBrightness,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves the configuration capabilities of a monitor.
///
/// Call this function to find out which high-level monitor configuration
/// functions are supported by the monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcapabilities>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorCapabilities(
  HANDLE hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
) => _GetMonitorCapabilities(
  hMonitor,
  pdwMonitorCapabilities,
  pdwSupportedColorTemperatures,
);

@Native<Int32 Function(Pointer, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetMonitorCapabilities',
)
external int _GetMonitorCapabilities(
  Pointer hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
);

/// Retrieves a monitor's current color temperature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcolortemperature>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorColorTemperature(
  HANDLE hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
) {
  final result_ = GetMonitorColorTemperature_Wrapper(
    hMonitor,
    pctCurrentColorTemperature,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves a monitor's minimum, maximum, and current contrast settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcontrast>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorContrast(
  HANDLE hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
) {
  final result_ = GetMonitorContrast_Wrapper(
    hMonitor,
    pdwMinimumContrast,
    pdwCurrentContrast,
    pdwMaximumContrast,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves a monitor's minimum, maximum, and current horizontal or vertical
/// position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareaposition>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorDisplayAreaPosition(
  HANDLE hMonitor,
  MC_POSITION_TYPE ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
) {
  final result_ = GetMonitorDisplayAreaPosition_Wrapper(
    hMonitor,
    ptPositionType,
    pdwMinimumPosition,
    pdwCurrentPosition,
    pdwMaximumPosition,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves a monitor's minimum, maximum, and current width or height.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareasize>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorDisplayAreaSize(
  HANDLE hMonitor,
  MC_SIZE_TYPE stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
) {
  final result_ = GetMonitorDisplayAreaSize_Wrapper(
    hMonitor,
    stSizeType,
    pdwMinimumWidthOrHeight,
    pdwCurrentWidthOrHeight,
    pdwMaximumWidthOrHeight,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves a monitor's red, green, or blue drive value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorRedGreenOrBlueDrive(
  HANDLE hMonitor,
  MC_DRIVE_TYPE dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
) {
  final result_ = GetMonitorRedGreenOrBlueDrive_Wrapper(
    hMonitor,
    dtDriveType,
    pdwMinimumDrive,
    pdwCurrentDrive,
    pdwMaximumDrive,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves a monitor's red, green, or blue gain value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluegain>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorRedGreenOrBlueGain(
  HANDLE hMonitor,
  MC_GAIN_TYPE gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
) {
  final result_ = GetMonitorRedGreenOrBlueGain_Wrapper(
    hMonitor,
    gtGainType,
    pdwMinimumGain,
    pdwCurrentGain,
    pdwMaximumGain,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves the type of technology used by a monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitortechnologytype>.
///
/// {@category dxva2}
Win32Result<int> GetMonitorTechnologyType(
  HANDLE hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
) {
  final result_ = GetMonitorTechnologyType_Wrapper(
    hMonitor,
    pdtyDisplayTechnologyType,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves the number of physical monitors associated with an HMONITOR
/// monitor handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getnumberofphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
Win32Result<bool> GetNumberOfPhysicalMonitorsFromHMONITOR(
  HMONITOR hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
) {
  final result_ = GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(
    hMonitor,
    pdwNumberOfPhysicalMonitors,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the physical monitors associated with an HMONITOR monitor handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
Win32Result<bool> GetPhysicalMonitorsFromHMONITOR(
  HMONITOR hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) {
  final result_ = GetPhysicalMonitorsFromHMONITOR_Wrapper(
    hMonitor,
    dwPhysicalMonitorArraySize,
    pPhysicalMonitorArray,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Saves the current monitor settings to the display's nonvolatile storage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-savecurrentmonitorsettings>.
///
/// {@category dxva2}
Win32Result<int> SaveCurrentMonitorSettings(HANDLE hMonitor) {
  final result_ = SaveCurrentMonitorSettings_Wrapper(hMonitor);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets a monitor's brightness value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorbrightness>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorBrightness(HANDLE hMonitor, int dwNewBrightness) {
  final result_ = SetMonitorBrightness_Wrapper(hMonitor, dwNewBrightness);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets a monitor's color temperature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcolortemperature>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorColorTemperature(
  HANDLE hMonitor,
  MC_COLOR_TEMPERATURE ctCurrentColorTemperature,
) {
  final result_ = SetMonitorColorTemperature_Wrapper(
    hMonitor,
    ctCurrentColorTemperature,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets a monitor's contrast value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcontrast>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorContrast(HANDLE hMonitor, int dwNewContrast) {
  final result_ = SetMonitorContrast_Wrapper(hMonitor, dwNewContrast);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets the horizontal or vertical position of a monitor's display area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareaposition>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorDisplayAreaPosition(
  HANDLE hMonitor,
  MC_POSITION_TYPE ptPositionType,
  int dwNewPosition,
) {
  final result_ = SetMonitorDisplayAreaPosition_Wrapper(
    hMonitor,
    ptPositionType,
    dwNewPosition,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets the width or height of a monitor's display area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareasize>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorDisplayAreaSize(
  HANDLE hMonitor,
  MC_SIZE_TYPE stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
) {
  final result_ = SetMonitorDisplayAreaSize_Wrapper(
    hMonitor,
    stSizeType,
    dwNewDisplayAreaWidthOrHeight,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sets a monitor's red, green, or blue drive value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorRedGreenOrBlueDrive(
  HANDLE hMonitor,
  MC_DRIVE_TYPE dtDriveType,
  int dwNewDrive,
) => _SetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, dwNewDrive);

@Native<Int32 Function(Pointer, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueDrive',
)
external int _SetMonitorRedGreenOrBlueDrive(
  Pointer hMonitor,
  int dtDriveType,
  int dwNewDrive,
);

/// Sets a monitor's red, green, or blue gain value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorredgreenorbluegain>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorRedGreenOrBlueGain(
  HANDLE hMonitor,
  MC_GAIN_TYPE gtGainType,
  int dwNewGain,
) => _SetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, dwNewGain);

@Native<Int32 Function(Pointer, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueGain',
)
external int _SetMonitorRedGreenOrBlueGain(
  Pointer hMonitor,
  int gtGainType,
  int dwNewGain,
);
