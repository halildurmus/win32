// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

// BOOL WINAPI ChooseColor(
//   _Inout_ LPCHOOSECOLOR lpcc
// );

/// {@category comdlg32}
final ChooseColor = _comdlg32.lookupFunction<
    Int32 Function(Pointer<CHOOSECOLOR> lpcc),
    int Function(Pointer<CHOOSECOLOR> lpcc)>('ChooseColor');

// BOOL WINAPI ChooseFont(
//   _Inout_ LPCHOOSEFONT lpcf
// );

/// {@category comdlg32}
final ChooseFont = _comdlg32.lookupFunction<
    Int32 Function(Pointer<CHOOSEFONT> lpcf),
    int Function(Pointer<CHOOSEFONT> lpcf)>('ChooseFont');

// HWND FindTextW(
//   LPFINDREPLACEW Arg1
// );

/// {@category comdlg32}
final FindText = _comdlg32.lookupFunction<
    IntPtr Function(Pointer<FINDREPLACE> Arg1),
    int Function(Pointer<FINDREPLACE> Arg1)>('FindTextW');

// BOOL GetOpenFileNameW(
//   LPOPENFILENAMEW Arg1
// );

/// {@category comdlg32}
final GetOpenFileName = _comdlg32.lookupFunction<
    Int32 Function(Pointer<OPENFILENAME> arg1),
    int Function(Pointer<OPENFILENAME> arg1)>('GetOpenFileNameW');

// BOOL GetSaveFileNameW(
//   LPOPENFILENAMEW Arg1
// );

/// {@category comdlg32}
final GetSaveFileName = _comdlg32.lookupFunction<
    Int32 Function(Pointer<OPENFILENAME> arg1),
    int Function(Pointer<OPENFILENAME> arg1)>('GetSaveFileNameW');

// HWND ReplaceTextW(
//   LPFINDREPLACEW Arg1
// );

/// {@category comdlg32}
final ReplaceText = _comdlg32.lookupFunction<
    IntPtr Function(Pointer<FINDREPLACE> Arg1),
    int Function(Pointer<FINDREPLACE> Arg1)>('ReplaceTextW');
