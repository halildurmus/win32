// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _wtsapi32 = DynamicLibrary.open('wtsapi32.dll');

/// Registers the specified window to receive session change notifications.
///
/// ```c
/// BOOL WTSRegisterSessionNotification(
///   [in] HWND  hWnd,
///   [in] DWORD dwFlags
/// );
/// ```
/// {@category wtsapi32}
int WTSRegisterSessionNotification(int hWnd, int dwFlags) =>
    _WTSRegisterSessionNotification(hWnd, dwFlags);

final _WTSRegisterSessionNotification = _wtsapi32
    .lookupFunction<
      Int32 Function(IntPtr hWnd, Uint32 dwFlags),
      int Function(int hWnd, int dwFlags)
    >('WTSRegisterSessionNotification');

/// Unregisters the specified window so that it receives no further session
/// change notifications.
///
/// ```c
/// BOOL WTSUnRegisterSessionNotification(
///   [in] HWND hWnd
/// );
/// ```
/// {@category wtsapi32}
int WTSUnRegisterSessionNotification(int hWnd) =>
    _WTSUnRegisterSessionNotification(hWnd);

final _WTSUnRegisterSessionNotification = _wtsapi32
    .lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
      'WTSUnRegisterSessionNotification',
    );
