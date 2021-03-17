// IFileDialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IModalWindow.dart';

/// @nodoc
const IID_IFileDialog = '{42F85136-DB7E-439C-85F1-E4075D135FC8}';

typedef _SetFileTypes_Native = Int32 Function(
    Pointer obj, Uint32 cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec);
typedef _SetFileTypes_Dart = int Function(
    Pointer obj, int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec);

typedef _SetFileTypeIndex_Native = Int32 Function(
    Pointer obj, Uint32 iFileType);
typedef _SetFileTypeIndex_Dart = int Function(Pointer obj, int iFileType);

typedef _GetFileTypeIndex_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> piFileType);
typedef _GetFileTypeIndex_Dart = int Function(
    Pointer obj, Pointer<Uint32> piFileType);

typedef _Advise_Native = Int32 Function(
    Pointer obj, Pointer pfde, Pointer<Uint32> pdwCookie);
typedef _Advise_Dart = int Function(
    Pointer obj, Pointer pfde, Pointer<Uint32> pdwCookie);

typedef _Unadvise_Native = Int32 Function(Pointer obj, Uint32 dwCookie);
typedef _Unadvise_Dart = int Function(Pointer obj, int dwCookie);

typedef _SetOptions_Native = Int32 Function(Pointer obj, Uint32 fos);
typedef _SetOptions_Dart = int Function(Pointer obj, int fos);

typedef _GetOptions_Native = Int32 Function(Pointer obj, Pointer<Uint32> pfos);
typedef _GetOptions_Dart = int Function(Pointer obj, Pointer<Uint32> pfos);

typedef _SetDefaultFolder_Native = Int32 Function(Pointer obj, Pointer psi);
typedef _SetDefaultFolder_Dart = int Function(Pointer obj, Pointer psi);

typedef _SetFolder_Native = Int32 Function(Pointer obj, Pointer psi);
typedef _SetFolder_Dart = int Function(Pointer obj, Pointer psi);

typedef _GetFolder_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppsi);
typedef _GetFolder_Dart = int Function(Pointer obj, Pointer<Pointer> ppsi);

typedef _GetCurrentSelection_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppsi);
typedef _GetCurrentSelection_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppsi);

typedef _SetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef _SetFileName_Dart = int Function(Pointer obj, Pointer<Utf16> pszName);

typedef _GetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszName);
typedef _GetFileName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszName);

typedef _SetTitle_Native = Int32 Function(Pointer obj, Pointer<Utf16> pszTitle);
typedef _SetTitle_Dart = int Function(Pointer obj, Pointer<Utf16> pszTitle);

typedef _SetOkButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszText);
typedef _SetOkButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszText);

typedef _SetFileNameLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef _SetFileNameLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef _GetResult_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppsi);
typedef _GetResult_Dart = int Function(Pointer obj, Pointer<Pointer> ppsi);

typedef _AddPlace_Native = Int32 Function(
    Pointer obj, Pointer psi, Uint32 fdap);
typedef _AddPlace_Dart = int Function(Pointer obj, Pointer psi, int fdap);

typedef _SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef _SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

typedef _Close_Native = Int32 Function(Pointer obj, Int32 hr);
typedef _Close_Dart = int Function(Pointer obj, int hr);

typedef _SetClientGuid_Native = Int32 Function(Pointer obj, Pointer<GUID> guid);
typedef _SetClientGuid_Dart = int Function(Pointer obj, Pointer<GUID> guid);

typedef _ClearClientData_Native = Int32 Function(Pointer obj);
typedef _ClearClientData_Dart = int Function(Pointer obj);

typedef _SetFilter_Native = Int32 Function(Pointer obj, Pointer pFilter);
typedef _SetFilter_Dart = int Function(Pointer obj, Pointer pFilter);

/// {@category Interface}
/// {@category com}
class IFileDialog extends IModalWindow {
  // vtable begins at 4, ends at 26

  IFileDialog(Pointer<COMObject> ptr) : super(ptr);

