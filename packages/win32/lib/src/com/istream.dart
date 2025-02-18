// istream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'isequentialstream.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IStream = '{0000000c-0000-0000-c000-000000000046}';

/// The IStream interface lets you read and write data to stream objects.
/// Stream objects contain the data in a structured storage object, where
/// storages provide the structure. Simple data can be written directly to a
/// stream but, most frequently, streams are elements nested within a
/// storage object. They are similar to standard files.
///
/// {@category com}
class IStream extends ISequentialStream {
  // vtable begins at 5, is 9 entries long.
  IStream(super.ptr);

  factory IStream.from(IUnknown interface) =>
      IStream(interface.toInterface(IID_IStream));

  int seek(int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int64 dlibMove,
                  Uint32 dwOrigin,
                  Pointer<Uint64> plibNewPosition,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int dlibMove,
              int dwOrigin,
              Pointer<Uint64> plibNewPosition,
            )
          >()(ptr.ref.lpVtbl, dlibMove, dwOrigin, plibNewPosition);

  int setSize(int libNewSize) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Uint64 libNewSize)>>
      >()
      .value
      .asFunction<int Function(Pointer, int libNewSize)>()(
    ptr.ref.lpVtbl,
    libNewSize,
  );

  int copyTo(
    Pointer<COMObject> pstm,
    int cb,
    Pointer<Uint64> pcbRead,
    Pointer<Uint64> pcbWritten,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pstm,
              Uint64 cb,
              Pointer<Uint64> pcbRead,
              Pointer<Uint64> pcbWritten,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pstm,
          int cb,
          Pointer<Uint64> pcbRead,
          Pointer<Uint64> pcbWritten,
        )
      >()(ptr.ref.lpVtbl, pstm, cb, pcbRead, pcbWritten);

  int commit(int grfCommitFlags) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Int32 grfCommitFlags)>>
      >()
      .value
      .asFunction<int Function(Pointer, int grfCommitFlags)>()(
    ptr.ref.lpVtbl,
    grfCommitFlags,
  );

  int revert() => (ptr.ref.vtable + 9)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int lockRegion(int libOffset, int cb, int dwLockType) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint64 libOffset,
              Uint64 cb,
              Int32 dwLockType,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int libOffset, int cb, int dwLockType)
      >()(ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int unlockRegion(int libOffset, int cb, int dwLockType) =>
      (ptr.ref.vtable + 11)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint64 libOffset,
                  Uint64 cb,
                  Uint32 dwLockType,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, int libOffset, int cb, int dwLockType)
          >()(ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int stat(Pointer<STATSTG> pstatstg, int grfStatFlag) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<STATSTG> pstatstg,
              Int32 grfStatFlag,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<STATSTG> pstatstg, int grfStatFlag)
      >()(ptr.ref.lpVtbl, pstatstg, grfStatFlag);

  int clone(Pointer<Pointer<COMObject>> ppstm) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppstm)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppstm)>()(
    ptr.ref.lpVtbl,
    ppstm,
  );
}
