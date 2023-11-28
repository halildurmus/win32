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

final _ntdll = DynamicLibrary.open('ntdll.dll');

/// Retrieves the specified system information.
///
/// ```c
/// NTSTATUS NtQuerySystemInformation(
///    [in]            SYSTEM_INFORMATION_CLASS SystemInformationClass,
///    [in, out]       PVOID                    SystemInformation,
///    [in]            ULONG                    SystemInformationLength,
///    [out, optional] PULONG                   ReturnLength
/// );
/// ```
/// {@category ntdll}
int NtQuerySystemInformation(
        int SystemInformationClass,
        Pointer SystemInformation,
        int SystemInformationLength,
        Pointer<Uint32> ReturnLength) =>
    _NtQuerySystemInformation(SystemInformationClass, SystemInformation,
        SystemInformationLength, ReturnLength);

final _NtQuerySystemInformation = _ntdll.lookupFunction<
    Int32 Function(Int32 SystemInformationClass, Pointer SystemInformation,
        Uint32 SystemInformationLength, Pointer<Uint32> ReturnLength),
    int Function(
        int SystemInformationClass,
        Pointer SystemInformation,
        int SystemInformationLength,
        Pointer<Uint32> ReturnLength)>('NtQuerySystemInformation');
