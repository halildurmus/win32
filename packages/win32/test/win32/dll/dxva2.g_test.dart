// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/dxva2.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('dxva2.dll', () {
    test('DestroyPhysicalMonitor can be instantiated', () {
      check(DestroyPhysicalMonitor_Wrapper).isA<Function>();
    });
    test('DestroyPhysicalMonitors can be instantiated', () {
      check(DestroyPhysicalMonitors_Wrapper).isA<Function>();
    });
    test('GetMonitorBrightness can be instantiated', () {
      check(GetMonitorBrightness_Wrapper).isA<Function>();
    });
    test('GetMonitorCapabilities can be instantiated', () {
      check(_GetMonitorCapabilities).isA<Function>();
    });
    test('GetMonitorColorTemperature can be instantiated', () {
      check(GetMonitorColorTemperature_Wrapper).isA<Function>();
    });
    test('GetMonitorContrast can be instantiated', () {
      check(GetMonitorContrast_Wrapper).isA<Function>();
    });
    test('GetMonitorDisplayAreaPosition can be instantiated', () {
      check(GetMonitorDisplayAreaPosition_Wrapper).isA<Function>();
    });
    test('GetMonitorDisplayAreaSize can be instantiated', () {
      check(GetMonitorDisplayAreaSize_Wrapper).isA<Function>();
    });
    test('GetMonitorRedGreenOrBlueDrive can be instantiated', () {
      check(GetMonitorRedGreenOrBlueDrive_Wrapper).isA<Function>();
    });
    test('GetMonitorRedGreenOrBlueGain can be instantiated', () {
      check(GetMonitorRedGreenOrBlueGain_Wrapper).isA<Function>();
    });
    test('GetMonitorTechnologyType can be instantiated', () {
      check(GetMonitorTechnologyType_Wrapper).isA<Function>();
    });
    test('GetNumberOfPhysicalMonitorsFromHMONITOR can be instantiated', () {
      check(GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper).isA<Function>();
    });
    test('GetPhysicalMonitorsFromHMONITOR can be instantiated', () {
      check(GetPhysicalMonitorsFromHMONITOR_Wrapper).isA<Function>();
    });
    test('SaveCurrentMonitorSettings can be instantiated', () {
      check(SaveCurrentMonitorSettings_Wrapper).isA<Function>();
    });
    test('SetMonitorBrightness can be instantiated', () {
      check(SetMonitorBrightness_Wrapper).isA<Function>();
    });
    test('SetMonitorColorTemperature can be instantiated', () {
      check(SetMonitorColorTemperature_Wrapper).isA<Function>();
    });
    test('SetMonitorContrast can be instantiated', () {
      check(SetMonitorContrast_Wrapper).isA<Function>();
    });
    test('SetMonitorDisplayAreaPosition can be instantiated', () {
      check(SetMonitorDisplayAreaPosition_Wrapper).isA<Function>();
    });
    test('SetMonitorDisplayAreaSize can be instantiated', () {
      check(SetMonitorDisplayAreaSize_Wrapper).isA<Function>();
    });
    test('SetMonitorRedGreenOrBlueDrive can be instantiated', () {
      check(_SetMonitorRedGreenOrBlueDrive).isA<Function>();
    });
    test('SetMonitorRedGreenOrBlueGain can be instantiated', () {
      check(_SetMonitorRedGreenOrBlueGain).isA<Function>();
    });
  });
}

@Native<Int32 Function(HANDLE, Pointer<Uint32>, Pointer<Uint32>)>(
  symbol: 'GetMonitorCapabilities',
)
external int _GetMonitorCapabilities(
  int hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
);

@Native<Int32 Function(HANDLE, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueDrive',
)
external int _SetMonitorRedGreenOrBlueDrive(
  int hMonitor,
  int dtDriveType,
  int dwNewDrive,
);

@Native<Int32 Function(HANDLE, Int32, Uint32)>(
  symbol: 'SetMonitorRedGreenOrBlueGain',
)
external int _SetMonitorRedGreenOrBlueGain(
  int hMonitor,
  int gtGainType,
  int dwNewGain,
);
