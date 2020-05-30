import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'utils.dart';

typedef IFileDialog_AddRef_Native = Int32 Function(Pointer obj);
typedef IFileDialog_AddRef_Dart = int Function(Pointer obj);

typedef IFileDialog_Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef IFileDialog_Show_Dart = int Function(Pointer obj, int hwndOwner);

class IFileDialog extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);
  Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
  Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
  Pointer<IntPtr> get releasePtr => vtable.elementAt(2);
  Pointer<IntPtr> get showPtr => vtable.elementAt(3);

  factory IFileDialog.allocate() =>
      allocate<IFileDialog>().ref..lpVtbl = allocate<IntPtr>();
}

class FileDialog {
  Pointer<IFileDialog> dlg;

  IFileDialog_AddRef_Dart AddRef;
  IFileDialog_Show_Dart Show;

  FileDialog() {
    dlg = IFileDialog.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileDialog).addressOf,
        dlg.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);

    AddRef = Pointer<IntPtr>.fromAddress(dlg.ref.addRefPtr.value)
        .cast<NativeFunction<IFileDialog_AddRef_Native>>()
        .asFunction<IFileDialog_AddRef_Dart>();

    Show = Pointer<IntPtr>.fromAddress(dlg.ref.showPtr.value)
        .cast<NativeFunction<IFileDialog_Show_Native>>()
        .asFunction<IFileDialog_Show_Dart>();
  }
}
