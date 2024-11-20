// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<BOOL Function(HANDLE)>()
external int DestroyPhysicalMonitor_Wrapper(int hMonitor);

@internal
@Native<BOOL Function(Uint32, Pointer<PHYSICAL_MONITOR>)>()
external int DestroyPhysicalMonitors_Wrapper(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
);

@internal
@Native<
  Int32 Function(HANDLE, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
>()
external int GetMonitorBrightness_Wrapper(
  int hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
);

@internal
@Native<Int32 Function(HANDLE, Pointer<Int32>)>()
external int GetMonitorColorTemperature_Wrapper(
  int hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
);

@internal
@Native<
  Int32 Function(HANDLE, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
>()
external int GetMonitorContrast_Wrapper(
  int hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
);

@internal
@Native<
  Int32 Function(
    HANDLE,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetMonitorDisplayAreaPosition_Wrapper(
  int hMonitor,
  int ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
);

@internal
@Native<
  Int32 Function(
    HANDLE,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetMonitorDisplayAreaSize_Wrapper(
  int hMonitor,
  int stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
);

@internal
@Native<
  Int32 Function(
    HANDLE,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetMonitorRedGreenOrBlueDrive_Wrapper(
  int hMonitor,
  int dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
);

@internal
@Native<
  Int32 Function(
    HANDLE,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetMonitorRedGreenOrBlueGain_Wrapper(
  int hMonitor,
  int gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
);

@internal
@Native<Int32 Function(HANDLE, Pointer<Int32>)>()
external int GetMonitorTechnologyType_Wrapper(
  int hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
);

@internal
@Native<BOOL Function(HMONITOR, Pointer<Uint32>)>()
external int GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(
  int hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
);

@internal
@Native<BOOL Function(HMONITOR, Uint32, Pointer<PHYSICAL_MONITOR>)>()
external int GetPhysicalMonitorsFromHMONITOR_Wrapper(
  int hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
);

@internal
@Native<Int32 Function(HANDLE)>()
external int SaveCurrentMonitorSettings_Wrapper(int hMonitor);

@internal
@Native<Int32 Function(HANDLE, Uint32)>()
external int SetMonitorBrightness_Wrapper(int hMonitor, int dwNewBrightness);

@internal
@Native<Int32 Function(HANDLE, Int32)>()
external int SetMonitorColorTemperature_Wrapper(
  int hMonitor,
  int ctCurrentColorTemperature,
);

@internal
@Native<Int32 Function(HANDLE, Uint32)>()
external int SetMonitorContrast_Wrapper(int hMonitor, int dwNewContrast);

@internal
@Native<Int32 Function(HANDLE, Int32, Uint32)>()
external int SetMonitorDisplayAreaPosition_Wrapper(
  int hMonitor,
  int ptPositionType,
  int dwNewPosition,
);

@internal
@Native<Int32 Function(HANDLE, Int32, Uint32)>()
external int SetMonitorDisplayAreaSize_Wrapper(
  int hMonitor,
  int stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
);
