// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _dxva2 = DynamicLibrary.open('dxva2.dll');

/// {@category dxva2}
final DestroyPhysicalMonitor = _dxva2.lookupFunction<
    destroyPhysicalMonitorNative,
    destroyPhysicalMonitorDart>('DestroyPhysicalMonitor');

/// {@category dxva2}
final DestroyPhysicalMonitors = _dxva2.lookupFunction<
    destroyPhysicalMonitorsNative,
    destroyPhysicalMonitorsDart>('DestroyPhysicalMonitors');

/// {@category dxva2}
final GetMonitorBrightness =
    _dxva2.lookupFunction<getMonitorBrightnessNative, getMonitorBrightnessDart>(
        'GetMonitorBrightness');

/// {@category dxva2}
final GetMonitorCapabilities = _dxva2.lookupFunction<
    getMonitorCapabilitiesNative,
    getMonitorCapabilitiesDart>('GetMonitorCapabilities');

/// {@category dxva2}
final GetMonitorColorTemperature = _dxva2.lookupFunction<
    getMonitorColorTemperatureNative,
    getMonitorColorTemperatureDart>('GetMonitorColorTemperature');

/// {@category dxva2}
final GetMonitorContrast =
    _dxva2.lookupFunction<getMonitorContrastNative, getMonitorContrastDart>(
        'GetMonitorContrast');

/// {@category dxva2}
final GetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    getMonitorDisplayAreaPositionNative,
    getMonitorDisplayAreaPositionDart>('GetMonitorDisplayAreaPosition');

/// {@category dxva2}
final GetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    getMonitorDisplayAreaSizeNative,
    getMonitorDisplayAreaSizeDart>('GetMonitorDisplayAreaSize');

/// {@category dxva2}
final GetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    getMonitorRedGreenOrBlueDriveNative,
    getMonitorRedGreenOrBlueDriveDart>('GetMonitorRedGreenOrBlueDrive');

/// {@category dxva2}
final GetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    getMonitorRedGreenOrBlueGainNative,
    getMonitorRedGreenOrBlueGainDart>('GetMonitorRedGreenOrBlueGain');

/// {@category dxva2}
final GetMonitorTechnologyType = _dxva2.lookupFunction<
    getMonitorTechnologyTypeNative,
    getMonitorTechnologyTypeDart>('GetMonitorTechnologyType');

/// {@category dxva2}
final GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        getNumberOfPhysicalMonitorsFromHMONITORNative,
        getNumberOfPhysicalMonitorsFromHMONITORDart>(
    'GetNumberOfPhysicalMonitorsFromHMONITOR');

/// {@category dxva2}
final GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    getPhysicalMonitorsFromHMONITORNative,
    getPhysicalMonitorsFromHMONITORDart>('GetPhysicalMonitorsFromHMONITOR');

/// {@category dxva2}
final SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    saveCurrentMonitorSettingsNative,
    saveCurrentMonitorSettingsDart>('SaveCurrentMonitorSettings');

/// {@category dxva2}
final SetMonitorBrightness =
    _dxva2.lookupFunction<setMonitorBrightnessNative, setMonitorBrightnessDart>(
        'SetMonitorBrightness');

/// {@category dxva2}
final SetMonitorColorTemperature = _dxva2.lookupFunction<
    setMonitorColorTemperatureNative,
    setMonitorColorTemperatureDart>('SetMonitorColorTemperature');

/// {@category dxva2}
final SetMonitorContrast =
    _dxva2.lookupFunction<setMonitorContrastNative, setMonitorContrastDart>(
        'SetMonitorContrast');

/// {@category dxva2}
final SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    setMonitorDisplayAreaPositionNative,
    setMonitorDisplayAreaPositionDart>('SetMonitorDisplayAreaPosition');

/// {@category dxva2}
final SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    setMonitorDisplayAreaSizeNative,
    setMonitorDisplayAreaSizeDart>('SetMonitorDisplayAreaSize');

/// {@category dxva2}
final SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    setMonitorRedGreenOrBlueDriveNative,
    setMonitorRedGreenOrBlueDriveDart>('SetMonitorRedGreenOrBlueDrive');

/// {@category dxva2}
final SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    setMonitorRedGreenOrBlueGainNative,
    setMonitorRedGreenOrBlueGainDart>('SetMonitorRedGreenOrBlueGain');
