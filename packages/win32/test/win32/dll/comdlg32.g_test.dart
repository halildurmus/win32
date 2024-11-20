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
  group('comdlg32.dll', () {
    test('ChooseColor can be instantiated', () {
      check(_ChooseColor).isA<Function>();
    });
    test('ChooseFont can be instantiated', () {
      check(_ChooseFont).isA<Function>();
    });
    test('FindText can be instantiated', () {
      check(_FindText).isA<Function>();
    });
    test('GetOpenFileName can be instantiated', () {
      check(_GetOpenFileName).isA<Function>();
    });
    test('GetSaveFileName can be instantiated', () {
      check(_GetSaveFileName).isA<Function>();
    });
    test('ReplaceText can be instantiated', () {
      check(_ReplaceText).isA<Function>();
    });
  });
}

@Native<BOOL Function(Pointer<CHOOSECOLOR>)>(symbol: 'ChooseColorW')
external int _ChooseColor(Pointer<CHOOSECOLOR> param0);

@Native<BOOL Function(Pointer<CHOOSEFONT>)>(symbol: 'ChooseFontW')
external int _ChooseFont(Pointer<CHOOSEFONT> param0);

@Native<HWND Function(Pointer<FINDREPLACE>)>(symbol: 'FindTextW')
external int _FindText(Pointer<FINDREPLACE> param0);

@Native<BOOL Function(Pointer<OPENFILENAME>)>(symbol: 'GetOpenFileNameW')
external int _GetOpenFileName(Pointer<OPENFILENAME> param0);

@Native<BOOL Function(Pointer<OPENFILENAME>)>(symbol: 'GetSaveFileNameW')
external int _GetSaveFileName(Pointer<OPENFILENAME> param0);

@Native<HWND Function(Pointer<FINDREPLACE>)>(symbol: 'ReplaceTextW')
external int _ReplaceText(Pointer<FINDREPLACE> param0);
