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

final _api_ms_win_wsl_api_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-wsl-api-l1-1-0.dll',
);

/// Modifies the behavior of a distribution registered with the Windows
/// Subsystem for Linux (WSL).
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslconfiguredistribution>.
///
/// {@category wslapi}
@pragma('vm:prefer-inline')
void WslConfigureDistribution(
  PCWSTR distributionName,
  int defaultUID,
  WSL_DISTRIBUTION_FLAGS wslDistributionFlags,
) {
  final hr$ = HRESULT(
    _WslConfigureDistribution(
      distributionName,
      defaultUID,
      wslDistributionFlags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _WslConfigureDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Int32),
      int Function(Pointer<Utf16>, int, int)
    >('WslConfigureDistribution');

/// Retrieves the current configuration of a distribution registered with the
/// Windows Subsystem for Linux (WSL).
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslgetdistributionconfiguration>.
///
/// {@category wslapi}
@pragma('vm:prefer-inline')
void WslGetDistributionConfiguration(
  PCWSTR distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Int32> wslDistributionFlags,
  Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
) {
  final hr$ = HRESULT(
    _WslGetDistributionConfiguration(
      distributionName,
      distributionVersion,
      defaultUID,
      wslDistributionFlags,
      defaultEnvironmentVariables,
      defaultEnvironmentVariableCount,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _WslGetDistributionConfiguration = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Int32>,
        Pointer<Pointer<Pointer<Utf8>>>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Int32>,
        Pointer<Pointer<Pointer<Utf8>>>,
        Pointer<Uint32>,
      )
    >('WslGetDistributionConfiguration');

/// Determines if a distribution is registered with the Windows Subsystem for
/// Linux (WSL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslisdistributionregistered>.
///
/// {@category wslapi}
@pragma('vm:prefer-inline')
bool WslIsDistributionRegistered(PCWSTR distributionName) =>
    _WslIsDistributionRegistered(distributionName) != FALSE;

final _WslIsDistributionRegistered = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('WslIsDistributionRegistered');

/// Launches a Windows Subsystem for Linux (WSL) process in the context of a
/// particular distribution.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wsllaunch>.
///
/// {@category wslapi}
HANDLE WslLaunch(
  PCWSTR distributionName,
  PCWSTR? command,
  bool useCurrentWorkingDirectory,
  HANDLE stdIn,
  HANDLE stdOut,
  HANDLE stdErr,
) {
  final process = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WslLaunch(
      distributionName,
      command ?? nullptr,
      useCurrentWorkingDirectory ? TRUE : FALSE,
      stdIn,
      stdOut,
      stdErr,
      process,
    ),
  );
  if (hr$.isError) {
    free(process);
    throw WindowsException(hr$);
  }
  final result$ = process.value;
  free(process);
  return .new(result$);
}

final _WslLaunch = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Int32,
        Pointer,
        Pointer,
        Pointer,
        Pointer<Pointer>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer,
        Pointer,
        Pointer,
        Pointer<Pointer>,
      )
    >('WslLaunch');

/// Launches an interactive Windows Subsystem for Linux (WSL) process in the
/// context of a particular distribution.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wsllaunchinteractive>.
///
/// {@category wslapi}
int WslLaunchInteractive(
  PCWSTR distributionName,
  PCWSTR? command,
  bool useCurrentWorkingDirectory,
) {
  final exitCode = adaptiveCalloc<Uint32>();
  final hr$ = HRESULT(
    _WslLaunchInteractive(
      distributionName,
      command ?? nullptr,
      useCurrentWorkingDirectory ? TRUE : FALSE,
      exitCode,
    ),
  );
  if (hr$.isError) {
    free(exitCode);
    throw WindowsException(hr$);
  }
  final result$ = exitCode.value;
  free(exitCode);
  return result$;
}

final _WslLaunchInteractive = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Int32, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint32>)
    >('WslLaunchInteractive');

/// Registers a new distribution with the Windows Subsystem for Linux (WSL).
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslregisterdistribution>.
///
/// {@category wslapi}
@pragma('vm:prefer-inline')
void WslRegisterDistribution(PCWSTR distributionName, PCWSTR tarGzFilename) {
  final hr$ = HRESULT(
    _WslRegisterDistribution(distributionName, tarGzFilename),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _WslRegisterDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('WslRegisterDistribution');

/// Unregisters a distribution from the Windows Subsystem for Linux (WSL).
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslunregisterdistribution>.
///
/// {@category wslapi}
@pragma('vm:prefer-inline')
void WslUnregisterDistribution(PCWSTR distributionName) {
  final hr$ = HRESULT(_WslUnregisterDistribution(distributionName));
  if (hr$.isError) throw WindowsException(hr$);
}

final _WslUnregisterDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('WslUnregisterDistribution');
