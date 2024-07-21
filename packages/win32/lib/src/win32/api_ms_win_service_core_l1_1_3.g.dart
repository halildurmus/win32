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

final _api_ms_win_service_core_l1_1_3 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-3.dll');

/// Returns a handle for a registry key for a service to read and/or write
/// state to.
///
/// ```c
/// DWORD GetServiceRegistryStateKey(
///   SERVICE_STATUS_HANDLE       ServiceStatusHandle,
///   SERVICE_REGISTRY_STATE_TYPE StateType,
///   DWORD                       AccessMask,
///   HKEY                        *ServiceStateKey
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_3}
int GetServiceRegistryStateKey(int ServiceStatusHandle, int StateType,
        int AccessMask, Pointer<IntPtr> ServiceStateKey) =>
    _GetServiceRegistryStateKey(
        ServiceStatusHandle, StateType, AccessMask, ServiceStateKey);

final _GetServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_3.lookupFunction<
        Uint32 Function(IntPtr ServiceStatusHandle, Int32 StateType,
            Uint32 AccessMask, Pointer<IntPtr> ServiceStateKey),
        int Function(int ServiceStatusHandle, int StateType, int AccessMask,
            Pointer<IntPtr> ServiceStateKey)>('GetServiceRegistryStateKey');
