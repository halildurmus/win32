// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Creates a Color dialog box that enables the user to select a color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool ChooseColor(Pointer<CHOOSECOLOR> param0) => _ChooseColor(param0) != FALSE;

@Native<BOOL Function(Pointer<CHOOSECOLOR>)>(symbol: 'ChooseColorW')
external int _ChooseColor(Pointer<CHOOSECOLOR> param0);

/// Creates a Font dialog box that enables the user to choose attributes for a
/// logical font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool ChooseFont(Pointer<CHOOSEFONT> param0) => _ChooseFont(param0) != FALSE;

@Native<BOOL Function(Pointer<CHOOSEFONT>)>(symbol: 'ChooseFontW')
external int _ChooseFont(Pointer<CHOOSEFONT> param0);

/// Creates a system-defined modeless Find dialog box that lets the user specify
/// a string to search for and options to use when searching for text in a
/// document.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-findtextw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
int FindText(Pointer<FINDREPLACE> param0) => _FindText(param0);

@Native<HWND Function(Pointer<FINDREPLACE>)>(symbol: 'FindTextW')
external int _FindText(Pointer<FINDREPLACE> param0);

/// Creates an Open dialog box that lets the user specify the drive, directory,
/// and the name of a file or set of files to be opened.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-getopenfilenamew>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool GetOpenFileName(Pointer<OPENFILENAME> param0) =>
    _GetOpenFileName(param0) != FALSE;

@Native<BOOL Function(Pointer<OPENFILENAME>)>(symbol: 'GetOpenFileNameW')
external int _GetOpenFileName(Pointer<OPENFILENAME> param0);

/// Creates a Save dialog box that lets the user specify the drive, directory,
/// and name of a file to save.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-getsavefilenamew>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool GetSaveFileName(Pointer<OPENFILENAME> param0) =>
    _GetSaveFileName(param0) != FALSE;

@Native<BOOL Function(Pointer<OPENFILENAME>)>(symbol: 'GetSaveFileNameW')
external int _GetSaveFileName(Pointer<OPENFILENAME> param0);

/// Creates a system-defined modeless dialog box that lets the user specify a
/// string to search for and a replacement string, as well as options to control
/// the find and replace operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-replacetextw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
int ReplaceText(Pointer<FINDREPLACE> param0) => _ReplaceText(param0);

@Native<HWND Function(Pointer<FINDREPLACE>)>(symbol: 'ReplaceTextW')
external int _ReplaceText(Pointer<FINDREPLACE> param0);
