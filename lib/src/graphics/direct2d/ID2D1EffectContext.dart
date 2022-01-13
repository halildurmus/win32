// ID2D1EffectContext.dart

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
import '../../graphics/direct2d/ID2D1Effect.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct2d/ID2D1TransformNode.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1BlendTransform.dart';
import '../../graphics/direct2d/ID2D1BorderTransform.dart';
import '../../graphics/direct2d/ID2D1OffsetTransform.dart';
import '../../graphics/direct2d/ID2D1BoundsAdjustmentTransform.dart';
import '../../graphics/direct2d/ID2D1ResourceTexture.dart';
import '../../graphics/direct2d/ID2D1VertexBuffer.dart';
import '../../graphics/direct2d/ID2D1ColorContext.dart';
import '../../graphics/imaging/IWICColorContext.dart';

/// @nodoc
const IID_ID2D1EffectContext = '{3D9F916B-27DC-4AD7-B4F1-64945340F563}';

/// {@category Interface}
/// {@category com}
class ID2D1EffectContext extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  ID2D1EffectContext(Pointer<COMObject> ptr) : super(ptr);

  void GetDpi(
    Pointer<Float> dpiX,
    Pointer<Float> dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );

  int CreateEffect(
    Pointer<GUID> effectId,
    Pointer<Pointer<COMObject>> effect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> effect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> effect,
          )>()(
        ptr.ref.lpVtbl,
        effectId,
        effect,
      );

  int GetMaximumSupportedFeatureLevel(
    Pointer<Int32> featureLevels,
    int featureLevelsCount,
    Pointer<Int32> maximumSupportedFeatureLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> featureLevels,
            Uint32 featureLevelsCount,
            Pointer<Int32> maximumSupportedFeatureLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> featureLevels,
            int featureLevelsCount,
            Pointer<Int32> maximumSupportedFeatureLevel,
          )>()(
        ptr.ref.lpVtbl,
        featureLevels,
        featureLevelsCount,
        maximumSupportedFeatureLevel,
      );

  int CreateTransformNodeFromEffect(
    Pointer<COMObject> effect,
    Pointer<Pointer<COMObject>> transformNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<Pointer<COMObject>> transformNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<Pointer<COMObject>> transformNode,
          )>()(
        ptr.ref.lpVtbl,
        effect,
        transformNode,
      );

  int CreateBlendTransform(
    int numInputs,
    Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 numInputs,
            Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int numInputs,
            Pointer<D2D1_BLEND_DESCRIPTION> blendDescription,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        numInputs,
        blendDescription,
        transform,
      );

  int CreateBorderTransform(
    int extendModeX,
    int extendModeY,
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 extendModeX,
            Uint32 extendModeY,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int extendModeX,
            int extendModeY,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        extendModeX,
        extendModeY,
        transform,
      );

  int CreateOffsetTransform(
    POINT offset,
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT offset,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT offset,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        offset,
        transform,
      );

  int CreateBoundsAdjustmentTransform(
    Pointer<RECT> outputRectangle,
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> outputRectangle,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> outputRectangle,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        outputRectangle,
        transform,
      );

  int LoadPixelShader(
    Pointer<GUID> shaderId,
    Pointer<Uint8> shaderBuffer,
    int shaderBufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> shaderId,
            Pointer<Uint8> shaderBuffer,
            Uint32 shaderBufferCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> shaderId,
            Pointer<Uint8> shaderBuffer,
            int shaderBufferCount,
          )>()(
        ptr.ref.lpVtbl,
        shaderId,
        shaderBuffer,
        shaderBufferCount,
      );

  int LoadVertexShader(
    Pointer<GUID> resourceId,
    Pointer<Uint8> shaderBuffer,
    int shaderBufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Uint8> shaderBuffer,
            Uint32 shaderBufferCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Uint8> shaderBuffer,
            int shaderBufferCount,
          )>()(
        ptr.ref.lpVtbl,
        resourceId,
        shaderBuffer,
        shaderBufferCount,
      );

  int LoadComputeShader(
    Pointer<GUID> resourceId,
    Pointer<Uint8> shaderBuffer,
    int shaderBufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Uint8> shaderBuffer,
            Uint32 shaderBufferCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Uint8> shaderBuffer,
            int shaderBufferCount,
          )>()(
        ptr.ref.lpVtbl,
        resourceId,
        shaderBuffer,
        shaderBufferCount,
      );

  int IsShaderLoaded(
    Pointer<GUID> shaderId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int CreateResourceTexture(
    Pointer<GUID> resourceId,
    Pointer<D2D1_RESOURCE_TEXTURE_PROPERTIES> resourceTextureProperties,
    Pointer<Uint8> data,
    Pointer<Uint32> strides,
    int dataSize,
    Pointer<Pointer<COMObject>> resourceTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<D2D1_RESOURCE_TEXTURE_PROPERTIES> resourceTextureProperties,
            Pointer<Uint8> data,
            Pointer<Uint32> strides,
            Uint32 dataSize,
            Pointer<Pointer<COMObject>> resourceTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<D2D1_RESOURCE_TEXTURE_PROPERTIES> resourceTextureProperties,
            Pointer<Uint8> data,
            Pointer<Uint32> strides,
            int dataSize,
            Pointer<Pointer<COMObject>> resourceTexture,
          )>()(
        ptr.ref.lpVtbl,
        resourceId,
        resourceTextureProperties,
        data,
        strides,
        dataSize,
        resourceTexture,
      );

  int FindResourceTexture(
    Pointer<GUID> resourceId,
    Pointer<Pointer<COMObject>> resourceTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Pointer<COMObject>> resourceTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Pointer<COMObject>> resourceTexture,
          )>()(
        ptr.ref.lpVtbl,
        resourceId,
        resourceTexture,
      );

  int CreateVertexBuffer(
    Pointer<D2D1_VERTEX_BUFFER_PROPERTIES> vertexBufferProperties,
    Pointer<GUID> resourceId,
    Pointer<D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES> customVertexBufferProperties,
    Pointer<Pointer<COMObject>> buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_VERTEX_BUFFER_PROPERTIES> vertexBufferProperties,
            Pointer<GUID> resourceId,
            Pointer<D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES>
                customVertexBufferProperties,
            Pointer<Pointer<COMObject>> buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_VERTEX_BUFFER_PROPERTIES> vertexBufferProperties,
            Pointer<GUID> resourceId,
            Pointer<D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES>
                customVertexBufferProperties,
            Pointer<Pointer<COMObject>> buffer,
          )>()(
        ptr.ref.lpVtbl,
        vertexBufferProperties,
        resourceId,
        customVertexBufferProperties,
        buffer,
      );

  int FindVertexBuffer(
    Pointer<GUID> resourceId,
    Pointer<Pointer<COMObject>> buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Pointer<COMObject>> buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> resourceId,
            Pointer<Pointer<COMObject>> buffer,
          )>()(
        ptr.ref.lpVtbl,
        resourceId,
        buffer,
      );

  int CreateColorContext(
    int space,
    Pointer<Uint8> profile,
    int profileSize,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 space,
            Pointer<Uint8> profile,
            Uint32 profileSize,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int space,
            Pointer<Uint8> profile,
            int profileSize,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        space,
        profile,
        profileSize,
        colorContext,
      );

  int CreateColorContextFromFilename(
    Pointer<Utf16> filename,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        colorContext,
      );

  int CreateColorContextFromWicColorContext(
    Pointer<COMObject> wicColorContext,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicColorContext,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicColorContext,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        wicColorContext,
        colorContext,
      );

  int CheckFeatureSupport(
    int feature,
    Pointer featureSupportData,
    int featureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 feature,
            Pointer featureSupportData,
            Uint32 featureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int feature,
            Pointer featureSupportData,
            int featureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        feature,
        featureSupportData,
        featureSupportDataSize,
      );

  int IsBufferPrecisionSupported(
    int bufferPrecision,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bufferPrecision,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bufferPrecision,
          )>()(
        ptr.ref.lpVtbl,
        bufferPrecision,
      );
}
