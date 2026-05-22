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

final _wtsapi32 = DynamicLibrary.open('wtsapi32.dll');

/// Registers the specified window to receive session change notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtsapi32/nf-wtsapi32-wtsregistersessionnotification>.
///
/// {@category wtsapi32}
Win32Result<bool> WTSRegisterSessionNotification(HWND hWnd, int dwFlags) {
  resolveGetLastError();
  final result_ = _WTSRegisterSessionNotification(hWnd, dwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WTSRegisterSessionNotification = _wtsapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WTSRegisterSessionNotification');

/// Unregisters the specified window so that it receives no further session
/// change notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtsapi32/nf-wtsapi32-wtsunregistersessionnotification>.
///
/// {@category wtsapi32}
Win32Result<bool> WTSUnRegisterSessionNotification(HWND hWnd) {
  resolveGetLastError();
  final result_ = _WTSUnRegisterSessionNotification(hWnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WTSUnRegisterSessionNotification = _wtsapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WTSUnRegisterSessionNotification',
    );
