// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _mmdevapi = DynamicLibrary.open('mmdevapi.dll');

/// Enables Windows Store apps to access preexisting Component Object Model
/// (COM) interfaces in the WASAPI family.
///
/// ```c
/// HRESULT ActivateAudioInterfaceAsync(
///   [in] LPCWSTR                                  deviceInterfacePath,
///   [in] REFIID                                   riid,
///   [in] PROPVARIANT                              *activationParams,
///   [in] IActivateAudioInterfaceCompletionHandler *completionHandler,
///        IActivateAudioInterfaceAsyncOperation    **activationOperation
/// );
/// ```
/// {@category mmdevapi}
int ActivateAudioInterfaceAsync(
        Pointer<Utf16> deviceInterfacePath,
        Pointer<GUID> riid,
        Pointer<PROPVARIANT> activationParams,
        Pointer<COMObject> completionHandler,
        Pointer<Pointer<COMObject>> activationOperation) =>
    _ActivateAudioInterfaceAsync(deviceInterfacePath, riid, activationParams,
        completionHandler, activationOperation);

final _ActivateAudioInterfaceAsync = _mmdevapi.lookupFunction<
        Int32 Function(
            Pointer<Utf16> deviceInterfacePath,
            Pointer<GUID> riid,
            Pointer<PROPVARIANT> activationParams,
            Pointer<COMObject> completionHandler,
            Pointer<Pointer<COMObject>> activationOperation),
        int Function(
            Pointer<Utf16> deviceInterfacePath,
            Pointer<GUID> riid,
            Pointer<PROPVARIANT> activationParams,
            Pointer<COMObject> completionHandler,
            Pointer<Pointer<COMObject>> activationOperation)>(
    'ActivateAudioInterfaceAsync');
