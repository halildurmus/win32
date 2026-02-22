// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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
    test('ImageList_Destroy can be instantiated', () {
      check(_ImageList_Destroy).isA<Function>();
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

@Native<IntPtr Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'DefSubclassProc',
)
external int _DefSubclassProc(Pointer hWnd, int uMsg, int wParam, int lParam);

@Native<Void Function(Pointer, Pointer<RECT>, Pointer<Utf16>, Uint32)>(
  symbol: 'DrawStatusTextW',
)
external void _DrawStatusText(
  Pointer hDC,
  Pointer<RECT> lprc,
  Pointer<Utf16> pszText,
  int uFlags,
);

@Native<Int32 Function(IntPtr)>(symbol: 'ImageList_Destroy')
external int _ImageList_Destroy(int himl);

@Native<Int32 Function(Pointer<INITCOMMONCONTROLSEX>)>(
  symbol: 'InitCommonControlsEx',
)
external int _InitCommonControlsEx(Pointer<INITCOMMONCONTROLSEX> picce);

@Native<Int32 Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr)>(
  symbol: 'RemoveWindowSubclass',
)
external int _RemoveWindowSubclass(
  Pointer hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
);

@Native<
  Int32 Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr, IntPtr)
>(symbol: 'SetWindowSubclass')
external int _SetWindowSubclass(
  Pointer hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
);
