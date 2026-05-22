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

final _dxva2 = DynamicLibrary.open('dxva2.dll');

/// Closes a handle to a physical monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitor>.
///
/// {@category dxva2}
Win32Result<bool> DestroyPhysicalMonitor(HANDLE hMonitor) {
  resolveGetLastError();
  final result_ = _DestroyPhysicalMonitor(hMonitor);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyPhysicalMonitor = _dxva2
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyPhysicalMonitor',
    );

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
  resolveGetLastError();
  final result_ = _DestroyPhysicalMonitors(
    dwPhysicalMonitorArraySize,
    pPhysicalMonitorArray,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyPhysicalMonitors = _dxva2
    .lookupFunction<
      Int32 Function(Uint32, Pointer<PHYSICAL_MONITOR>),
      int Function(int, Pointer<PHYSICAL_MONITOR>)
    >('DestroyPhysicalMonitors');

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
  resolveGetLastError();
  final result_ = _GetMonitorBrightness(
    hMonitor,
    pdwMinimumBrightness,
    pdwCurrentBrightness,
    pdwMaximumBrightness,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorBrightness = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
    >('GetMonitorBrightness');

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

final _GetMonitorCapabilities = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint32>)
    >('GetMonitorCapabilities');

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
  resolveGetLastError();
  final result_ = _GetMonitorColorTemperature(
    hMonitor,
    pctCurrentColorTemperature,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorColorTemperature = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetMonitorColorTemperature');

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
  resolveGetLastError();
  final result_ = _GetMonitorContrast(
    hMonitor,
    pdwMinimumContrast,
    pdwCurrentContrast,
    pdwMaximumContrast,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorContrast = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
    >('GetMonitorContrast');

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
  resolveGetLastError();
  final result_ = _GetMonitorDisplayAreaPosition(
    hMonitor,
    ptPositionType,
    pdwMinimumPosition,
    pdwCurrentPosition,
    pdwMaximumPosition,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorDisplayAreaPosition = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetMonitorDisplayAreaPosition');

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
  resolveGetLastError();
  final result_ = _GetMonitorDisplayAreaSize(
    hMonitor,
    stSizeType,
    pdwMinimumWidthOrHeight,
    pdwCurrentWidthOrHeight,
    pdwMaximumWidthOrHeight,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorDisplayAreaSize = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetMonitorDisplayAreaSize');

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
  resolveGetLastError();
  final result_ = _GetMonitorRedGreenOrBlueDrive(
    hMonitor,
    dtDriveType,
    pdwMinimumDrive,
    pdwCurrentDrive,
    pdwMaximumDrive,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorRedGreenOrBlueDrive = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetMonitorRedGreenOrBlueDrive');

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
  resolveGetLastError();
  final result_ = _GetMonitorRedGreenOrBlueGain(
    hMonitor,
    gtGainType,
    pdwMinimumGain,
    pdwCurrentGain,
    pdwMaximumGain,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorRedGreenOrBlueGain = _dxva2
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetMonitorRedGreenOrBlueGain');

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
  resolveGetLastError();
  final result_ = _GetMonitorTechnologyType(
    hMonitor,
    pdtyDisplayTechnologyType,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMonitorTechnologyType = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetMonitorTechnologyType');

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
  resolveGetLastError();
  final result_ = _GetNumberOfPhysicalMonitorsFromHMONITOR(
    hMonitor,
    pdwNumberOfPhysicalMonitors,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNumberOfPhysicalMonitorsFromHMONITOR');

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
  resolveGetLastError();
  final result_ = _GetPhysicalMonitorsFromHMONITOR(
    hMonitor,
    dwPhysicalMonitorArraySize,
    pPhysicalMonitorArray,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPhysicalMonitorsFromHMONITOR = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<PHYSICAL_MONITOR>),
      int Function(Pointer, int, Pointer<PHYSICAL_MONITOR>)
    >('GetPhysicalMonitorsFromHMONITOR');

/// Saves the current monitor settings to the display's nonvolatile storage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-savecurrentmonitorsettings>.
///
/// {@category dxva2}
Win32Result<int> SaveCurrentMonitorSettings(HANDLE hMonitor) {
  resolveGetLastError();
  final result_ = _SaveCurrentMonitorSettings(hMonitor);
  return .new(value: result_, error: GetLastError());
}

final _SaveCurrentMonitorSettings = _dxva2
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SaveCurrentMonitorSettings',
    );

/// Sets a monitor's brightness value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorbrightness>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorBrightness(HANDLE hMonitor, int dwNewBrightness) {
  resolveGetLastError();
  final result_ = _SetMonitorBrightness(hMonitor, dwNewBrightness);
  return .new(value: result_, error: GetLastError());
}

final _SetMonitorBrightness = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetMonitorBrightness');

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
  resolveGetLastError();
  final result_ = _SetMonitorColorTemperature(
    hMonitor,
    ctCurrentColorTemperature,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetMonitorColorTemperature = _dxva2
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetMonitorColorTemperature',
    );

/// Sets a monitor's contrast value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcontrast>.
///
/// {@category dxva2}
Win32Result<int> SetMonitorContrast(HANDLE hMonitor, int dwNewContrast) {
  resolveGetLastError();
  final result_ = _SetMonitorContrast(hMonitor, dwNewContrast);
  return .new(value: result_, error: GetLastError());
}

final _SetMonitorContrast = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetMonitorContrast');

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
  resolveGetLastError();
  final result_ = _SetMonitorDisplayAreaPosition(
    hMonitor,
    ptPositionType,
    dwNewPosition,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetMonitorDisplayAreaPosition = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorDisplayAreaPosition');

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
  resolveGetLastError();
  final result_ = _SetMonitorDisplayAreaSize(
    hMonitor,
    stSizeType,
    dwNewDisplayAreaWidthOrHeight,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetMonitorDisplayAreaSize = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorDisplayAreaSize');

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

final _SetMonitorRedGreenOrBlueDrive = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorRedGreenOrBlueDrive');

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

final _SetMonitorRedGreenOrBlueGain = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorRedGreenOrBlueGain');
