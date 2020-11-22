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

final _winmm = DynamicLibrary.open('winmm.dll');

/// The mciGetDeviceID function retrieves the device identifier
/// corresponding to the name of an open device.
///
/// ```c
/// MCIDEVICEID mciGetDeviceID(
///    LPCTSTR lpszDevice
/// );
/// ```
/// {@category winmm}
int mciGetDeviceID(Pointer<Utf16> lpszDevice) {
  final _mciGetDeviceID = _winmm.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpszDevice),
      int Function(Pointer<Utf16> lpszDevice)>('mciGetDeviceIDW');
  return _mciGetDeviceID(lpszDevice);
}

/// The mciGetDeviceIDFromElementID function retrieves the MCI device
/// identifier corresponding to an element identifier.
///
/// ```c
/// MCIDEVICEID mciGetDeviceIDFromElementID(
///    DWORD   dwElementID,
///    LPCTSTR lpstrType
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
/// BOOL mciGetErrorString(
///    DWORD  fdwError,
///    LPTSTR lpszErrorText,
///    UINT   cchErrorText
/// );
/// ```
/// {@category winmm}
int mciGetErrorString(
    int fdwError, Pointer<Utf16> lpszErrorText, int cchErrorText) {
  final _mciGetErrorString = _winmm.lookupFunction<
      Int32 Function(
          Uint32 fdwError, Pointer<Utf16> lpszErrorText, Uint32 cchErrorText),
      int Function(int fdwError, Pointer<Utf16> lpszErrorText,
          int cchErrorText)>('mciGetErrorStringW');
  return _mciGetErrorString(fdwError, lpszErrorText, cchErrorText);
}

/// The mciSendCommand function sends a command message to the specified
/// MCI device.
///
/// ```c
/// MCIERROR mciSendCommand(
///    MCIDEVICEID IDDevice,
///    UINT        uMsg,
///    DWORD_PTR   fdwCommand,
///    DWORD_PTR   dwParam
/// );
/// ```
/// {@category winmm}
int mciSendCommand(int IDDevice, int uMsg, int fdwCommand, int dwParam) {
  final _mciSendCommand = _winmm.lookupFunction<
      Uint32 Function(
          Uint32 IDDevice, Uint32 uMsg, IntPtr fdwCommand, IntPtr dwParam),
      int Function(int IDDevice, int uMsg, int fdwCommand,
          int dwParam)>('mciSendCommandW');
  return _mciSendCommand(IDDevice, uMsg, fdwCommand, dwParam);
}

/// The mciSendString function sends a command string to an MCI device. The
/// device that the command is sent to is specified in the command string.
///
/// ```c
/// MCIERROR mciSendString(
///    LPCTSTR lpszCommand,
///    LPTSTR  lpszReturnString,
///    UINT    cchReturn,
///    HANDLE  hwndCallback
/// );
/// ```
/// {@category winmm}
int mciSendString(Pointer<Utf16> lpszCommand, Pointer<Utf16> lpszReturnString,
    int cchReturn, int hwndCallback) {
  final _mciSendString = _winmm.lookupFunction<
      Uint32 Function(
          Pointer<Utf16> lpszCommand,
          Pointer<Utf16> lpszReturnString,
          Uint32 cchReturn,
          IntPtr hwndCallback),
      int Function(Pointer<Utf16> lpszCommand, Pointer<Utf16> lpszReturnString,
          int cchReturn, int hwndCallback)>('mciSendStringW');
  return _mciSendString(lpszCommand, lpszReturnString, cchReturn, hwndCallback);
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
/// BOOL PlaySound(
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
