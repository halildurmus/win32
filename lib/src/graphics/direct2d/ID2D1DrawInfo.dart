// ID2D1DrawInfo.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1VertexBuffer.dart';

/// @nodoc
const IID_ID2D1DrawInfo = '{693CE632-7F2F-45DE-93FE-18D88B37AA21}';

/// {@category Interface}
/// {@category com}
class ID2D1DrawInfo extends ID2D1RenderInfo {
  // vtable begins at 7, is 5 entries long.
  ID2D1DrawInfo(Pointer<COMObject> ptr) : super(ptr);

  int SetPixelShaderConstantBuffer(
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

  int SetResourceTexture(
    int textureIndex,
    Pointer<COMObject> resourceTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetVertexShaderConstantBuffer(
    Pointer<Uint8> buffer,
    int bufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetPixelShader(
    Pointer<GUID> shaderId,
    int pixelOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> shaderId,
            Uint32 pixelOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> shaderId,
            int pixelOptions,
          )>()(
        ptr.ref.lpVtbl,
        shaderId,
        pixelOptions,
      );

  int SetVertexProcessing(
    Pointer<COMObject> vertexBuffer,
    int vertexOptions,
    Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
    Pointer<D2D1_VERTEX_RANGE> vertexRange,
    Pointer<GUID> vertexShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> vertexBuffer,
            Uint32 vertexOptions,
            Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
            Pointer<D2D1_VERTEX_RANGE> vertexRange,
            Pointer<GUID> vertexShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> vertexBuffer,
            int vertexOptions,
            Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
            Pointer<D2D1_VERTEX_RANGE> vertexRange,
            Pointer<GUID> vertexShader,
          )>()(
        ptr.ref.lpVtbl,
        vertexBuffer,
        vertexOptions,
        blendDescription,
        vertexRange,
        vertexShader,
      );
}
