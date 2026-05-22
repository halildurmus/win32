// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('dxva2.dll', () {
    test('DestroyPhysicalMonitor can be instantiated', () {
      check(_DestroyPhysicalMonitor).isA<Function>();
    });
    test('DestroyPhysicalMonitors can be instantiated', () {
      check(_DestroyPhysicalMonitors).isA<Function>();
    });
    test('GetMonitorBrightness can be instantiated', () {
      check(_GetMonitorBrightness).isA<Function>();
    });
    test('GetMonitorCapabilities can be instantiated', () {
      check(_GetMonitorCapabilities).isA<Function>();
    });
    test('GetMonitorColorTemperature can be instantiated', () {
      check(_GetMonitorColorTemperature).isA<Function>();
    });
    test('GetMonitorContrast can be instantiated', () {
      check(_GetMonitorContrast).isA<Function>();
    });
    test('GetMonitorDisplayAreaPosition can be instantiated', () {
      check(_GetMonitorDisplayAreaPosition).isA<Function>();
    });
    test('GetMonitorDisplayAreaSize can be instantiated', () {
      check(_GetMonitorDisplayAreaSize).isA<Function>();
    });
    test('GetMonitorRedGreenOrBlueDrive can be instantiated', () {
      check(_GetMonitorRedGreenOrBlueDrive).isA<Function>();
    });
    test('GetMonitorRedGreenOrBlueGain can be instantiated', () {
      check(_GetMonitorRedGreenOrBlueGain).isA<Function>();
    });
    test('GetMonitorTechnologyType can be instantiated', () {
      check(_GetMonitorTechnologyType).isA<Function>();
    });
    test('GetNumberOfPhysicalMonitorsFromHMONITOR can be instantiated', () {
      check(_GetNumberOfPhysicalMonitorsFromHMONITOR).isA<Function>();
    });
    test('GetPhysicalMonitorsFromHMONITOR can be instantiated', () {
      check(_GetPhysicalMonitorsFromHMONITOR).isA<Function>();
    });
    test('SaveCurrentMonitorSettings can be instantiated', () {
      check(_SaveCurrentMonitorSettings).isA<Function>();
    });
    test('SetMonitorBrightness can be instantiated', () {
      check(_SetMonitorBrightness).isA<Function>();
    });
    test('SetMonitorColorTemperature can be instantiated', () {
      check(_SetMonitorColorTemperature).isA<Function>();
    });
    test('SetMonitorContrast can be instantiated', () {
      check(_SetMonitorContrast).isA<Function>();
    });
    test('SetMonitorDisplayAreaPosition can be instantiated', () {
      check(_SetMonitorDisplayAreaPosition).isA<Function>();
    });
    test('SetMonitorDisplayAreaSize can be instantiated', () {
      check(_SetMonitorDisplayAreaSize).isA<Function>();
    });
    test('SetMonitorRedGreenOrBlueDrive can be instantiated', () {
      check(_SetMonitorRedGreenOrBlueDrive).isA<Function>();
    });
    test('SetMonitorRedGreenOrBlueGain can be instantiated', () {
      check(_SetMonitorRedGreenOrBlueGain).isA<Function>();
    });
  });
}

final _dxva2 = DynamicLibrary.open('dxva2.dll');

final _DestroyPhysicalMonitor = _dxva2
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyPhysicalMonitor',
    );

final _DestroyPhysicalMonitors = _dxva2
    .lookupFunction<
      Int32 Function(Uint32, Pointer<PHYSICAL_MONITOR>),
      int Function(int, Pointer<PHYSICAL_MONITOR>)
    >('DestroyPhysicalMonitors');

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

final _GetMonitorCapabilities = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint32>)
    >('GetMonitorCapabilities');

final _GetMonitorColorTemperature = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetMonitorColorTemperature');

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

final _GetMonitorTechnologyType = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('GetMonitorTechnologyType');

final _GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNumberOfPhysicalMonitorsFromHMONITOR');

final _GetPhysicalMonitorsFromHMONITOR = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<PHYSICAL_MONITOR>),
      int Function(Pointer, int, Pointer<PHYSICAL_MONITOR>)
    >('GetPhysicalMonitorsFromHMONITOR');

final _SaveCurrentMonitorSettings = _dxva2
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SaveCurrentMonitorSettings',
    );

final _SetMonitorBrightness = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetMonitorBrightness');

final _SetMonitorColorTemperature = _dxva2
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetMonitorColorTemperature',
    );

final _SetMonitorContrast = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetMonitorContrast');

final _SetMonitorDisplayAreaPosition = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorDisplayAreaPosition');

final _SetMonitorDisplayAreaSize = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorDisplayAreaSize');

final _SetMonitorRedGreenOrBlueDrive = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorRedGreenOrBlueDrive');

final _SetMonitorRedGreenOrBlueGain = _dxva2
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('SetMonitorRedGreenOrBlueGain');
