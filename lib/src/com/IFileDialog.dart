import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'IModalWindow.dart';
import 'combase.dart';

const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

typedef IFileDialog_SetFileTypes_Native = Int32 Function(
    Pointer obj, Uint32 cFileTypes, Pointer rgFilterSpec);
typedef IFileDialog_SetFileTypes_Dart = int Function(
    Pointer obj, int cFileTypes, Pointer rgFilterSpec);

typedef IFileDialog_SetOptions_Native = Int32 Function(Pointer obj, Int32 fos);
typedef IFileDialog_SetOptions_Dart = int Function(Pointer obj, int fos);

typedef IFileDialog_GetOptions_Native = Int32 Function(
    Pointer obj, Pointer<Int32> pfos);
typedef IFileDialog_GetOptions_Dart = int Function(
    Pointer obj, Pointer<Int32> pfos);

typedef IFileDialog_SetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef IFileDialog_SetFileName_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszName);

typedef IFileDialog_SetOkButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszText);
typedef IFileDialog_SetOkButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszText);

typedef IFileDialog_SetFileNameLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef IFileDialog_SetFileNameLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef IFileDialog_SetTitle_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszTitle);
typedef IFileDialog_SetTitle_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszTitle);

typedef IFileDialog_GetResult_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppsi);
typedef IFileDialog_GetResult_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppsi);

typedef IFileDialog_SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef IFileDialog_SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

class IFileDialog extends IModalWindow {
  @override
  Pointer<COMObject> ptr;

  int SetFileTypes(int cFileTypes, Pointer rgFilterSpec) =>
      Pointer<NativeFunction<IFileDialog_SetFileTypes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<IFileDialog_SetFileTypes_Dart>()(
          ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int SetOptions(int fos) =>
      Pointer<NativeFunction<IFileDialog_SetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<IFileDialog_SetOptions_Dart>()(ptr.ref.lpVtbl, fos);

  int GetOptions(Pointer<Int32> pfos) =>
      Pointer<NativeFunction<IFileDialog_GetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<IFileDialog_GetOptions_Dart>()(ptr.ref.lpVtbl, pfos);

  int SetTitle(Pointer<Utf16> pszTitle) =>
      Pointer<NativeFunction<IFileDialog_SetTitle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<IFileDialog_SetTitle_Dart>()(ptr.ref.lpVtbl, pszTitle);

  int SetFileName(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<IFileDialog_SetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<IFileDialog_SetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int SetOkButtonLabel(Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<IFileDialog_SetOkButtonLabel_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<IFileDialog_SetOkButtonLabel_Dart>()(
          ptr.ref.lpVtbl, pszText);

  int SetFileNameLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<IFileDialog_SetFileNameLabel_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<IFileDialog_SetFileNameLabel_Dart>()(
          ptr.ref.lpVtbl, pszLabel);

  int GetResult(Pointer<COMObject> ppsi) =>
      Pointer<NativeFunction<IFileDialog_GetResult_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<IFileDialog_GetResult_Dart>()(ptr.ref.lpVtbl, ppsi);

  int SetDefaultExtension(Pointer<Utf16> pszDefaultExtension) => Pointer<
                  NativeFunction<
                      IFileDialog_SetDefaultExtension_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<IFileDialog_SetDefaultExtension_Dart>()(
      ptr.ref.lpVtbl, pszDefaultExtension);

  IFileDialog(this.ptr) : super(ptr);
}
