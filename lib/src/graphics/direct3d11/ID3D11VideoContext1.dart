// ID3D11VideoContext1.dart

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

import '../../graphics/direct3d11/ID3D11VideoContext.dart';
import '../../graphics/direct3d11/ID3D11VideoDecoder.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11CryptoSession.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessor.dart';

/// @nodoc
const IID_ID3D11VideoContext1 = '{A7F026DA-A5F8-4487-A564-15E34357651E}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoContext1 extends ID3D11VideoContext {
  // vtable begins at 65, is 14 entries long.
  ID3D11VideoContext1(Pointer<COMObject> ptr) : super(ptr);

  int SubmitDecoderBuffers1(
    Pointer<COMObject> pDecoder,
    int NumBuffers,
    Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1> pBufferDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Uint32 NumBuffers,
            Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1> pBufferDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            int NumBuffers,
            Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1> pBufferDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        NumBuffers,
        pBufferDesc,
      );

  int GetDataForNewHardwareKey(
    Pointer<COMObject> pCryptoSession,
    int PrivateInputSize,
    Pointer pPrivatInputData,
    Pointer<Uint64> pPrivateOutputData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Uint32 PrivateInputSize,
            Pointer pPrivatInputData,
            Pointer<Uint64> pPrivateOutputData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            int PrivateInputSize,
            Pointer pPrivatInputData,
            Pointer<Uint64> pPrivateOutputData,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        PrivateInputSize,
        pPrivatInputData,
        pPrivateOutputData,
      );

  int CheckCryptoSessionStatus(
    Pointer<COMObject> pCryptoSession,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        pStatus,
      );

  int DecoderEnableDownsampling(
    Pointer<COMObject> pDecoder,
    int InputColorSpace,
    Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
    int ReferenceFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Int32 InputColorSpace,
            Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
            Uint32 ReferenceFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            int InputColorSpace,
            Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
            int ReferenceFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        InputColorSpace,
        pOutputDesc,
        ReferenceFrameCount,
      );

  int DecoderUpdateDownsampling(
    Pointer<COMObject> pDecoder,
    Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        pOutputDesc,
      );

  void VideoProcessorSetOutputColorSpace1(
    Pointer<COMObject> pVideoProcessor,
    int ColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 ColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int ColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        ColorSpace,
      );

  void VideoProcessorSetOutputShaderUsage(
    Pointer<COMObject> pVideoProcessor,
    int ShaderUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 ShaderUsage,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int ShaderUsage,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        ShaderUsage,
      );

  void VideoProcessorGetOutputColorSpace1(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pColorSpace,
      );

  void VideoProcessorGetOutputShaderUsage(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pShaderUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pShaderUsage,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pShaderUsage,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pShaderUsage,
      );

  void VideoProcessorSetStreamColorSpace1(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int ColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 ColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int ColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        ColorSpace,
      );

  void VideoProcessorSetStreamMirror(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    int FlipHorizontal,
    int FlipVertical,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Int32 FlipHorizontal,
            Int32 FlipVertical,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            int FlipHorizontal,
            int FlipVertical,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        FlipHorizontal,
        FlipVertical,
      );

  void VideoProcessorGetStreamColorSpace1(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pColorSpace,
      );

  void VideoProcessorGetStreamMirror(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pFlipHorizontal,
    Pointer<Int32> pFlipVertical,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pFlipHorizontal,
            Pointer<Int32> pFlipVertical,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pFlipHorizontal,
            Pointer<Int32> pFlipVertical,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnable,
        pFlipHorizontal,
        pFlipVertical,
      );

  int VideoProcessorGetBehaviorHints(
    Pointer<COMObject> pVideoProcessor,
    int OutputWidth,
    int OutputHeight,
    int OutputFormat,
    int StreamCount,
    Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT> pStreams,
    Pointer<Uint32> pBehaviorHints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 OutputWidth,
            Uint32 OutputHeight,
            Uint32 OutputFormat,
            Uint32 StreamCount,
            Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT> pStreams,
            Pointer<Uint32> pBehaviorHints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int OutputWidth,
            int OutputHeight,
            int OutputFormat,
            int StreamCount,
            Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT> pStreams,
            Pointer<Uint32> pBehaviorHints,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        OutputWidth,
        OutputHeight,
        OutputFormat,
        StreamCount,
        pStreams,
        pBehaviorHints,
      );
}
