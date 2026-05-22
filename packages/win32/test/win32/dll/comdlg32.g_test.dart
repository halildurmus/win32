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

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

final _ChooseColor = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<CHOOSECOLOR>),
      int Function(Pointer<CHOOSECOLOR>)
    >('ChooseColorW');

final _ChooseFont = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<CHOOSEFONT>),
      int Function(Pointer<CHOOSEFONT>)
    >('ChooseFontW');

final _FindText = _comdlg32
    .lookupFunction<
      Pointer Function(Pointer<FINDREPLACE>),
      Pointer Function(Pointer<FINDREPLACE>)
    >('FindTextW');

final _GetOpenFileName = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<OPENFILENAME>),
      int Function(Pointer<OPENFILENAME>)
    >('GetOpenFileNameW');

final _GetSaveFileName = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<OPENFILENAME>),
      int Function(Pointer<OPENFILENAME>)
    >('GetSaveFileNameW');

final _ReplaceText = _comdlg32
    .lookupFunction<
      Pointer Function(Pointer<FINDREPLACE>),
      Pointer Function(Pointer<FINDREPLACE>)
    >('ReplaceTextW');
