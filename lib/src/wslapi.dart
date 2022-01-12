// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'guid.dart';
import 'structs.dart';
import 'structs.g.dart';

final _wslapi = DynamicLibrary.open('wslapi.dll');

/// Modifies the behavior of a distribution registered with the Windows Subsystem
/// for Linux (WSL).
///
/// ```c
/// HRESULT WslConfigureDistribution(
///   _In_  PCWSTR                  distributionName,
///   _In_  ULONG                   defaultUID,
///   _In_  WSL_DISTRIBUTION_FLAGS  wslDistributionFlags
/// );
/// ```
/// {@category wslapi}
int WslConfigureDistribution(Pointer<Utf16> distributionName, int defaultUID,
        WSL_DISTRIBUTION_FLAGS wslDistributionFlags) =>
    _WslConfigureDistribution(
        distributionName, defaultUID, wslDistributionFlags);

late final _WslConfigureDistribution = _wslapi.lookupFunction<
        Int32 Function(Pointer<Utf16> distributionName, Uint32 defaultUID,
            WSL_DISTRIBUTION_FLAGS wslDistributionFlags),
        int Function(Pointer<Utf16> distributionName, int defaultUID,
            WSL_DISTRIBUTION_FLAGS wslDistributionFlags)>(
    'WslConfigureDistribution');

/// Retrieves the current configuration of a distribution registered with
/// the Windows Subsystem for Linux (WSL).
///
/// ```c
/// HRESULT WslGetDistributionConfiguration(
///   _In_                    PCWSTR                  distributionName,
///   _Out_                   ULONG                   *distributionVersion,
///   _Out_                   ULONG                   *defaultUID,
///   _Out_                   WSL_DISTRIBUTION_FLAGS  *wslDistributionFlags,
///   _Outptr_result_buffer_  PSTR                    **defaultEnvironmentVariables,
///   _Out_                   ULONG                   *defaultEnvironmentVariableCount
/// );
/// ```
/// {@category wslapi}
int WslGetDistributionConfiguration(
        Pointer<Utf16> distributionName,
        Pointer<Uint32> distributionVersion,
        Pointer<Uint32> defaultUID,
        Pointer<WSL_DISTRIBUTION_FLAGS> wslDistributionFlags,
        Pointer<Pointer<Utf8>> defaultEnvironmentVariables,
        Pointer<Uint32> defaultEnvironmentVariableCount) =>
    _WslGetDistributionConfiguration(
        distributionName,
        distributionVersion,
        defaultUID,
        wslDistributionFlags,
        defaultEnvironmentVariables,
        defaultEnvironmentVariableCount);

late final _WslGetDistributionConfiguration = _wslapi.lookupFunction<
        Int32 Function(
            Pointer<Utf16> distributionName,
            Pointer<Uint32> distributionVersion,
            Pointer<Uint32> defaultUID,
            Pointer<WSL_DISTRIBUTION_FLAGS> wslDistributionFlags,
            Pointer<Pointer<Utf8>> defaultEnvironmentVariables,
            Pointer<Uint32> defaultEnvironmentVariableCount),
        int Function(
            Pointer<Utf16> distributionName,
            Pointer<Uint32> distributionVersion,
            Pointer<Uint32> defaultUID,
            Pointer<WSL_DISTRIBUTION_FLAGS> wslDistributionFlags,
            Pointer<Pointer<Utf8>> defaultEnvironmentVariables,
            Pointer<Uint32> defaultEnvironmentVariableCount)>(
    'WslGetDistributionConfiguration');

/// Determines if a distribution is registered with the Windows Subsystem for
/// Linux (WSL).
///
/// ```c
/// BOOL WslIsDistributionRegistered(
///   _In_  PCWSTR  distributionName
/// );
/// ```
/// {@category wslapi}
bool WslIsDistributionRegistered(Pointer<Utf16> distributionName) =>
    _WslIsDistributionRegistered(distributionName);

