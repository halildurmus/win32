// ID3D11VideoDevice.dart

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
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11VideoDecoder.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessorEnumerator.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessor.dart';
import '../../graphics/direct3d11/ID3D11AuthenticatedChannel.dart';
import '../../graphics/direct3d11/ID3D11CryptoSession.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/ID3D11VideoDecoderOutputView.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessorInputView.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessorOutputView.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ID3D11VideoDevice = '{10EC4D5B-975A-4689-B9E4-D0AAC30FE333}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoDevice extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  ID3D11VideoDevice(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoDecoder(
    Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
    Pointer<Pointer<COMObject>> ppDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
            Pointer<Pointer<COMObject>> ppDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
            Pointer<Pointer<COMObject>> ppDecoder,
          )>()(
        ptr.ref.lpVtbl,
        pVideoDesc,
        pConfig,
        ppDecoder,
      );

  int CreateVideoProcessor(
    Pointer<COMObject> pEnum,
    int RateConversionIndex,
    Pointer<Pointer<COMObject>> ppVideoProcessor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnum,
            Uint32 RateConversionIndex,
            Pointer<Pointer<COMObject>> ppVideoProcessor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnum,
            int RateConversionIndex,
            Pointer<Pointer<COMObject>> ppVideoProcessor,
          )>()(
        ptr.ref.lpVtbl,
        pEnum,
        RateConversionIndex,
        ppVideoProcessor,
      );

  int CreateAuthenticatedChannel(
    int ChannelType,
    Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ChannelType,
            Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChannelType,
            Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
          )>()(
        ptr.ref.lpVtbl,
        ChannelType,
        ppAuthenticatedChannel,
      );

  int CreateCryptoSession(
    Pointer<GUID> pCryptoType,
    Pointer<GUID> pDecoderProfile,
    Pointer<GUID> pKeyExchangeType,
    Pointer<Pointer<COMObject>> ppCryptoSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            Pointer<GUID> pKeyExchangeType,
            Pointer<Pointer<COMObject>> ppCryptoSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            Pointer<GUID> pKeyExchangeType,
            Pointer<Pointer<COMObject>> ppCryptoSession,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
        pDecoderProfile,
        pKeyExchangeType,
        ppCryptoSession,
      );

  int CreateVideoDecoderOutputView(
    Pointer<COMObject> pResource,
    Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppVDOVView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVDOVView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVDOVView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppVDOVView,
      );

  int CreateVideoProcessorInputView(
    Pointer<COMObject> pResource,
    Pointer<COMObject> pEnum,
    Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppVPIView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pEnum,
            Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVPIView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pEnum,
            Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVPIView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pEnum,
        pDesc,
        ppVPIView,
      );

  int CreateVideoProcessorOutputView(
    Pointer<COMObject> pResource,
    Pointer<COMObject> pEnum,
    Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppVPOView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pEnum,
            Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVPOView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pEnum,
            Pointer<D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppVPOView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pEnum,
        pDesc,
        ppVPOView,
      );

  int CreateVideoProcessorEnumerator(
    Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        ppEnum,
      );

  int GetVideoDecoderProfileCount() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetVideoDecoderProfile(
    int Index,
    Pointer<GUID> pDecoderProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<GUID> pDecoderProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<GUID> pDecoderProfile,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pDecoderProfile,
      );

  int CheckVideoDecoderFormat(
    Pointer<GUID> pDecoderProfile,
    int Format,
    Pointer<Int32> pSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pDecoderProfile,
            Uint32 Format,
            Pointer<Int32> pSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDecoderProfile,
            int Format,
            Pointer<Int32> pSupported,
          )>()(
        ptr.ref.lpVtbl,
        pDecoderProfile,
        Format,
        pSupported,
      );

  int GetVideoDecoderConfigCount(
    Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pCount,
      );

  int GetVideoDecoderConfig(
    Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
    int Index,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
            Uint32 Index,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pDesc,
            int Index,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        Index,
        pConfig,
      );

  int GetContentProtectionCaps(
    Pointer<GUID> pCryptoType,
    Pointer<GUID> pDecoderProfile,
    Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            Pointer<D3D11_VIDEO_CONTENT_PROTECTION_CAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
        pDecoderProfile,
        pCaps,
      );

  int CheckCryptoKeyExchange(
    Pointer<GUID> pCryptoType,
    Pointer<GUID> pDecoderProfile,
    int Index,
    Pointer<GUID> pKeyExchangeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            Uint32 Index,
            Pointer<GUID> pKeyExchangeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecoderProfile,
            int Index,
            Pointer<GUID> pKeyExchangeType,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
        pDecoderProfile,
        Index,
        pKeyExchangeType,
      );

  int SetPrivateData(
    Pointer<GUID> guid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        DataSize,
        pData,
      );

  int SetPrivateDataInterface(
    Pointer<GUID> guid,
    Pointer<COMObject> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pData,
      );
}
