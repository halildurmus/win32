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

/// Compares two object handles to determine if they refer to the same
/// underlying kernel object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-compareobjecthandles>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CompareObjectHandles(int hFirstObjectHandle, int hSecondObjectHandle) =>
    _CompareObjectHandles(hFirstObjectHandle, hSecondObjectHandle) != FALSE;

@Native<BOOL Function(HANDLE, HANDLE)>(symbol: 'CompareObjectHandles')
external int _CompareObjectHandles(
  int hFirstObjectHandle,
  int hSecondObjectHandle,
);
