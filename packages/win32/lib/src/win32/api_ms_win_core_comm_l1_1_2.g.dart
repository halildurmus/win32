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

/// Gets an array that contains the well-formed COM ports.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommports>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int GetCommPorts(
  Pointer<Uint32> lpPortNumbers,
  int uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
) => _GetCommPorts(lpPortNumbers, uPortNumbersCount, puPortNumbersFound);

@Native<Uint32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>(
  symbol: 'GetCommPorts',
)
external int _GetCommPorts(
  Pointer<Uint32> lpPortNumbers,
  int uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
);
