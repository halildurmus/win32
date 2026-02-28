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
import 'id3d11cryptosession.g.dart';
import 'id3d11videocontext.g.dart';
import 'id3d11videodecoder.g.dart';
import 'id3d11videoprocessor.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoContext1 = GUID.fromComponents(
  0xa7f026da,
  0xa5f8,
  0x4487,
  Uint8List.fromList(const [0xa5, 0x64, 0x15, 0xe3, 0x43, 0x57, 0x65, 0x1e]),
);

/// Provides the video functionality of a Microsoft Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11videocontext1>.
///
/// {@category com}
class ID3D11VideoContext1 extends ID3D11VideoContext implements ComInterface {
  /// Creates a new instance of [ID3D11VideoContext1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoContext1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoContext1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoContext1Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoContext1] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoContext1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoContext1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoContext1Vtbl _vtable;
  late final _SubmitDecoderBuffers1Fn =
      _vtable.SubmitDecoderBuffers1.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1>,
        )
      >();
  late final _GetDataForNewHardwareKeyFn =
      _vtable.GetDataForNewHardwareKey.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer,
          Pointer<Uint64>,
        )
      >();
  late final _CheckCryptoSessionStatusFn =
      _vtable.CheckCryptoSessionStatus.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();
  late final _DecoderEnableDownsamplingFn =
      _vtable.DecoderEnableDownsampling.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_SAMPLE_DESC>,
          int,
        )
      >();
  late final _DecoderUpdateDownsamplingFn =
      _vtable.DecoderUpdateDownsampling.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_SAMPLE_DESC>,
        )
      >();
  late final _VideoProcessorSetOutputColorSpace1Fn =
      _vtable.VideoProcessorSetOutputColorSpace1.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _VideoProcessorSetOutputShaderUsageFn =
      _vtable.VideoProcessorSetOutputShaderUsage.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _VideoProcessorGetOutputColorSpace1Fn =
      _vtable.VideoProcessorGetOutputColorSpace1.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();
  late final _VideoProcessorGetOutputShaderUsageFn =
      _vtable.VideoProcessorGetOutputShaderUsage.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();
  late final _VideoProcessorSetStreamColorSpace1Fn =
      _vtable.VideoProcessorSetStreamColorSpace1.asFunction<
        void Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _VideoProcessorSetStreamMirrorFn =
      _vtable.VideoProcessorSetStreamMirror.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, int, int)
      >();
  late final _VideoProcessorGetStreamColorSpace1Fn =
      _vtable.VideoProcessorGetStreamColorSpace1.asFunction<
        void Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();
  late final _VideoProcessorGetStreamMirrorFn =
      _vtable.VideoProcessorGetStreamMirror.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _VideoProcessorGetBehaviorHintsFn =
      _vtable.VideoProcessorGetBehaviorHints.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT>,
          Pointer<Uint32>,
        )
      >();

  /// Submits one or more buffers for decoding.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-submitdecoderbuffers1>.
  @pragma('vm:prefer-inline')
  void submitDecoderBuffers1(
    ID3D11VideoDecoder? pDecoder,
    int numBuffers,
    Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1> pBufferDesc,
  ) {
    final hr$ = HRESULT(
      _SubmitDecoderBuffers1Fn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        numBuffers,
        pBufferDesc,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Allows the driver to return IHV specific information used when
  /// initializing the new hardware key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-getdatafornewhardwarekey>.
  int getDataForNewHardwareKey(
    ID3D11CryptoSession? pCryptoSession,
    int privateInputSize,
    Pointer pPrivatInputData,
  ) {
    final pPrivateOutputData = adaptiveCalloc<Uint64>();
    final hr$ = HRESULT(
      _GetDataForNewHardwareKeyFn(
        ptr,
        pCryptoSession?.ptr ?? nullptr,
        privateInputSize,
        pPrivatInputData,
        pPrivateOutputData,
      ),
    );
    if (hr$.isError) {
      free(pPrivateOutputData);
      throw WindowsException(hr$);
    }
    final result$ = pPrivateOutputData.value;
    free(pPrivateOutputData);
    return result$;
  }

  /// Checks the status of a crypto session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-checkcryptosessionstatus>.
  D3D11_CRYPTO_SESSION_STATUS checkCryptoSessionStatus(
    ID3D11CryptoSession? pCryptoSession,
  ) {
    final pStatus = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(
      _CheckCryptoSessionStatusFn(ptr, pCryptoSession?.ptr ?? nullptr, pStatus),
    );
    if (hr$.isError) {
      free(pStatus);
      throw WindowsException(hr$);
    }
    final result$ = pStatus.value;
    free(pStatus);
    return D3D11_CRYPTO_SESSION_STATUS(result$);
  }

  /// Indicates that decoder downsampling will be used and that the driver
  /// should allocate the appropriate reference frames.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-decoderenabledownsampling>.
  @pragma('vm:prefer-inline')
  void decoderEnableDownsampling(
    ID3D11VideoDecoder? pDecoder,
    DXGI_COLOR_SPACE_TYPE inputColorSpace,
    Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
    int referenceFrameCount,
  ) {
    final hr$ = HRESULT(
      _DecoderEnableDownsamplingFn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        inputColorSpace,
        pOutputDesc,
        referenceFrameCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Updates the decoder downsampling parameters.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-decoderupdatedownsampling>.
  @pragma('vm:prefer-inline')
  void decoderUpdateDownsampling(
    ID3D11VideoDecoder? pDecoder,
    Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
  ) {
    final hr$ = HRESULT(
      _DecoderUpdateDownsamplingFn(ptr, pDecoder?.ptr ?? nullptr, pOutputDesc),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the color space information for the video processor output surface.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorsetoutputcolorspace1>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputColorSpace1(
    ID3D11VideoProcessor? pVideoProcessor,
    DXGI_COLOR_SPACE_TYPE colorSpace,
  ) => _VideoProcessorSetOutputColorSpace1Fn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    colorSpace,
  );

  /// Sets a value indicating whether the output surface from a call to
  /// `ID3D11VideoContext.videoProcessorBlt` will be read by Direct3D shaders.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorsetoutputshaderusage>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputShaderUsage(
    ID3D11VideoProcessor? pVideoProcessor,
    bool shaderUsage,
  ) => _VideoProcessorSetOutputShaderUsageFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    shaderUsage ? TRUE : FALSE,
  );

  /// Gets the color space information for the video processor output surface.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorgetoutputcolorspace1>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputColorSpace1(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pColorSpace,
  ) => _VideoProcessorGetOutputColorSpace1Fn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pColorSpace,
  );

  /// Gets a value indicating whether the output surface from a call to
  /// `ID3D11VideoContext.videoProcessorBlt` can be read by Direct3D shaders.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorgetoutputshaderusage>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputShaderUsage(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pShaderUsage,
  ) => _VideoProcessorGetOutputShaderUsageFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pShaderUsage,
  );

  /// Sets the color space information for the video processor input stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorsetstreamcolorspace1>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamColorSpace1(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    DXGI_COLOR_SPACE_TYPE colorSpace,
  ) => _VideoProcessorSetStreamColorSpace1Fn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    colorSpace,
  );

  /// Specifies whether the video processor input stream should be flipped
  /// vertically or horizontally.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorsetstreammirror>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamMirror(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    bool enable,
    bool flipHorizontal,
    bool flipVertical,
  ) => _VideoProcessorSetStreamMirrorFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    enable ? TRUE : FALSE,
    flipHorizontal ? TRUE : FALSE,
    flipVertical ? TRUE : FALSE,
  );

  /// Gets the color space information for the video processor input stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorgetstreamcolorspace1>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamColorSpace1(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pColorSpace,
  ) => _VideoProcessorGetStreamColorSpace1Fn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pColorSpace,
  );

  /// Gets values that indicate whether the video processor input stream is
  /// being flipped vertically or horizontally.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorgetstreammirror>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamMirror(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pEnable,
    Pointer<Int32> pFlipHorizontal,
    Pointer<Int32> pFlipVertical,
  ) => _VideoProcessorGetStreamMirrorFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pEnable,
    pFlipHorizontal,
    pFlipVertical,
  );

  /// Returns driver hints that indicate which of the video processor operations
  /// are best performed using multi-plane overlay hardware rather than
  /// `ID3D11VideoContext.videoProcessorBlt` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videocontext1-videoprocessorgetbehaviorhints>.
  int videoProcessorGetBehaviorHints(
    ID3D11VideoProcessor? pVideoProcessor,
    int outputWidth,
    int outputHeight,
    DXGI_FORMAT outputFormat,
    int streamCount,
    Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT> pStreams,
  ) {
    final pBehaviorHints = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _VideoProcessorGetBehaviorHintsFn(
        ptr,
        pVideoProcessor?.ptr ?? nullptr,
        outputWidth,
        outputHeight,
        outputFormat,
        streamCount,
        pStreams,
        pBehaviorHints,
      ),
    );
    if (hr$.isError) {
      free(pBehaviorHints);
      throw WindowsException(hr$);
    }
    final result$ = pBehaviorHints.value;
    free(pBehaviorHints);
    return result$;
  }

  @override
  String toString() => 'ID3D11VideoContext1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoContext1Vtbl extends Struct {
  external ID3D11VideoContextVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Uint32 numBuffers,
        Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC1> pBufferDesc,
      )
    >
  >
  SubmitDecoderBuffers1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Uint32 privateInputSize,
        Pointer pPrivatInputData,
        Pointer<Uint64> pPrivateOutputData,
      )
    >
  >
  GetDataForNewHardwareKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Pointer<Int32> pStatus,
      )
    >
  >
  CheckCryptoSessionStatus;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Int32 inputColorSpace,
        Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
        Uint32 referenceFrameCount,
      )
    >
  >
  DecoderEnableDownsampling;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
      )
    >
  >
  DecoderUpdateDownsampling;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 colorSpace,
      )
    >
  >
  VideoProcessorSetOutputColorSpace1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 shaderUsage,
      )
    >
  >
  VideoProcessorSetOutputShaderUsage;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pColorSpace,
      )
    >
  >
  VideoProcessorGetOutputColorSpace1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pShaderUsage,
      )
    >
  >
  VideoProcessorGetOutputShaderUsage;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 colorSpace,
      )
    >
  >
  VideoProcessorSetStreamColorSpace1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 enable,
        Int32 flipHorizontal,
        Int32 flipVertical,
      )
    >
  >
  VideoProcessorSetStreamMirror;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pColorSpace,
      )
    >
  >
  VideoProcessorGetStreamColorSpace1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pEnable,
        Pointer<Int32> pFlipHorizontal,
        Pointer<Int32> pFlipVertical,
      )
    >
  >
  VideoProcessorGetStreamMirror;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 outputWidth,
        Uint32 outputHeight,
        Int32 outputFormat,
        Uint32 streamCount,
        Pointer<D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT> pStreams,
        Pointer<Uint32> pBehaviorHints,
      )
    >
  >
  VideoProcessorGetBehaviorHints;
}

@internal
final class ID3D11VideoContext1Companion
    extends ComCompanion<ID3D11VideoContext1> {
  const ID3D11VideoContext1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoContext1 Function(VTablePointer) get fromPointer =>
      ID3D11VideoContext1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoContext1;
}
