// ITransferAdviseSink.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_ITransferAdviseSink = '{D594D0D8-8DA7-457B-B3B4-CE5DBAAC0B88}';

/// {@category Interface}
/// {@category com}
class ITransferAdviseSink extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITransferAdviseSink(Pointer<COMObject> ptr) : super(ptr);

  int UpdateProgress(
    int ullSizeCurrent,
    int ullSizeTotal,
    int nFilesCurrent,
    int nFilesTotal,
    int nFoldersCurrent,
    int nFoldersTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullSizeCurrent,
            Uint64 ullSizeTotal,
            Int32 nFilesCurrent,
            Int32 nFilesTotal,
            Int32 nFoldersCurrent,
            Int32 nFoldersTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullSizeCurrent,
            int ullSizeTotal,
            int nFilesCurrent,
            int nFilesTotal,
            int nFoldersCurrent,
            int nFoldersTotal,
          )>()(
        ptr.ref.lpVtbl,
        ullSizeCurrent,
        ullSizeTotal,
        nFilesCurrent,
        nFilesTotal,
        nFoldersCurrent,
        nFoldersTotal,
      );

  int UpdateTransferState(
    int ts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ts,
          )>()(
        ptr.ref.lpVtbl,
        ts,
      );

  int ConfirmOverwrite(
    Pointer<COMObject> psiSource,
    Pointer<COMObject> psiDestParent,
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiDestParent,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiDestParent,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        psiDestParent,
        pszName,
      );

  int ConfirmEncryptionLoss(
    Pointer<COMObject> psiSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
      );

  int FileFailure(
    Pointer<COMObject> psi,
    Pointer<Utf16> pszItem,
    int hrError,
    Pointer<Utf16> pszRename,
    int cchRename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Utf16> pszItem,
            Int32 hrError,
            Pointer<Utf16> pszRename,
            Uint32 cchRename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Utf16> pszItem,
            int hrError,
            Pointer<Utf16> pszRename,
            int cchRename,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pszItem,
        hrError,
        pszRename,
        cchRename,
      );

  int SubStreamFailure(
    Pointer<COMObject> psi,
    Pointer<Utf16> pszStreamName,
    int hrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Utf16> pszStreamName,
            Int32 hrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Utf16> pszStreamName,
            int hrError,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pszStreamName,
        hrError,
      );

  int PropertyFailure(
    Pointer<COMObject> psi,
    Pointer<PROPERTYKEY> pkey,
    int hrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<PROPERTYKEY> pkey,
            Int32 hrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<PROPERTYKEY> pkey,
            int hrError,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pkey,
        hrError,
      );
}
