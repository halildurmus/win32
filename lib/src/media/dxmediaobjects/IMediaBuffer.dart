// IMediaBuffer.dart

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
const IID_IMediaBuffer = '{59EFF8B9-938C-4A26-82F2-95CB84CDC837}';

/// {@category Interface}
/// {@category com}
class IMediaBuffer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMediaBuffer(Pointer<COMObject> ptr) : super(ptr);

  int SetLength(
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        cbLength,
      );

  int GetMaxLength(
    Pointer<Uint32> pcbMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetBufferAndLength(
    Pointer<Pointer<Uint8>> ppBuffer,
    Pointer<Uint32> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
        pcbLength,
      );
}
