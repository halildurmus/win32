// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _dxva2 = DynamicLibrary.open('dxva2.dll');

// _BOOL DestroyPhysicalMonitor(
//   HANDLE hMonitor
// );

/// {@category dxva2}
final DestroyPhysicalMonitor = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('DestroyPhysicalMonitor');

// _BOOL DestroyPhysicalMonitors(
//   DWORD              dwPhysicalMonitorArraySize,
//   LPPHYSICAL_MONITOR pPhysicalMonitorArray
// );

/// {@category dxva2}
final DestroyPhysicalMonitors = _dxva2.lookupFunction<
    Int32 Function(
        Uint32 dwPhysicalMonitorArraySize, Pointer pPhysicalMonitorArray),
    int Function(int dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray)>('DestroyPhysicalMonitors');

// _BOOL GetMonitorBrightness(
//   HANDLE  hMonitor,
//   LPDWORD pdwMinimumBrightness,
//   LPDWORD pdwCurrentBrightness,
//   LPDWORD pdwMaximumBrightness
// );

/// {@category dxva2}
final GetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness)>('GetMonitorBrightness');

// _BOOL GetMonitorCapabilities(
//   HANDLE  hMonitor,
//   LPDWORD pdwMonitorCapabilities,
//   LPDWORD pdwSupportedColorTemperatures
// );

/// {@category dxva2}
final GetMonitorCapabilities = _dxva2.lookupFunction<
        Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures),
        int Function(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures)>(
    'GetMonitorCapabilities');

// _BOOL GetMonitorColorTemperature(
//   HANDLE                 hMonitor,
//   LPMC_COLOR_TEMPERATURE pctCurrentColorTemperature
// );

/// {@category dxva2}
final GetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Int32> pctCurrentColorTemperature),
    int Function(
        int hMonitor,
        Pointer<Int32>
            pctCurrentColorTemperature)>('GetMonitorColorTemperature');

// _BOOL GetMonitorContrast(
//   HANDLE  hMonitor,
//   LPDWORD pdwMinimumContrast,
//   LPDWORD pdwCurrentContrast,
//   LPDWORD pdwMaximumContrast
// );

/// {@category dxva2}
final GetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast, Pointer<Uint32> pdwMaximumContrast),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast)>('GetMonitorContrast');

// _BOOL GetMonitorDisplayAreaPosition(
//   HANDLE           hMonitor,
//   MC_POSITION_TYPE ptPositionType,
//   LPDWORD          pdwMinimumPosition,
//   LPDWORD          pdwCurrentPosition,
//   LPDWORD          pdwMaximumPosition
// );

/// {@category dxva2}
final GetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Int32 ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition),
    int Function(
        int hMonitor,
        int ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition)>('GetMonitorDisplayAreaPosition');

// _BOOL GetMonitorDisplayAreaSize(
//   HANDLE       hMonitor,
//   MC_SIZE_TYPE stSizeType,
//   LPDWORD      pdwMinimumWidthOrHeight,
//   LPDWORD      pdwCurrentWidthOrHeight,
//   LPDWORD      pdwMaximumWidthOrHeight
// );

/// {@category dxva2}
final GetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Int32 stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight),
    int Function(
        int hMonitor,
        int stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight)>('GetMonitorDisplayAreaSize');

// _BOOL GetMonitorRedGreenOrBlueDrive(
//   HANDLE        hMonitor,
//   MC_DRIVE_TYPE dtDriveType,
//   LPDWORD       pdwMinimumDrive,
//   LPDWORD       pdwCurrentDrive,
//   LPDWORD       pdwMaximumDrive
// );

/// {@category dxva2}
final GetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Int32 dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive),
    int Function(
        int hMonitor,
        int dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive)>('GetMonitorRedGreenOrBlueDrive');

// _BOOL GetMonitorRedGreenOrBlueGain(
//   HANDLE       hMonitor,
//   MC_GAIN_TYPE gtGainType,
//   LPDWORD      pdwMinimumGain,
//   LPDWORD      pdwCurrentGain,
//   LPDWORD      pdwMaximumGain
// );

