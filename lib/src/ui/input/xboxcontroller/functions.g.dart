// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/xboxcontroller/structs.g.dart'; // -----------------------------------------------------------------------

// xinputuap.dll
// -----------------------------------------------------------------------
final _xinputuap = DynamicLibrary.open('xinputuap.dll');

void XInputEnable(
  int enable,
) =>
    _XInputEnable(
      enable,
    );

late final _XInputEnable = _xinputuap.lookupFunction<
    Void Function(
  Int32 enable,
),
    void Function(
  int enable,
)>('XInputEnable');

int XInputGetAudioDeviceIds(
  int dwUserIndex,
  Pointer<Utf16> pRenderDeviceId,
  Pointer<Uint32> pRenderCount,
  Pointer<Utf16> pCaptureDeviceId,
  Pointer<Uint32> pCaptureCount,
) =>
    _XInputGetAudioDeviceIds(
      dwUserIndex,
      pRenderDeviceId,
      pRenderCount,
      pCaptureDeviceId,
      pCaptureCount,
    );

late final _XInputGetAudioDeviceIds = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Pointer<Utf16> pRenderDeviceId,
  Pointer<Uint32> pRenderCount,
  Pointer<Utf16> pCaptureDeviceId,
  Pointer<Uint32> pCaptureCount,
),
    int Function(
  int dwUserIndex,
  Pointer<Utf16> pRenderDeviceId,
  Pointer<Uint32> pRenderCount,
  Pointer<Utf16> pCaptureDeviceId,
  Pointer<Uint32> pCaptureCount,
)>('XInputGetAudioDeviceIds');

int XInputGetBatteryInformation(
  int dwUserIndex,
  int devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
) =>
    _XInputGetBatteryInformation(
      dwUserIndex,
      devType,
      pBatteryInformation,
    );

late final _XInputGetBatteryInformation = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Uint8 devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
),
    int Function(
  int dwUserIndex,
  int devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
)>('XInputGetBatteryInformation');

int XInputGetCapabilities(
  int dwUserIndex,
  int dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
) =>
    _XInputGetCapabilities(
      dwUserIndex,
      dwFlags,
      pCapabilities,
    );

late final _XInputGetCapabilities = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Uint32 dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
),
    int Function(
  int dwUserIndex,
  int dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
)>('XInputGetCapabilities');

int XInputGetKeystroke(
  int dwUserIndex,
  int dwReserved,
  Pointer<XINPUT_KEYSTROKE> pKeystroke,
) =>
    _XInputGetKeystroke(
      dwUserIndex,
      dwReserved,
      pKeystroke,
    );

late final _XInputGetKeystroke = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Uint32 dwReserved,
  Pointer<XINPUT_KEYSTROKE> pKeystroke,
),
    int Function(
  int dwUserIndex,
  int dwReserved,
  Pointer<XINPUT_KEYSTROKE> pKeystroke,
)>('XInputGetKeystroke');

int XInputGetState(
  int dwUserIndex,
  Pointer<XINPUT_STATE> pState,
) =>
    _XInputGetState(
      dwUserIndex,
      pState,
    );

late final _XInputGetState = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Pointer<XINPUT_STATE> pState,
),
    int Function(
  int dwUserIndex,
  Pointer<XINPUT_STATE> pState,
)>('XInputGetState');

int XInputSetState(
  int dwUserIndex,
  Pointer<XINPUT_VIBRATION> pVibration,
) =>
    _XInputSetState(
      dwUserIndex,
      pVibration,
    );

late final _XInputSetState = _xinputuap.lookupFunction<
    Uint32 Function(
  Uint32 dwUserIndex,
  Pointer<XINPUT_VIBRATION> pVibration,
),
    int Function(
  int dwUserIndex,
  Pointer<XINPUT_VIBRATION> pVibration,
)>('XInputSetState');
