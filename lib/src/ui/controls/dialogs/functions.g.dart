// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../ui/controls/dialogs/structs.g.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// comdlg32.dll
// -----------------------------------------------------------------------
final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

int ChooseColor(
  Pointer<CHOOSECOLOR> param0,
) =>
    _ChooseColor(
      param0,
    );

late final _ChooseColor = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<CHOOSECOLOR> param0,
),
    int Function(
  Pointer<CHOOSECOLOR> param0,
)>('ChooseColorW');

int ChooseFont(
  Pointer<CHOOSEFONT> param0,
) =>
    _ChooseFont(
      param0,
    );

late final _ChooseFont = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<CHOOSEFONT> param0,
),
    int Function(
  Pointer<CHOOSEFONT> param0,
)>('ChooseFontW');

int CommDlgExtendedError() => _CommDlgExtendedError();

late final _CommDlgExtendedError = _comdlg32
    .lookupFunction<Uint32 Function(), int Function()>('CommDlgExtendedError');

int FindText(
  Pointer<FINDREPLACE> param0,
) =>
    _FindText(
      param0,
    );

late final _FindText = _comdlg32.lookupFunction<
    IntPtr Function(
  Pointer<FINDREPLACE> param0,
),
    int Function(
  Pointer<FINDREPLACE> param0,
)>('FindTextW');

int GetFileTitle(
  Pointer<Utf16> param0,
  Pointer<Utf16> Buf,
  int cchSize,
) =>
    _GetFileTitle(
      param0,
      Buf,
      cchSize,
    );

late final _GetFileTitle = _comdlg32.lookupFunction<
    Int16 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> Buf,
  Uint16 cchSize,
),
    int Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> Buf,
  int cchSize,
)>('GetFileTitleW');

int GetOpenFileName(
  Pointer<OPENFILENAME> param0,
) =>
    _GetOpenFileName(
      param0,
    );

late final _GetOpenFileName = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<OPENFILENAME> param0,
),
    int Function(
  Pointer<OPENFILENAME> param0,
)>('GetOpenFileNameW');

int GetSaveFileName(
  Pointer<OPENFILENAME> param0,
) =>
    _GetSaveFileName(
      param0,
    );

late final _GetSaveFileName = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<OPENFILENAME> param0,
),
    int Function(
  Pointer<OPENFILENAME> param0,
)>('GetSaveFileNameW');

int PageSetupDlg(
  Pointer<PAGESETUPDLG> param0,
) =>
    _PageSetupDlg(
      param0,
    );

late final _PageSetupDlg = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<PAGESETUPDLG> param0,
),
    int Function(
  Pointer<PAGESETUPDLG> param0,
)>('PageSetupDlgW');

int PrintDlgEx(
  Pointer<PRINTDLGEX> pPD,
) =>
    _PrintDlgEx(
      pPD,
    );

late final _PrintDlgEx = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<PRINTDLGEX> pPD,
),
    int Function(
  Pointer<PRINTDLGEX> pPD,
)>('PrintDlgExW');

int PrintDlg(
  Pointer<PRINTDLG> pPD,
) =>
    _PrintDlg(
      pPD,
    );

late final _PrintDlg = _comdlg32.lookupFunction<
    Int32 Function(
  Pointer<PRINTDLG> pPD,
),
    int Function(
  Pointer<PRINTDLG> pPD,
)>('PrintDlgW');

int ReplaceText(
  Pointer<FINDREPLACE> param0,
) =>
    _ReplaceText(
      param0,
    );

late final _ReplaceText = _comdlg32.lookupFunction<
    IntPtr Function(
  Pointer<FINDREPLACE> param0,
),
    int Function(
  Pointer<FINDREPLACE> param0,
)>('ReplaceTextW');
