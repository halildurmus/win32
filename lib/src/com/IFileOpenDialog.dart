import 'dart:ffi';

import 'package:win32/win32.dart';

import 'IFileDialog.dart';
import 'combase.dart';

const CLSID_FileOpenDialog = '{DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7}';
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

typedef IFileOpenDialog_GetResults_Native = Int32 Function(
    Pointer obj, Pointer ppenum);
typedef IFileOpenDialog_GetResults_Dart = int Function(
    Pointer obj, Pointer ppenum);

class IFileOpenDialog extends IFileDialog {
  @override
  Pointer<COMObject> ptr;

  int GetResults(Pointer ppenum) =>
      Pointer<NativeFunction<IFileOpenDialog_GetResults_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<IFileOpenDialog_GetResults_Dart>()(
          ptr.ref.lpVtbl, ppenum);

  IFileOpenDialog(this.ptr) : super(ptr);
}

class FileOpenDialog extends IFileOpenDialog {
  @override
  Pointer<COMObject> ptr;

  factory FileOpenDialog.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileDialog).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return FileOpenDialog(ptr);
  }

  FileOpenDialog(this.ptr) : super(ptr);
}
