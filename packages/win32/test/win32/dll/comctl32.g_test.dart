// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('comctl32.dll', () {
    test('DefSubclassProc can be instantiated', () {
      check(_DefSubclassProc).isA<Function>();
    });
    test('DrawStatusText can be instantiated', () {
      check(_DrawStatusText).isA<Function>();
    });
    test('InitCommonControlsEx can be instantiated', () {
      check(_InitCommonControlsEx).isA<Function>();
    });
    test('RemoveWindowSubclass can be instantiated', () {
      check(_RemoveWindowSubclass).isA<Function>();
    });
    test('SetWindowSubclass can be instantiated', () {
      check(_SetWindowSubclass).isA<Function>();
    });
  });
}

@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>(
  symbol: 'DefSubclassProc',
)
external int _DefSubclassProc(int hWnd, int uMsg, int wParam, int lParam);

@Native<Void Function(HDC, Pointer<RECT>, PCWSTR, Uint32)>(
  symbol: 'DrawStatusTextW',
)
external void _DrawStatusText(
  int hDC,
  Pointer<RECT> lprc,
  PCWSTR pszText,
  int uFlags,
);

@Native<BOOL Function(Pointer<INITCOMMONCONTROLSEX>)>(
  symbol: 'InitCommonControlsEx',
)
external int _InitCommonControlsEx(Pointer<INITCOMMONCONTROLSEX> picce);

@Native<BOOL Function(HWND, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr)>(
  symbol: 'RemoveWindowSubclass',
)
external int _RemoveWindowSubclass(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
);

@Native<
  BOOL Function(HWND, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr, IntPtr)
>(symbol: 'SetWindowSubclass')
external int _SetWindowSubclass(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
);