/// {@category dxva2}
final GetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Int32 gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain),
    int Function(
        int hMonitor,
        int gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain)>('GetMonitorRedGreenOrBlueGain');

// _BOOL GetMonitorTechnologyType(
//   HANDLE                       hMonitor,
//   LPMC_DISPLAY_TECHNOLOGY_TYPE pdtyDisplayTechnologyType
// );

/// {@category dxva2}
final GetMonitorTechnologyType = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Int32> pdtyDisplayTechnologyType),
    int Function(int hMonitor,
        Pointer<Int32> pdtyDisplayTechnologyType)>('GetMonitorTechnologyType');

// _BOOL GetNumberOfPhysicalMonitorsFromHMONITOR(
//   HMONITOR hMonitor,
//   LPDWORD  pdwNumberOfPhysicalMonitors
// );

/// {@category dxva2}
final GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        Int32 Function(
            IntPtr hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors),
        int Function(
            int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
    'GetNumberOfPhysicalMonitorsFromHMONITOR');

// _BOOL GetPhysicalMonitorsFromHMONITOR(
//   HMONITOR           hMonitor,
//   DWORD              dwPhysicalMonitorArraySize,
//   LPPHYSICAL_MONITOR pPhysicalMonitorArray
// );

/// {@category dxva2}
final GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray),
    int Function(int hMonitor, int dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray)>('GetPhysicalMonitorsFromHMONITOR');

// _BOOL SaveCurrentMonitorSettings(
//   HANDLE hMonitor
// );

/// {@category dxva2}
final SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('SaveCurrentMonitorSettings');

// _BOOL SetMonitorBrightness(
//   HANDLE hMonitor,
//   DWORD  dwNewBrightness
// );

/// {@category dxva2}
final SetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewBrightness),
    int Function(int hMonitor, int dwNewBrightness)>('SetMonitorBrightness');

// _BOOL SetMonitorColorTemperature(
//   HANDLE               hMonitor,
//   MC_COLOR_TEMPERATURE ctCurrentColorTemperature
// );

/// {@category dxva2}
final SetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 ctCurrentColorTemperature),
    int Function(int hMonitor,
        int ctCurrentColorTemperature)>('SetMonitorColorTemperature');

// _BOOL SetMonitorContrast(
//   HANDLE hMonitor,
//   DWORD  dwNewContrast
// );

/// {@category dxva2}
final SetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewContrast),
    int Function(int hMonitor, int dwNewContrast)>('SetMonitorContrast');

// _BOOL SetMonitorDisplayAreaPosition(
//   HANDLE           hMonitor,
//   MC_POSITION_TYPE ptPositionType,
//   DWORD            dwNewPosition
// );

/// {@category dxva2}
final SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 ptPositionType, Uint32 dwNewPosition),
    int Function(int hMonitor, int ptPositionType,
        int dwNewPosition)>('SetMonitorDisplayAreaPosition');

// _BOOL SetMonitorDisplayAreaSize(
//   HANDLE       hMonitor,
//   MC_SIZE_TYPE stSizeType,
//   DWORD        dwNewDisplayAreaWidthOrHeight
// );

/// {@category dxva2}
final SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 stSizeType,
        Uint32 dwNewDisplayAreaWidthOrHeight),
    int Function(int hMonitor, int stSizeType,
        int dwNewDisplayAreaWidthOrHeight)>('SetMonitorDisplayAreaSize');

// _BOOL SetMonitorRedGreenOrBlueDrive(
//   HANDLE        hMonitor,
//   MC_DRIVE_TYPE dtDriveType,
//   DWORD         dwNewDrive
// );

/// {@category dxva2}
final SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 dtDriveType, Uint32 dwNewDrive),
    int Function(int hMonitor, int dtDriveType,
        int dwNewDrive)>('SetMonitorRedGreenOrBlueDrive');

// _BOOL SetMonitorRedGreenOrBlueGain(
//   HANDLE       hMonitor,
//   MC_GAIN_TYPE gtGainType,
//   DWORD        dwNewGain
// );

/// {@category dxva2}
final SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 gtGainType, Uint32 dwNewGain),
    int Function(int hMonitor, int gtGainType,
        int dwNewGain)>('SetMonitorRedGreenOrBlueGain');
