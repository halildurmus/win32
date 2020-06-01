import 'dart:ffi';

import 'IFileDialog.dart';
import 'combase.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const CLSID_FileSaveDialog = '{C0B4E2F3-BA21-4773-8DBA-335EC946EB8B}';
const IID_IFileSaveDialog = '{84bccd23-5fde-4cdb-aea4-af64b83d78ab}';

typedef SetSaveAsItem_Native = Int32 Function(Pointer obj, Pointer psi);
typedef SetSaveAsItem_Dart = int Function(Pointer obj, Pointer psi);

class IFileSaveDialog extends IFileDialog {
  // vtable begins at 27, ends at 31

  @override
  Pointer<COMObject> ptr;

  int SetSaveAsItem(Pointer psi) =>
      Pointer<NativeFunction<SetSaveAsItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<SetSaveAsItem_Dart>()(ptr.ref.lpVtbl, psi);

  IFileSaveDialog(this.ptr) : super(ptr);
}

class FileSaveDialog extends IFileSaveDialog {
  @override
  Pointer<COMObject> ptr;

  factory FileSaveDialog.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileSaveDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileSaveDialog).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return FileSaveDialog(ptr);
  }

  FileSaveDialog(this.ptr) : super(ptr);
}
