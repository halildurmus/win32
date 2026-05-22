// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

/// Creates a Color dialog box that enables the user to select a color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool ChooseColor(Pointer<CHOOSECOLOR> param0) => _ChooseColor(param0) != FALSE;

final _ChooseColor = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<CHOOSECOLOR>),
      int Function(Pointer<CHOOSECOLOR>)
    >('ChooseColorW');

/// Creates a Font dialog box that enables the user to choose attributes for a
/// logical font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
bool ChooseFont(Pointer<CHOOSEFONT> param0) => _ChooseFont(param0) != FALSE;

final _ChooseFont = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<CHOOSEFONT>),
      int Function(Pointer<CHOOSEFONT>)
    >('ChooseFontW');

/// Creates a system-defined modeless Find dialog box that lets the user specify
/// a string to search for and options to use when searching for text in a
/// document.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-findtextw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
HWND FindText(Pointer<FINDREPLACE> param0) => HWND(_FindText(param0));

final _FindText = _comdlg32
    .lookupFunction<
      Pointer Function(Pointer<FINDREPLACE>),
      Pointer Function(Pointer<FINDREPLACE>)
    >('FindTextW');

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

final _GetOpenFileName = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<OPENFILENAME>),
      int Function(Pointer<OPENFILENAME>)
    >('GetOpenFileNameW');

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

final _GetSaveFileName = _comdlg32
    .lookupFunction<
      Int32 Function(Pointer<OPENFILENAME>),
      int Function(Pointer<OPENFILENAME>)
    >('GetSaveFileNameW');

/// Creates a system-defined modeless dialog box that lets the user specify a
/// string to search for and a replacement string, as well as options to control
/// the find and replace operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-replacetextw>.
///
/// {@category comdlg32}
@pragma('vm:prefer-inline')
HWND ReplaceText(Pointer<FINDREPLACE> param0) => HWND(_ReplaceText(param0));

final _ReplaceText = _comdlg32
    .lookupFunction<
      Pointer Function(Pointer<FINDREPLACE>),
      Pointer Function(Pointer<FINDREPLACE>)
    >('ReplaceTextW');
