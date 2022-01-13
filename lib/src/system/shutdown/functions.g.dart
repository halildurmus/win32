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
import '../../system/shutdown/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int AbortSystemShutdown(
  Pointer<Utf16> lpMachineName,
) =>
    _AbortSystemShutdown(
      lpMachineName,
    );

late final _AbortSystemShutdown = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpMachineName,
),
    int Function(
  Pointer<Utf16> lpMachineName,
)>('AbortSystemShutdownW');

int CheckForHiberboot(
  Pointer<Uint8> pHiberboot,
  int bClearFlag,
) =>
    _CheckForHiberboot(
      pHiberboot,
      bClearFlag,
    );

late final _CheckForHiberboot = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pHiberboot,
  Uint8 bClearFlag,
),
    int Function(
  Pointer<Uint8> pHiberboot,
  int bClearFlag,
)>('CheckForHiberboot');

int InitiateShutdown(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwGracePeriod,
  int dwShutdownFlags,
  int dwReason,
) =>
    _InitiateShutdown(
      lpMachineName,
      lpMessage,
      dwGracePeriod,
      dwShutdownFlags,
      dwReason,
    );

late final _InitiateShutdown = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  Uint32 dwGracePeriod,
  Uint32 dwShutdownFlags,
  Uint32 dwReason,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwGracePeriod,
  int dwShutdownFlags,
  int dwReason,
)>('InitiateShutdownW');

int InitiateSystemShutdownEx(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwTimeout,
  int bForceAppsClosed,
  int bRebootAfterShutdown,
  int dwReason,
) =>
    _InitiateSystemShutdownEx(
      lpMachineName,
      lpMessage,
      dwTimeout,
      bForceAppsClosed,
      bRebootAfterShutdown,
      dwReason,
    );

late final _InitiateSystemShutdownEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  Uint32 dwTimeout,
  Int32 bForceAppsClosed,
  Int32 bRebootAfterShutdown,
  Uint32 dwReason,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwTimeout,
  int bForceAppsClosed,
  int bRebootAfterShutdown,
  int dwReason,
)>('InitiateSystemShutdownExW');

int InitiateSystemShutdown(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwTimeout,
  int bForceAppsClosed,
  int bRebootAfterShutdown,
) =>
    _InitiateSystemShutdown(
      lpMachineName,
      lpMessage,
      dwTimeout,
      bForceAppsClosed,
      bRebootAfterShutdown,
    );

late final _InitiateSystemShutdown = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  Uint32 dwTimeout,
  Int32 bForceAppsClosed,
  Int32 bRebootAfterShutdown,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
  int dwTimeout,
  int bForceAppsClosed,
  int bRebootAfterShutdown,
)>('InitiateSystemShutdownW');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int ExitWindowsEx(
  int uFlags,
  int dwReason,
) =>
    _ExitWindowsEx(
      uFlags,
      dwReason,
    );

late final _ExitWindowsEx = _user32.lookupFunction<
    Int32 Function(
  Uint32 uFlags,
  Uint32 dwReason,
),
    int Function(
  int uFlags,
  int dwReason,
)>('ExitWindowsEx');

int LockWorkStation() => _LockWorkStation();

late final _LockWorkStation =
    _user32.lookupFunction<Int32 Function(), int Function()>('LockWorkStation');

int ShutdownBlockReasonCreate(
  int hWnd,
  Pointer<Utf16> pwszReason,
) =>
    _ShutdownBlockReasonCreate(
      hWnd,
      pwszReason,
    );

late final _ShutdownBlockReasonCreate = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pwszReason,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pwszReason,
)>('ShutdownBlockReasonCreate');

int ShutdownBlockReasonDestroy(
  int hWnd,
) =>
    _ShutdownBlockReasonDestroy(
      hWnd,
    );

late final _ShutdownBlockReasonDestroy = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('ShutdownBlockReasonDestroy');

int ShutdownBlockReasonQuery(
  int hWnd,
  Pointer<Utf16> pwszBuff,
  Pointer<Uint32> pcchBuff,
) =>
    _ShutdownBlockReasonQuery(
      hWnd,
      pwszBuff,
      pcchBuff,
    );

late final _ShutdownBlockReasonQuery = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pwszBuff,
  Pointer<Uint32> pcchBuff,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pwszBuff,
  Pointer<Uint32> pcchBuff,
)>('ShutdownBlockReasonQuery');
