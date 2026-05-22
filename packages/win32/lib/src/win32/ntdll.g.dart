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

final _ntdll = DynamicLibrary.open('ntdll.dll');

/// Retrieves the specified system information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winternl/nf-winternl-ntquerysysteminformation>.
///
/// {@category ntdll}
@pragma('vm:prefer-inline')
NTSTATUS NtQuerySystemInformation(
  SYSTEM_INFORMATION_CLASS systemInformationClass,
  Pointer systemInformation,
  int systemInformationLength,
  Pointer<Uint32> returnLength,
) => NTSTATUS(
  _NtQuerySystemInformation(
    systemInformationClass,
    systemInformation,
    systemInformationLength,
    returnLength,
  ),
);

final _NtQuerySystemInformation = _ntdll
    .lookupFunction<
      Int32 Function(Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(int, Pointer, int, Pointer<Uint32>)
    >('NtQuerySystemInformation');

/// Gets version information about the currently running operating system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevNotes/rtlgetversion>.
///
/// {@category ntdll}
@pragma('vm:prefer-inline')
NTSTATUS RtlGetVersion(Pointer<OSVERSIONINFO> lpVersionInformation) =>
    NTSTATUS(_RtlGetVersion(lpVersionInformation));

final _RtlGetVersion = _ntdll
    .lookupFunction<
      Int32 Function(Pointer<OSVERSIONINFO>),
      int Function(Pointer<OSVERSIONINFO>)
    >('RtlGetVersion');
