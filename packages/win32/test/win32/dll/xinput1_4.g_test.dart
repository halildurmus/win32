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

final _xinput1_4 = DynamicLibrary.open('xinput1_4.dll');

final _XInputEnable = _xinput1_4
    .lookupFunction<Void Function(Int32), void Function(int)>('XInputEnable');

final _XInputGetAudioDeviceIds = _xinput1_4
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('XInputGetAudioDeviceIds');

final _XInputGetBatteryInformation = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint8, Pointer<XINPUT_BATTERY_INFORMATION>),
      int Function(int, int, Pointer<XINPUT_BATTERY_INFORMATION>)
    >('XInputGetBatteryInformation');

final _XInputGetCapabilities = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer<XINPUT_CAPABILITIES>),
      int Function(int, int, Pointer<XINPUT_CAPABILITIES>)
    >('XInputGetCapabilities');

final _XInputGetKeystroke = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer<XINPUT_KEYSTROKE>),
      int Function(int, int, Pointer<XINPUT_KEYSTROKE>)
    >('XInputGetKeystroke');

final _XInputGetState = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<XINPUT_STATE>),
      int Function(int, Pointer<XINPUT_STATE>)
    >('XInputGetState');

final _XInputSetState = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<XINPUT_VIBRATION>),
      int Function(int, Pointer<XINPUT_VIBRATION>)
    >('XInputSetState');
