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
import 'id3d11videodevice.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoDevice1 = GUID.fromComponents(
  0x29da1d51,
  0x1321,
  0x4454,
  Uint8List.fromList(const [0x80, 0x4b, 0xf5, 0xfc, 0x9f, 0x86, 0x1f, 0xf]),
);

/// Provides the video decoding and video processing capabilities of a Microsoft
/// Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11videodevice1>.
///
/// {@category com}
class ID3D11VideoDevice1 extends ID3D11VideoDevice implements ComInterface {
  /// Creates a new instance of [ID3D11VideoDevice1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoDevice1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoDevice1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoDevice1Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoDevice1] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoDevice1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoDevice1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoDevice1Vtbl _vtable;
  late final _GetCryptoSessionPrivateDataSizeFn =
      _vtable.GetCryptoSessionPrivateDataSize.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetVideoDecoderCapsFn =
      _vtable.GetVideoDecoderCaps.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          int,
          int,
          Pointer<DXGI_RATIONAL>,
          int,
          Pointer<GUID>,
          Pointer<Uint32>,
        )
      >();
  late final _CheckVideoDecoderDownsamplingFn =
      _vtable.CheckVideoDecoderDownsampling.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          int,
          Pointer<D3D11_VIDEO_DECODER_CONFIG>,
          Pointer<DXGI_RATIONAL>,
          Pointer<D3D11_VIDEO_SAMPLE_DESC>,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _RecommendVideoDecoderDownsampleParametersFn =
      _vtable.RecommendVideoDecoderDownsampleParameters.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          int,
          Pointer<D3D11_VIDEO_DECODER_CONFIG>,
          Pointer<DXGI_RATIONAL>,
          Pointer<D3D11_VIDEO_SAMPLE_DESC>,
        )
      >();

  /// Retrieves optional sizes for private driver data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videodevice1-getcryptosessionprivatedatasize>.
  @pragma('vm:prefer-inline')
  void getCryptoSessionPrivateDataSize(
    Pointer<GUID> pCryptoType,
    Pointer<GUID>? pDecoderProfile,
    Pointer<GUID> pKeyExchangeType,
    Pointer<Uint32> pPrivateInputSize,
    Pointer<Uint32> pPrivateOutputSize,
  ) {
    final hr$ = HRESULT(
      _GetCryptoSessionPrivateDataSizeFn(
        ptr,
        pCryptoType,
        pDecoderProfile ?? nullptr,
        pKeyExchangeType,
        pPrivateInputSize,
        pPrivateOutputSize,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves capabilities and limitations of the video decoder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videodevice1-getvideodecodercaps>.
  int getVideoDecoderCaps(
    Pointer<GUID> pDecoderProfile,
    int sampleWidth,
    int sampleHeight,
    Pointer<DXGI_RATIONAL> pFrameRate,
    int bitRate,
    Pointer<GUID>? pCryptoType,
  ) {
    final pDecoderCaps = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _GetVideoDecoderCapsFn(
        ptr,
        pDecoderProfile,
        sampleWidth,
        sampleHeight,
        pFrameRate,
        bitRate,
        pCryptoType ?? nullptr,
        pDecoderCaps,
      ),
    );
    if (hr$.isError) {
      free(pDecoderCaps);
      throw WindowsException(hr$);
    }
    final result$ = pDecoderCaps.value;
    free(pDecoderCaps);
    return result$;
  }

  /// Indicates whether the video decoder supports downsampling with the
  /// specified input format, and whether real-time downsampling is supported.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videodevice1-checkvideodecoderdownsampling>.
  @pragma('vm:prefer-inline')
  void checkVideoDecoderDownsampling(
    Pointer<D3D11_VIDEO_DECODER_DESC> pInputDesc,
    DXGI_COLOR_SPACE_TYPE inputColorSpace,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pInputConfig,
    Pointer<DXGI_RATIONAL> pFrameRate,
    Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
    Pointer<Int32> pSupported,
    Pointer<Int32> pRealTimeHint,
  ) {
    final hr$ = HRESULT(
      _CheckVideoDecoderDownsamplingFn(
        ptr,
        pInputDesc,
        inputColorSpace,
        pInputConfig,
        pFrameRate,
        pOutputDesc,
        pSupported,
        pRealTimeHint,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Allows the driver to recommend optimal output downsample parameters from
  /// the input parameters.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videodevice1-recommendvideodecoderdownsampleparameters>.
  Pointer<D3D11_VIDEO_SAMPLE_DESC> recommendVideoDecoderDownsampleParameters(
    Pointer<D3D11_VIDEO_DECODER_DESC> pInputDesc,
    DXGI_COLOR_SPACE_TYPE inputColorSpace,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pInputConfig,
    Pointer<DXGI_RATIONAL> pFrameRate,
  ) {
    final pRecommendedOutputDesc = adaptiveCalloc<D3D11_VIDEO_SAMPLE_DESC>();
    final hr$ = HRESULT(
      _RecommendVideoDecoderDownsampleParametersFn(
        ptr,
        pInputDesc,
        inputColorSpace,
        pInputConfig,
        pFrameRate,
        pRecommendedOutputDesc,
      ),
    );
    if (hr$.isError) {
      free(pRecommendedOutputDesc);
      throw WindowsException(hr$);
    }
    return pRecommendedOutputDesc;
  }

  @override
  String toString() => 'ID3D11VideoDevice1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoDevice1Vtbl extends Struct {
  external ID3D11VideoDeviceVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pCryptoType,
        Pointer<GUID> pDecoderProfile,
        Pointer<GUID> pKeyExchangeType,
        Pointer<Uint32> pPrivateInputSize,
        Pointer<Uint32> pPrivateOutputSize,
      )
    >
  >
  GetCryptoSessionPrivateDataSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pDecoderProfile,
        Uint32 sampleWidth,
        Uint32 sampleHeight,
        Pointer<DXGI_RATIONAL> pFrameRate,
        Uint32 bitRate,
        Pointer<GUID> pCryptoType,
        Pointer<Uint32> pDecoderCaps,
      )
    >
  >
  GetVideoDecoderCaps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pInputDesc,
        Int32 inputColorSpace,
        Pointer<D3D11_VIDEO_DECODER_CONFIG> pInputConfig,
        Pointer<DXGI_RATIONAL> pFrameRate,
        Pointer<D3D11_VIDEO_SAMPLE_DESC> pOutputDesc,
        Pointer<Int32> pSupported,
        Pointer<Int32> pRealTimeHint,
      )
    >
  >
  CheckVideoDecoderDownsampling;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pInputDesc,
        Int32 inputColorSpace,
        Pointer<D3D11_VIDEO_DECODER_CONFIG> pInputConfig,
        Pointer<DXGI_RATIONAL> pFrameRate,
        Pointer<D3D11_VIDEO_SAMPLE_DESC> pRecommendedOutputDesc,
      )
    >
  >
  RecommendVideoDecoderDownsampleParameters;
}

@internal
final class ID3D11VideoDevice1Companion
    extends ComCompanion<ID3D11VideoDevice1> {
  const ID3D11VideoDevice1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoDevice1 Function(VTablePointer) get fromPointer =>
      ID3D11VideoDevice1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoDevice1;
}
