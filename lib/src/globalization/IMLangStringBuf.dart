// IMLangStringBufW.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IMLangStringBufW = '{D24ACD21-BA72-11D0-B188-00AA0038C969}';

/// {@category Interface}
/// {@category com}
class IMLangStringBufW extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMLangStringBufW(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Int32> plFlags,
    Pointer<Int32> pcchBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plFlags,
            Pointer<Int32> pcchBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plFlags,
            Pointer<Int32> pcchBuf,
          )>()(
        ptr.ref.lpVtbl,
        plFlags,
        pcchBuf,
      );

  int LockBuf(
    int cchOffset,
    int cchMaxLock,
    Pointer<Pointer<Uint16>> ppszBuf,
    Pointer<Int32> pcchBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cchOffset,
            Int32 cchMaxLock,
            Pointer<Pointer<Uint16>> ppszBuf,
            Pointer<Int32> pcchBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchOffset,
            int cchMaxLock,
            Pointer<Pointer<Uint16>> ppszBuf,
            Pointer<Int32> pcchBuf,
          )>()(
        ptr.ref.lpVtbl,
        cchOffset,
        cchMaxLock,
        ppszBuf,
        pcchBuf,
      );

  int UnlockBuf(
    Pointer<Utf16> pszBuf,
    int cchOffset,
    int cchWrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszBuf,
            Int32 cchOffset,
            Int32 cchWrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszBuf,
            int cchOffset,
            int cchWrite,
          )>()(
        ptr.ref.lpVtbl,
        pszBuf,
        cchOffset,
        cchWrite,
      );

  int Insert(
    int cchOffset,
    int cchMaxInsert,
    Pointer<Int32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cchOffset,
            Int32 cchMaxInsert,
            Pointer<Int32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchOffset,
            int cchMaxInsert,
            Pointer<Int32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchOffset,
        cchMaxInsert,
        pcchActual,
      );

  int Delete(
    int cchOffset,
    int cchDelete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cchOffset,
            Int32 cchDelete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchOffset,
            int cchDelete,
          )>()(
        ptr.ref.lpVtbl,
        cchOffset,
        cchDelete,
      );
}
