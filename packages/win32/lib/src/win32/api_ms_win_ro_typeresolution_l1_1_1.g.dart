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
  final present = loggingCalloc<BOOL>();
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

@Native<Int32 Function(PCWSTR, Uint16, Pointer<BOOL>)>(
  symbol: 'RoIsApiContractMajorVersionPresent',
)
external int _RoIsApiContractMajorVersionPresent(
  PCWSTR name,
  int majorVersion,
  Pointer<BOOL> present,
);

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
  final present = loggingCalloc<BOOL>();
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

@Native<Int32 Function(PCWSTR, Uint16, Uint16, Pointer<BOOL>)>(
  symbol: 'RoIsApiContractPresent',
)
external int _RoIsApiContractPresent(
  PCWSTR name,
  int majorVersion,
  int minorVersion,
  Pointer<BOOL> present,
);
