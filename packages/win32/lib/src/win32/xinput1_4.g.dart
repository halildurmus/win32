// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Sets the reporting state of XInput.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputenable>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
void XInputEnable(bool enable) => _XInputEnable(enable ? TRUE : FALSE);

@Native<Void Function(BOOL)>(symbol: 'XInputEnable')
external void _XInputEnable(int enable);

/// Retrieves the sound rendering and sound capture audio device IDs that are
/// associated with the headset connected to the specified controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetaudiodeviceids>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetAudioDeviceIds(
  int dwUserIndex,
  PWSTR? pRenderDeviceId,
  Pointer<Uint32>? pRenderCount,
  PWSTR? pCaptureDeviceId,
  Pointer<Uint32>? pCaptureCount,
) => _XInputGetAudioDeviceIds(
  dwUserIndex,
  pRenderDeviceId ?? nullptr,
  pRenderCount ?? nullptr,
  pCaptureDeviceId ?? nullptr,
  pCaptureCount ?? nullptr,
);

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

/// Retrieves the battery type and charge status of a wireless controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetbatteryinformation>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetBatteryInformation(
  int dwUserIndex,
  BATTERY_DEVTYPE devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
) => _XInputGetBatteryInformation(dwUserIndex, devType, pBatteryInformation);

@Native<Uint32 Function(Uint32, Uint8, Pointer<XINPUT_BATTERY_INFORMATION>)>(
  symbol: 'XInputGetBatteryInformation',
)
external int _XInputGetBatteryInformation(
  int dwUserIndex,
  int devType,
  Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation,
);

/// Retrieves the capabilities and features of a connected controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetcapabilities>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetCapabilities(
  int dwUserIndex,
  XINPUT_FLAG dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
) => _XInputGetCapabilities(dwUserIndex, dwFlags, pCapabilities);

@Native<Uint32 Function(Uint32, Uint32, Pointer<XINPUT_CAPABILITIES>)>(
  symbol: 'XInputGetCapabilities',
)
external int _XInputGetCapabilities(
  int dwUserIndex,
  int dwFlags,
  Pointer<XINPUT_CAPABILITIES> pCapabilities,
);

/// Retrieves a gamepad input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetkeystroke>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetKeystroke(int dwUserIndex, Pointer<XINPUT_KEYSTROKE> pKeystroke) =>
    _XInputGetKeystroke(dwUserIndex, NULL, pKeystroke);

@Native<Uint32 Function(Uint32, Uint32, Pointer<XINPUT_KEYSTROKE>)>(
  symbol: 'XInputGetKeystroke',
)
external int _XInputGetKeystroke(
  int dwUserIndex,
  int dwReserved,
  Pointer<XINPUT_KEYSTROKE> pKeystroke,
);

/// Retrieves the current state of the specified controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetstate>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState) =>
    _XInputGetState(dwUserIndex, pState);

@Native<Uint32 Function(Uint32, Pointer<XINPUT_STATE>)>(
  symbol: 'XInputGetState',
)
external int _XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState);

/// Sends data to a connected controller.
///
/// This function is used to activate the vibration function of a controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputsetstate>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputSetState(int dwUserIndex, Pointer<XINPUT_VIBRATION> pVibration) =>
    _XInputSetState(dwUserIndex, pVibration);

@Native<Uint32 Function(Uint32, Pointer<XINPUT_VIBRATION>)>(
  symbol: 'XInputSetState',
)
external int _XInputSetState(
  int dwUserIndex,
  Pointer<XINPUT_VIBRATION> pVibration,
);
