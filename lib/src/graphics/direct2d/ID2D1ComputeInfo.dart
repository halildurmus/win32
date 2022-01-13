// ID2D1ComputeInfo.dart

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

import '../../graphics/direct2d/ID2D1RenderInfo.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1ResourceTexture.dart';

/// @nodoc
const IID_ID2D1ComputeInfo = '{5598B14B-9FD7-48B7-9BDB-8F0964EB38BC}';

/// {@category Interface}
/// {@category com}
class ID2D1ComputeInfo extends ID2D1RenderInfo {
  // vtable begins at 7, is 3 entries long.
  ID2D1ComputeInfo(Pointer<COMObject> ptr) : super(ptr);

  int SetComputeShaderConstantBuffer(
    Pointer<Uint8> buffer,
    int bufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> buffer,
            Uint32 bufferCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> buffer,
            int bufferCount,
          )>()(
        ptr.ref.lpVtbl,
        buffer,
        bufferCount,
      );

  int SetComputeShader(
    Pointer<GUID> shaderId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> shaderId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> shaderId,
          )>()(
        ptr.ref.lpVtbl,
        shaderId,
      );

  int SetResourceTexture(
    int textureIndex,
    Pointer<COMObject> resourceTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textureIndex,
            Pointer<COMObject> resourceTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textureIndex,
            Pointer<COMObject> resourceTexture,
          )>()(
        ptr.ref.lpVtbl,
        textureIndex,
        resourceTexture,
      );
}
