// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IFileDialog.dart';
import '../com/combase.dart';
import '../com/comerrors.dart';
import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const CLSID_FileOpenDialog = '{DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7}';
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

typedef GetResults_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppenum);
typedef GetResults_Dart = int Function(Pointer obj, Pointer<IntPtr> ppenum);

typedef GetSelectedItems_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppsai);
typedef GetSelectedItems_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppsai);

class IFileOpenDialog extends IFileDialog {
  // vtable begins at 27, ends at 28

  @override
  Pointer<COMObject> ptr;

  IFileOpenDialog(this.ptr) : super(ptr);

  int GetResults(Pointer<IntPtr> ppenum) =>
      Pointer<NativeFunction<GetResults_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<GetResults_Dart>()(ptr.ref.lpVtbl, ppenum);

  int GetSelectedItems(Pointer<IntPtr> ppsai) =>
      Pointer<NativeFunction<GetSelectedItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<GetSelectedItems_Dart>()(ptr.ref.lpVtbl, ppsai);
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
        GUID.fromString(IID_IFileOpenDialog).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return FileOpenDialog(ptr);
  }

  FileOpenDialog(this.ptr) : super(ptr);
}
