// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IModalWindow.dart';

const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

typedef SetFileTypes_Native = Int32 Function(
    Pointer obj, Uint32 cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec);
typedef SetFileTypes_Dart = int Function(
    Pointer obj, int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec);

typedef SetFileTypeIndex_Native = Int32 Function(Pointer obj, Uint32 iFileType);
typedef SetFileTypeIndex_Dart = int Function(Pointer obj, int iFileType);

typedef GetFileTypeIndex_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> piFileType);
typedef GetFileTypeIndex_Dart = int Function(
    Pointer obj, Pointer<Uint32> piFileType);

typedef Advise_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie);
typedef Advise_Dart = int Function(
    Pointer obj, Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie);

typedef Unadvise_Native = Int32 Function(Pointer obj, Uint32 dwCookie);
typedef Unadvise_Dart = int Function(Pointer obj, int dwCookie);

typedef SetOptions_Native = Int32 Function(Pointer obj, Uint32 fos);
typedef SetOptions_Dart = int Function(Pointer obj, int fos);

typedef GetOptions_Native = Int32 Function(Pointer obj, Pointer<Uint32> pfos);
typedef GetOptions_Dart = int Function(Pointer obj, Pointer<Uint32> pfos);

typedef SetDefaultFolder_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef SetDefaultFolder_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi);

typedef SetFolder_Native = Int32 Function(Pointer obj, Pointer<COMObject> psi);
typedef SetFolder_Dart = int Function(Pointer obj, Pointer<COMObject> psi);

typedef GetFolder_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppsi);
typedef GetFolder_Dart = int Function(Pointer obj, Pointer<IntPtr> ppsi);

typedef GetCurrentSelection_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppsi);
typedef GetCurrentSelection_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppsi);

typedef SetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef SetFileName_Dart = int Function(Pointer obj, Pointer<Utf16> pszName);

typedef GetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef GetFileName_Dart = int Function(Pointer obj, Pointer<Utf16> pszName);

typedef SetTitle_Native = Int32 Function(Pointer obj, Pointer<Utf16> pszTitle);
typedef SetTitle_Dart = int Function(Pointer obj, Pointer<Utf16> pszTitle);

typedef SetOkButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszText);
typedef SetOkButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszText);

typedef SetFileNameLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef SetFileNameLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef GetResult_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppsi);
typedef GetResult_Dart = int Function(Pointer obj, Pointer<IntPtr> ppsi);

typedef AddPlace_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi, Uint32 fdap);
typedef AddPlace_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi, int fdap);

typedef SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

typedef Close_Native = Int32 Function(Pointer obj, Uint32 hr);
typedef Close_Dart = int Function(Pointer obj, int hr);

typedef SetClientGuid_Native = Int32 Function(Pointer obj, Pointer<GUID> guid);
typedef SetClientGuid_Dart = int Function(Pointer obj, Pointer<GUID> guid);

typedef ClearClientData_Native = Int32 Function(Pointer obj);
typedef ClearClientData_Dart = int Function(Pointer obj);

typedef SetFilter_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pFilter);
typedef SetFilter_Dart = int Function(Pointer obj, Pointer<COMObject> pFilter);

class IFileDialog extends IModalWindow {
  // vtable begins at 4, ends at 26

  @override
  Pointer<COMObject> ptr;

  IFileDialog(this.ptr) : super(ptr);

  int SetFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      Pointer<NativeFunction<SetFileTypes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<SetFileTypes_Dart>()(
          ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int SetFileTypeIndex(int iFileType) =>
      Pointer<NativeFunction<SetFileTypeIndex_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<SetFileTypeIndex_Dart>()(ptr.ref.lpVtbl, iFileType);

  int GetFileTypeIndex(Pointer<Uint32> piFileType) =>
      Pointer<NativeFunction<GetFileTypeIndex_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<GetFileTypeIndex_Dart>()(ptr.ref.lpVtbl, piFileType);

  int Advise(Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie) =>
      Pointer<NativeFunction<Advise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<Advise_Dart>()(ptr.ref.lpVtbl, pfde, pdwCookie);

  int Unadvise(int dwCookie) =>
      Pointer<NativeFunction<Unadvise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<Unadvise_Dart>()(ptr.ref.lpVtbl, dwCookie);

  int SetOptions(int fos) =>
      Pointer<NativeFunction<SetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<SetOptions_Dart>()(ptr.ref.lpVtbl, fos);

  int GetOptions(Pointer<Uint32> pfos) =>
      Pointer<NativeFunction<GetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<GetOptions_Dart>()(ptr.ref.lpVtbl, pfos);

  int SetDefaultFolder(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<SetDefaultFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<SetDefaultFolder_Dart>()(ptr.ref.lpVtbl, psi);

  int SetFolder(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<SetFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<SetFolder_Dart>()(ptr.ref.lpVtbl, psi);

  int GetFolder(Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<GetFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<GetFolder_Dart>()(ptr.ref.lpVtbl, ppsi);

  int GetCurrentSelection(Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<GetCurrentSelection_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<GetCurrentSelection_Dart>()(ptr.ref.lpVtbl, ppsi);

  int SetFileName(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<SetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<SetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int GetFileName(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<GetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<GetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int SetTitle(Pointer<Utf16> pszTitle) =>
      Pointer<NativeFunction<SetTitle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<SetTitle_Dart>()(ptr.ref.lpVtbl, pszTitle);

  int SetOkButtonLabel(Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<SetOkButtonLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<SetOkButtonLabel_Dart>()(ptr.ref.lpVtbl, pszText);

  int SetFileNameLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<SetFileNameLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<SetFileNameLabel_Dart>()(ptr.ref.lpVtbl, pszLabel);

  int GetResult(Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<GetResult_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<GetResult_Dart>()(ptr.ref.lpVtbl, ppsi);

  int AddPlace(Pointer<COMObject> psi, int fdap) =>
      Pointer<NativeFunction<AddPlace_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<AddPlace_Dart>()(ptr.ref.lpVtbl, psi, fdap);

  int SetDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      Pointer<NativeFunction<SetDefaultExtension_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<SetDefaultExtension_Dart>()(
          ptr.ref.lpVtbl, pszDefaultExtension);

  int Close(int hr) => Pointer<NativeFunction<Close_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(23).value)
      .asFunction<Close_Dart>()(ptr.ref.lpVtbl, hr);

  int SetClientGuid(Pointer<GUID> guid) =>
      Pointer<NativeFunction<SetClientGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<SetClientGuid_Dart>()(ptr.ref.lpVtbl, guid);

  int ClearClientData() =>
      Pointer<NativeFunction<ClearClientData_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<ClearClientData_Dart>()(ptr.ref.lpVtbl);

  int SetFilter(Pointer<COMObject> pFilter) =>
      Pointer<NativeFunction<SetFilter_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(26).value)
          .asFunction<SetFilter_Dart>()(ptr.ref.lpVtbl, pFilter);
}
