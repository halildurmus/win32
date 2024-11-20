// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/dxva2.g.dart';
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

/// Closes a handle to a physical monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitor>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
bool DestroyPhysicalMonitor(int hMonitor) =>
    DestroyPhysicalMonitor_Wrapper(hMonitor) != FALSE;

/// Closes an array of physical monitor handles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitors>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
bool DestroyPhysicalMonitors(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) =>
    DestroyPhysicalMonitors_Wrapper(
      dwPhysicalMonitorArraySize,
      pPhysicalMonitorArray,
    ) !=
    FALSE;

/// Retrieves a monitor's minimum, maximum, and current brightness settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorbrightness>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorBrightness(
  int hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
) => GetMonitorBrightness_Wrapper(
  hMonitor,
  pdwMinimumBrightness,
  pdwCurrentBrightness,
  pdwMaximumBrightness,
);

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
  int hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
) => _GetMonitorCapabilities(
  hMonitor,
  pdwMonitorCapabilities,
  pdwSupportedColorTemperatures,
);

@Native<Int32 Function(HANDLE, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetMonitorCapabilities',
)
external int _GetMonitorCapabilities(
  int hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
);

/// Retrieves a monitor's current color temperature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcolortemperature>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorColorTemperature(
  int hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
) => GetMonitorColorTemperature_Wrapper(hMonitor, pctCurrentColorTemperature);

/// Retrieves a monitor's minimum, maximum, and current contrast settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcontrast>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorContrast(
  int hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
) => GetMonitorContrast_Wrapper(
  hMonitor,
  pdwMinimumContrast,
  pdwCurrentContrast,
  pdwMaximumContrast,
);

/// Retrieves a monitor's minimum, maximum, and current horizontal or vertical
/// position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareaposition>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorDisplayAreaPosition(
  int hMonitor,
  MC_POSITION_TYPE ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
) => GetMonitorDisplayAreaPosition_Wrapper(
  hMonitor,
  ptPositionType,
  pdwMinimumPosition,
  pdwCurrentPosition,
  pdwMaximumPosition,
);

/// Retrieves a monitor's minimum, maximum, and current width or height.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareasize>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorDisplayAreaSize(
  int hMonitor,
  MC_SIZE_TYPE stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
) => GetMonitorDisplayAreaSize_Wrapper(
  hMonitor,
  stSizeType,
  pdwMinimumWidthOrHeight,
  pdwCurrentWidthOrHeight,
  pdwMaximumWidthOrHeight,
);

/// Retrieves a monitor's red, green, or blue drive value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorRedGreenOrBlueDrive(
  int hMonitor,
  MC_DRIVE_TYPE dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
) => GetMonitorRedGreenOrBlueDrive_Wrapper(
  hMonitor,
  dtDriveType,
  pdwMinimumDrive,
  pdwCurrentDrive,
  pdwMaximumDrive,
);

/// Retrieves a monitor's red, green, or blue gain value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluegain>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorRedGreenOrBlueGain(
  int hMonitor,
  MC_GAIN_TYPE gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
) => GetMonitorRedGreenOrBlueGain_Wrapper(
  hMonitor,
  gtGainType,
  pdwMinimumGain,
  pdwCurrentGain,
  pdwMaximumGain,
);

/// Retrieves the type of technology used by a monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitortechnologytype>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int GetMonitorTechnologyType(
  int hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
) => GetMonitorTechnologyType_Wrapper(hMonitor, pdtyDisplayTechnologyType);

/// Retrieves the number of physical monitors associated with an HMONITOR
/// monitor handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getnumberofphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
bool GetNumberOfPhysicalMonitorsFromHMONITOR(
  int hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
) =>
    GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(
      hMonitor,
      pdwNumberOfPhysicalMonitors,
    ) !=
    FALSE;

/// Retrieves the physical monitors associated with an HMONITOR monitor handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
bool GetPhysicalMonitorsFromHMONITOR(
  int hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) =>
    GetPhysicalMonitorsFromHMONITOR_Wrapper(
      hMonitor,
      dwPhysicalMonitorArraySize,
      pPhysicalMonitorArray,
    ) !=
    FALSE;

/// Saves the current monitor settings to the display's nonvolatile storage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-savecurrentmonitorsettings>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SaveCurrentMonitorSettings(int hMonitor) =>
    SaveCurrentMonitorSettings_Wrapper(hMonitor);

/// Sets a monitor's brightness value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorbrightness>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorBrightness(int hMonitor, int dwNewBrightness) =>
    SetMonitorBrightness_Wrapper(hMonitor, dwNewBrightness);

/// Sets a monitor's color temperature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcolortemperature>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorColorTemperature(
  int hMonitor,
  MC_COLOR_TEMPERATURE ctCurrentColorTemperature,
) => SetMonitorColorTemperature_Wrapper(hMonitor, ctCurrentColorTemperature);

/// Sets a monitor's contrast value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcontrast>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorContrast(int hMonitor, int dwNewContrast) =>
    SetMonitorContrast_Wrapper(hMonitor, dwNewContrast);

/// Sets the horizontal or vertical position of a monitor's display area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareaposition>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorDisplayAreaPosition(
  int hMonitor,
  MC_POSITION_TYPE ptPositionType,
  int dwNewPosition,
) => SetMonitorDisplayAreaPosition_Wrapper(
  hMonitor,
  ptPositionType,
  dwNewPosition,
);

/// Sets the width or height of a monitor's display area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareasize>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorDisplayAreaSize(
  int hMonitor,
  MC_SIZE_TYPE stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
) => SetMonitorDisplayAreaSize_Wrapper(
  hMonitor,
  stSizeType,
  dwNewDisplayAreaWidthOrHeight,
);

/// Sets a monitor's red, green, or blue drive value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
@pragma('vm:prefer-inline')
int SetMonitorRedGreenOrBlueDrive(
  int hMonitor,
  MC_DRIVE_TYPE dtDriveType,
  int dwNewDrive,
) => _SetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, dwNewDrive);

@Native<Int32 Function(HANDLE, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueDrive',
)
external int _SetMonitorRedGreenOrBlueDrive(
  int hMonitor,
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
  int hMonitor,
  MC_GAIN_TYPE gtGainType,
  int dwNewGain,
) => _SetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, dwNewGain);

@Native<Int32 Function(HANDLE, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueGain',
)
external int _SetMonitorRedGreenOrBlueGain(
  int hMonitor,
  int gtGainType,
  int dwNewGain,
);
