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
final mciGetDeviceID = _winmm.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpszDevice),
    int Function(Pointer<Utf16> lpszDevice)>('mciGetDeviceIDW');

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
final mciGetDeviceIDFromElementID = _winmm.lookupFunction<
    Uint32 Function(Uint32 dwElementID, Pointer<Utf16> lpstrType),
    int Function(int dwElementID,
        Pointer<Utf16> lpstrType)>('mciGetDeviceIDFromElementIDW');

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
final mciGetErrorString = _winmm.lookupFunction<
    Int32 Function(
        Uint32 fdwError, Pointer<Utf16> lpszErrorText, Uint32 cchErrorText),
    int Function(int fdwError, Pointer<Utf16> lpszErrorText,
        int cchErrorText)>('mciGetErrorStringW');

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
final mciSendCommand = _winmm.lookupFunction<
    Uint32 Function(
        Uint32 IDDevice, Uint32 uMsg, IntPtr fdwCommand, IntPtr dwParam),
    int Function(int IDDevice, int uMsg, int fdwCommand,
        int dwParam)>('mciSendCommandW');

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
final mciSendString = _winmm.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpszCommand, Pointer<Utf16> lpszReturnString,
        Uint32 cchReturn, IntPtr hwndCallback),
    int Function(Pointer<Utf16> lpszCommand, Pointer<Utf16> lpszReturnString,
        int cchReturn, int hwndCallback)>('mciSendStringW');

/// The midiOutGetNumDevs function retrieves the number of MIDI output
/// devices present in the system.
///
/// ```c
/// UINT midiOutGetNumDevs();
/// ```
/// {@category winmm}
final midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');
