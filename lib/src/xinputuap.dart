// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'guid.dart';
import 'structs.dart';
import 'structs.g.dart';

final _xinputuap = DynamicLibrary.open('xinputuap.dll');

/// Sets the reporting state of XInput.
///
/// ```c
/// void XInputEnable(
///   [in] BOOL enable
/// );
/// ```
/// {@category xinput}
void XInputEnable(int enable) => _XInputEnable(enable);

late final _XInputEnable = _xinputuap.lookupFunction<
    Void Function(Int32 enable), void Function(int enable)>('XInputEnable');

/// Retrieves the sound rendering and sound capture audio device IDs that
/// are associated with the headset connected to the specified controller.
///
/// ```c
/// DWORD XInputGetAudioDeviceIds(
///   [in]                DWORD  dwUserIndex,
///   [out, optional]     LPWSTR pRenderDeviceId,
///   [in, out, optional] UINT   *pRenderCount,
///   [out, optional]     LPWSTR pCaptureDeviceId,
///   [in, out, optional] UINT   *pCaptureCount
/// );
/// ```
/// {@category xinput}
int XInputGetAudioDeviceIds(
        int dwUserIndex,
        Pointer<Utf16> pRenderDeviceId,
        Pointer<Uint32> pRenderCount,
        Pointer<Utf16> pCaptureDeviceId,
        Pointer<Uint32> pCaptureCount) =>
    _XInputGetAudioDeviceIds(dwUserIndex, pRenderDeviceId, pRenderCount,
        pCaptureDeviceId, pCaptureCount);

late final _XInputGetAudioDeviceIds = _xinputuap.lookupFunction<
    Uint32 Function(
        Uint32 dwUserIndex,
        Pointer<Utf16> pRenderDeviceId,
        Pointer<Uint32> pRenderCount,
        Pointer<Utf16> pCaptureDeviceId,
        Pointer<Uint32> pCaptureCount),
    int Function(
        int dwUserIndex,
        Pointer<Utf16> pRenderDeviceId,
        Pointer<Uint32> pRenderCount,
        Pointer<Utf16> pCaptureDeviceId,
        Pointer<Uint32> pCaptureCount)>('XInputGetAudioDeviceIds');

/// Retrieves the battery type and charge status of a wireless controller.
///
/// ```c
/// DWORD XInputGetBatteryInformation(
///   [in]  DWORD                      dwUserIndex,
///   [in]  BYTE                       devType,
///   [out] XINPUT_BATTERY_INFORMATION *pBatteryInformation
/// );
/// ```
/// {@category xinput}
int XInputGetBatteryInformation(int dwUserIndex, int devType,
        Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation) =>
    _XInputGetBatteryInformation(dwUserIndex, devType, pBatteryInformation);

late final _XInputGetBatteryInformation = _xinputuap.lookupFunction<
        Uint32 Function(Uint32 dwUserIndex, Uint8 devType,
            Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation),
        int Function(int dwUserIndex, int devType,
            Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation)>(
    'XInputGetBatteryInformation');

/// Retrieves the capabilities and features of a connected controller.
///
/// ```c
/// DWORD XInputGetCapabilities(
///   [in]  DWORD               dwUserIndex,
///   [in]  DWORD               dwFlags,
///   [out] XINPUT_CAPABILITIES *pCapabilities
/// );
/// ```
/// {@category xinput}
int XInputGetCapabilities(int dwUserIndex, int dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities) =>
    _XInputGetCapabilities(dwUserIndex, dwFlags, pCapabilities);

late final _XInputGetCapabilities = _xinputuap.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Uint32 dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities),
    int Function(int dwUserIndex, int dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities)>('XInputGetCapabilities');

/// Retrieves a gamepad input event.
///
/// ```c
/// DWORD XInputGetKeystroke(
///   DWORD             dwUserIndex,
///   DWORD             dwReserved,
///   PXINPUT_KEYSTROKE pKeystroke
/// );
/// ```
/// {@category xinput}
int XInputGetKeystroke(int dwUserIndex, int dwReserved,
        Pointer<XINPUT_KEYSTROKE> pKeystroke) =>
    _XInputGetKeystroke(dwUserIndex, dwReserved, pKeystroke);

late final _XInputGetKeystroke = _xinputuap.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Uint32 dwReserved,
        Pointer<XINPUT_KEYSTROKE> pKeystroke),
    int Function(int dwUserIndex, int dwReserved,
        Pointer<XINPUT_KEYSTROKE> pKeystroke)>('XInputGetKeystroke');

/// Retrieves the current state of the specified controller.
///
/// ```c
/// DWORD XInputGetState(
///   [in]  DWORD        dwUserIndex,
///   [out] XINPUT_STATE *pState
/// );
/// ```
/// {@category xinput}
int XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState) =>
    _XInputGetState(dwUserIndex, pState);

late final _XInputGetState = _xinputuap.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Pointer<XINPUT_STATE> pState),
    int Function(
        int dwUserIndex, Pointer<XINPUT_STATE> pState)>('XInputGetState');

/// Sends data to a connected controller. This function is used to activate
/// the vibration function of a controller.
///
/// ```c
/// DWORD XInputSetState(
///   [in]      DWORD            dwUserIndex,
///   [in, out] XINPUT_VIBRATION *pVibration
/// );
/// ```
/// {@category xinput}
int XInputSetState(int dwUserIndex, Pointer<XINPUT_VIBRATION> pVibration) =>
    _XInputSetState(dwUserIndex, pVibration);

late final _XInputSetState = _xinputuap.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Pointer<XINPUT_VIBRATION> pVibration),
    int Function(int dwUserIndex,
        Pointer<XINPUT_VIBRATION> pVibration)>('XInputSetState');
