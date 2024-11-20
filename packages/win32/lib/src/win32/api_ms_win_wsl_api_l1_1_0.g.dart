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

@Native<Int32 Function(PCWSTR, Uint32, Int32)>(
  symbol: 'WslConfigureDistribution',
)
external int _WslConfigureDistribution(
  PCWSTR distributionName,
  int defaultUID,
  int wslDistributionFlags,
);

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
  Pointer<Pointer<PSTR>> defaultEnvironmentVariables,
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

@Native<
  Int32 Function(
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Int32>,
    Pointer<Pointer<PSTR>>,
    Pointer<Uint32>,
  )
>(symbol: 'WslGetDistributionConfiguration')
external int _WslGetDistributionConfiguration(
  PCWSTR distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Int32> wslDistributionFlags,
  Pointer<Pointer<PSTR>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
);

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

@Native<BOOL Function(PCWSTR)>(symbol: 'WslIsDistributionRegistered')
external int _WslIsDistributionRegistered(PCWSTR distributionName);

/// Launches a Windows Subsystem for Linux (WSL) process in the context of a
/// particular distribution.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wsllaunch>.
///
/// {@category wslapi}
int WslLaunch(
  PCWSTR distributionName,
  PCWSTR? command,
  bool useCurrentWorkingDirectory,
  int stdIn,
  int stdOut,
  int stdErr,
) {
  final process = loggingCalloc<HANDLE>();
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
  return result$;
}

@Native<
  Int32 Function(PCWSTR, PCWSTR, BOOL, HANDLE, HANDLE, HANDLE, Pointer<HANDLE>)
>(symbol: 'WslLaunch')
external int _WslLaunch(
  PCWSTR distributionName,
  PCWSTR command,
  int useCurrentWorkingDirectory,
  int stdIn,
  int stdOut,
  int stdErr,
  Pointer<HANDLE> process,
);

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
  final exitCode = loggingCalloc<Uint32>();
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

@Native<Int32 Function(PCWSTR, PCWSTR, BOOL, Pointer<Uint32>)>(
  symbol: 'WslLaunchInteractive',
)
external int _WslLaunchInteractive(
  PCWSTR distributionName,
  PCWSTR command,
  int useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
);

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

@Native<Int32 Function(PCWSTR, PCWSTR)>(symbol: 'WslRegisterDistribution')
external int _WslRegisterDistribution(
  PCWSTR distributionName,
  PCWSTR tarGzFilename,
);

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

@Native<Int32 Function(PCWSTR)>(symbol: 'WslUnregisterDistribution')
external int _WslUnregisterDistribution(PCWSTR distributionName);
