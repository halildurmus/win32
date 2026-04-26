// Dart representations of Win32 functions.
//
// This file defines handwritten functions that are either not present in the
// metadata used to generate bindings, or they require special handling.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'constants.g.dart';
import 'structs.dart';
import 'structs.g.dart';
import 'version.dart';

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
