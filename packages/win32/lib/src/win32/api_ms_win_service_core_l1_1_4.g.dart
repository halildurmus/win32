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

final _api_ms_win_service_core_l1_1_4 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-4.dll');

/// Returns a path for a per-service filesystem location for a service to
/// read and/or write state to.
///
/// ```c
/// DWORD GetServiceDirectory(
///   SERVICE_STATUS_HANDLE  hServiceStatus,
///   SERVICE_DIRECTORY_TYPE eDirectoryType,
///   PWCHAR                 lpPathBuffer,
///   DWORD                  cchPathBufferLength,
///   DWORD                  *lpcchRequiredBufferLength
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_4}
int GetServiceDirectory(
        int hServiceStatus,
        int eDirectoryType,
        Pointer<Utf16> lpPathBuffer,
        int cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength) =>
    _GetServiceDirectory(hServiceStatus, eDirectoryType, lpPathBuffer,
        cchPathBufferLength, lpcchRequiredBufferLength);

final _GetServiceDirectory = _api_ms_win_service_core_l1_1_4.lookupFunction<
    Uint32 Function(
        IntPtr hServiceStatus,
        Int32 eDirectoryType,
        Pointer<Utf16> lpPathBuffer,
        Uint32 cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength),
    int Function(
        int hServiceStatus,
        int eDirectoryType,
        Pointer<Utf16> lpPathBuffer,
        int cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength)>('GetServiceDirectory');
