// Dart representations of Win32 functions.
//
// This file defines handwritten functions that are either not present in the
// metadata used to generate bindings, or they require special handling.

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'constants.g.dart';
import 'structs.dart';
import 'structs.g.dart';
import 'version.dart';
import 'win32_error.dart';

/// Retrieves the calling thread's last-error code value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-getlasterror>.
@pragma('vm:prefer-inline')
WIN32_ERROR GetLastError() => .new(_GetLastError());

final _kernel32 = DynamicLibrary.open('kernel32.dll');

final _GetLastError = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetLastError',
      isLeaf: true,
    );

var _getLastErrorIsResolved = false;

/// Resolves the `GetLastError` function if it hasn't been resolved yet.
///
/// This is necessary to ensure that the correct error code is returned when a
/// Win32 API call fails. Without this, the error code gets clobbered by Dart's
/// runtime before it can be retrieved, leading to unreliable error handling.
void resolveGetLastError() {
  if (_getLastErrorIsResolved) return;
  GetLastError();
  _getLastErrorIsResolved = true;
}

/// Retrieves the current value of a specified Desktop Window Manager (DWM)
/// attribute applied to a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/getwindowcompositionattribute>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetWindowCompositionAttribute(
  HWND hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _GetWindowCompositionAttribute(hwnd, pwcad) != FALSE;

@Native<Int32 Function(Pointer, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'GetWindowCompositionAttribute',
  isLeaf: true,
)
external int _GetWindowCompositionAttribute(
  Pointer hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
);

/// Sets the current value of a specified Desktop Window Manager (DWM) attribute
/// applied to a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/setwindowcompositionattribute>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetWindowCompositionAttribute(
  HWND hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _SetWindowCompositionAttribute(hwnd, pwcad) != FALSE;

@Native<Int32 Function(Pointer, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'SetWindowCompositionAttribute',
  isLeaf: true,
)
external int _SetWindowCompositionAttribute(
  Pointer hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
);

/// Whether the OS version is Windows 10 or greater.
bool IsWindows10OrGreater() => OsVersion.current >= OsVersion.win10;

/// Whether the OS version is Windows 11 or greater.
bool IsWindows11OrGreater() => OsVersion.current >= OsVersion.win11;
