// IStream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'ISequentialStream.dart';

/// @nodoc
const IID_IStream = '{0000000C-0000-0000-C000-000000000046}';

typedef _Seek_Native = Int32 Function(Pointer obj, Int64 dlibMove,
    Uint32 dwOrigin, Pointer<Uint64> plibNewPosition);
typedef _Seek_Dart = int Function(
    Pointer obj, int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition);

typedef _SetSize_Native = Int32 Function(Pointer obj, Uint64 libNewSize);
typedef _SetSize_Dart = int Function(Pointer obj, int libNewSize);

typedef _CopyTo_Native = Int32 Function(Pointer obj, Pointer pstm, Uint64 cb,
    Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten);
typedef _CopyTo_Dart = int Function(Pointer obj, Pointer pstm, int cb,
    Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten);

typedef _Commit_Native = Int32 Function(Pointer obj, Uint32 grfCommitFlags);
typedef _Commit_Dart = int Function(Pointer obj, int grfCommitFlags);

typedef _Revert_Native = Int32 Function(Pointer obj);
typedef _Revert_Dart = int Function(Pointer obj);

typedef _LockRegion_Native = Int32 Function(
    Pointer obj, Uint64 libOffset, Uint64 cb, Uint32 dwLockType);
typedef _LockRegion_Dart = int Function(
    Pointer obj, int libOffset, int cb, int dwLockType);

typedef _UnlockRegion_Native = Int32 Function(
    Pointer obj, Uint64 libOffset, Uint64 cb, Uint32 dwLockType);
typedef _UnlockRegion_Dart = int Function(
    Pointer obj, int libOffset, int cb, int dwLockType);

typedef _Stat_Native = Int32 Function(
    Pointer obj, Pointer<STATSTG> pstatstg, Uint32 grfStatFlag);
typedef _Stat_Dart = int Function(
    Pointer obj, Pointer<STATSTG> pstatstg, int grfStatFlag);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppstm);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> ppstm);

/// {@category Interface}
/// {@category com}
class IStream extends ISequentialStream {
  // vtable begins at 5, ends at 13

  IStream(Pointer<COMObject> ptr) : super(ptr);

  int Seek(int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition) =>
      Pointer<NativeFunction<_Seek_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_Seek_Dart>()(
          ptr.ref.lpVtbl, dlibMove, dwOrigin, plibNewPosition);

  int SetSize(int libNewSize) =>
      Pointer<NativeFunction<_SetSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_SetSize_Dart>()(ptr.ref.lpVtbl, libNewSize);

  int CopyTo(Pointer pstm, int cb, Pointer<Uint64> pcbRead,
          Pointer<Uint64> pcbWritten) =>
      Pointer<NativeFunction<_CopyTo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_CopyTo_Dart>()(
          ptr.ref.lpVtbl, pstm, cb, pcbRead, pcbWritten);

  int Commit(int grfCommitFlags) =>
      Pointer<NativeFunction<_Commit_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_Commit_Dart>()(ptr.ref.lpVtbl, grfCommitFlags);

  int Revert() => Pointer<NativeFunction<_Revert_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(9).value)
      .asFunction<_Revert_Dart>()(ptr.ref.lpVtbl);

  int LockRegion(int libOffset, int cb, int dwLockType) =>
      Pointer<NativeFunction<_LockRegion_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_LockRegion_Dart>()(
          ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int UnlockRegion(int libOffset, int cb, int dwLockType) =>
      Pointer<NativeFunction<_UnlockRegion_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_UnlockRegion_Dart>()(
          ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int Stat(Pointer<STATSTG> pstatstg, int grfStatFlag) =>
      Pointer<NativeFunction<_Stat_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_Stat_Dart>()(ptr.ref.lpVtbl, pstatstg, grfStatFlag);

  int Clone(Pointer<Pointer> ppstm) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppstm);
}
