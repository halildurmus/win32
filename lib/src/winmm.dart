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
import 'structs.dart';
import 'structs.g.dart';

final _winmm = DynamicLibrary.open('winmm.dll');

/// The mciGetDeviceID function retrieves the device identifier
/// corresponding to the name of an open device.
///
/// ```c
/// MCIDEVICEID mciGetDeviceIDW(
///   LPCTSTR lpszDevice
/// );
/// ```
/// {@category winmm}
int mciGetDeviceID(Pointer<Utf16> pszDevice) {
  final _mciGetDeviceID = _winmm.lookupFunction<
      Uint32 Function(Pointer<Utf16> pszDevice),
      int Function(Pointer<Utf16> pszDevice)>('mciGetDeviceIDW');
  return _mciGetDeviceID(pszDevice);
}

/// The mciGetDeviceIDFromElementID function retrieves the MCI device
/// identifier corresponding to an element identifier.
///
/// ```c
/// MCIDEVICEID mciGetDeviceIDFromElementIDW(
///   DWORD   dwElementID,
///   LPCTSTR lpstrType
/// );
/// ```
/// {@category winmm}
int mciGetDeviceIDFromElementID(int dwElementID, Pointer<Utf16> lpstrType) {
  final _mciGetDeviceIDFromElementID = _winmm.lookupFunction<
      Uint32 Function(Uint32 dwElementID, Pointer<Utf16> lpstrType),
      int Function(int dwElementID,
          Pointer<Utf16> lpstrType)>('mciGetDeviceIDFromElementIDW');
  return _mciGetDeviceIDFromElementID(dwElementID, lpstrType);
}

/// The mciGetErrorString function retrieves a string that describes the
/// specified MCI error code.
///
/// ```c
/// BOOL mciGetErrorStringW(
///   DWORD  fdwError,
///   LPTSTR lpszErrorText,
///   UINT   cchErrorText
/// );
/// ```
/// {@category winmm}
int mciGetErrorString(int mcierr, Pointer<Utf16> pszText, int cchText) {
  final _mciGetErrorString = _winmm.lookupFunction<
      Int32 Function(Uint32 mcierr, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mcierr, Pointer<Utf16> pszText,
          int cchText)>('mciGetErrorStringW');
  return _mciGetErrorString(mcierr, pszText, cchText);
}

/// The mciSendCommand function sends a command message to the specified
/// MCI device.
///
/// ```c
/// MCIERROR mciSendCommandW(
///   MCIDEVICEID IDDevice,
///   UINT        uMsg,
///   DWORD_PTR   fdwCommand,
///   DWORD_PTR   dwParam
/// );
/// ```
/// {@category winmm}
int mciSendCommand(int mciId, int uMsg, int dwParam1, int dwParam2) {
  final _mciSendCommand = _winmm.lookupFunction<
      Uint32 Function(
          Uint32 mciId, Uint32 uMsg, IntPtr dwParam1, IntPtr dwParam2),
      int Function(
          int mciId, int uMsg, int dwParam1, int dwParam2)>('mciSendCommandW');
  return _mciSendCommand(mciId, uMsg, dwParam1, dwParam2);
}

/// The mciSendString function sends a command string to an MCI device. The
/// device that the command is sent to is specified in the command string.
///
/// ```c
/// MCIERROR mciSendStringW(
///   LPCTSTR lpszCommand,
///   LPTSTR  lpszReturnString,
///   UINT    cchReturn,
///   HANDLE  hwndCallback
/// );
/// ```
/// {@category winmm}
int mciSendString(Pointer<Utf16> lpstrCommand, Pointer<Utf16> lpstrReturnString,
    int uReturnLength, int hwndCallback) {
  final _mciSendString = _winmm.lookupFunction<
      Uint32 Function(
          Pointer<Utf16> lpstrCommand,
          Pointer<Utf16> lpstrReturnString,
          Uint32 uReturnLength,
          IntPtr hwndCallback),
      int Function(
          Pointer<Utf16> lpstrCommand,
          Pointer<Utf16> lpstrReturnString,
          int uReturnLength,
          int hwndCallback)>('mciSendStringW');
  return _mciSendString(
      lpstrCommand, lpstrReturnString, uReturnLength, hwndCallback);
}

/// The midiOutGetNumDevs function retrieves the number of MIDI output
/// devices present in the system.
///
/// ```c
/// UINT midiOutGetNumDevs();
/// ```
/// {@category winmm}
int midiOutGetNumDevs() {
  final _midiOutGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');
  return _midiOutGetNumDevs();
}

