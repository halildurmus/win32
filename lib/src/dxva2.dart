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

/// Closes a handle to a physical monitor. Call this function to close a
/// monitor handle obtained from the GetPhysicalMonitorsFromHMONITOR or
/// GetPhysicalMonitorsFromIDirect3DDevice9 function.
///
/// ```c
/// _BOOL DestroyPhysicalMonitor(
///   HANDLE hMonitor
/// );
/// ```
/// {@category dxva2}
final DestroyPhysicalMonitor = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('DestroyPhysicalMonitor');

/// Closes an array of physical monitor handles. Call this function to
/// close an array of monitor handles obtained from the
/// GetPhysicalMonitorsFromHMONITOR or
/// GetPhysicalMonitorsFromIDirect3DDevice9 function.
///
/// ```c
/// _BOOL DestroyPhysicalMonitors(
///   DWORD              dwPhysicalMonitorArraySize,
///   LPPHYSICAL_MONITOR pPhysicalMonitorArray
/// );
/// ```
/// {@category dxva2}
final DestroyPhysicalMonitors = _dxva2.lookupFunction<
    Int32 Function(
        Uint32 dwPhysicalMonitorArraySize, Pointer pPhysicalMonitorArray),
    int Function(int dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray)>('DestroyPhysicalMonitors');

/// Retrieves a monitor's minimum, maximum, and current brightness
/// settings.
///
/// ```c
/// _BOOL GetMonitorBrightness(
///   HANDLE  hMonitor,
///   LPDWORD pdwMinimumBrightness,
///   LPDWORD pdwCurrentBrightness,
///   LPDWORD pdwMaximumBrightness
/// );
/// ```
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

/// Retrieves the configuration capabilities of a monitor. Call this
/// function to find out which high-level monitor configuration functions
/// are supported by the monitor.
///
/// ```c
/// _BOOL GetMonitorCapabilities(
///   HANDLE  hMonitor,
///   LPDWORD pdwMonitorCapabilities,
///   LPDWORD pdwSupportedColorTemperatures
/// );
/// ```
/// {@category dxva2}
final GetMonitorCapabilities = _dxva2.lookupFunction<
        Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures),
        int Function(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures)>(
    'GetMonitorCapabilities');

/// Retrieves a monitor's current color temperature.
///
/// ```c
/// _BOOL GetMonitorColorTemperature(
///   HANDLE                 hMonitor,
///   LPMC_COLOR_TEMPERATURE pctCurrentColorTemperature
/// );
/// ```
/// {@category dxva2}
final GetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Int32> pctCurrentColorTemperature),
    int Function(
        int hMonitor,
        Pointer<Int32>
            pctCurrentColorTemperature)>('GetMonitorColorTemperature');

/// Retrieves a monitor's minimum, maximum, and current contrast settings.
///
/// ```c
/// _BOOL GetMonitorContrast(
///   HANDLE  hMonitor,
///   LPDWORD pdwMinimumContrast,
///   LPDWORD pdwCurrentContrast,
///   LPDWORD pdwMaximumContrast
/// );
/// ```
/// {@category dxva2}
final GetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast, Pointer<Uint32> pdwMaximumContrast),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast)>('GetMonitorContrast');

/// Retrieves a monitor's minimum, maximum, and current horizontal or
/// vertical position.
///
/// ```c
/// _BOOL GetMonitorDisplayAreaPosition(
///   HANDLE           hMonitor,
///   MC_POSITION_TYPE ptPositionType,
///   LPDWORD          pdwMinimumPosition,
///   LPDWORD          pdwCurrentPosition,
///   LPDWORD          pdwMaximumPosition
/// );
/// ```
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

/// Retrieves a monitor's minimum, maximum, and current width or height.
///
/// ```c
/// _BOOL GetMonitorDisplayAreaSize(
///   HANDLE       hMonitor,
///   MC_SIZE_TYPE stSizeType,
///   LPDWORD      pdwMinimumWidthOrHeight,
///   LPDWORD      pdwCurrentWidthOrHeight,
///   LPDWORD      pdwMaximumWidthOrHeight
/// );
/// ```
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

/// Retrieves a monitor's red, green, or blue drive value.
///
/// ```c
/// _BOOL GetMonitorRedGreenOrBlueDrive(
///   HANDLE        hMonitor,
///   MC_DRIVE_TYPE dtDriveType,
///   LPDWORD       pdwMinimumDrive,
///   LPDWORD       pdwCurrentDrive,
///   LPDWORD       pdwMaximumDrive
/// );
/// ```
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

/// Retrieves a monitor's red, green, or blue gain value.
///
/// ```c
/// _BOOL GetMonitorRedGreenOrBlueGain(
///   HANDLE       hMonitor,
///   MC_GAIN_TYPE gtGainType,
///   LPDWORD      pdwMinimumGain,
///   LPDWORD      pdwCurrentGain,
///   LPDWORD      pdwMaximumGain
/// );
/// ```
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

