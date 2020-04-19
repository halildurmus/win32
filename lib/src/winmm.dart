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

final winmm = DynamicLibrary.open('winmm.dll');

/// {@category winmm}
/// Definition of function for [CALLBACK_FUNCTION]
typedef WaveOutProc = Void Function(
    Int64 hwo, Uint32 uMsg, Int64 dwInstance, Int64 dwParam1, Int64 dwParam2);

// UINT WINAPI waveOutGetNumDevs();

/// {@category winmm}
final waveOutGetNumDevs =
    winmm.lookupFunction<Int32 Function(), int Function()>('waveOutGetNumDevs');

// MMRESULT WINAPI waveOutGetDevCapsW(
//	 _In_ UINT_PTR uDeviceID,
// 	 _Out_ LPWAVEOUTCAPSW pwoc,
//   _In_ UINT cbwoc
// );

/// {@category winmm}
final waveOutGetDevCaps = winmm.lookupFunction<
    Int32 Function(IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
    int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc)>('waveOutGetDevCapsW');

// MMRESULT WINAPI waveOutGetVolume(
//   _In_opt_ HWAVEOUT hwo,
//   _Out_ LPDWORD pdwVolume
// );

/// {@category winmm}
final waveOutGetVolume = winmm.lookupFunction<Int32 Function(Int64 hwo, Pointer<Uint32> pdwVolume),
    int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');

// MMRESULT WINAPI waveOutSetVolume(
//   _In_opt_ HWAVEOUT hwo,
//   _In_ DWORD dwVolume
// );

/// {@category winmm}
final waveOutSetVolume = winmm.lookupFunction<Int32 Function(Int64 hwo, Uint32 dwVolume),
    int Function(int hwo, int dwVolume)>('waveOutSetVolume');

// MMRESULT WINAPI waveOutGetErrorTextW(
//   _In_ MMRESULT mmrError,
//   _Out_writes_(cchText) LPWSTR pszText,
//   _In_ UINT cchText
// );

/// {@category winmm}
final waveOutGetErrorText = winmm.lookupFunction<
    Int32 Function(Int32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText, int cchText)>('waveOutGetErrorTextW');

// MMRESULT WINAPI waveOutOpen(
//   _Out_opt_ LPHWAVEOUT phwo,
//   _In_ UINT uDeviceID,
//   _In_ LPCWAVEFORMATEX pwfx,
//   _In_opt_ DWORD_PTR dwCallback,
//   _In_opt_ DWORD_PTR dwInstance,
//   _In_ DWORD fdwOpen
// );

/// {@category winmm}
final waveOutOpen = winmm.lookupFunction<
    Int32 Function(Pointer<Int64> hwo, Uint32 uDeviceID, Pointer<WAVEFORMATEX> pwfx,
        IntPtr dwCallback, IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<Int64> hwo, int uDeviceID, Pointer<WAVEFORMATEX> pwfx, int dwCallback,
        int dwInstance, int fdwOpen)>('waveOutOpen');

// MMRESULT WINAPI waveOutClose(
//   _In_ HWAVEOUT hwo
// );

/// {@category winmm}
final waveOutClose = winmm
    .lookupFunction<Int32 Function(Int64 hWaveOut), int Function(int hWaveOut)>('waveOutClose');

// MMRESULT WINAPI waveOutPrepareHeader(
//   _In_ HWAVEOUT hwo,
//   _Inout_updates_bytes_(cbwh) LPWAVEHDR pwh,
//   _In_ UINT cbwh
// );

/// {@category winmm}
final waveOutPrepareHeader = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');

// MMRESULT WINAPI waveOutUnprepareHeader(
//   _In_ HWAVEOUT hwo,
//   _Inout_updates_bytes_(cbwh) LPWAVEHDR pwh,
//   _In_ UINT cbwh
// );

/// {@category winmm}
final waveOutUnprepareHeader = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutUnprepareHeader');

// MMRESULT WINAPI waveOutWrite(
//   _In_ HWAVEOUT hwo,
//   _Inout_updates_bytes_(cbwh) LPWAVEHDR pwh,
//   _In_ UINT cbwh
// );

/// {@category winmm}
final waveOutWrite = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');

// MMRESULT WINAPI waveOutPause(
//   _In_ HWAVEOUT hwo
// );

/// {@category winmm}
final waveOutPause =
    winmm.lookupFunction<Int32 Function(Int64 hwo), int Function(int hwo)>('waveOutPause');

// MMRESULT WINAPI waveOutRestart(
//   _In_ HWAVEOUT hwo
// );

/// {@category winmm}
final waveOutRestart =
    winmm.lookupFunction<Int32 Function(Int64 hwo), int Function(int hwo)>('waveOutRestart');

// MMRESULT WINAPI waveOutReset(
//   _In_ HWAVEOUT hwo
// );
/// {@category winmm}
final waveOutReset =
    winmm.lookupFunction<Int32 Function(Int64 hwo), int Function(int hwo)>('waveOutReset');

// MMRESULT WINAPI waveOutBreakLoop(
//   _In_ HWAVEOUT hwo
// );

/// {@category winmm}
final waveOutBreakLoop =
    winmm.lookupFunction<Int32 Function(Int64 hwo), int Function(int hwo)>('waveOutBreakLoop');

// MMRESULT WINAPI waveOutGetPosition(
//   _In_ HWAVEOUT hwo,
//   _Inout_updates_bytes_(cbmmt) LPMMTIME pmmt,
//   _In_ UINT cbmmt
// );

/// {@category winmm}
final waveOutGetPosition = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');

// MMRESULT WINAPI waveOutGetPitch(
//   _In_ HWAVEOUT hwo,
//   _Out_ LPDWORD pdwPitch
// );

/// {@category winmm}
final waveOutGetPitch = winmm.lookupFunction<Int32 Function(Int64 hwo, Pointer<Uint32> pdwPitch),
    int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');

// MMRESULT WINAPI waveOutSetPitch(
//   _In_ HWAVEOUT hwo,
//   _In_ DWORD dwPitch
// );

/// {@category winmm}
final waveOutSetPitch = winmm.lookupFunction<Int32 Function(Int64 hwo, Uint32 dwPitch),
    int Function(int hwo, int dwPitch)>('waveOutSetPitch');

// MMRESULT WINAPI waveOutGetPlaybackRate(
//   _In_ HWAVEOUT hwo,
//   _Out_ LPDWORD pdwRate
// );

/// {@category winmm}
final waveOutGetPlaybackRate = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Pointer<Uint32> pdwRate),
    int Function(int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');

// MMRESULT WINAPI waveOutSetPlaybackRate(
//   _In_ HWAVEOUT hwo,
//   _In_ DWORD dwRate
// );

/// {@category winmm}
final waveOutSetPlaybackRate = winmm.lookupFunction<Int32 Function(Int64 hwo, Uint32 dwRate),
    int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');

// MMRESULT WINAPI waveOutGetID(
//   _In_ HWAVEOUT hwo,
//   _Out_ LPUINT puDeviceID
// );

/// {@category winmm}
final waveOutGetID = winmm.lookupFunction<Int32 Function(Int64 hwo, Pointer<Uint32> puDeviceID),
    int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');

// MMRESULT WINAPI waveOutMessage(
//   _In_opt_ HWAVEOUT hwo,
//   _In_ UINT uMsg,
//   _In_ DWORD_PTR dw1,
//   _In_ DWORD_PTR dw2
// );

/// {@category winmm}
final waveOutMessage = winmm.lookupFunction<
    Int32 Function(Int64 hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');
