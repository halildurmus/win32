// ITransferSource.dart

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
import '../../ui/shell/ITransferAdviseSink.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyChangeArray.dart';
import '../../ui/shell/IShellItem.dart';

/// @nodoc
const IID_ITransferSource = '{00ADB003-BDE9-45C6-8E29-D09F9353E108}';

/// {@category Interface}
/// {@category com}
class ITransferSource extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  ITransferSource(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> psink,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psink,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psink,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        psink,
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

  int SetProperties(
    Pointer<COMObject> pproparray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int OpenItem(
    Pointer<COMObject> psi,
    int flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Uint32 flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        flags,
        riid,
        ppv,
      );

  int MoveItem(
    Pointer<COMObject> psi,
    Pointer<COMObject> psiParentDst,
    Pointer<Utf16> pszNameDst,
    int flags,
    Pointer<Pointer<COMObject>> ppsiNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<COMObject> psiParentDst,
            Pointer<Utf16> pszNameDst,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppsiNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<COMObject> psiParentDst,
            Pointer<Utf16> pszNameDst,
            int flags,
            Pointer<Pointer<COMObject>> ppsiNew,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        psiParentDst,
        pszNameDst,
        flags,
        ppsiNew,
      );

  int RecycleItem(
    Pointer<COMObject> psiSource,
    Pointer<COMObject> psiParentDest,
    int flags,
    Pointer<Pointer<COMObject>> ppsiNewDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            int flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        psiParentDest,
        flags,
        ppsiNewDest,
      );

  int RemoveItem(
    Pointer<COMObject> psiSource,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Uint32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        flags,
      );

  int RenameItem(
    Pointer<COMObject> psiSource,
    Pointer<Utf16> pszNewName,
    int flags,
    Pointer<Pointer<COMObject>> ppsiNewDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<Utf16> pszNewName,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<Utf16> pszNewName,
            int flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        pszNewName,
        flags,
        ppsiNewDest,
      );

  int LinkItem(
    Pointer<COMObject> psiSource,
    Pointer<COMObject> psiParentDest,
    Pointer<Utf16> pszNewName,
    int flags,
    Pointer<Pointer<COMObject>> ppsiNewDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            Pointer<Utf16> pszNewName,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            Pointer<Utf16> pszNewName,
            int flags,
            Pointer<Pointer<COMObject>> ppsiNewDest,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        psiParentDest,
        pszNewName,
        flags,
        ppsiNewDest,
      );

  int ApplyPropertiesToItem(
    Pointer<COMObject> psiSource,
    Pointer<Pointer<COMObject>> ppsiNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<Pointer<COMObject>> ppsiNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<Pointer<COMObject>> ppsiNew,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        ppsiNew,
      );

  int GetDefaultDestinationName(
    Pointer<COMObject> psiSource,
    Pointer<COMObject> psiParentDest,
    Pointer<Pointer<Utf16>> ppszDestinationName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            Pointer<Pointer<Utf16>> ppszDestinationName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiParentDest,
            Pointer<Pointer<Utf16>> ppszDestinationName,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        psiParentDest,
        ppszDestinationName,
      );

  int EnterFolder(
    Pointer<COMObject> psiChildFolderDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiChildFolderDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiChildFolderDest,
          )>()(
        ptr.ref.lpVtbl,
        psiChildFolderDest,
      );

  int LeaveFolder(
    Pointer<COMObject> psiChildFolderDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiChildFolderDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiChildFolderDest,
          )>()(
        ptr.ref.lpVtbl,
        psiChildFolderDest,
      );
}
