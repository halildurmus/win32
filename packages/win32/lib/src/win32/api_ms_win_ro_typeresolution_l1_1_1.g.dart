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

final _api_ms_win_ro_typeresolution_l1_1_1 = DynamicLibrary.open(
  'api-ms-win-ro-typeresolution-l1-1-1.dll',
);

/// Returns true or false to indicate whether the API contract with the
/// specified name and major version number is present.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-roisapicontractmajorversionpresent>.
///
/// {@category winrt}
bool RoIsApiContractMajorVersionPresent(PCWSTR name, int majorVersion) {
  final present = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(
    _RoIsApiContractMajorVersionPresent(name, majorVersion, present),
  );
  if (hr$.isError) {
    free(present);
    throw WindowsException(hr$);
  }
  final result$ = present.value;
  free(present);
  return result$ != FALSE;
}

final _RoIsApiContractMajorVersionPresent = _api_ms_win_ro_typeresolution_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint16, Pointer<Int32>),
      int Function(Pointer<Utf16>, int, Pointer<Int32>)
    >('RoIsApiContractMajorVersionPresent');

/// Returns true or false to indicate whether the API contract with the
/// specified name and major and minor version number is present.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-roisapicontractpresent>.
///
/// {@category winrt}
bool RoIsApiContractPresent(PCWSTR name, int majorVersion, int minorVersion) {
  final present = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(
    _RoIsApiContractPresent(name, majorVersion, minorVersion, present),
  );
  if (hr$.isError) {
    free(present);
    throw WindowsException(hr$);
  }
  final result$ = present.value;
  free(present);
  return result$ != FALSE;
}

final _RoIsApiContractPresent = _api_ms_win_ro_typeresolution_l1_1_1
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint16, Uint16, Pointer<Int32>),
      int Function(Pointer<Utf16>, int, int, Pointer<Int32>)
    >('RoIsApiContractPresent');
