// INSSBuffer.dart

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
const IID_INSSBuffer = '{E1CD3524-03D7-11D2-9EED-006097D2D7CF}';

/// {@category Interface}
/// {@category com}
class INSSBuffer extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  INSSBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int SetLength(
    int dwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLength,
          )>()(
        ptr.ref.lpVtbl,
        dwLength,
      );

  int GetMaxLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int GetBuffer(
    Pointer<Pointer<Uint8>> ppdwBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppdwBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppdwBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppdwBuffer,
      );

  int GetBufferAndLength(
    Pointer<Pointer<Uint8>> ppdwBuffer,
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppdwBuffer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppdwBuffer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        ppdwBuffer,
        pdwLength,
      );
}
