// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'structs.dart';

final _user32 = DynamicLibrary.open('user32.dll');

/// Retrieves the current value of a specified Desktop Window Manager (DWM)
/// attribute applied to a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/getwindowcompositionattribute>.
///
/// {@category user32}
int GetWindowCompositionAttribute(
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _GetWindowCompositionAttribute(hwnd, pwcad);

final int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
_GetWindowCompositionAttribute = _user32
    .lookupFunction<
      Int32 Function(IntPtr hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad),
      int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
    >('GetWindowCompositionAttribute');

/// Sets the current value of a specified Desktop Window Manager (DWM) attribute
/// applied to a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/setwindowcompositionattribute>.
///
/// {@category user32}
int SetWindowCompositionAttribute(
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
) => _SetWindowCompositionAttribute(hwnd, pwcad);

final int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
_SetWindowCompositionAttribute = _user32
    .lookupFunction<
      Int32 Function(IntPtr hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad),
      int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
    >('SetWindowCompositionAttribute');
