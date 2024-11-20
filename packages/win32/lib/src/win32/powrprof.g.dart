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

@Native<Int32 Function(Int32, Pointer, Uint32, Pointer, Uint32)>(
  symbol: 'CallNtPowerInformation',
)
external int _CallNtPowerInformation(
  int informationLevel,
  Pointer inputBuffer,
  int inputBufferLength,
  Pointer outputBuffer,
  int outputBufferLength,
);
