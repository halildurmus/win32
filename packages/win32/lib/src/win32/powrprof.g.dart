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

final _powrprof = DynamicLibrary.open('powrprof.dll');

/// Sets or retrieves power information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/powerbase/nf-powerbase-callntpowerinformation>.
///
/// {@category powrprof}
@pragma('vm:prefer-inline')
NTSTATUS CallNtPowerInformation(
  POWER_INFORMATION_LEVEL informationLevel,
  Pointer? inputBuffer,
  int inputBufferLength,
  Pointer? outputBuffer,
  int outputBufferLength,
) => NTSTATUS(
  _CallNtPowerInformation(
    informationLevel,
    inputBuffer ?? nullptr,
    inputBufferLength,
    outputBuffer ?? nullptr,
    outputBufferLength,
  ),
);

final _CallNtPowerInformation = _powrprof
    .lookupFunction<
      Int32 Function(Int32, Pointer, Uint32, Pointer, Uint32),
      int Function(int, Pointer, int, Pointer, int)
    >('CallNtPowerInformation');
