// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

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
import '../functions.dart';
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

final _api_ms_win_service_core_l1_1_4 = DynamicLibrary.open(
  'api-ms-win-service-core-l1-1-4.dll',
);

/// Returns a path for a per-service filesystem location for a service to read
/// and/or write state to.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedirectory>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int GetServiceDirectory(
  SERVICE_STATUS_HANDLE hServiceStatus,
  SERVICE_DIRECTORY_TYPE eDirectoryType,
  PWSTR? lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
) => _GetServiceDirectory(
  hServiceStatus,
  eDirectoryType,
  lpPathBuffer ?? nullptr,
  cchPathBufferLength,
  lpcchRequiredBufferLength,
);

final _GetServiceDirectory = _api_ms_win_service_core_l1_1_4
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Utf16>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Utf16>, int, Pointer<Uint32>)
    >('GetServiceDirectory');
