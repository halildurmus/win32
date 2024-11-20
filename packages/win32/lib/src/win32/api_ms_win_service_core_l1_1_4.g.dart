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

/// Returns a path for a per-service filesystem location for a service to read
/// and/or write state to.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedirectory>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int GetServiceDirectory(
  int hServiceStatus,
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

@Native<
  Uint32 Function(SERVICE_STATUS_HANDLE, Int32, PWSTR, Uint32, Pointer<Uint32>)
>(symbol: 'GetServiceDirectory')
external int _GetServiceDirectory(
  int hServiceStatus,
  int eDirectoryType,
  PWSTR lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
);
