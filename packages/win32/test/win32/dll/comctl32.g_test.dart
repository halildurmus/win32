// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _comctl32 = DynamicLibrary.open('comctl32.dll');

final _DefSubclassProc = _comctl32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('DefSubclassProc');

final _DrawStatusText = _comctl32
    .lookupFunction<
      Void Function(Pointer, Pointer<RECT>, Pointer<Utf16>, Uint32),
      void Function(Pointer, Pointer<RECT>, Pointer<Utf16>, int)
    >('DrawStatusTextW');

final _ImageList_Destroy = _comctl32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'ImageList_Destroy',
    );

final _InitCommonControlsEx = _comctl32
    .lookupFunction<
      Int32 Function(Pointer<INITCOMMONCONTROLSEX>),
      int Function(Pointer<INITCOMMONCONTROLSEX>)
    >('InitCommonControlsEx');

final _RemoveWindowSubclass = _comctl32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, int)
    >('RemoveWindowSubclass');

final _SetWindowSubclass = _comctl32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<NativeFunction<SUBCLASSPROC>>,
        IntPtr,
        IntPtr,
      ),
      int Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, int, int)
    >('SetWindowSubclass');
