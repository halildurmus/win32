// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'id3d11authenticatedchannel.g.dart';
import 'id3d11cryptosession.g.dart';
import 'id3d11devicechild.g.dart';
import 'id3d11texture2d.g.dart';
import 'id3d11videodecoder.g.dart';
import 'id3d11videodecoderoutputview.g.dart';
import 'id3d11videoprocessor.g.dart';
import 'id3d11videoprocessoroutputview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoContext = GUID.fromComponents(
  0x61f21c45,
  0x3c0e,
  0x4a74,
  Uint8List.fromList(const [0x9c, 0xea, 0x67, 0x10, 0xd, 0x9a, 0xd5, 0xe4]),
);

/// Provides the video functionality of a Microsoft Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videocontext>.
///
/// {@category com}
class ID3D11VideoContext extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11VideoContext] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoContext]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoContext(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoContextVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoContext] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoContext] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoContext.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoContextVtbl _vtable;
  late final _GetDecoderBufferFn =
      _vtable.GetDecoderBuffer.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Pointer>,
        )
      >();
  late final _ReleaseDecoderBufferFn =
      _vtable.ReleaseDecoderBuffer.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();
  late final _DecoderBeginFrameFn =
      _vtable.DecoderBeginFrame.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer, int, Pointer)
      >();
  late final _DecoderEndFrameFn = _vtable
      .DecoderEndFrame.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SubmitDecoderBuffersFn =
      _vtable.SubmitDecoderBuffers.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC>,
        )
      >();
  late final _DecoderExtensionFn =
      _vtable.DecoderExtension.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_EXTENSION>,
        )
      >();
  late final _VideoProcessorSetOutputTargetRectFn =
      _vtable.VideoProcessorSetOutputTargetRect.asFunction<
        void Function(VTablePointer, VTablePointer, int, Pointer<RECT>)
      >();
  late final _VideoProcessorSetOutputBackgroundColorFn =
      _vtable.VideoProcessorSetOutputBackgroundColor.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_COLOR>,
        )
      >();
  late final _VideoProcessorSetOutputColorSpaceFn =
      _vtable.VideoProcessorSetOutputColorSpace.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE>,
        )
      >();
  late final _VideoProcessorSetOutputAlphaFillModeFn =
      _vtable.VideoProcessorSetOutputAlphaFillMode.asFunction<
        void Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _VideoProcessorSetOutputConstrictionFn =
      _vtable.VideoProcessorSetOutputConstriction.asFunction<
        void Function(VTablePointer, VTablePointer, int, SIZE)
      >();
  late final _VideoProcessorSetOutputStereoModeFn =
      _vtable.VideoProcessorSetOutputStereoMode.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _VideoProcessorSetOutputExtensionFn =
      _vtable.VideoProcessorSetOutputExtension.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _VideoProcessorGetOutputTargetRectFn =
      _vtable.VideoProcessorGetOutputTargetRect.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          Pointer<RECT>,
        )
      >();
  late final _VideoProcessorGetOutputBackgroundColorFn =
      _vtable.VideoProcessorGetOutputBackgroundColor.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          Pointer<D3D11_VIDEO_COLOR>,
        )
      >();
  late final _VideoProcessorGetOutputColorSpaceFn =
      _vtable.VideoProcessorGetOutputColorSpace.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE>,
        )
      >();
  late final _VideoProcessorGetOutputAlphaFillModeFn =
      _vtable.VideoProcessorGetOutputAlphaFillMode.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          Pointer<Uint32>,
        )
      >();
  late final _VideoProcessorGetOutputConstrictionFn =
      _vtable.VideoProcessorGetOutputConstriction.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          Pointer<SIZE>,
        )
      >();
  late final _VideoProcessorGetOutputStereoModeFn =
      _vtable.VideoProcessorGetOutputStereoMode.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();
  late final _VideoProcessorGetOutputExtensionFn =
      _vtable.VideoProcessorGetOutputExtension.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _VideoProcessorSetStreamFrameFormatFn =
      _vtable.VideoProcessorSetStreamFrameFormat.asFunction<
        void Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _VideoProcessorSetStreamColorSpaceFn =
      _vtable.VideoProcessorSetStreamColorSpace.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE>,
        )
      >();
  late final _VideoProcessorSetStreamOutputRateFn =
      _vtable.VideoProcessorSetStreamOutputRate.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          Pointer<DXGI_RATIONAL>,
        )
      >();
  late final _VideoProcessorSetStreamSourceRectFn =
      _vtable.VideoProcessorSetStreamSourceRect.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, Pointer<RECT>)
      >();
  late final _VideoProcessorSetStreamDestRectFn =
      _vtable.VideoProcessorSetStreamDestRect.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, Pointer<RECT>)
      >();
  late final _VideoProcessorSetStreamAlphaFn =
      _vtable.VideoProcessorSetStreamAlpha.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, double)
      >();
  late final _VideoProcessorSetStreamPaletteFn =
      _vtable.VideoProcessorSetStreamPalette.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, Pointer<Uint32>)
      >();
  late final _VideoProcessorSetStreamPixelAspectRatioFn =
      _vtable.VideoProcessorSetStreamPixelAspectRatio.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          Pointer<DXGI_RATIONAL>,
          Pointer<DXGI_RATIONAL>,
        )
      >();
  late final _VideoProcessorSetStreamLumaKeyFn =
      _vtable.VideoProcessorSetStreamLumaKey.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, double, double)
      >();
  late final _VideoProcessorSetStreamStereoFormatFn =
      _vtable.VideoProcessorSetStreamStereoFormat.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          int,
          int,
          int,
          int,
        )
      >();
  late final _VideoProcessorSetStreamAutoProcessingModeFn =
      _vtable.VideoProcessorSetStreamAutoProcessingMode.asFunction<
        void Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _VideoProcessorSetStreamFilterFn =
      _vtable.VideoProcessorSetStreamFilter.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, int, int)
      >();
  late final _VideoProcessorSetStreamExtensionFn =
      _vtable.VideoProcessorSetStreamExtension.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<GUID>,
          int,
          Pointer,
        )
      >();
  late final _VideoProcessorGetStreamFrameFormatFn =
      _vtable.VideoProcessorGetStreamFrameFormat.asFunction<
        void Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();
  late final _VideoProcessorGetStreamColorSpaceFn =
      _vtable.VideoProcessorGetStreamColorSpace.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE>,
        )
      >();
  late final _VideoProcessorGetStreamOutputRateFn =
      _vtable.VideoProcessorGetStreamOutputRate.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<DXGI_RATIONAL>,
        )
      >();
  late final _VideoProcessorGetStreamSourceRectFn =
      _vtable.VideoProcessorGetStreamSourceRect.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<RECT>,
        )
      >();
  late final _VideoProcessorGetStreamDestRectFn =
      _vtable.VideoProcessorGetStreamDestRect.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<RECT>,
        )
      >();
  late final _VideoProcessorGetStreamAlphaFn =
      _vtable.VideoProcessorGetStreamAlpha.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Float>,
        )
      >();
  late final _VideoProcessorGetStreamPaletteFn =
      _vtable.VideoProcessorGetStreamPalette.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, Pointer<Uint32>)
      >();
  late final _VideoProcessorGetStreamPixelAspectRatioFn =
      _vtable.VideoProcessorGetStreamPixelAspectRatio.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<DXGI_RATIONAL>,
          Pointer<DXGI_RATIONAL>,
        )
      >();
  late final _VideoProcessorGetStreamLumaKeyFn =
      _vtable.VideoProcessorGetStreamLumaKey.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Float>,
          Pointer<Float>,
        )
      >();
  late final _VideoProcessorGetStreamStereoFormatFn =
      _vtable.VideoProcessorGetStreamStereoFormat.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _VideoProcessorGetStreamAutoProcessingModeFn =
      _vtable.VideoProcessorGetStreamAutoProcessingMode.asFunction<
        void Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();
  late final _VideoProcessorGetStreamFilterFn =
      _vtable.VideoProcessorGetStreamFilter.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _VideoProcessorGetStreamExtensionFn =
      _vtable.VideoProcessorGetStreamExtension.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<GUID>,
          int,
          Pointer,
        )
      >();
  late final _VideoProcessorBltFn =
      _vtable.VideoProcessorBlt.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          int,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_STREAM>,
        )
      >();
  late final _NegotiateCryptoSessionKeyExchangeFn =
      _vtable.NegotiateCryptoSessionKeyExchange.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer)
      >();
  late final _EncryptionBltFn =
      _vtable.EncryptionBlt.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          VTablePointer,
          int,
          Pointer,
        )
      >();
  late final _DecryptionBltFn =
      _vtable.DecryptionBlt.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_ENCRYPTED_BLOCK_INFO>,
          int,
          Pointer,
          int,
          Pointer,
        )
      >();
  late final _StartSessionKeyRefreshFn =
      _vtable.StartSessionKeyRefresh.asFunction<
        void Function(VTablePointer, VTablePointer, int, Pointer)
      >();
  late final _FinishSessionKeyRefreshFn =
      _vtable.FinishSessionKeyRefresh.asFunction<
        void Function(VTablePointer, VTablePointer)
      >();
  late final _GetEncryptionBltKeyFn =
      _vtable.GetEncryptionBltKey.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer)
      >();
  late final _NegotiateAuthenticatedChannelKeyExchangeFn =
      _vtable.NegotiateAuthenticatedChannelKeyExchange.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer)
      >();
  late final _QueryAuthenticatedChannelFn =
      _vtable.QueryAuthenticatedChannel.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer, int, Pointer)
      >();
  late final _ConfigureAuthenticatedChannelFn =
      _vtable.ConfigureAuthenticatedChannel.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer,
          Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT>,
        )
      >();
  late final _VideoProcessorSetStreamRotationFn =
      _vtable.VideoProcessorSetStreamRotation.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, int)
      >();
  late final _VideoProcessorGetStreamRotationFn =
      _vtable.VideoProcessorGetStreamRotation.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();

  /// Gets a pointer to a decoder buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-getdecoderbuffer>.
  @pragma('vm:prefer-inline')
  void getDecoderBuffer(
    ID3D11VideoDecoder? pDecoder,
    D3D11_VIDEO_DECODER_BUFFER_TYPE type,
    Pointer<Uint32> pBufferSize,
    Pointer<Pointer> ppBuffer,
  ) {
    final hr$ = HRESULT(
      _GetDecoderBufferFn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        type,
        pBufferSize,
        ppBuffer,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases a buffer that was obtained by calling the
  /// `ID3D11VideoContext.getDecoderBuffer` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-releasedecoderbuffer>.
  @pragma('vm:prefer-inline')
  void releaseDecoderBuffer(
    ID3D11VideoDecoder? pDecoder,
    D3D11_VIDEO_DECODER_BUFFER_TYPE type,
  ) {
    final hr$ = HRESULT(
      _ReleaseDecoderBufferFn(ptr, pDecoder?.ptr ?? nullptr, type),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Starts a decoding operation to decode a video frame.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-decoderbeginframe>.
  @pragma('vm:prefer-inline')
  void decoderBeginFrame(
    ID3D11VideoDecoder? pDecoder,
    ID3D11VideoDecoderOutputView? pView,
    int contentKeySize,
    Pointer? pContentKey,
  ) {
    final hr$ = HRESULT(
      _DecoderBeginFrameFn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        pView?.ptr ?? nullptr,
        contentKeySize,
        pContentKey ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Signals the end of a decoding operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-decoderendframe>.
  @pragma('vm:prefer-inline')
  void decoderEndFrame(ID3D11VideoDecoder? pDecoder) {
    final hr$ = HRESULT(_DecoderEndFrameFn(ptr, pDecoder?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Submits one or more buffers for decoding.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-submitdecoderbuffers>.
  @pragma('vm:prefer-inline')
  void submitDecoderBuffers(
    ID3D11VideoDecoder? pDecoder,
    int numBuffers,
    Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC> pBufferDesc,
  ) {
    final hr$ = HRESULT(
      _SubmitDecoderBuffersFn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        numBuffers,
        pBufferDesc,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs an extended function for decoding.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-decoderextension>.
  @pragma('vm:prefer-inline')
  int decoderExtension(
    ID3D11VideoDecoder? pDecoder,
    Pointer<D3D11_VIDEO_DECODER_EXTENSION> pExtensionData,
  ) => _DecoderExtensionFn(ptr, pDecoder?.ptr ?? nullptr, pExtensionData);

  /// Sets the target rectangle for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputtargetrect>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputTargetRect(
    ID3D11VideoProcessor? pVideoProcessor,
    bool enable,
    Pointer<RECT>? pRect,
  ) => _VideoProcessorSetOutputTargetRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    enable ? TRUE : FALSE,
    pRect ?? nullptr,
  );

  /// Sets the background color for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputbackgroundcolor>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputBackgroundColor(
    ID3D11VideoProcessor? pVideoProcessor,
    bool yCbCr,
    Pointer<D3D11_VIDEO_COLOR> pColor,
  ) => _VideoProcessorSetOutputBackgroundColorFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    yCbCr ? TRUE : FALSE,
    pColor,
  );

  /// Sets the output color space for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputcolorspace>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputColorSpace(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) => _VideoProcessorSetOutputColorSpaceFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pColorSpace,
  );

  /// Sets the alpha fill mode for data that the video processor writes to the
  /// render target.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputalphafillmode>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputAlphaFillMode(
    ID3D11VideoProcessor? pVideoProcessor,
    D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE alphaFillMode,
    int streamIndex,
  ) => _VideoProcessorSetOutputAlphaFillModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    alphaFillMode,
    streamIndex,
  );

  /// Sets the amount of downsampling to perform on the output.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputconstriction>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputConstriction(
    ID3D11VideoProcessor? pVideoProcessor,
    bool enable,
    SIZE size,
  ) => _VideoProcessorSetOutputConstrictionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    enable ? TRUE : FALSE,
    size,
  );

  /// Specifies whether the video processor produces stereo video frames.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputstereomode>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputStereoMode(
    ID3D11VideoProcessor? pVideoProcessor,
    bool enable,
  ) => _VideoProcessorSetOutputStereoModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    enable ? TRUE : FALSE,
  );

  /// Sets a driver-specific video processing state.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetoutputextension>.
  @pragma('vm:prefer-inline')
  int videoProcessorSetOutputExtension(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<GUID> pExtensionGuid,
    int dataSize,
    Pointer pData,
  ) => _VideoProcessorSetOutputExtensionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pExtensionGuid,
    dataSize,
    pData,
  );

  /// Gets the current target rectangle for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputtargetrect>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputTargetRect(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> enabled,
    Pointer<RECT> pRect,
  ) => _VideoProcessorGetOutputTargetRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    enabled,
    pRect,
  );

  /// Gets the current background color for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputbackgroundcolor>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputBackgroundColor(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pYCbCr,
    Pointer<D3D11_VIDEO_COLOR> pColor,
  ) => _VideoProcessorGetOutputBackgroundColorFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pYCbCr,
    pColor,
  );

  /// Gets the current output color space for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputcolorspace>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputColorSpace(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) => _VideoProcessorGetOutputColorSpaceFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pColorSpace,
  );

  /// Gets the current alpha fill mode for the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputalphafillmode>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputAlphaFillMode(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pAlphaFillMode,
    Pointer<Uint32> pStreamIndex,
  ) => _VideoProcessorGetOutputAlphaFillModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pAlphaFillMode,
    pStreamIndex,
  );

  /// Gets the current level of downsampling that is performed by the video
  /// processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputconstriction>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputConstriction(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pEnabled,
    Pointer<SIZE> pSize,
  ) => _VideoProcessorGetOutputConstrictionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pEnabled,
    pSize,
  );

  /// Queries whether the video processor produces stereo video frames.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputstereomode>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputStereoMode(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pEnabled,
  ) => _VideoProcessorGetOutputStereoModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pEnabled,
  );

  /// Gets private state data from the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetoutputextension>.
  @pragma('vm:prefer-inline')
  int videoProcessorGetOutputExtension(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<GUID> pExtensionGuid,
    int dataSize,
    Pointer pData,
  ) => _VideoProcessorGetOutputExtensionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pExtensionGuid,
    dataSize,
    pData,
  );

  /// Specifies whether an input stream on the video processor contains
  /// interlaced or progressive frames.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamframeformat>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamFrameFormat(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    D3D11_VIDEO_FRAME_FORMAT frameFormat,
  ) => _VideoProcessorSetStreamFrameFormatFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    frameFormat,
  );

  /// Sets the color space for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamcolorspace>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamColorSpace(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) => _VideoProcessorSetStreamColorSpaceFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pColorSpace,
  );

  /// Sets the rate at which the video processor produces output frames for an
  /// input stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamoutputrate>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamOutputRate(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    D3D11_VIDEO_PROCESSOR_OUTPUT_RATE outputRate,
    bool repeatFrame,
    Pointer<DXGI_RATIONAL>? pCustomRate,
  ) => _VideoProcessorSetStreamOutputRateFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    outputRate,
    repeatFrame ? TRUE : FALSE,
    pCustomRate ?? nullptr,
  );

  /// Sets the source rectangle for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamsourcerect>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamSourceRect(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    Pointer<RECT>? pRect,
  ) => _VideoProcessorSetStreamSourceRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    pRect ?? nullptr,
  );

  /// Sets the destination rectangle for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamdestrect>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamDestRect(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    Pointer<RECT>? pRect,
  ) => _VideoProcessorSetStreamDestRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    pRect ?? nullptr,
  );

  /// Sets the planar alpha for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamalpha>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamAlpha(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    double alpha,
  ) => _VideoProcessorSetStreamAlphaFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    alpha,
  );

  /// Sets the color-palette entries for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreampalette>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamPalette(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    int count,
    Pointer<Uint32>? pEntries,
  ) => _VideoProcessorSetStreamPaletteFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    count,
    pEntries ?? nullptr,
  );

  /// Sets the pixel aspect ratio for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreampixelaspectratio>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamPixelAspectRatio(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    Pointer<DXGI_RATIONAL>? pSourceAspectRatio,
    Pointer<DXGI_RATIONAL>? pDestinationAspectRatio,
  ) => _VideoProcessorSetStreamPixelAspectRatioFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    pSourceAspectRatio ?? nullptr,
    pDestinationAspectRatio ?? nullptr,
  );

  /// Sets the luma key for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamlumakey>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamLumaKey(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    double lower,
    double upper,
  ) => _VideoProcessorSetStreamLumaKeyFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    lower,
    upper,
  );

  /// Enables or disables stereo 3D video for an input stream on the video
  /// processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamstereoformat>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamStereoFormat(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT format,
    bool leftViewFrame0,
    bool baseViewFrame0,
    D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE flipMode,
    int monoOffset,
  ) => _VideoProcessorSetStreamStereoFormatFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    format,
    leftViewFrame0 ? TRUE : FALSE,
    baseViewFrame0 ? TRUE : FALSE,
    flipMode,
    monoOffset,
  );

  /// Enables or disables automatic processing features on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamautoprocessingmode>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamAutoProcessingMode(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
  ) => _VideoProcessorSetStreamAutoProcessingModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
  );

  /// Enables or disables an image filter for an input stream on the video
  /// processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamfilter>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamFilter(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    D3D11_VIDEO_PROCESSOR_FILTER filter,
    bool enable,
    int level,
  ) => _VideoProcessorSetStreamFilterFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    filter,
    enable ? TRUE : FALSE,
    level,
  );

  /// Sets a driver-specific state on a video processing stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamextension>.
  @pragma('vm:prefer-inline')
  int videoProcessorSetStreamExtension(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<GUID> pExtensionGuid,
    int dataSize,
    Pointer pData,
  ) => _VideoProcessorSetStreamExtensionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pExtensionGuid,
    dataSize,
    pData,
  );

  /// Gets the format of an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamframeformat>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamFrameFormat(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pFrameFormat,
  ) => _VideoProcessorGetStreamFrameFormatFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pFrameFormat,
  );

  /// Gets the color space for an input stream of the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamcolorspace>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamColorSpace(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
  ) => _VideoProcessorGetStreamColorSpaceFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pColorSpace,
  );

  /// Gets the rate at which the video processor produces output frames for an
  /// input stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamoutputrate>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamOutputRate(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pOutputRate,
    Pointer<Int32> pRepeatFrame,
    Pointer<DXGI_RATIONAL> pCustomRate,
  ) => _VideoProcessorGetStreamOutputRateFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pOutputRate,
    pRepeatFrame,
    pCustomRate,
  );

  /// Gets the source rectangle for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamsourcerect>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamSourceRect(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
    Pointer<RECT> pRect,
  ) => _VideoProcessorGetStreamSourceRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
    pRect,
  );

  /// Gets the destination rectangle for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamdestrect>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamDestRect(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
    Pointer<RECT> pRect,
  ) => _VideoProcessorGetStreamDestRectFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
    pRect,
  );

  /// Gets the planar alpha for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamalpha>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamAlpha(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
    Pointer<Float> pAlpha,
  ) => _VideoProcessorGetStreamAlphaFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
    pAlpha,
  );

  /// Gets the color-palette entries for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreampalette>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamPalette(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    int count,
    Pointer<Uint32> pEntries,
  ) => _VideoProcessorGetStreamPaletteFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    count,
    pEntries,
  );

  /// Gets the pixel aspect ratio for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreampixelaspectratio>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamPixelAspectRatio(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
    Pointer<DXGI_RATIONAL> pSourceAspectRatio,
    Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
  ) => _VideoProcessorGetStreamPixelAspectRatioFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
    pSourceAspectRatio,
    pDestinationAspectRatio,
  );

  /// Gets the luma key for an input stream of the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamlumakey>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamLumaKey(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
    Pointer<Float> pLower,
    Pointer<Float> pUpper,
  ) => _VideoProcessorGetStreamLumaKeyFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
    pLower,
    pUpper,
  );

  /// Gets the stereo 3D format for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamstereoformat>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamStereoFormat(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pFormat,
    Pointer<Int32> pLeftViewFrame0,
    Pointer<Int32> pBaseViewFrame0,
    Pointer<Int32> pFlipMode,
    Pointer<Int32> monoOffset,
  ) => _VideoProcessorGetStreamStereoFormatFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnable,
    pFormat,
    pLeftViewFrame0,
    pBaseViewFrame0,
    pFlipMode,
    monoOffset,
  );

  /// Queries whether automatic processing features of the video processor are
  /// enabled.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamautoprocessingmode>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamAutoProcessingMode(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnabled,
  ) => _VideoProcessorGetStreamAutoProcessingModeFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnabled,
  );

  /// Gets the image filter settings for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamfilter>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamFilter(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    D3D11_VIDEO_PROCESSOR_FILTER filter,
    Pointer<Int32> pEnabled,
    Pointer<Int32> pLevel,
  ) => _VideoProcessorGetStreamFilterFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    filter,
    pEnabled,
    pLevel,
  );

  /// Gets a driver-specific state for a video processing stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamextension>.
  @pragma('vm:prefer-inline')
  int videoProcessorGetStreamExtension(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<GUID> pExtensionGuid,
    int dataSize,
    Pointer pData,
  ) => _VideoProcessorGetStreamExtensionFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pExtensionGuid,
    dataSize,
    pData,
  );

  /// Performs a video processing operation on one or more input samples and
  /// writes the result to a Direct3D surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorblt>.
  @pragma('vm:prefer-inline')
  void videoProcessorBlt(
    ID3D11VideoProcessor? pVideoProcessor,
    ID3D11VideoProcessorOutputView? pView,
    int outputFrame,
    int streamCount,
    Pointer<D3D11_VIDEO_PROCESSOR_STREAM> pStreams,
  ) {
    final hr$ = HRESULT(
      _VideoProcessorBltFn(
        ptr,
        pVideoProcessor?.ptr ?? nullptr,
        pView?.ptr ?? nullptr,
        outputFrame,
        streamCount,
        pStreams,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Establishes the session key for a cryptographic session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-negotiatecryptosessionkeyexchange>.
  @pragma('vm:prefer-inline')
  void negotiateCryptoSessionKeyExchange(
    ID3D11CryptoSession? pCryptoSession,
    int dataSize,
    Pointer pData,
  ) {
    final hr$ = HRESULT(
      _NegotiateCryptoSessionKeyExchangeFn(
        ptr,
        pCryptoSession?.ptr ?? nullptr,
        dataSize,
        pData,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Reads encrypted data from a protected surface.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-encryptionblt>.
  @pragma('vm:prefer-inline')
  void encryptionBlt(
    ID3D11CryptoSession? pCryptoSession,
    ID3D11Texture2D? pSrcSurface,
    ID3D11Texture2D? pDstSurface,
    int iVSize,
    Pointer? pIV,
  ) => _EncryptionBltFn(
    ptr,
    pCryptoSession?.ptr ?? nullptr,
    pSrcSurface?.ptr ?? nullptr,
    pDstSurface?.ptr ?? nullptr,
    iVSize,
    pIV ?? nullptr,
  );

  /// Writes encrypted data to a protected surface.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-decryptionblt>.
  @pragma('vm:prefer-inline')
  void decryptionBlt(
    ID3D11CryptoSession? pCryptoSession,
    ID3D11Texture2D? pSrcSurface,
    ID3D11Texture2D? pDstSurface,
    Pointer<D3D11_ENCRYPTED_BLOCK_INFO>? pEncryptedBlockInfo,
    int contentKeySize,
    Pointer? pContentKey,
    int iVSize,
    Pointer? pIV,
  ) => _DecryptionBltFn(
    ptr,
    pCryptoSession?.ptr ?? nullptr,
    pSrcSurface?.ptr ?? nullptr,
    pDstSurface?.ptr ?? nullptr,
    pEncryptedBlockInfo ?? nullptr,
    contentKeySize,
    pContentKey ?? nullptr,
    iVSize,
    pIV ?? nullptr,
  );

  /// Gets a random number that can be used to refresh the session key.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-startsessionkeyrefresh>.
  @pragma('vm:prefer-inline')
  void startSessionKeyRefresh(
    ID3D11CryptoSession? pCryptoSession,
    int randomNumberSize,
    Pointer pRandomNumber,
  ) => _StartSessionKeyRefreshFn(
    ptr,
    pCryptoSession?.ptr ?? nullptr,
    randomNumberSize,
    pRandomNumber,
  );

  /// Switches to a new session key.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-finishsessionkeyrefresh>.
  @pragma('vm:prefer-inline')
  void finishSessionKeyRefresh(ID3D11CryptoSession? pCryptoSession) =>
      _FinishSessionKeyRefreshFn(ptr, pCryptoSession?.ptr ?? nullptr);

  /// Gets the cryptographic key to decrypt the data returned by the
  /// `ID3D11VideoContext.encryptionBlt` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-getencryptionbltkey>.
  @pragma('vm:prefer-inline')
  void getEncryptionBltKey(
    ID3D11CryptoSession? pCryptoSession,
    int keySize,
    Pointer pReadbackKey,
  ) {
    final hr$ = HRESULT(
      _GetEncryptionBltKeyFn(
        ptr,
        pCryptoSession?.ptr ?? nullptr,
        keySize,
        pReadbackKey,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Establishes a session key for an authenticated channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-negotiateauthenticatedchannelkeyexchange>.
  @pragma('vm:prefer-inline')
  void negotiateAuthenticatedChannelKeyExchange(
    ID3D11AuthenticatedChannel? pChannel,
    int dataSize,
    Pointer pData,
  ) {
    final hr$ = HRESULT(
      _NegotiateAuthenticatedChannelKeyExchangeFn(
        ptr,
        pChannel?.ptr ?? nullptr,
        dataSize,
        pData,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sends a query to an authenticated channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-queryauthenticatedchannel>.
  @pragma('vm:prefer-inline')
  void queryAuthenticatedChannel(
    ID3D11AuthenticatedChannel? pChannel,
    int inputSize,
    Pointer pInput,
    int outputSize,
    Pointer pOutput,
  ) {
    final hr$ = HRESULT(
      _QueryAuthenticatedChannelFn(
        ptr,
        pChannel?.ptr ?? nullptr,
        inputSize,
        pInput,
        outputSize,
        pOutput,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sends a configuration command to an authenticated channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-configureauthenticatedchannel>.
  Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT> configureAuthenticatedChannel(
    ID3D11AuthenticatedChannel? pChannel,
    int inputSize,
    Pointer pInput,
  ) {
    final pOutput = adaptiveCalloc<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT>();
    final hr$ = HRESULT(
      _ConfigureAuthenticatedChannelFn(
        ptr,
        pChannel?.ptr ?? nullptr,
        inputSize,
        pInput,
        pOutput,
      ),
    );
    if (hr$.isError) {
      free(pOutput);
      throw WindowsException(hr$);
    }
    return pOutput;
  }

  /// Sets the stream rotation for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorsetstreamrotation>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamRotation(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    D3D11_VIDEO_PROCESSOR_ROTATION rotation,
  ) => _VideoProcessorSetStreamRotationFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    rotation,
  );

  /// Gets the stream rotation for an input stream on the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videocontext-videoprocessorgetstreamrotation>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamRotation(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pRotation,
  ) => _VideoProcessorGetStreamRotationFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnable,
    pRotation,
  );

  @override
  String toString() => 'ID3D11VideoContext(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoContextVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Int32 type,
        Pointer<Uint32> pBufferSize,
        Pointer<Pointer> ppBuffer,
      )
    >
  >
  GetDecoderBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pDecoder, Int32 type)
    >
  >
  ReleaseDecoderBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        VTablePointer pView,
        Uint32 contentKeySize,
        Pointer pContentKey,
      )
    >
  >
  DecoderBeginFrame;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pDecoder)>
  >
  DecoderEndFrame;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Uint32 numBuffers,
        Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC> pBufferDesc,
      )
    >
  >
  SubmitDecoderBuffers;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Pointer<D3D11_VIDEO_DECODER_EXTENSION> pExtensionData,
      )
    >
  >
  DecoderExtension;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 enable,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorSetOutputTargetRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 yCbCr,
        Pointer<D3D11_VIDEO_COLOR> pColor,
      )
    >
  >
  VideoProcessorSetOutputBackgroundColor;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
      )
    >
  >
  VideoProcessorSetOutputColorSpace;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 alphaFillMode,
        Uint32 streamIndex,
      )
    >
  >
  VideoProcessorSetOutputAlphaFillMode;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 enable,
        SIZE size,
      )
    >
  >
  VideoProcessorSetOutputConstriction;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 enable,
      )
    >
  >
  VideoProcessorSetOutputStereoMode;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<GUID> pExtensionGuid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  VideoProcessorSetOutputExtension;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> enabled,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorGetOutputTargetRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pYCbCr,
        Pointer<D3D11_VIDEO_COLOR> pColor,
      )
    >
  >
  VideoProcessorGetOutputBackgroundColor;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
      )
    >
  >
  VideoProcessorGetOutputColorSpace;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pAlphaFillMode,
        Pointer<Uint32> pStreamIndex,
      )
    >
  >
  VideoProcessorGetOutputAlphaFillMode;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pEnabled,
        Pointer<SIZE> pSize,
      )
    >
  >
  VideoProcessorGetOutputConstriction;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pEnabled,
      )
    >
  >
  VideoProcessorGetOutputStereoMode;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<GUID> pExtensionGuid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  VideoProcessorGetOutputExtension;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 frameFormat,
      )
    >
  >
  VideoProcessorSetStreamFrameFormat;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
      )
    >
  >
  VideoProcessorSetStreamColorSpace;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 outputRate,
        Int32 repeatFrame,
        Pointer<DXGI_RATIONAL> pCustomRate,
      )
    >
  >
  VideoProcessorSetStreamOutputRate;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorSetStreamSourceRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorSetStreamDestRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Float alpha,
      )
    >
  >
  VideoProcessorSetStreamAlpha;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Uint32 count,
        Pointer<Uint32> pEntries,
      )
    >
  >
  VideoProcessorSetStreamPalette;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Pointer<DXGI_RATIONAL> pSourceAspectRatio,
        Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
      )
    >
  >
  VideoProcessorSetStreamPixelAspectRatio;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Float lower,
        Float upper,
      )
    >
  >
  VideoProcessorSetStreamLumaKey;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Int32 format,
        Int32 leftViewFrame0,
        Int32 baseViewFrame0,
        Int32 flipMode,
        Int32 monoOffset,
      )
    >
  >
  VideoProcessorSetStreamStereoFormat;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
      )
    >
  >
  VideoProcessorSetStreamAutoProcessingMode;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 filter,
        Int32 enable,
        Int32 level,
      )
    >
  >
  VideoProcessorSetStreamFilter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<GUID> pExtensionGuid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  VideoProcessorSetStreamExtension;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pFrameFormat,
      )
    >
  >
  VideoProcessorGetStreamFrameFormat;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<D3D11_VIDEO_PROCESSOR_COLOR_SPACE> pColorSpace,
      )
    >
  >
  VideoProcessorGetStreamColorSpace;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pOutputRate,
        Pointer<Int32> pRepeatFrame,
        Pointer<DXGI_RATIONAL> pCustomRate,
      )
    >
  >
  VideoProcessorGetStreamOutputRate;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorGetStreamSourceRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
        Pointer<RECT> pRect,
      )
    >
  >
  VideoProcessorGetStreamDestRect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
        Pointer<Float> pAlpha,
      )
    >
  >
  VideoProcessorGetStreamAlpha;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Uint32 count,
        Pointer<Uint32> pEntries,
      )
    >
  >
  VideoProcessorGetStreamPalette;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
        Pointer<DXGI_RATIONAL> pSourceAspectRatio,
        Pointer<DXGI_RATIONAL> pDestinationAspectRatio,
      )
    >
  >
  VideoProcessorGetStreamPixelAspectRatio;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
        Pointer<Float> pLower,
        Pointer<Float> pUpper,
      )
    >
  >
  VideoProcessorGetStreamLumaKey;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnable,
        Pointer<Int32> pFormat,
        Pointer<Int32> pLeftViewFrame0,
        Pointer<Int32> pBaseViewFrame0,
        Pointer<Int32> pFlipMode,
        Pointer<Int32> monoOffset,
      )
    >
  >
  VideoProcessorGetStreamStereoFormat;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnabled,
      )
    >
  >
  VideoProcessorGetStreamAutoProcessingMode;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 filter,
        Pointer<Int32> pEnabled,
        Pointer<Int32> pLevel,
      )
    >
  >
  VideoProcessorGetStreamFilter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<GUID> pExtensionGuid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  VideoProcessorGetStreamExtension;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        VTablePointer pView,
        Uint32 outputFrame,
        Uint32 streamCount,
        Pointer<D3D11_VIDEO_PROCESSOR_STREAM> pStreams,
      )
    >
  >
  VideoProcessorBlt;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  NegotiateCryptoSessionKeyExchange;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        VTablePointer pSrcSurface,
        VTablePointer pDstSurface,
        Uint32 iVSize,
        Pointer pIV,
      )
    >
  >
  EncryptionBlt;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        VTablePointer pSrcSurface,
        VTablePointer pDstSurface,
        Pointer<D3D11_ENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
        Uint32 contentKeySize,
        Pointer pContentKey,
        Uint32 iVSize,
        Pointer pIV,
      )
    >
  >
  DecryptionBlt;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Uint32 randomNumberSize,
        Pointer pRandomNumber,
      )
    >
  >
  StartSessionKeyRefresh;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pCryptoSession)
    >
  >
  FinishSessionKeyRefresh;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Uint32 keySize,
        Pointer pReadbackKey,
      )
    >
  >
  GetEncryptionBltKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pChannel,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  NegotiateAuthenticatedChannelKeyExchange;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pChannel,
        Uint32 inputSize,
        Pointer pInput,
        Uint32 outputSize,
        Pointer pOutput,
      )
    >
  >
  QueryAuthenticatedChannel;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pChannel,
        Uint32 inputSize,
        Pointer pInput,
        Pointer<D3D11_AUTHENTICATED_CONFIGURE_OUTPUT> pOutput,
      )
    >
  >
  ConfigureAuthenticatedChannel;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Int32 rotation,
      )
    >
  >
  VideoProcessorSetStreamRotation;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnable,
        Pointer<Int32> pRotation,
      )
    >
  >
  VideoProcessorGetStreamRotation;
}

@internal
final class ID3D11VideoContextCompanion
    extends ComCompanion<ID3D11VideoContext> {
  const ID3D11VideoContextCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoContext Function(VTablePointer) get fromPointer =>
      ID3D11VideoContext.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoContext;
}