/// The PlaySound function plays a sound specified by the given file name,
/// resource, or system event.
///
/// ```c
/// BOOL PlaySoundW(
///   LPCTSTR pszSound,
///   HMODULE hmod,
///   DWORD fdwSound);
/// ```
/// {@category winmm}
int PlaySound(Pointer<Utf16> pszSound, int hmod, int fdwSound) {
  final _PlaySound = _winmm.lookupFunction<
      Int32 Function(Pointer<Utf16> pszSound, IntPtr hmod, Uint32 fdwSound),
      int Function(
          Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');
  return _PlaySound(pszSound, hmod, fdwSound);
}

/// The waveOutClose function closes the given waveform-audio output
/// device.
///
/// ```c
/// MMRESULT waveOutClose(
///   HWAVEOUT hwo
///   );
/// ```
/// {@category winmm}
int waveOutClose(int hwo) {
  final _waveOutClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutClose');
  return _waveOutClose(hwo);
}

/// The waveOutGetDevCaps function retrieves the capabilities of a given
/// waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetDevCapsW(
///   UINT          uDeviceID,
///   LPWAVEOUTCAPS pwoc,
///   UINT          cbwoc
/// );
/// ```
/// {@category winmm}
int waveOutGetDevCaps(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) {
  final _waveOutGetDevCaps = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
      int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc,
          int cbwoc)>('waveOutGetDevCapsW');
  return _waveOutGetDevCaps(uDeviceID, pwoc, cbwoc);
}

/// The waveOutGetErrorText function retrieves a textual description of the
/// error identified by the given error number.
///
/// ```c
/// MMRESULT waveOutGetErrorTextW(
///   MMRESULT mmrError,
///   LPWSTR    pszText,
///   UINT     cchText
/// );
/// ```
/// {@category winmm}
int waveOutGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) {
  final _waveOutGetErrorText = _winmm.lookupFunction<
      Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mmrError, Pointer<Utf16> pszText,
          int cchText)>('waveOutGetErrorTextW');
  return _waveOutGetErrorText(mmrError, pszText, cchText);
}

/// The waveOutGetID function retrieves the device identifier for the given
/// waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetID(
///   HWAVEOUT hwo,
///   LPUINT   puDeviceID
/// );
/// ```
/// {@category winmm}
int waveOutGetID(int hwo, Pointer<Uint32> puDeviceID) {
  final _waveOutGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> puDeviceID),
      int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');
  return _waveOutGetID(hwo, puDeviceID);
}

/// The waveOutGetNumDevs function retrieves the number of waveform-audio
/// output devices present in the system.
///
/// ```c
/// UINT waveOutGetNumDevs();
/// ```
/// {@category winmm}
int waveOutGetNumDevs() {
  final _waveOutGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');
  return _waveOutGetNumDevs();
}

/// The waveOutGetPitch function retrieves the current pitch setting for
/// the specified waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetPitch(
///   HWAVEOUT hwo,
///   LPDWORD  pdwPitch
/// );
/// ```
/// {@category winmm}
int waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch) {
  final _waveOutGetPitch = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwPitch),
      int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');
  return _waveOutGetPitch(hwo, pdwPitch);
}

/// The waveOutGetPlaybackRate function retrieves the current playback rate
/// for the specified waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetPlaybackRate(
///   HWAVEOUT hwo,
///   LPDWORD  pdwRate
/// );
/// ```
/// {@category winmm}
int waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate) {
  final _waveOutGetPlaybackRate = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwRate),
      int Function(int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');
  return _waveOutGetPlaybackRate(hwo, pdwRate);
}

/// The waveOutGetPosition function retrieves the current playback position
/// of the given waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetPosition(
///   HWAVEOUT hwo,
///   LPMMTIME pmmt,
///   UINT     cbmmt
/// );
/// ```
/// {@category winmm}
int waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt) {
  final _waveOutGetPosition = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
      int Function(
          int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');
  return _waveOutGetPosition(hwo, pmmt, cbmmt);
}

/// The waveOutGetVolume function retrieves the current volume level of the
/// specified waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutGetVolume(
///   HWAVEOUT hwo,
///   LPDWORD  pdwVolume
/// );
/// ```
/// {@category winmm}
int waveOutGetVolume(int hwo, Pointer<Uint32> pdwVolume) {
  final _waveOutGetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwVolume),
      int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');
  return _waveOutGetVolume(hwo, pdwVolume);
}

/// The waveOutMessage function sends messages to the waveform-audio output
/// device drivers.
///
/// ```c
/// MMRESULT waveOutMessage(
///   HWAVEOUT  hwo,
///   UINT      uMsg,
///   DWORD_PTR dw1,
///   DWORD_PTR dw2
/// );
/// ```
/// {@category winmm}
int waveOutMessage(int hwo, int uMsg, int dw1, int dw2) {
  final _waveOutMessage = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');
  return _waveOutMessage(hwo, uMsg, dw1, dw2);
}

