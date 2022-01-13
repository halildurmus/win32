// IFileOperation.dart

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

import '../../system/com/IUnknown.dart';
import '../../ui/shell/IFileOperationProgressSink.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IOperationsProgressDialog.dart';
import '../../ui/shell/propertiessystem/IPropertyChangeArray.dart';
import '../../ui/shell/IShellItem.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFileOperation = '{947AAB5F-0A5C-4C13-B4D6-4BF7836FC9F8}';

/// {@category Interface}
/// {@category com}
class IFileOperation extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IFileOperation(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> pfops,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfops,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfops,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pfops,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int SetOperationFlags(
    int dwOperationFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOperationFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOperationFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwOperationFlags,
      );

  int SetProgressMessage(
    Pointer<Utf16> pszMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMessage,
          )>()(
        ptr.ref.lpVtbl,
        pszMessage,
      );

  int SetProgressDialog(
    Pointer<COMObject> popd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> popd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> popd,
          )>()(
        ptr.ref.lpVtbl,
        popd,
      );

  int SetProperties(
    Pointer<COMObject> pproparray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pproparray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pproparray,
          )>()(
        ptr.ref.lpVtbl,
        pproparray,
      );

  int SetOwnerWindow(
    int hwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
      );

  int ApplyPropertiesToItem(
    Pointer<COMObject> psiItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItem,
          )>()(
        ptr.ref.lpVtbl,
        psiItem,
      );

  int ApplyPropertiesToItems(
    Pointer<COMObject> punkItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkItems,
          )>()(
        ptr.ref.lpVtbl,
        punkItems,
      );

  int RenameItem(
    Pointer<COMObject> psiItem,
    Pointer<Utf16> pszNewName,
    Pointer<COMObject> pfopsItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
            Pointer<COMObject> pfopsItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
            Pointer<COMObject> pfopsItem,
          )>()(
        ptr.ref.lpVtbl,
        psiItem,
        pszNewName,
        pfopsItem,
      );

  int RenameItems(
    Pointer<COMObject> pUnkItems,
    Pointer<Utf16> pszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkItems,
            Pointer<Utf16> pszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkItems,
            Pointer<Utf16> pszNewName,
          )>()(
        ptr.ref.lpVtbl,
        pUnkItems,
        pszNewName,
      );

  int MoveItem(
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
    Pointer<COMObject> pfopsItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Pointer<COMObject> pfopsItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Pointer<COMObject> pfopsItem,
          )>()(
        ptr.ref.lpVtbl,
        psiItem,
        psiDestinationFolder,
        pszNewName,
        pfopsItem,
      );

  int MoveItems(
    Pointer<COMObject> punkItems,
    Pointer<COMObject> psiDestinationFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkItems,
            Pointer<COMObject> psiDestinationFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkItems,
            Pointer<COMObject> psiDestinationFolder,
          )>()(
        ptr.ref.lpVtbl,
        punkItems,
        psiDestinationFolder,
      );

  int CopyItem(
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszCopyName,
    Pointer<COMObject> pfopsItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszCopyName,
            Pointer<COMObject> pfopsItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszCopyName,
            Pointer<COMObject> pfopsItem,
          )>()(
        ptr.ref.lpVtbl,
        psiItem,
        psiDestinationFolder,
        pszCopyName,
        pfopsItem,
      );

  int CopyItems(
    Pointer<COMObject> punkItems,
    Pointer<COMObject> psiDestinationFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkItems,
            Pointer<COMObject> psiDestinationFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkItems,
            Pointer<COMObject> psiDestinationFolder,
          )>()(
        ptr.ref.lpVtbl,
        punkItems,
        psiDestinationFolder,
      );

  int DeleteItem(
    Pointer<COMObject> psiItem,
    Pointer<COMObject> pfopsItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> pfopsItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> pfopsItem,
          )>()(
        ptr.ref.lpVtbl,
        psiItem,
        pfopsItem,
      );

  int DeleteItems(
    Pointer<COMObject> punkItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkItems,
          )>()(
        ptr.ref.lpVtbl,
        punkItems,
      );

  int NewItem(
    Pointer<COMObject> psiDestinationFolder,
    int dwFileAttributes,
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszTemplateName,
    Pointer<COMObject> pfopsItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiDestinationFolder,
            Uint32 dwFileAttributes,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszTemplateName,
            Pointer<COMObject> pfopsItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiDestinationFolder,
            int dwFileAttributes,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszTemplateName,
            Pointer<COMObject> pfopsItem,
          )>()(
        ptr.ref.lpVtbl,
        psiDestinationFolder,
        dwFileAttributes,
        pszName,
        pszTemplateName,
        pfopsItem,
      );

  int PerformOperations() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetAnyOperationsAborted(
    Pointer<Int32> pfAnyOperationsAborted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAnyOperationsAborted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAnyOperationsAborted,
          )>()(
        ptr.ref.lpVtbl,
        pfAnyOperationsAborted,
      );
}

/// @nodoc
const CLSID_FileOperation = '{3AD05575-8857-4850-9277-11B85BDB8E09}';

/// {@category com}
class FileOperation extends IFileOperation {
  FileOperation(Pointer<COMObject> ptr) : super(ptr);

  factory FileOperation.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileOperation);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFileOperation);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FileOperation(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
