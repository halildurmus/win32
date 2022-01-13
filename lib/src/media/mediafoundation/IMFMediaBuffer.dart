// IMFMediaBuffer.dart

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
const IID_IMFMediaBuffer = '{045FA593-8799-42B8-BC8D-8968C6453507}';

/// {@category Interface}
/// {@category com}
class IMFMediaBuffer extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFMediaBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Lock(
    Pointer<Pointer<Uint8>> ppbBuffer,
    Pointer<Uint32> pcbMaxLength,
    Pointer<Uint32> pcbCurrentLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbBuffer,
            Pointer<Uint32> pcbMaxLength,
            Pointer<Uint32> pcbCurrentLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbBuffer,
            Pointer<Uint32> pcbMaxLength,
            Pointer<Uint32> pcbCurrentLength,
          )>()(
        ptr.ref.lpVtbl,
        ppbBuffer,
        pcbMaxLength,
        pcbCurrentLength,
      );

  int Unlock() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetCurrentLength(
    Pointer<Uint32> pcbCurrentLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbCurrentLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbCurrentLength,
          )>()(
        ptr.ref.lpVtbl,
        pcbCurrentLength,
      );

  int SetCurrentLength(
    int cbCurrentLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbCurrentLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbCurrentLength,
          )>()(
        ptr.ref.lpVtbl,
        cbCurrentLength,
      );

  int GetMaxLength(
    Pointer<Uint32> pcbMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pcbMaxLength,
      );
}
