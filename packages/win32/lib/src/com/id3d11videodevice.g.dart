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
import 'id3d11resource.g.dart';
import 'id3d11videodecoder.g.dart';
import 'id3d11videodecoderoutputview.g.dart';
import 'id3d11videoprocessor.g.dart';
import 'id3d11videoprocessorenumerator.g.dart';
import 'id3d11videoprocessorinputview.g.dart';
import 'id3d11videoprocessoroutputview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoDevice = GUID.fromComponents(
  0x10ec4d5b,
  0x975a,
  0x4689,
  Uint8List.fromList(const [0xb9, 0xe4, 0xd0, 0xaa, 0xc3, 0xf, 0xe3, 0x33]),
);

/// Provides the video decoding and video processing capabilities of a Microsoft
/// Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videodevice>.
///
/// {@category com}
class ID3D11VideoDevice extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11VideoDevice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoDevice]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoDevice(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoDeviceVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoDevice] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoDevice.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoDeviceVtbl _vtable;
  late final _CreateVideoDecoderFn =
      _vtable.CreateVideoDecoder.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          Pointer<D3D11_VIDEO_DECODER_CONFIG>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVideoProcessorFn =
      _vtable.CreateVideoProcessor.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _CreateAuthenticatedChannelFn =
      _vtable.CreateAuthenticatedChannel.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _CreateCryptoSessionFn =
      _vtable.CreateCryptoSession.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVideoDecoderOutputViewFn =
      _vtable.CreateVideoDecoderOutputView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVideoProcessorInputViewFn =
      _vtable.CreateVideoProcessorInputView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVideoProcessorOutputViewFn =
      _vtable.CreateVideoProcessorOutputView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVideoProcessorEnumeratorFn =
      _vtable.CreateVideoProcessorEnumerator.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetVideoDecoderProfileCountFn = _vtable
      .GetVideoDecoderProfileCount.asFunction<int Function(VTablePointer)>();
  late final _GetVideoDecoderProfileFn =
      _vtable.GetVideoDecoderProfile.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>)
      >();
  late final _CheckVideoDecoderFormatFn =
      _vtable.CheckVideoDecoderFormat.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer<Int32>)
      >();
  late final _GetVideoDecoderConfigCountFn =
      _vtable.GetVideoDecoderConfigCount.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          Pointer<Uint32>,
        )
      >();
  late final _GetVideoDecoderConfigFn =
      _vtable.GetVideoDecoderConfig.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          int,
          Pointer<D3D11_VIDEO_DECODER_CONFIG>,
        )
      >();
  late final _GetContentProtectionCapsFn =
      _vtable.GetContentProtectionCaps.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS>,
        )
      >();
  late final _CheckCryptoKeyExchangeFn =
      _vtable.CheckCryptoKeyExchange.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<GUID>,
          int,
          Pointer<GUID>,
        )
      >();
  late final _SetPrivateDataFn =
      _vtable.SetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _SetPrivateDataInterfaceFn =
      _vtable.SetPrivateDataInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, VTablePointer)
      >();

  /// Creates a video decoder device for Microsoft Direct3D 11.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideodecoder>.
  ID3D11VideoDecoder? createVideoDecoder(
    Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
  ) {
    final ppDecoder = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateVideoDecoderFn(ptr, pVideoDesc, pConfig, ppDecoder),
    );
    if (hr$.isError) {
      free(ppDecoder);
      throw WindowsException(hr$);
    }
    final result$ = ppDecoder.value;
    free(ppDecoder);
    if (result$.isNull) return null;
    return ID3D11VideoDecoder(result$);
  }

  /// Creates a video processor device for Microsoft Direct3D 11.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideoprocessor>.
  ID3D11VideoProcessor? createVideoProcessor(
    ID3D11VideoProcessorEnumerator? pEnum,
    int rateConversionIndex,
  ) {
    final ppVideoProcessor = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateVideoProcessorFn(
        ptr,
        pEnum?.ptr ?? nullptr,
        rateConversionIndex,
        ppVideoProcessor,
      ),
    );
    if (hr$.isError) {
      free(ppVideoProcessor);
      throw WindowsException(hr$);
    }
    final result$ = ppVideoProcessor.value;
    free(ppVideoProcessor);
    if (result$.isNull) return null;
    return ID3D11VideoProcessor(result$);
  }

  /// Creates a channel to communicate with the Microsoft Direct3D device or the
  /// graphics driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createauthenticatedchannel>.
  ID3D11AuthenticatedChannel? createAuthenticatedChannel(
    D3D11_AUTHENTICATED_CHANNEL_TYPE channelType,
  ) {
    final ppAuthenticatedChannel = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateAuthenticatedChannelFn(ptr, channelType, ppAuthenticatedChannel),
    );
    if (hr$.isError) {
      free(ppAuthenticatedChannel);
      throw WindowsException(hr$);
    }
    final result$ = ppAuthenticatedChannel.value;
    free(ppAuthenticatedChannel);
    if (result$.isNull) return null;
    return ID3D11AuthenticatedChannel(result$);
  }

  /// Creates a cryptographic session to encrypt video content that is sent to
  /// the graphics driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createcryptosession>.
  ID3D11CryptoSession? createCryptoSession(
    Pointer<GUID> pCryptoType,
    Pointer<GUID>? pDecoderProfile,
    Pointer<GUID> pKeyExchangeType,
  ) {
    final ppCryptoSession = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateCryptoSessionFn(
        ptr,
        pCryptoType,
        pDecoderProfile ?? nullptr,
        pKeyExchangeType,
        ppCryptoSession,
      ),
    );
    if (hr$.isError) {
      free(ppCryptoSession);
      throw WindowsException(hr$);
    }
    final result$ = ppCryptoSession.value;
    free(ppCryptoSession);
    if (result$.isNull) return null;
    return ID3D11CryptoSession(result$);
  }

  /// Creates a resource view for a video decoder, describing the output sample
  /// for the decoding operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideodecoderoutputview>.
  @pragma('vm:prefer-inline')
  void createVideoDecoderOutputView(
    ID3D11Resource? pResource,
    Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
    Pointer<VTablePointer>? ppVDOVView,
  ) {
    final hr$ = HRESULT(
      _CreateVideoDecoderOutputViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc,
        ppVDOVView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a resource view for a video processor, describing the input sample
  /// for the video processing operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideoprocessorinputview>.
  @pragma('vm:prefer-inline')
  void createVideoProcessorInputView(
    ID3D11Resource? pResource,
    ID3D11VideoProcessorEnumerator? pEnum,
    Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
    Pointer<VTablePointer>? ppVPIView,
  ) {
    final hr$ = HRESULT(
      _CreateVideoProcessorInputViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pEnum?.ptr ?? nullptr,
        pDesc,
        ppVPIView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a resource view for a video processor, describing the output
  /// sample for the video processing operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideoprocessoroutputview>.
  @pragma('vm:prefer-inline')
  void createVideoProcessorOutputView(
    ID3D11Resource? pResource,
    ID3D11VideoProcessorEnumerator? pEnum,
    Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC> pDesc,
    Pointer<VTablePointer>? ppVPOView,
  ) {
    final hr$ = HRESULT(
      _CreateVideoProcessorOutputViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pEnum?.ptr ?? nullptr,
        pDesc,
        ppVPOView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enumerates the video processor capabilities of the driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-createvideoprocessorenumerator>.
  ID3D11VideoProcessorEnumerator? createVideoProcessorEnumerator(
    Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
  ) {
    final ppEnum = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateVideoProcessorEnumeratorFn(ptr, pDesc, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return ID3D11VideoProcessorEnumerator(result$);
  }

  /// Gets the number of profiles that are supported by the driver.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-getvideodecoderprofilecount>.
  @pragma('vm:prefer-inline')
  int getVideoDecoderProfileCount() => _GetVideoDecoderProfileCountFn(ptr);

  /// Gets a profile that is supported by the driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-getvideodecoderprofile>.
  Pointer<GUID> getVideoDecoderProfile(int index) {
    final pDecoderProfile = adaptiveCalloc<GUID>();
    final hr$ = HRESULT(_GetVideoDecoderProfileFn(ptr, index, pDecoderProfile));
    if (hr$.isError) {
      free(pDecoderProfile);
      throw WindowsException(hr$);
    }
    return pDecoderProfile;
  }

  /// Given aprofile, checks whether the driver supports a specified output
  /// format.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-checkvideodecoderformat>.
  bool checkVideoDecoderFormat(
    Pointer<GUID> pDecoderProfile,
    DXGI_FORMAT format,
  ) {
    final pSupported = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(
      _CheckVideoDecoderFormatFn(ptr, pDecoderProfile, format, pSupported),
    );
    if (hr$.isError) {
      free(pSupported);
      throw WindowsException(hr$);
    }
    final result$ = pSupported.value;
    free(pSupported);
    return result$ != FALSE;
  }

  /// Gets the number of decoder configurations that the driver supports for a
  /// specified video description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-getvideodecoderconfigcount>.
  int getVideoDecoderConfigCount(Pointer<D3D11_VIDEO_DECODER_DESC> pDesc) {
    final pCount = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetVideoDecoderConfigCountFn(ptr, pDesc, pCount));
    if (hr$.isError) {
      free(pCount);
      throw WindowsException(hr$);
    }
    final result$ = pCount.value;
    free(pCount);
    return result$;
  }

  /// Gets a decoder configuration that is supported by the driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-getvideodecoderconfig>.
  Pointer<D3D11_VIDEO_DECODER_CONFIG> getVideoDecoderConfig(
    Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
    int index,
  ) {
    final pConfig = adaptiveCalloc<D3D11_VIDEO_DECODER_CONFIG>();
    final hr$ = HRESULT(_GetVideoDecoderConfigFn(ptr, pDesc, index, pConfig));
    if (hr$.isError) {
      free(pConfig);
      throw WindowsException(hr$);
    }
    return pConfig;
  }

  /// Queries the driver for its content protection capabilities.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-getcontentprotectioncaps>.
  Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS> getContentProtectionCaps(
    Pointer<GUID>? pCryptoType,
    Pointer<GUID>? pDecoderProfile,
  ) {
    final pCaps = adaptiveCalloc<D3D11_VIDEO_CONTENT_PROTECTION_CAPS>();
    final hr$ = HRESULT(
      _GetContentProtectionCapsFn(
        ptr,
        pCryptoType ?? nullptr,
        pDecoderProfile ?? nullptr,
        pCaps,
      ),
    );
    if (hr$.isError) {
      free(pCaps);
      throw WindowsException(hr$);
    }
    return pCaps;
  }

  /// Gets a cryptographic key-exchange mechanism that is supported by the
  /// driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-checkcryptokeyexchange>.
  Pointer<GUID> checkCryptoKeyExchange(
    Pointer<GUID> pCryptoType,
    Pointer<GUID>? pDecoderProfile,
    int index,
  ) {
    final pKeyExchangeType = adaptiveCalloc<GUID>();
    final hr$ = HRESULT(
      _CheckCryptoKeyExchangeFn(
        ptr,
        pCryptoType,
        pDecoderProfile ?? nullptr,
        index,
        pKeyExchangeType,
      ),
    );
    if (hr$.isError) {
      free(pKeyExchangeType);
      throw WindowsException(hr$);
    }
    return pKeyExchangeType;
  }

  /// Sets private data on the video device and associates that data with a
  /// GUID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-setprivatedata>.
  @pragma('vm:prefer-inline')
  void setPrivateData(Pointer<GUID> guid, int dataSize, Pointer? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataFn(ptr, guid, dataSize, pData ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a private IUnknown pointer on the video device and associates that
  /// pointer with a GUID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodevice-setprivatedatainterface>.
  @pragma('vm:prefer-inline')
  void setPrivateDataInterface(Pointer<GUID> guid, IUnknown? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataInterfaceFn(ptr, guid, pData?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11VideoDevice(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoDeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
        Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
        Pointer<VTablePointer> ppDecoder,
      )
    >
  >
  CreateVideoDecoder;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pEnum,
        Uint32 rateConversionIndex,
        Pointer<VTablePointer> ppVideoProcessor,
      )
    >
  >
  CreateVideoProcessor;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 channelType,
        Pointer<VTablePointer> ppAuthenticatedChannel,
      )
    >
  >
  CreateAuthenticatedChannel;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pCryptoType,
        Pointer<GUID> pDecoderProfile,
        Pointer<GUID> pKeyExchangeType,
        Pointer<VTablePointer> ppCryptoSession,
      )
    >
  >
  CreateCryptoSession;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppVDOVView,
      )
    >
  >
  CreateVideoDecoderOutputView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        VTablePointer pEnum,
        Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppVPIView,
      )
    >
  >
  CreateVideoProcessorInputView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        VTablePointer pEnum,
        Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppVPOView,
      )
    >
  >
  CreateVideoProcessorOutputView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  CreateVideoProcessorEnumerator;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetVideoDecoderProfileCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<GUID> pDecoderProfile,
      )
    >
  >
  GetVideoDecoderProfile;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pDecoderProfile,
        Int32 format,
        Pointer<Int32> pSupported,
      )
    >
  >
  CheckVideoDecoderFormat;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
        Pointer<Uint32> pCount,
      )
    >
  >
  GetVideoDecoderConfigCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
        Uint32 index,
        Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
      )
    >
  >
  GetVideoDecoderConfig;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pCryptoType,
        Pointer<GUID> pDecoderProfile,
        Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS> pCaps,
      )
    >
  >
  GetContentProtectionCaps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pCryptoType,
        Pointer<GUID> pDecoderProfile,
        Uint32 index,
        Pointer<GUID> pKeyExchangeType,
      )
    >
  >
  CheckCryptoKeyExchange;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  SetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        VTablePointer pData,
      )
    >
  >
  SetPrivateDataInterface;
}

@internal
final class ID3D11VideoDeviceCompanion extends ComCompanion<ID3D11VideoDevice> {
  const ID3D11VideoDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoDevice Function(VTablePointer) get fromPointer =>
      ID3D11VideoDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoDevice;
}
