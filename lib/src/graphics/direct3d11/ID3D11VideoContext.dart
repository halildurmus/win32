// ID3D11VideoContext.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../graphics/direct3d11/ID3D11VideoDecoder.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11VideoDecoderOutputView.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessor.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessorOutputView.dart';
import '../../graphics/direct3d11/ID3D11CryptoSession.dart';
import '../../graphics/direct3d11/ID3D11Texture2D.dart';
import '../../graphics/direct3d11/ID3D11AuthenticatedChannel.dart';

/// @nodoc
const IID_ID3D11VideoContext = '{61F21C45-3C0E-4A74-9CEA-67100D9AD5E4}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoContext extends ID3D11DeviceChild {
  // vtable begins at 7, is 58 entries long.
  ID3D11VideoContext(Pointer<COMObject> ptr) : super(ptr);

  int GetDecoderBuffer(
    Pointer<COMObject> pDecoder,
    int Type,
    Pointer<Uint32> pBufferSize,
    Pointer<Pointer> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Int32 Type,
            Pointer<Uint32> pBufferSize,
            Pointer<Pointer> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            int Type,
            Pointer<Uint32> pBufferSize,
            Pointer<Pointer> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        Type,
        pBufferSize,
        ppBuffer,
      );

  int ReleaseDecoderBuffer(
    Pointer<COMObject> pDecoder,
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Int32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        Type,
      );

  int DecoderBeginFrame(
    Pointer<COMObject> pDecoder,
    Pointer<COMObject> pView,
    int ContentKeySize,
    Pointer pContentKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<COMObject> pView,
            Uint32 ContentKeySize,
            Pointer pContentKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<COMObject> pView,
            int ContentKeySize,
            Pointer pContentKey,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        pView,
        ContentKeySize,
        pContentKey,
      );

  int DecoderEndFrame(
    Pointer<COMObject> pDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
      );

  int SubmitDecoderBuffers(
    Pointer<COMObject> pDecoder,
    int NumBuffers,
    Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC> pBufferDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Uint32 NumBuffers,
            Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC> pBufferDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            int NumBuffers,
            Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC> pBufferDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        NumBuffers,
        pBufferDesc,
      );

  int DecoderExtension(
    Pointer<COMObject> pDecoder,
    Pointer<D3D11_VIDEO_DECODER_EXTENSION> pExtensionData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D11_VIDEO_DECODER_EXTENSION> pExtensionData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D11_VIDEO_DECODER_EXTENSION> pExtensionData,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        pExtensionData,
      );

  void VideoProcessorSetOutputTargetRect(
    Pointer<COMObject> pVideoProcessor,
    int Enable,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 Enable,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int Enable,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        Enable,
        pRect,
      );

  void VideoProcessorSetOutputBackgroundColor(
    Pointer<COMObject> pVideoProcessor,
    int YCbCr,
    Pointer<D3D11_VIDEO_COLOR> pColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 YCbCr,
            Pointer<D3D11_VIDEO_COLOR> pColor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int YCbCr,
            Pointer<D3D11_VIDEO_COLOR> pColor,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        YCbCr,
        pColor,
      );

  void VideoProcessorSetOutputColorSpace(
    Pointer<COMObject> pVideoProcessor,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pColorSpace,
      );

  void VideoProcessorSetOutputAlphaFillMode(
    Pointer<COMObject> pVideoProcessor,
    int AlphaFillMode,
    int StreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 AlphaFillMode,
            Uint32 StreamIndex,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int AlphaFillMode,
            int StreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        AlphaFillMode,
        StreamIndex,
      );

  void VideoProcessorSetOutputConstriction(
    Pointer<COMObject> pVideoProcessor,
    int Enable,
    SIZE Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 Enable,
            SIZE Size,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int Enable,
            SIZE Size,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        Enable,
        Size,
      );

  void VideoProcessorSetOutputStereoMode(
    Pointer<COMObject> pVideoProcessor,
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        Enable,
      );

  int VideoProcessorSetOutputExtension(
    Pointer<COMObject> pVideoProcessor,
    Pointer<GUID> pExtensionGuid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<GUID> pExtensionGuid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<GUID> pExtensionGuid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pExtensionGuid,
        DataSize,
        pData,
      );

  void VideoProcessorGetOutputTargetRect(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> Enabled,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> Enabled,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> Enabled,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        Enabled,
        pRect,
      );

  void VideoProcessorGetOutputBackgroundColor(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pYCbCr,
    Pointer<D3D11_VIDEO_COLOR> pColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pYCbCr,
            Pointer<D3D11_VIDEO_COLOR> pColor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pYCbCr,
            Pointer<D3D11_VIDEO_COLOR> pColor,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pYCbCr,
        pColor,
      );

  void VideoProcessorGetOutputColorSpace(
    Pointer<COMObject> pVideoProcessor,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pColorSpace,
      );

  void VideoProcessorGetOutputAlphaFillMode(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pAlphaFillMode,
    Pointer<Uint32> pStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pAlphaFillMode,
            Pointer<Uint32> pStreamIndex,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pAlphaFillMode,
            Pointer<Uint32> pStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pAlphaFillMode,
        pStreamIndex,
      );

  void VideoProcessorGetOutputConstriction(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pEnabled,
    Pointer<SIZE> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pEnabled,
            Pointer<SIZE> pSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pEnabled,
            Pointer<SIZE> pSize,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pEnabled,
        pSize,
      );

  void VideoProcessorGetOutputStereoMode(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pEnabled,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pEnabled,
      );

  int VideoProcessorGetOutputExtension(
    Pointer<COMObject> pVideoProcessor,
    Pointer<GUID> pExtensionGuid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<GUID> pExtensionGuid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<GUID> pExtensionGuid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pExtensionGuid,
        DataSize,
        pData,
      );

  void VideoProcessorSetStreamFrameFormat(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int FrameFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 FrameFormat,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int FrameFormat,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        FrameFormat,
      );

  void VideoProcessorSetStreamColorSpace(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pColorSpace,
      );

  void VideoProcessorSetStreamOutputRate(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int OutputRate,
    int RepeatFrame,
    Pointer<DXGI_RATIONAL> pCustomRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 OutputRate,
            Int32 RepeatFrame,
            Pointer<DXGI_RATIONAL> pCustomRate,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int OutputRate,
            int RepeatFrame,
            Pointer<DXGI_RATIONAL> pCustomRate,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        OutputRate,
        RepeatFrame,
        pCustomRate,
      );

  void VideoProcessorSetStreamSourceRect(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        pRect,
      );

  void VideoProcessorSetStreamDestRect(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        pRect,
      );

  void VideoProcessorSetStreamAlpha(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    double Alpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Float Alpha,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            double Alpha,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        Alpha,
      );

  void VideoProcessorSetStreamPalette(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Count,
    Pointer<Uint32> pEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Uint32 Count,
            Pointer<Uint32> pEntries,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Count,
            Pointer<Uint32> pEntries,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Count,
        pEntries,
      );

  void VideoProcessorSetStreamPixelAspectRatio(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    Pointer<DXGI_RATIONAL> pSourceAspectRatio,
    Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Pointer<DXGI_RATIONAL> pSourceAspectRatio,
            Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            Pointer<DXGI_RATIONAL> pSourceAspectRatio,
            Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        pSourceAspectRatio,
        pDestinationAspectRatio,
      );

  void VideoProcessorSetStreamLumaKey(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    double Lower,
    double Upper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Float Lower,
            Float Upper,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            double Lower,
            double Upper,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        Lower,
        Upper,
      );

  void VideoProcessorSetStreamStereoFormat(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    int Format,
    int LeftViewFrame0,
    int BaseViewFrame0,
    int FlipMode,
    int MonoOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Int32 Format,
            Int32 LeftViewFrame0,
            Int32 BaseViewFrame0,
            Int32 FlipMode,
            Int32 MonoOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            int Format,
            int LeftViewFrame0,
            int BaseViewFrame0,
            int FlipMode,
            int MonoOffset,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        Format,
        LeftViewFrame0,
        BaseViewFrame0,
        FlipMode,
        MonoOffset,
      );

  void VideoProcessorSetStreamAutoProcessingMode(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
      );

  void VideoProcessorSetStreamFilter(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Filter,
    int Enable,
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Filter,
            Int32 Enable,
            Int32 Level,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Filter,
            int Enable,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Filter,
        Enable,
        Level,
      );

  int VideoProcessorSetStreamExtension(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<GUID> pExtensionGuid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<GUID> pExtensionGuid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<GUID> pExtensionGuid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pExtensionGuid,
        DataSize,
        pData,
      );

  void VideoProcessorGetStreamFrameFormat(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pFrameFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pFrameFormat,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pFrameFormat,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pFrameFormat,
      );

  void VideoProcessorGetStreamColorSpace(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pColorSpace,
      );

  void VideoProcessorGetStreamOutputRate(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pOutputRate,
    Pointer<Int32> pRepeatFrame,
    Pointer<DXGI_RATIONAL> pCustomRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pOutputRate,
            Pointer<Int32> pRepeatFrame,
            Pointer<DXGI_RATIONAL> pCustomRate,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pOutputRate,
            Pointer<Int32> pRepeatFrame,
            Pointer<DXGI_RATIONAL> pCustomRate,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pOutputRate,
        pRepeatFrame,
        pCustomRate,
      );

  void VideoProcessorGetStreamSourceRect(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
        pRect,
      );

  void VideoProcessorGetStreamDestRect(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
        pRect,
      );

  void VideoProcessorGetStreamAlpha(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
    Pointer<Float> pAlpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<Float> pAlpha,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<Float> pAlpha,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
        pAlpha,
      );

  void VideoProcessorGetStreamPalette(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Count,
    Pointer<Uint32> pEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Uint32 Count,
            Pointer<Uint32> pEntries,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Count,
            Pointer<Uint32> pEntries,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Count,
        pEntries,
      );

  void VideoProcessorGetStreamPixelAspectRatio(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
    Pointer<DXGI_RATIONAL> pSourceAspectRatio,
    Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<DXGI_RATIONAL> pSourceAspectRatio,
            Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<DXGI_RATIONAL> pSourceAspectRatio,
            Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
        pSourceAspectRatio,
        pDestinationAspectRatio,
      );

  void VideoProcessorGetStreamLumaKey(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
    Pointer<Float> pLower,
    Pointer<Float> pUpper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<Float> pLower,
            Pointer<Float> pUpper,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
            Pointer<Float> pLower,
            Pointer<Float> pUpper,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
        pLower,
        pUpper,
      );

  void VideoProcessorGetStreamStereoFormat(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pFormat,
    Pointer<Int32> pLeftViewFrame0,
    Pointer<Int32> pBaseViewFrame0,
    Pointer<Int32> pFlipMode,
    Pointer<Int32> MonoOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pFormat,
            Pointer<Int32> pLeftViewFrame0,
            Pointer<Int32> pBaseViewFrame0,
            Pointer<Int32> pFlipMode,
            Pointer<Int32> MonoOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pFormat,
            Pointer<Int32> pLeftViewFrame0,
            Pointer<Int32> pBaseViewFrame0,
            Pointer<Int32> pFlipMode,
            Pointer<Int32> MonoOffset,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnable,
        pFormat,
        pLeftViewFrame0,
        pBaseViewFrame0,
        pFlipMode,
        MonoOffset,
      );

  void VideoProcessorGetStreamAutoProcessingMode(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnabled,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnabled,
      );

  void VideoProcessorGetStreamFilter(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Filter,
    Pointer<Int32> pEnabled,
    Pointer<Int32> pLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Filter,
            Pointer<Int32> pEnabled,
            Pointer<Int32> pLevel,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Filter,
            Pointer<Int32> pEnabled,
            Pointer<Int32> pLevel,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Filter,
        pEnabled,
        pLevel,
      );

  int VideoProcessorGetStreamExtension(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<GUID> pExtensionGuid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<GUID> pExtensionGuid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<GUID> pExtensionGuid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pExtensionGuid,
        DataSize,
        pData,
      );

  int VideoProcessorBlt(
    Pointer<COMObject> pVideoProcessor,
    Pointer<COMObject> pView,
    int OutputFrame,
    int StreamCount,
    Pointer<D3D11_VIDEO_PROCESSOR_STREAM> pStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<COMObject> pView,
            Uint32 OutputFrame,
            Uint32 StreamCount,
            Pointer<D3D11_VIDEO_PROCESSOR_STREAM> pStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<COMObject> pView,
            int OutputFrame,
            int StreamCount,
            Pointer<D3D11_VIDEO_PROCESSOR_STREAM> pStreams,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pView,
        OutputFrame,
        StreamCount,
        pStreams,
      );

  int NegotiateCryptoSessionKeyExchange(
    Pointer<COMObject> pCryptoSession,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        DataSize,
        pData,
      );

  void EncryptionBlt(
    Pointer<COMObject> pCryptoSession,
    Pointer<COMObject> pSrcSurface,
    Pointer<COMObject> pDstSurface,
    int IVSize,
    Pointer pIV,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            Uint32 IVSize,
            Pointer pIV,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            int IVSize,
            Pointer pIV,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        pSrcSurface,
        pDstSurface,
        IVSize,
        pIV,
      );

  void DecryptionBlt(
    Pointer<COMObject> pCryptoSession,
    Pointer<COMObject> pSrcSurface,
    Pointer<COMObject> pDstSurface,
    Pointer<D3D11_ENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
    int ContentKeySize,
    Pointer pContentKey,
    int IVSize,
    Pointer pIV,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            Pointer<D3D11_ENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
            Uint32 ContentKeySize,
            Pointer pContentKey,
            Uint32 IVSize,
            Pointer pIV,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            Pointer<D3D11_ENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
            int ContentKeySize,
            Pointer pContentKey,
            int IVSize,
            Pointer pIV,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        pSrcSurface,
        pDstSurface,
        pEncryptedBlockInfo,
        ContentKeySize,
        pContentKey,
        IVSize,
        pIV,
      );

  void StartSessionKeyRefresh(
    Pointer<COMObject> pCryptoSession,
    int RandomNumberSize,
    Pointer pRandomNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Uint32 RandomNumberSize,
            Pointer pRandomNumber,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            int RandomNumberSize,
            Pointer pRandomNumber,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        RandomNumberSize,
        pRandomNumber,
      );

  void FinishSessionKeyRefresh(
    Pointer<COMObject> pCryptoSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
      );

  int GetEncryptionBltKey(
    Pointer<COMObject> pCryptoSession,
    int KeySize,
    Pointer pReadbackKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Uint32 KeySize,
            Pointer pReadbackKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            int KeySize,
            Pointer pReadbackKey,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        KeySize,
        pReadbackKey,
      );

  int NegotiateAuthenticatedChannelKeyExchange(
    Pointer<COMObject> pChannel,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        DataSize,
        pData,
      );

  int QueryAuthenticatedChannel(
    Pointer<COMObject> pChannel,
    int InputSize,
    Pointer pInput,
    int OutputSize,
    Pointer pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Uint32 InputSize,
            Pointer pInput,
            Uint32 OutputSize,
            Pointer pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            int InputSize,
            Pointer pInput,
            int OutputSize,
            Pointer pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        InputSize,
        pInput,
        OutputSize,
        pOutput,
      );

  int ConfigureAuthenticatedChannel(
    Pointer<COMObject> pChannel,
    int InputSize,
    Pointer pInput,
    Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Uint32 InputSize,
            Pointer pInput,
            Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            int InputSize,
            Pointer pInput,
            Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        InputSize,
        pInput,
        pOutput,
      );

  void VideoProcessorSetStreamRotation(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Enable,
    int Rotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Enable,
            Int32 Rotation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Enable,
            int Rotation,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Enable,
        Rotation,
      );

  void VideoProcessorGetStreamRotation(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pRotation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pEnable,
            Pointer<Int32> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pEnable,
        pRotation,
      );
}
