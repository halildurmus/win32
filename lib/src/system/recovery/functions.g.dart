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
import '../../system/windowsprogramming/callbacks.g.dart';
import '../../system/recovery/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

void ApplicationRecoveryFinished(
  int bSuccess,
) =>
    _ApplicationRecoveryFinished(
      bSuccess,
    );

late final _ApplicationRecoveryFinished = _kernel32.lookupFunction<
    Void Function(
  Int32 bSuccess,
),
    void Function(
  int bSuccess,
)>('ApplicationRecoveryFinished');

int ApplicationRecoveryInProgress(
  Pointer<Int32> pbCancelled,
) =>
    _ApplicationRecoveryInProgress(
      pbCancelled,
    );

late final _ApplicationRecoveryInProgress = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pbCancelled,
),
    int Function(
  Pointer<Int32> pbCancelled,
)>('ApplicationRecoveryInProgress');

int GetApplicationRecoveryCallback(
  int hProcess,
  Pointer<Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>>>
      pRecoveryCallback,
  Pointer<Pointer> ppvParameter,
  Pointer<Uint32> pdwPingInterval,
  Pointer<Uint32> pdwFlags,
) =>
    _GetApplicationRecoveryCallback(
      hProcess,
      pRecoveryCallback,
      ppvParameter,
      pdwPingInterval,
      pdwFlags,
    );

late final _GetApplicationRecoveryCallback = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>>>
      pRecoveryCallback,
  Pointer<Pointer> ppvParameter,
  Pointer<Uint32> pdwPingInterval,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  int hProcess,
  Pointer<Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>>>
      pRecoveryCallback,
  Pointer<Pointer> ppvParameter,
  Pointer<Uint32> pdwPingInterval,
  Pointer<Uint32> pdwFlags,
)>('GetApplicationRecoveryCallback');

int GetApplicationRestartSettings(
  int hProcess,
  Pointer<Utf16> pwzCommandline,
  Pointer<Uint32> pcchSize,
  Pointer<Uint32> pdwFlags,
) =>
    _GetApplicationRestartSettings(
      hProcess,
      pwzCommandline,
      pcchSize,
      pdwFlags,
    );

late final _GetApplicationRestartSettings = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> pwzCommandline,
  Pointer<Uint32> pcchSize,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  int hProcess,
  Pointer<Utf16> pwzCommandline,
  Pointer<Uint32> pcchSize,
  Pointer<Uint32> pdwFlags,
)>('GetApplicationRestartSettings');

int RegisterApplicationRecoveryCallback(
  Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>> pRecoveyCallback,
  Pointer pvParameter,
  int dwPingInterval,
  int dwFlags,
) =>
    _RegisterApplicationRecoveryCallback(
      pRecoveyCallback,
      pvParameter,
      dwPingInterval,
      dwFlags,
    );

late final _RegisterApplicationRecoveryCallback = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>> pRecoveyCallback,
  Pointer pvParameter,
  Uint32 dwPingInterval,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<APPLICATION_RECOVERY_CALLBACK>> pRecoveyCallback,
  Pointer pvParameter,
  int dwPingInterval,
  int dwFlags,
)>('RegisterApplicationRecoveryCallback');

int RegisterApplicationRestart(
  Pointer<Utf16> pwzCommandline,
  int dwFlags,
) =>
    _RegisterApplicationRestart(
      pwzCommandline,
      dwFlags,
    );

late final _RegisterApplicationRestart = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzCommandline,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwzCommandline,
  int dwFlags,
)>('RegisterApplicationRestart');

int UnregisterApplicationRecoveryCallback() =>
    _UnregisterApplicationRecoveryCallback();

late final _UnregisterApplicationRecoveryCallback =
    _kernel32.lookupFunction<Int32 Function(), int Function()>(
        'UnregisterApplicationRecoveryCallback');

int UnregisterApplicationRestart() => _UnregisterApplicationRestart();

late final _UnregisterApplicationRestart =
    _kernel32.lookupFunction<Int32 Function(), int Function()>(
        'UnregisterApplicationRestart');
