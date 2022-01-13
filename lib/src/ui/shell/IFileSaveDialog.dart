// IFileSaveDialog.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../ui/shell/propertiessystem/IPropertyDescriptionList.dart';
import '../../ui/shell/IFileOperationProgressSink.dart';

/// @nodoc
const IID_IFileSaveDialog = '{84BCCD23-5FDE-4CDB-AEA4-AF64B83D78AB}';

/// {@category Interface}
/// {@category com}
class IFileSaveDialog extends IFileDialog {
  // vtable begins at 27, is 5 entries long.
  IFileSaveDialog(Pointer<COMObject> ptr) : super(ptr);

  int SetSaveAsItem(
    Pointer<COMObject> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
          )>()(
        ptr.ref.lpVtbl,
        psi,
      );

  int SetProperties(
    Pointer<COMObject> pStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>()(
        ptr.ref.lpVtbl,
        pStore,
      );

  int SetCollectedProperties(
    Pointer<COMObject> pList,
    int fAppendDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pList,
            Int32 fAppendDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pList,
            int fAppendDefault,
          )>()(
        ptr.ref.lpVtbl,
        pList,
        fAppendDefault,
      );

  int GetProperties(
    Pointer<Pointer<COMObject>> ppStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>()(
        ptr.ref.lpVtbl,
        ppStore,
      );

  int ApplyProperties(
    Pointer<COMObject> psi,
    Pointer<COMObject> pStore,
    int hwnd,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<COMObject> pStore,
            IntPtr hwnd,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<COMObject> pStore,
            int hwnd,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pStore,
        hwnd,
        pSink,
      );
}

/// @nodoc
const CLSID_FileSaveDialog = '{C0B4E2F3-BA21-4773-8DBA-335EC946EB8B}';

/// {@category com}
class FileSaveDialog extends IFileSaveDialog {
  FileSaveDialog(Pointer<COMObject> ptr) : super(ptr);

  factory FileSaveDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileSaveDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFileSaveDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FileSaveDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
