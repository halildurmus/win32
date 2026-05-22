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

final _api_ms_win_core_handle_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-handle-l1-1-0.dll',
);

/// Compares two object handles to determine if they refer to the same
/// underlying kernel object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-compareobjecthandles>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CompareObjectHandles(
  HANDLE hFirstObjectHandle,
  HANDLE hSecondObjectHandle,
) => _CompareObjectHandles(hFirstObjectHandle, hSecondObjectHandle) != FALSE;

final _CompareObjectHandles = _api_ms_win_core_handle_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('CompareObjectHandles');
