// Dart representations of Win32 functions.
//
// These functions are handwritten either because they are not included in the
// metadata, or they require special handling.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'allocator.dart';
import 'constants.g.dart';
import 'structs.dart';
import 'structs.g.dart';
import 'utils.dart';
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
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _GetWindowCompositionAttribute(hwnd, pwcad) != FALSE;

@Native<Int32 Function(HWND, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'GetWindowCompositionAttribute',
  isLeaf: true,
)
external int _GetWindowCompositionAttribute(
  int hwnd,
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
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _SetWindowCompositionAttribute(hwnd, pwcad) != FALSE;

@Native<Int32 Function(HWND, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'SetWindowCompositionAttribute',
  isLeaf: true,
)
external int _SetWindowCompositionAttribute(
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
);

/// Whether the OS version is Windows 10 (build 19041) or greater.
bool IsWindows10OrGreater() {
  final osvi = loggingCalloc<OSVERSIONINFO>()
    ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
  try {
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
  } finally {
    free(osvi);
  }
}

/// Whether the OS version is Windows 11 (build 22000) or greater.
bool IsWindows11OrGreater() {
  final osvi = loggingCalloc<OSVERSIONINFO>()
    ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
  try {
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
  } finally {
    free(osvi);
  }
}
