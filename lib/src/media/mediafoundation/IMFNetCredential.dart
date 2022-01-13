// IMFNetCredential.dart

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

/// @nodoc
const IID_IMFNetCredential = '{5B87EF6A-7ED8-434F-BA0E-184FAC1628D1}';

/// {@category Interface}
/// {@category com}
class IMFNetCredential extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFNetCredential(Pointer<COMObject> ptr) : super(ptr);

  int SetUser(
    Pointer<Uint8> pbData,
    int cbData,
    int fDataIsEncrypted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Uint32 cbData,
            Int32 fDataIsEncrypted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            int cbData,
            int fDataIsEncrypted,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        cbData,
        fDataIsEncrypted,
      );

  int SetPassword(
    Pointer<Uint8> pbData,
    int cbData,
    int fDataIsEncrypted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Uint32 cbData,
            Int32 fDataIsEncrypted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            int cbData,
            int fDataIsEncrypted,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        cbData,
        fDataIsEncrypted,
      );

  int GetUser(
    Pointer<Uint8> pbData,
    Pointer<Uint32> pcbData,
    int fEncryptData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
            Int32 fEncryptData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
            int fEncryptData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        pcbData,
        fEncryptData,
      );

  int GetPassword(
    Pointer<Uint8> pbData,
    Pointer<Uint32> pcbData,
    int fEncryptData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
            Int32 fEncryptData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
            int fEncryptData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        pcbData,
        fEncryptData,
      );

  int LoggedOnUser(
    Pointer<Int32> pfLoggedOnUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfLoggedOnUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfLoggedOnUser,
          )>()(
        ptr.ref.lpVtbl,
        pfLoggedOnUser,
      );
}
