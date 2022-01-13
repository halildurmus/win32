// IFileOpenDialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../ui/shell/IFileDialog.dart';
import '../../ui/shell/IShellItemArray.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileOpenDialog = '{D57C7288-D4AD-4768-BE02-9D969532D960}';

/// {@category Interface}
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  // vtable begins at 27, is 2 entries long.
  IFileOpenDialog(Pointer<COMObject> ptr) : super(ptr);

  int GetResults(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int GetSelectedItems(
    Pointer<Pointer<COMObject>> ppsai,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsai,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsai,
          )>()(
        ptr.ref.lpVtbl,
        ppsai,
      );
}

/// @nodoc
const CLSID_FileOpenDialog = '{DC1C5A9C-E88A-4DDE-A5A1-60F82A20AEF7}';

/// {@category com}
class FileOpenDialog extends IFileOpenDialog {
  FileOpenDialog(Pointer<COMObject> ptr) : super(ptr);

  factory FileOpenDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileOpenDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFileOpenDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FileOpenDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
