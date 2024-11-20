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
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('xinput1_4.dll', () {
    test('XInputEnable can be instantiated', () {
      check(_XInputEnable).isA<Function>();
    });
    test('XInputGetAudioDeviceIds can be instantiated', () {
      check(_XInputGetAudioDeviceIds).isA<Function>();
    });
    test('XInputGetBatteryInformation can be instantiated', () {
      check(_XInputGetBatteryInformation).isA<Function>();
    });
    test('XInputGetCapabilities can be instantiated', () {
      check(_XInputGetCapabilities).isA<Function>();
    });
    test('XInputGetKeystroke can be instantiated', () {
      check(_XInputGetKeystroke).isA<Function>();
    });
    test('XInputGetState can be instantiated', () {
      check(_XInputGetState).isA<Function>();
    });
    test('XInputSetState can be instantiated', () {
      check(_XInputSetState).isA<Function>();
    });
  });
}

@Native<Void Function(BOOL)>(symbol: 'XInputEnable')
external void _XInputEnable(int enable);

@Native<
  Uint32 Function(Uint32, PWSTR, Pointer<Uint32>, PWSTR, Pointer<Uint32>)
>(symbol: 'XInputGetAudioDeviceIds')
external int _XInputGetAudioDeviceIds(
  int dwUserIndex,
  PWSTR pRenderDeviceId,
  Pointer<Uint32> pRenderCount,
  PWSTR pCaptureDeviceId,
  Pointer<Uint32> pCaptureCount,
);

@Native<Uint32 Function(Uint32, Uint8, Pointer<XINPUT_BATTERY_INFORMATION>)>(
  symbol: 'XInputGetBatteryInformation',
)
external int _XInputGetBatteryInformation(
  int dwUserIndex,
  int devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
);

@Native<Uint32 Function(Uint32, Uint32, Pointer<XINPUT_CAPABILITIES>)>(
  symbol: 'XInputGetCapabilities',
)
external int _XInputGetCapabilities(
  int dwUserIndex,
  int dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
);

@Native<Uint32 Function(Uint32, Uint32, Pointer<XINPUT_KEYSTROKE>)>(
  symbol: 'XInputGetKeystroke',
)
external int _XInputGetKeystroke(
  int dwUserIndex,
  int dwReserved,
  Pointer<XINPUT_KEYSTROKE> pKeystroke,
);

@Native<Uint32 Function(Uint32, Pointer<XINPUT_STATE>)>(
  symbol: 'XInputGetState',
)
external int _XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState);

@Native<Uint32 Function(Uint32, Pointer<XINPUT_VIBRATION>)>(
  symbol: 'XInputSetState',
)
external int _XInputSetState(
  int dwUserIndex,
  Pointer<XINPUT_VIBRATION> pVibration,
);