late final _WslIsDistributionRegistered = _wslapi.lookupFunction<
    Bool Function(Pointer<Utf16> distributionName),
    bool Function(
        Pointer<Utf16> distributionName)>('WslIsDistributionRegistered');

/// Launches a Windows Subsystem for Linux (WSL) process in the context of
/// a particular distribution.
///
/// ```c
/// HRESULT WslLaunch(
///   _In_      PCWSTR  distributionName,
///   _In_opt_  PCWSTR  command,
///   _In_      BOOL    useCurrentWorkingDirectory,
///   _In_      HANDLE  stdIn,
///   _In_      HANDLE  stdOut,
///   _In_      HANDLE  stdErr,
///   _Out_     HANDLE  *process
/// );
/// ```
/// {@category wslapi}
int WslLaunch(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        bool useCurrentWorkingDirectory,
        int stdIn,
        int stdOut,
        int stdErr,
        Pointer<IntPtr> process) =>
    _WslLaunch(distributionName, command, useCurrentWorkingDirectory, stdIn,
        stdOut, stdErr, process);

late final _WslLaunch = _wslapi.lookupFunction<
    Int32 Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        Bool useCurrentWorkingDirectory,
        IntPtr stdIn,
        IntPtr stdOut,
        IntPtr stdErr,
        Pointer<IntPtr> process),
    int Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        bool useCurrentWorkingDirectory,
        int stdIn,
        int stdOut,
        int stdErr,
        Pointer<IntPtr> process)>('WslLaunch');

/// Launches an interactive Windows Subsystem for Linux (WSL) process in
/// the context of a particular distribution.This differs from WslLaunch in
/// that the end user will be able to interact with the newly-created process.
///
/// ```c
/// HRESULT WslLaunchInteractive(
///   _In_      PCWSTR  distributionName,
///   _In_opt_  PCWSTR  command,
///   _In_      BOOL    useCurrentWorkingDirectory,
///   _Out_     DWORD   *exitCode
/// );
/// ```
/// {@category wslapi}
int WslLaunchInteractive(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        bool useCurrentWorkingDirectory,
        Pointer<Uint32> exitCode) =>
    _WslLaunchInteractive(
        distributionName, command, useCurrentWorkingDirectory, exitCode);

late final _WslLaunchInteractive = _wslapi.lookupFunction<
    Int32 Function(Pointer<Utf16> distributionName, Pointer<Utf16> command,
        Bool useCurrentWorkingDirectory, Pointer<Uint32> exitCode),
    int Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        bool useCurrentWorkingDirectory,
        Pointer<Uint32> exitCode)>('WslLaunchInteractive');

/// Registers a new distribution with the Windows Subsystem for Linux (WSL).
///
/// ```c
/// HRESULT WslRegisterDistribution(
///   _In_  PCWSTR  distributionName,
///   _In_  PCWSTR  tarGzFilename
/// );
/// ```
/// {@category wslapi}
int WslRegisterDistribution(
        Pointer<Utf16> distributionName, Pointer<Utf16> tarGzFilename) =>
    _WslRegisterDistribution(distributionName, tarGzFilename);

late final _WslRegisterDistribution = _wslapi.lookupFunction<
    Int32 Function(
        Pointer<Utf16> distributionName, Pointer<Utf16> tarGzFilename),
    int Function(Pointer<Utf16> distributionName,
        Pointer<Utf16> tarGzFilename)>('WslRegisterDistribution');

/// Unregisters a distribution from the Windows Subsystem for Linux (WSL).
///
/// ```c
/// HRESULT WslUnregisterDistribution(
///   _In_  PCWSTR  distributionName
/// );
/// ```
/// {@category wslapi}
int WslUnregisterDistribution(Pointer<Utf16> distributionName) =>
    _WslUnregisterDistribution(distributionName);

late final _WslUnregisterDistribution = _wslapi.lookupFunction<
    Int32 Function(Pointer<Utf16> distributionName),
    int Function(Pointer<Utf16> distributionName)>('WslUnregisterDistribution');