/// Retrieves the type of technology used by a monitor.
///
/// ```c
/// _BOOL GetMonitorTechnologyType(
///   HANDLE                       hMonitor,
///   LPMC_DISPLAY_TECHNOLOGY_TYPE pdtyDisplayTechnologyType
/// );
/// ```
/// {@category dxva2}
final GetMonitorTechnologyType = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Int32> pdtyDisplayTechnologyType),
    int Function(int hMonitor,
        Pointer<Int32> pdtyDisplayTechnologyType)>('GetMonitorTechnologyType');

/// Retrieves the number of physical monitors associated with an HMONITOR
/// monitor handle. Call this function before calling
/// GetPhysicalMonitorsFromHMONITOR.
///
/// ```c
/// _BOOL GetNumberOfPhysicalMonitorsFromHMONITOR(
///   HMONITOR hMonitor,
///   LPDWORD  pdwNumberOfPhysicalMonitors
/// );
/// ```
/// {@category dxva2}
final GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        Int32 Function(
            IntPtr hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors),
        int Function(
            int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
    'GetNumberOfPhysicalMonitorsFromHMONITOR');

/// Retrieves the physical monitors associated with an HMONITOR monitor
/// handle.
///
/// ```c
/// _BOOL GetPhysicalMonitorsFromHMONITOR(
///   HMONITOR           hMonitor,
///   DWORD              dwPhysicalMonitorArraySize,
///   LPPHYSICAL_MONITOR pPhysicalMonitorArray
/// );
/// ```
/// {@category dxva2}
final GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray),
    int Function(int hMonitor, int dwPhysicalMonitorArraySize,
        Pointer pPhysicalMonitorArray)>('GetPhysicalMonitorsFromHMONITOR');

/// ```c
/// _BOOL SaveCurrentMonitorSettings(
///   HANDLE hMonitor
/// );
/// ```
/// {@category dxva2}
final SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('SaveCurrentMonitorSettings');

/// ```c
/// _BOOL SetMonitorBrightness(
///   HANDLE hMonitor,
///   DWORD  dwNewBrightness
/// );
/// ```
/// {@category dxva2}
final SetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewBrightness),
    int Function(int hMonitor, int dwNewBrightness)>('SetMonitorBrightness');

/// ```c
/// _BOOL SetMonitorColorTemperature(
///   HANDLE               hMonitor,
///   MC_COLOR_TEMPERATURE ctCurrentColorTemperature
/// );
/// ```
/// {@category dxva2}
final SetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 ctCurrentColorTemperature),
    int Function(int hMonitor,
        int ctCurrentColorTemperature)>('SetMonitorColorTemperature');

/// ```c
/// _BOOL SetMonitorContrast(
///   HANDLE hMonitor,
///   DWORD  dwNewContrast
/// );
/// ```
/// {@category dxva2}
final SetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewContrast),
    int Function(int hMonitor, int dwNewContrast)>('SetMonitorContrast');

/// ```c
/// _BOOL SetMonitorDisplayAreaPosition(
///   HANDLE           hMonitor,
///   MC_POSITION_TYPE ptPositionType,
///   DWORD            dwNewPosition
/// );
/// ```
/// {@category dxva2}
final SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 ptPositionType, Uint32 dwNewPosition),
    int Function(int hMonitor, int ptPositionType,
        int dwNewPosition)>('SetMonitorDisplayAreaPosition');

/// ```c
/// _BOOL SetMonitorDisplayAreaSize(
///   HANDLE       hMonitor,
///   MC_SIZE_TYPE stSizeType,
///   DWORD        dwNewDisplayAreaWidthOrHeight
/// );
/// ```
/// {@category dxva2}
final SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 stSizeType,
        Uint32 dwNewDisplayAreaWidthOrHeight),
    int Function(int hMonitor, int stSizeType,
        int dwNewDisplayAreaWidthOrHeight)>('SetMonitorDisplayAreaSize');

/// ```c
/// _BOOL SetMonitorRedGreenOrBlueDrive(
///   HANDLE        hMonitor,
///   MC_DRIVE_TYPE dtDriveType,
///   DWORD         dwNewDrive
/// );
/// ```
/// {@category dxva2}
final SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 dtDriveType, Uint32 dwNewDrive),
    int Function(int hMonitor, int dtDriveType,
        int dwNewDrive)>('SetMonitorRedGreenOrBlueDrive');

/// ```c
/// _BOOL SetMonitorRedGreenOrBlueGain(
///   HANDLE       hMonitor,
///   MC_GAIN_TYPE gtGainType,
///   DWORD        dwNewGain
/// );
/// ```
/// {@category dxva2}
final SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Int32 gtGainType, Uint32 dwNewGain),
    int Function(int hMonitor, int gtGainType,
        int dwNewGain)>('SetMonitorRedGreenOrBlueGain');