/// The waveOutOpen function opens the given waveform-audio output device
/// for playback.
///
/// ```c
/// MMRESULT waveOutOpen(
///   LPHWAVEOUT      phwo,
///   UINT            uDeviceID,
///   LPCWAVEFORMATEX pwfx,
///   DWORD_PTR       dwCallback,
///   DWORD_PTR       dwInstance,
///   DWORD           fdwOpen
/// );
/// ```
/// {@category winmm}
int waveOutOpen(Pointer<IntPtr> phwo, int uDeviceID, Pointer<WAVEFORMATEX> pwfx,
    int dwCallback, int dwInstance, int fdwOpen) {
  final _waveOutOpen = _winmm.lookupFunction<
      Uint32 Function(
          Pointer<IntPtr> phwo,
          Uint32 uDeviceID,
          Pointer<WAVEFORMATEX> pwfx,
          IntPtr dwCallback,
          IntPtr dwInstance,
          Uint32 fdwOpen),
      int Function(
          Pointer<IntPtr> phwo,
          int uDeviceID,
          Pointer<WAVEFORMATEX> pwfx,
          int dwCallback,
          int dwInstance,
          int fdwOpen)>('waveOutOpen');
  return _waveOutOpen(phwo, uDeviceID, pwfx, dwCallback, dwInstance, fdwOpen);
}

/// The waveOutPause function pauses playback on the given waveform-audio
/// output device. The current position is saved. Use the waveOutRestart
/// function to resume playback from the current position.
///
/// ```c
/// MMRESULT waveOutPause(
///   HWAVEOUT hwo
/// );
/// ```
/// {@category winmm}
int waveOutPause(int hwo) {
  final _waveOutPause =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutPause');
  return _waveOutPause(hwo);
}

/// The waveOutPrepareHeader function prepares a waveform-audio data block
/// for playback.
///
/// ```c
/// MMRESULT waveOutPrepareHeader(
///   HWAVEOUT  hwo,
///   LPWAVEHDR pwh,
///   UINT      cbwh
/// );
/// ```
/// {@category winmm}
int waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutPrepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');
  return _waveOutPrepareHeader(hwo, pwh, cbwh);
}

/// The waveOutReset function stops playback on the given waveform-audio
/// output device and resets the current position to zero. All pending
/// playback buffers are marked as done (WHDR_DONE) and returned to the
/// application.
///
/// ```c
/// MMRESULT waveOutReset(
///   HWAVEOUT hwo
/// );
/// ```
/// {@category winmm}
int waveOutReset(int hwo) {
  final _waveOutReset =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutReset');
  return _waveOutReset(hwo);
}

/// The waveOutRestart function resumes playback on a paused waveform-audio
/// output device.
///
/// ```c
/// MMRESULT waveOutRestart(
///   HWAVEOUT hwo
/// );
/// ```
/// {@category winmm}
int waveOutRestart(int hwo) {
  final _waveOutRestart =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutRestart');
  return _waveOutRestart(hwo);
}

/// The waveOutSetPitch function sets the pitch for the specified
/// waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutSetPitch(
///   HWAVEOUT hwo,
///   DWORD    dwPitch
/// );
/// ```
/// {@category winmm}
int waveOutSetPitch(int hwo, int dwPitch) {
  final _waveOutSetPitch = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwPitch),
      int Function(int hwo, int dwPitch)>('waveOutSetPitch');
  return _waveOutSetPitch(hwo, dwPitch);
}

/// The waveOutSetPlaybackRate function sets the playback rate for the
/// specified waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutSetPlaybackRate(
///   HWAVEOUT hwo,
///   DWORD    dwRate
/// );
/// ```
/// {@category winmm}
int waveOutSetPlaybackRate(int hwo, int dwRate) {
  final _waveOutSetPlaybackRate = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwRate),
      int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');
  return _waveOutSetPlaybackRate(hwo, dwRate);
}

/// The waveOutSetVolume function sets the volume level of the specified
/// waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutSetVolume(
///   HWAVEOUT hwo,
///   DWORD    dwVolume
/// );
/// ```
/// {@category winmm}
int waveOutSetVolume(int hwo, int dwVolume) {
  final _waveOutSetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwVolume),
      int Function(int hwo, int dwVolume)>('waveOutSetVolume');
  return _waveOutSetVolume(hwo, dwVolume);
}

/// The waveOutUnprepareHeader function cleans up the preparation performed
/// by the waveOutPrepareHeader function. This function must be called
/// after the device driver is finished with a data block. You must call
/// this function before freeing the buffer.
///
/// ```c
/// MMRESULT waveOutUnprepareHeader(
///   HWAVEOUT  hwo,
///   LPWAVEHDR pwh,
///   UINT      cbwh
/// );
/// ```
/// {@category winmm}
int waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutUnprepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutUnprepareHeader');
  return _waveOutUnprepareHeader(hwo, pwh, cbwh);
}

/// The waveOutWrite function sends a data block to the given
/// waveform-audio output device.
///
/// ```c
/// MMRESULT waveOutWrite(
///   HWAVEOUT  hwo,
///   LPWAVEHDR pwh,
///   UINT      cbwh
/// );
/// ```
/// {@category winmm}
int waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutWrite = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');
  return _waveOutWrite(hwo, pwh, cbwh);
}
