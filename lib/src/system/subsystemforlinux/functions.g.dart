// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/subsystemforlinux/structs.g.dart'; // -----------------------------------------------------------------------

// api-ms-win-wsl-api-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_wsl_api_l1_1_0 =
    DynamicLibrary.open('api-ms-win-wsl-api-l1-1-0.dll');

int WslConfigureDistribution(
  Pointer<Utf16> distributionName,
  int defaultUID,
  int wslDistributionFlags,
) =>
    _WslConfigureDistribution(
      distributionName,
      defaultUID,
      wslDistributionFlags,
    );

late final _WslConfigureDistribution =
    _api_ms_win_wsl_api_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> distributionName,
  Uint32 defaultUID,
  Uint32 wslDistributionFlags,
),
        int Function(
  Pointer<Utf16> distributionName,
  int defaultUID,
  int wslDistributionFlags,
)>('WslConfigureDistribution');

int WslGetDistributionConfiguration(
  Pointer<Utf16> distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Uint32> wslDistributionFlags,
  Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
) =>
    _WslGetDistributionConfiguration(
      distributionName,
      distributionVersion,
      defaultUID,
      wslDistributionFlags,
      defaultEnvironmentVariables,
      defaultEnvironmentVariableCount,
    );

late final _WslGetDistributionConfiguration =
    _api_ms_win_wsl_api_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Uint32> wslDistributionFlags,
  Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
),
        int Function(
  Pointer<Utf16> distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Uint32> wslDistributionFlags,
  Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
)>('WslGetDistributionConfiguration');

int WslIsDistributionRegistered(
  Pointer<Utf16> distributionName,
) =>
    _WslIsDistributionRegistered(
      distributionName,
    );

late final _WslIsDistributionRegistered =
    _api_ms_win_wsl_api_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> distributionName,
),
        int Function(
  Pointer<Utf16> distributionName,
)>('WslIsDistributionRegistered');

int WslLaunch(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  int stdIn,
  int stdOut,
  int stdErr,
  Pointer<IntPtr> process,
) =>
    _WslLaunch(
      distributionName,
      command,
      useCurrentWorkingDirectory,
      stdIn,
      stdOut,
      stdErr,
      process,
    );

late final _WslLaunch = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  Int32 useCurrentWorkingDirectory,
  IntPtr stdIn,
  IntPtr stdOut,
  IntPtr stdErr,
  Pointer<IntPtr> process,
),
    int Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  int stdIn,
  int stdOut,
  int stdErr,
  Pointer<IntPtr> process,
)>('WslLaunch');

int WslLaunchInteractive(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
) =>
    _WslLaunchInteractive(
      distributionName,
      command,
      useCurrentWorkingDirectory,
      exitCode,
    );

late final _WslLaunchInteractive = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  Int32 useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
),
    int Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
)>('WslLaunchInteractive');

int WslRegisterDistribution(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> tarGzFilename,
) =>
    _WslRegisterDistribution(
      distributionName,
      tarGzFilename,
    );

late final _WslRegisterDistribution = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> tarGzFilename,
),
    int Function(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> tarGzFilename,
)>('WslRegisterDistribution');

int WslUnregisterDistribution(
  Pointer<Utf16> distributionName,
) =>
    _WslUnregisterDistribution(
      distributionName,
    );

late final _WslUnregisterDistribution =
    _api_ms_win_wsl_api_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> distributionName,
),
        int Function(
  Pointer<Utf16> distributionName,
)>('WslUnregisterDistribution');
