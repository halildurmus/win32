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

@Native<Int32 Function(Int32, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'NtQuerySystemInformation',
)
external int _NtQuerySystemInformation(
  int systemInformationClass,
  Pointer systemInformation,
  int systemInformationLength,
  Pointer<Uint32> returnLength,
);

/// Gets version information about the currently running operating system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevNotes/rtlgetversion>.
///
/// {@category ntdll}
@pragma('vm:prefer-inline')
NTSTATUS RtlGetVersion(Pointer<OSVERSIONINFO> lpVersionInformation) =>
    NTSTATUS(_RtlGetVersion(lpVersionInformation));

@Native<Int32 Function(Pointer<OSVERSIONINFO>)>(symbol: 'RtlGetVersion')
external int _RtlGetVersion(Pointer<OSVERSIONINFO> lpVersionInformation);
