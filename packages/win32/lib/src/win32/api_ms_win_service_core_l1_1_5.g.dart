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

final _api_ms_win_service_core_l1_1_5 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-5.dll');

/// Returns a path for a per-service filesystem location for a service and
/// associated programs to read and/or write state to.
///
/// ```c
/// DWORD GetSharedServiceDirectory(
///   SC_HANDLE                     ServiceHandle,
///   SERVICE_SHARED_DIRECTORY_TYPE DirectoryType,
///   PWCHAR                        PathBuffer,
///   DWORD                         PathBufferLength,
///   DWORD                         *RequiredBufferLength
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_5}
int GetSharedServiceDirectory(
        int ServiceHandle,
        int DirectoryType,
        Pointer<Utf16> PathBuffer,
        int PathBufferLength,
        Pointer<Uint32> RequiredBufferLength) =>
    _GetSharedServiceDirectory(ServiceHandle, DirectoryType, PathBuffer,
        PathBufferLength, RequiredBufferLength);

final _GetSharedServiceDirectory =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
        Uint32 Function(
            IntPtr ServiceHandle,
            Int32 DirectoryType,
            Pointer<Utf16> PathBuffer,
            Uint32 PathBufferLength,
            Pointer<Uint32> RequiredBufferLength),
        int Function(
            int ServiceHandle,
            int DirectoryType,
            Pointer<Utf16> PathBuffer,
            int PathBufferLength,
            Pointer<Uint32> RequiredBufferLength)>('GetSharedServiceDirectory');

/// Returns a handle for a registry key for a service and associated
/// programs to read and/or write state to.
///
/// ```c
/// DWORD GetSharedServiceRegistryStateKey(
///   SC_HANDLE                          ServiceHandle,
///   SERVICE_SHARED_REGISTRY_STATE_TYPE StateType,
///   DWORD                              AccessMask,
///   HKEY                               *ServiceStateKey
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_5}
int GetSharedServiceRegistryStateKey(int ServiceHandle, int StateType,
        int AccessMask, Pointer<IntPtr> ServiceStateKey) =>
    _GetSharedServiceRegistryStateKey(
        ServiceHandle, StateType, AccessMask, ServiceStateKey);

final _GetSharedServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
            Uint32 Function(IntPtr ServiceHandle, Int32 StateType,
                Uint32 AccessMask, Pointer<IntPtr> ServiceStateKey),
            int Function(int ServiceHandle, int StateType, int AccessMask,
                Pointer<IntPtr> ServiceStateKey)>(
        'GetSharedServiceRegistryStateKey');
