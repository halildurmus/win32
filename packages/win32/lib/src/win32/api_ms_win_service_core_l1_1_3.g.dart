// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Returns a handle for a registry key for a service to read and/or write state
/// to.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getserviceregistrystatekey>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int GetServiceRegistryStateKey(
  int serviceStatusHandle,
  SERVICE_REGISTRY_STATE_TYPE stateType,
  int accessMask,
  Pointer<HKEY> serviceStateKey,
) => _GetServiceRegistryStateKey(
  serviceStatusHandle,
  stateType,
  accessMask,
  serviceStateKey,
);

@Native<Uint32 Function(SERVICE_STATUS_HANDLE, Int32, Uint32, Pointer<HKEY>)>(
  symbol: 'GetServiceRegistryStateKey',
)
external int _GetServiceRegistryStateKey(
  int serviceStatusHandle,
  int stateType,
  int accessMask,
  Pointer<HKEY> serviceStateKey,
);
