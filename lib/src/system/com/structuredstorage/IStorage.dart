// IStorage.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structuredstorage/structs.g.dart';
import '../../../system/com/IStream.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../system/com/structuredstorage/IEnumSTATSTG.dart';
import '../../../system/com/structs.g.dart';

/// @nodoc
const IID_IStorage = '{0000000B-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IStorage extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IStorage(Pointer<COMObject> ptr) : super(ptr);

  int CreateStream(
    Pointer<Utf16> pwcsName,
    int grfMode,
    int reserved1,
    int reserved2,
    Pointer<Pointer<COMObject>> ppstm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Uint32 grfMode,
            Uint32 reserved1,
            Uint32 reserved2,
            Pointer<Pointer<COMObject>> ppstm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            int grfMode,
            int reserved1,
            int reserved2,
            Pointer<Pointer<COMObject>> ppstm,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        grfMode,
        reserved1,
        reserved2,
        ppstm,
      );

  int OpenStream(
    Pointer<Utf16> pwcsName,
    Pointer reserved1,
    int grfMode,
    int reserved2,
    Pointer<Pointer<COMObject>> ppstm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer reserved1,
            Uint32 grfMode,
            Uint32 reserved2,
            Pointer<Pointer<COMObject>> ppstm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer reserved1,
            int grfMode,
            int reserved2,
            Pointer<Pointer<COMObject>> ppstm,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        reserved1,
        grfMode,
        reserved2,
        ppstm,
      );

  int CreateStorage(
    Pointer<Utf16> pwcsName,
    int grfMode,
    int reserved1,
    int reserved2,
    Pointer<Pointer<COMObject>> ppstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Uint32 grfMode,
            Uint32 reserved1,
            Uint32 reserved2,
            Pointer<Pointer<COMObject>> ppstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            int grfMode,
            int reserved1,
            int reserved2,
            Pointer<Pointer<COMObject>> ppstg,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        grfMode,
        reserved1,
        reserved2,
        ppstg,
      );

  int OpenStorage(
    Pointer<Utf16> pwcsName,
    Pointer<COMObject> pstgPriority,
    int grfMode,
    Pointer<Pointer<Uint16>> snbExclude,
    int reserved,
    Pointer<Pointer<COMObject>> ppstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<COMObject> pstgPriority,
            Uint32 grfMode,
            Pointer<Pointer<Uint16>> snbExclude,
            Uint32 reserved,
            Pointer<Pointer<COMObject>> ppstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<COMObject> pstgPriority,
            int grfMode,
            Pointer<Pointer<Uint16>> snbExclude,
            int reserved,
            Pointer<Pointer<COMObject>> ppstg,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        pstgPriority,
        grfMode,
        snbExclude,
        reserved,
        ppstg,
      );

  int CopyTo(
    int ciidExclude,
    Pointer<GUID> rgiidExclude,
    Pointer<Pointer<Uint16>> snbExclude,
    Pointer<COMObject> pstgDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ciidExclude,
            Pointer<GUID> rgiidExclude,
            Pointer<Pointer<Uint16>> snbExclude,
            Pointer<COMObject> pstgDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ciidExclude,
            Pointer<GUID> rgiidExclude,
            Pointer<Pointer<Uint16>> snbExclude,
            Pointer<COMObject> pstgDest,
          )>()(
        ptr.ref.lpVtbl,
        ciidExclude,
        rgiidExclude,
        snbExclude,
        pstgDest,
      );

  int MoveElementTo(
    Pointer<Utf16> pwcsName,
    Pointer<COMObject> pstgDest,
    Pointer<Utf16> pwcsNewName,
    int grfFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<COMObject> pstgDest,
            Pointer<Utf16> pwcsNewName,
            Int32 grfFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<COMObject> pstgDest,
            Pointer<Utf16> pwcsNewName,
            int grfFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        pstgDest,
        pwcsNewName,
        grfFlags,
      );

  int Commit(
    int grfCommitFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfCommitFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfCommitFlags,
          )>()(
        ptr.ref.lpVtbl,
        grfCommitFlags,
      );

  int Revert() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int EnumElements(
    int reserved1,
    Pointer reserved2,
    int reserved3,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 reserved1,
            Pointer reserved2,
            Uint32 reserved3,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reserved1,
            Pointer reserved2,
            int reserved3,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        reserved1,
        reserved2,
        reserved3,
        ppenum,
      );

  int DestroyElement(
    Pointer<Utf16> pwcsName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
      );

  int RenameElement(
    Pointer<Utf16> pwcsOldName,
    Pointer<Utf16> pwcsNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsOldName,
            Pointer<Utf16> pwcsNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsOldName,
            Pointer<Utf16> pwcsNewName,
          )>()(
        ptr.ref.lpVtbl,
        pwcsOldName,
        pwcsNewName,
      );

  int SetElementTimes(
    Pointer<Utf16> pwcsName,
    Pointer<FILETIME> pctime,
    Pointer<FILETIME> patime,
    Pointer<FILETIME> pmtime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<FILETIME> pctime,
            Pointer<FILETIME> patime,
            Pointer<FILETIME> pmtime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsName,
            Pointer<FILETIME> pctime,
            Pointer<FILETIME> patime,
            Pointer<FILETIME> pmtime,
          )>()(
        ptr.ref.lpVtbl,
        pwcsName,
        pctime,
        patime,
        pmtime,
      );

  int SetClass(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int SetStateBits(
    int grfStateBits,
    int grfMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfStateBits,
            Uint32 grfMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfStateBits,
            int grfMask,
          )>()(
        ptr.ref.lpVtbl,
        grfStateBits,
        grfMask,
      );

  int Stat(
    Pointer<STATSTG> pstatstg,
    int grfStatFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STATSTG> pstatstg,
            Uint32 grfStatFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STATSTG> pstatstg,
            int grfStatFlag,
          )>()(
        ptr.ref.lpVtbl,
        pstatstg,
        grfStatFlag,
      );
}
