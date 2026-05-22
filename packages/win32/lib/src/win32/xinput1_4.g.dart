// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _xinput1_4 = DynamicLibrary.open('xinput1_4.dll');

/// Sets the reporting state of XInput.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputenable>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
void XInputEnable(bool enable) => _XInputEnable(enable ? TRUE : FALSE);

final _XInputEnable = _xinput1_4
    .lookupFunction<Void Function(Int32), void Function(int)>('XInputEnable');

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

final _XInputGetBatteryInformation = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint8, Pointer<XINPUT_BATTERY_INFORMATION>),
      int Function(int, int, Pointer<XINPUT_BATTERY_INFORMATION>)
    >('XInputGetBatteryInformation');

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

final _XInputGetCapabilities = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer<XINPUT_CAPABILITIES>),
      int Function(int, int, Pointer<XINPUT_CAPABILITIES>)
    >('XInputGetCapabilities');

/// Retrieves a gamepad input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetkeystroke>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetKeystroke(int dwUserIndex, Pointer<XINPUT_KEYSTROKE> pKeystroke) =>
    _XInputGetKeystroke(dwUserIndex, NULL, pKeystroke);

final _XInputGetKeystroke = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer<XINPUT_KEYSTROKE>),
      int Function(int, int, Pointer<XINPUT_KEYSTROKE>)
    >('XInputGetKeystroke');

/// Retrieves the current state of the specified controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetstate>.
///
/// {@category xinput}
@pragma('vm:prefer-inline')
int XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState) =>
    _XInputGetState(dwUserIndex, pState);

final _XInputGetState = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<XINPUT_STATE>),
      int Function(int, Pointer<XINPUT_STATE>)
    >('XInputGetState');

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

final _XInputSetState = _xinput1_4
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<XINPUT_VIBRATION>),
      int Function(int, Pointer<XINPUT_VIBRATION>)
    >('XInputSetState');
