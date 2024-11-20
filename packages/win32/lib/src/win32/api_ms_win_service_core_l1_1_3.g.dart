// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Returns a handle for a registry key for a service to read and/or write state
/// to.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getserviceregistrystatekey>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int GetServiceRegistryStateKey(
  SERVICE_STATUS_HANDLE serviceStatusHandle,
  SERVICE_REGISTRY_STATE_TYPE stateType,
  int accessMask,
  Pointer<Pointer> serviceStateKey,
) => _GetServiceRegistryStateKey(
  serviceStatusHandle,
  stateType,
  accessMask,
  serviceStateKey,
);

@Native<Uint32 Function(Pointer, Int32, Uint32, Pointer<Pointer>)>(
  symbol: 'GetServiceRegistryStateKey',
)
external int _GetServiceRegistryStateKey(
  Pointer serviceStatusHandle,
  int stateType,
  int accessMask,
  Pointer<Pointer> serviceStateKey,
);
