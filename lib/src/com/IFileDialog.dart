import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'IModalWindow.dart';
import 'combase.dart';

const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

typedef SetFileTypes_Native = Int32 Function(
    Pointer obj, Uint32 cFileTypes, Pointer rgFilterSpec);
typedef SetFileTypes_Dart = int Function(
    Pointer obj, int cFileTypes, Pointer rgFilterSpec);

typedef SetOptions_Native = Int32 Function(Pointer obj, Int32 fos);
typedef SetOptions_Dart = int Function(Pointer obj, int fos);

typedef GetOptions_Native = Int32 Function(Pointer obj, Pointer<Int32> pfos);
typedef GetOptions_Dart = int Function(Pointer obj, Pointer<Int32> pfos);

typedef SetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef SetFileName_Dart = int Function(Pointer obj, Pointer<Utf16> pszName);

typedef SetOkButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszText);
typedef SetOkButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszText);

typedef SetFileNameLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef SetFileNameLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef SetTitle_Native = Int32 Function(Pointer obj, Pointer<Utf16> pszTitle);
typedef SetTitle_Dart = int Function(Pointer obj, Pointer<Utf16> pszTitle);

typedef GetResult_Native = Int32 Function(Pointer obj, Pointer<COMObject> ppsi);
typedef GetResult_Dart = int Function(Pointer obj, Pointer<COMObject> ppsi);

typedef SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

class IFileDialog extends IModalWindow {
  @override
  Pointer<COMObject> ptr;

  int SetFileTypes(int cFileTypes, Pointer rgFilterSpec) =>
      Pointer<NativeFunction<SetFileTypes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<SetFileTypes_Dart>()(
          ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int SetOptions(int fos) =>
      Pointer<NativeFunction<SetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<SetOptions_Dart>()(ptr.ref.lpVtbl, fos);

  int GetOptions(Pointer<Int32> pfos) =>
      Pointer<NativeFunction<GetOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<GetOptions_Dart>()(ptr.ref.lpVtbl, pfos);

  int SetTitle(Pointer<Utf16> pszTitle) =>
      Pointer<NativeFunction<SetTitle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<SetTitle_Dart>()(ptr.ref.lpVtbl, pszTitle);

  int SetFileName(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<SetFileName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<SetFileName_Dart>()(ptr.ref.lpVtbl, pszName);

  int SetOkButtonLabel(Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<SetOkButtonLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<SetOkButtonLabel_Dart>()(ptr.ref.lpVtbl, pszText);

  int SetFileNameLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<SetFileNameLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<SetFileNameLabel_Dart>()(ptr.ref.lpVtbl, pszLabel);

  int GetResult(Pointer<COMObject> ppsi) =>
      Pointer<NativeFunction<GetResult_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<GetResult_Dart>()(ptr.ref.lpVtbl, ppsi);

  int SetDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      Pointer<NativeFunction<SetDefaultExtension_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<SetDefaultExtension_Dart>()(
          ptr.ref.lpVtbl, pszDefaultExtension);

  IFileDialog(this.ptr) : super(ptr);
}