  int SetFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      Pointer<NativeFunction<_SetFileTypes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_SetFileTypes_Dart>()(
          ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int SetFileTypeIndex(int iFileType) =>
      Pointer<NativeFunction<_SetFileTypeIndex_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_SetFileTypeIndex_Dart>()(ptr.ref.lpVtbl, iFileType);

  int GetFileTypeIndex(Pointer<Uint32> piFileType) =>
      Pointer<NativeFunction<_GetFileTypeIndex_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetFileTypeIndex_Dart>()(ptr.ref.lpVtbl, piFileType);

  int Advise(Pointer pfde, Pointer<Uint32> pdwCookie) =>
      Pointer<NativeFunction<_Advise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_Advise_Dart>()(ptr.ref.lpVtbl, pfde, pdwCookie);

  int Unadvise(int dwCookie) =>
      Pointer<NativeFunction<_Unadvise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_Unadvise_Dart>()(ptr.ref.lpVtbl, dwCookie);

  int SetOptions(int fos) =>
      Pointer<NativeFunction<_SetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_SetOptions_Dart>()(ptr.ref.lpVtbl, fos);

  int GetOptions(Pointer<Uint32> pfos) =>
      Pointer<NativeFunction<_GetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetOptions_Dart>()(ptr.ref.lpVtbl, pfos);

  int SetDefaultFolder(Pointer psi) =>
      Pointer<NativeFunction<_SetDefaultFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_SetDefaultFolder_Dart>()(ptr.ref.lpVtbl, psi);

  int SetFolder(Pointer psi) =>
      Pointer<NativeFunction<_SetFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_SetFolder_Dart>()(ptr.ref.lpVtbl, psi);

  int GetFolder(Pointer<Pointer> ppsi) =>
      Pointer<NativeFunction<_GetFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_GetFolder_Dart>()(ptr.ref.lpVtbl, ppsi);

  int GetCurrentSelection(Pointer<Pointer> ppsi) =>
      Pointer<NativeFunction<_GetCurrentSelection_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_GetCurrentSelection_Dart>()(ptr.ref.lpVtbl, ppsi);

  int SetFileName(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<_SetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_SetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int GetFileName(Pointer<Pointer<Utf16>> pszName) =>
      Pointer<NativeFunction<_GetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_GetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int SetTitle(Pointer<Utf16> pszTitle) =>
      Pointer<NativeFunction<_SetTitle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_SetTitle_Dart>()(ptr.ref.lpVtbl, pszTitle);

  int SetOkButtonLabel(Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<_SetOkButtonLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_SetOkButtonLabel_Dart>()(ptr.ref.lpVtbl, pszText);

  int SetFileNameLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_SetFileNameLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_SetFileNameLabel_Dart>()(ptr.ref.lpVtbl, pszLabel);

  int GetResult(Pointer<Pointer> ppsi) =>
      Pointer<NativeFunction<_GetResult_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<_GetResult_Dart>()(ptr.ref.lpVtbl, ppsi);

  int AddPlace(Pointer psi, int fdap) =>
      Pointer<NativeFunction<_AddPlace_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_AddPlace_Dart>()(ptr.ref.lpVtbl, psi, fdap);

  int SetDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      Pointer<NativeFunction<_SetDefaultExtension_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<_SetDefaultExtension_Dart>()(
          ptr.ref.lpVtbl, pszDefaultExtension);

  int Close(int hr) => Pointer<NativeFunction<_Close_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(23).value)
      .asFunction<_Close_Dart>()(ptr.ref.lpVtbl, hr);

  int SetClientGuid(Pointer<GUID> guid) =>
      Pointer<NativeFunction<_SetClientGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<_SetClientGuid_Dart>()(ptr.ref.lpVtbl, guid);

  int ClearClientData() =>
      Pointer<NativeFunction<_ClearClientData_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<_ClearClientData_Dart>()(ptr.ref.lpVtbl);

  int SetFilter(Pointer pFilter) =>
      Pointer<NativeFunction<_SetFilter_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(26).value)
          .asFunction<_SetFilter_Dart>()(ptr.ref.lpVtbl, pFilter);
}
