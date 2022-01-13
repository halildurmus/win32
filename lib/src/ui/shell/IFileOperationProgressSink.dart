// IFileOperationProgressSink.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellItem.dart';

/// @nodoc
const IID_IFileOperationProgressSink = '{04B0F1A7-9490-44BC-96E1-4296A31252E2}';

/// {@category Interface}
/// {@category com}
class IFileOperationProgressSink extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IFileOperationProgressSink(Pointer<COMObject> ptr) : super(ptr);

  int StartOperations() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int FinishOperations(
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
      );

  int PreRenameItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<Utf16> pszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        pszNewName,
      );

  int PostRenameItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<Utf16> pszNewName,
    int hrRename,
    Pointer<COMObject> psiNewlyCreated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
            Int32 hrRename,
            Pointer<COMObject> psiNewlyCreated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<Utf16> pszNewName,
            int hrRename,
            Pointer<COMObject> psiNewlyCreated,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        pszNewName,
        hrRename,
        psiNewlyCreated,
      );

  int PreMoveItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        psiDestinationFolder,
        pszNewName,
      );

  int PostMoveItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
    int hrMove,
    Pointer<COMObject> psiNewlyCreated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Int32 hrMove,
            Pointer<COMObject> psiNewlyCreated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            int hrMove,
            Pointer<COMObject> psiNewlyCreated,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        psiDestinationFolder,
        pszNewName,
        hrMove,
        psiNewlyCreated,
      );

  int PreCopyItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        psiDestinationFolder,
        pszNewName,
      );

  int PostCopyItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
    int hrCopy,
    Pointer<COMObject> psiNewlyCreated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Int32 hrCopy,
            Pointer<COMObject> psiNewlyCreated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            int hrCopy,
            Pointer<COMObject> psiNewlyCreated,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        psiDestinationFolder,
        pszNewName,
        hrCopy,
        psiNewlyCreated,
      );

  int PreDeleteItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
      );

  int PostDeleteItem(
    int dwFlags,
    Pointer<COMObject> psiItem,
    int hrDelete,
    Pointer<COMObject> psiNewlyCreated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiItem,
            Int32 hrDelete,
            Pointer<COMObject> psiNewlyCreated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiItem,
            int hrDelete,
            Pointer<COMObject> psiNewlyCreated,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiItem,
        hrDelete,
        psiNewlyCreated,
      );

  int PreNewItem(
    int dwFlags,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiDestinationFolder,
        pszNewName,
      );

  int PostNewItem(
    int dwFlags,
    Pointer<COMObject> psiDestinationFolder,
    Pointer<Utf16> pszNewName,
    Pointer<Utf16> pszTemplateName,
    int dwFileAttributes,
    int hrNew,
    Pointer<COMObject> psiNewItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Pointer<Utf16> pszTemplateName,
            Uint32 dwFileAttributes,
            Int32 hrNew,
            Pointer<COMObject> psiNewItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> psiDestinationFolder,
            Pointer<Utf16> pszNewName,
            Pointer<Utf16> pszTemplateName,
            int dwFileAttributes,
            int hrNew,
            Pointer<COMObject> psiNewItem,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        psiDestinationFolder,
        pszNewName,
        pszTemplateName,
        dwFileAttributes,
        hrNew,
        psiNewItem,
      );

  int UpdateProgress(
    int iWorkTotal,
    int iWorkSoFar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iWorkTotal,
            Uint32 iWorkSoFar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iWorkTotal,
            int iWorkSoFar,
          )>()(
        ptr.ref.lpVtbl,
        iWorkTotal,
        iWorkSoFar,
      );

  int ResetTimer() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int PauseTimer() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int ResumeTimer() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
}
