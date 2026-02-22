// Dart representations of Win32 functions.
//
// This file defines handwritten functions that are either not present in the
// metadata used to generate bindings, or they require special handling.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.g.dart';
import 'structs.dart';
import 'structs.g.dart';
import 'win32/ntdll.g.dart';

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

/// Whether the OS version is Windows 10 (build 19041) or greater.
bool IsWindows10OrGreater() => using((arena) {
  final osvi = arena<OSVERSIONINFO>()
    ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
  final status = RtlGetVersion(osvi);
  if (status.isError) return false;

  if (osvi.ref case OSVERSIONINFO(
    :final dwMajorVersion,
    dwMinorVersion: 0,
    :final dwBuildNumber,
  ) when dwMajorVersion >= 10 && dwBuildNumber >= 19041) {
    return true;
  }

  return false;
});

/// Whether the OS version is Windows 11 (build 22000) or greater.
bool IsWindows11OrGreater() => using((arena) {
  final osvi = arena<OSVERSIONINFO>()
    ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
  final status = RtlGetVersion(osvi);
  if (status.isError) return false;

  if (osvi.ref case OSVERSIONINFO(
    :final dwMajorVersion,
    dwMinorVersion: 0,
    :final dwBuildNumber,
  ) when dwMajorVersion >= 10 && dwBuildNumber >= 22000) {
    return true;
  }

  return false;
});
