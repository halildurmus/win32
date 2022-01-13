// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../media/mediafoundation/IDirect3DDeviceManager9.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../graphics/direct3d9/IDirect3DDevice9Ex.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/callbacks.g.dart';
import '../../media/mediafoundation/IDXVAHD_Device.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IOPMVideoOutput.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../system/com/IUnknown.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFMediaBuffer.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/mediafoundation/IMFAudioMediaType.dart';
import '../../media/mediafoundation/IMFCollection.dart';
import '../../media/mediafoundation/IMFDXGIDeviceManager.dart';
import '../../media/mediafoundation/IMFContentProtectionDevice.dart';
import '../../media/mediafoundation/IMFContentDecryptorContext.dart';
import '../../graphics/direct3d12/ID3D12Device.dart';
import '../../media/mediafoundation/IMFMediaEventQueue.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/dxmediaobjects/IMediaBuffer.dart';
import '../../system/com/IStream.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../media/mediafoundation/IMFStreamDescriptor.dart';
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';
import '../../media/mediafoundation/IMFSourceResolver.dart';
import '../../media/mediafoundation/IMFPresentationTimeSource.dart';
import '../../media/mediafoundation/IMFTrackedSample.dart';
import '../../media/mediafoundation/IMFActivate.dart';
import '../../media/mediafoundation/IMFVideoMediaType.dart';
import '../../media/mediafoundation/IMFPluginControl.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../system/com/IClassFactory.dart';
import '../../ui/shell/propertiessystem/INamedPropertyStore.dart';
import '../../media/mediafoundation/IMFMediaSink.dart';
import '../../media/mediafoundation/IMFASFContentInfo.dart';
import '../../media/mediafoundation/IMFASFIndexer.dart';
import '../../media/mediafoundation/IMFASFMultiplexer.dart';
import '../../media/mediafoundation/IMFASFProfile.dart';
import '../../media/mediafoundation/IMFASFSplitter.dart';
import '../../media/mediafoundation/IMFASFStreamSelector.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../media/mediafoundation/IMFNetCredentialCache.dart';
import '../../media/mediafoundation/IMFPMPHostApp.dart';
import '../../media/mediafoundation/IMFMediaSession.dart';
import '../../media/mediafoundation/IMFPMPServer.dart';
import '../../media/mediafoundation/IMFPresentationClock.dart';
import '../../media/mediafoundation/IMFProtectedEnvironmentAccess.dart';
import '../../media/mediafoundation/IMFNetProxyLocator.dart';
import '../../media/mediafoundation/IMFRemoteDesktopPlugin.dart';
import '../../media/mediafoundation/IMFTransform.dart';
import '../../media/mediafoundation/IMFSampleGrabberSinkCallback.dart';
import '../../media/mediafoundation/IMFSequencerSource.dart';
import '../../media/mediafoundation/IMFMediaTypeHandler.dart';
import '../../media/mediafoundation/IMFQualityManager.dart';
import '../../media/mediafoundation/IMFTopoLoader.dart';
import '../../media/mediafoundation/IMFTopology.dart';
import '../../media/mediafoundation/IMFTopologyNode.dart';
import '../../media/mediafoundation/IMFTranscodeProfile.dart';
import '../../media/mediafoundation/IMFSystemId.dart';
import '../../media/mediafoundation/IMFSignedLibrary.dart';
import '../../media/mediafoundation/IMFCameraOcclusionStateReportCallback.dart';
import '../../media/mediafoundation/IMFCameraOcclusionStateMonitor.dart';
import '../../media/mediafoundation/IMFRelativePanelWatcher.dart';
import '../../media/mediafoundation/IMFSensorActivitiesReportCallback.dart';
import '../../media/mediafoundation/IMFSensorActivityMonitor.dart';
import '../../media/mediafoundation/IMFSensorGroup.dart';
import '../../media/mediafoundation/IMFSensorProfile.dart';
import '../../media/mediafoundation/IMFSensorProfileCollection.dart';
import '../../media/mediafoundation/IMFSensorStream.dart';
import '../../media/mediafoundation/IMFVirtualCamera.dart';
import '../../media/mediafoundation/IMFExtendedCameraIntrinsicModel.dart';
import '../../media/mediafoundation/IMFExtendedCameraIntrinsics.dart';
import '../../media/mediafoundation/IMFSinkWriter.dart';
import '../../media/mediafoundation/IMFSourceReader.dart';
import '../../media/mediafoundation/IMFPMediaPlayerCallback.dart';
import '../../media/mediafoundation/IMFPMediaPlayer.dart'; // -----------------------------------------------------------------------

// dxva2.dll
// -----------------------------------------------------------------------
final _dxva2 = DynamicLibrary.open('dxva2.dll');

int DXVA2CreateDirect3DDeviceManager9(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
) =>
    _DXVA2CreateDirect3DDeviceManager9(
      pResetToken,
      ppDeviceManager,
    );

late final _DXVA2CreateDirect3DDeviceManager9 = _dxva2.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
),
    int Function(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
)>('DXVA2CreateDirect3DDeviceManager9');

int DXVA2CreateVideoService(
  Pointer<COMObject> pDD,
  Pointer<GUID> riid,
  Pointer<Pointer> ppService,
) =>
    _DXVA2CreateVideoService(
      pDD,
      riid,
      ppService,
    );

late final _DXVA2CreateVideoService = _dxva2.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDD,
  Pointer<GUID> riid,
  Pointer<Pointer> ppService,
),
    int Function(
  Pointer<COMObject> pDD,
  Pointer<GUID> riid,
  Pointer<Pointer> ppService,
)>('DXVA2CreateVideoService');

int DXVAHD_CreateDevice(
  Pointer<COMObject> pD3DDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  int Usage,
  Pointer<NativeFunction<PDXVAHDSW_Plugin>> pPlugin,
  Pointer<Pointer<COMObject>> ppDevice,
) =>
    _DXVAHD_CreateDevice(
      pD3DDevice,
      pContentDesc,
      Usage,
      pPlugin,
      ppDevice,
    );

late final _DXVAHD_CreateDevice = _dxva2.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pD3DDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Pointer<NativeFunction<PDXVAHDSW_Plugin>> pPlugin,
  Pointer<Pointer<COMObject>> ppDevice,
),
    int Function(
  Pointer<COMObject> pD3DDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  int Usage,
  Pointer<NativeFunction<PDXVAHDSW_Plugin>> pPlugin,
  Pointer<Pointer<COMObject>> ppDevice,
)>('DXVAHD_CreateDevice');

int OPMGetVideoOutputForTarget(
  Pointer<LUID> pAdapterLuid,
  int VidPnTarget,
  int vos,
  Pointer<Pointer<COMObject>> ppOPMVideoOutput,
) =>
    _OPMGetVideoOutputForTarget(
      pAdapterLuid,
      VidPnTarget,
      vos,
      ppOPMVideoOutput,
    );

late final _OPMGetVideoOutputForTarget = _dxva2.lookupFunction<
    Int32 Function(
  Pointer<LUID> pAdapterLuid,
  Uint32 VidPnTarget,
  Int32 vos,
  Pointer<Pointer<COMObject>> ppOPMVideoOutput,
),
    int Function(
  Pointer<LUID> pAdapterLuid,
  int VidPnTarget,
  int vos,
  Pointer<Pointer<COMObject>> ppOPMVideoOutput,
)>('OPMGetVideoOutputForTarget');

int OPMGetVideoOutputsFromHMONITOR(
  int hMonitor,
  int vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
) =>
    _OPMGetVideoOutputsFromHMONITOR(
      hMonitor,
      vos,
      pulNumVideoOutputs,
      pppOPMVideoOutputArray,
    );

late final _OPMGetVideoOutputsFromHMONITOR = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
),
    int Function(
  int hMonitor,
  int vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
)>('OPMGetVideoOutputsFromHMONITOR');

int OPMGetVideoOutputsFromIDirect3DDevice9Object(
  Pointer<COMObject> pDirect3DDevice9,
  int vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
) =>
    _OPMGetVideoOutputsFromIDirect3DDevice9Object(
      pDirect3DDevice9,
      vos,
      pulNumVideoOutputs,
      pppOPMVideoOutputArray,
    );

late final _OPMGetVideoOutputsFromIDirect3DDevice9Object =
    _dxva2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> pDirect3DDevice9,
  Int32 vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
),
        int Function(
  Pointer<COMObject> pDirect3DDevice9,
  int vos,
  Pointer<Uint32> pulNumVideoOutputs,
  Pointer<Pointer<Pointer<COMObject>>> pppOPMVideoOutputArray,
)>('OPMGetVideoOutputsFromIDirect3DDevice9Object');

// -----------------------------------------------------------------------
// mfplat.dll
// -----------------------------------------------------------------------
final _mfplat = DynamicLibrary.open('mfplat.dll');

int CreatePropertyStore(
  Pointer<Pointer<COMObject>> ppStore,
) =>
    _CreatePropertyStore(
      ppStore,
    );

late final _CreatePropertyStore = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppStore,
),
    int Function(
  Pointer<Pointer<COMObject>> ppStore,
)>('CreatePropertyStore');

int MFAddPeriodicCallback(
  Pointer<NativeFunction<MFPERIODICCALLBACK>> Callback,
  Pointer<COMObject> pContext,
  Pointer<Uint32> pdwKey,
) =>
    _MFAddPeriodicCallback(
      Callback,
      pContext,
      pdwKey,
    );

late final _MFAddPeriodicCallback = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<MFPERIODICCALLBACK>> Callback,
  Pointer<COMObject> pContext,
  Pointer<Uint32> pdwKey,
),
    int Function(
  Pointer<NativeFunction<MFPERIODICCALLBACK>> Callback,
  Pointer<COMObject> pContext,
  Pointer<Uint32> pdwKey,
)>('MFAddPeriodicCallback');

int MFAllocateSerialWorkQueue(
  int dwWorkQueue,
  Pointer<Uint32> pdwWorkQueue,
) =>
    _MFAllocateSerialWorkQueue(
      dwWorkQueue,
      pdwWorkQueue,
    );

late final _MFAllocateSerialWorkQueue = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueue,
  Pointer<Uint32> pdwWorkQueue,
),
    int Function(
  int dwWorkQueue,
  Pointer<Uint32> pdwWorkQueue,
)>('MFAllocateSerialWorkQueue');

int MFAllocateWorkQueue(
  Pointer<Uint32> pdwWorkQueue,
) =>
    _MFAllocateWorkQueue(
      pdwWorkQueue,
    );

late final _MFAllocateWorkQueue = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwWorkQueue,
),
    int Function(
  Pointer<Uint32> pdwWorkQueue,
)>('MFAllocateWorkQueue');

int MFAllocateWorkQueueEx(
  int WorkQueueType,
  Pointer<Uint32> pdwWorkQueue,
) =>
    _MFAllocateWorkQueueEx(
      WorkQueueType,
      pdwWorkQueue,
    );

late final _MFAllocateWorkQueueEx = _mfplat.lookupFunction<
    Int32 Function(
  Int32 WorkQueueType,
  Pointer<Uint32> pdwWorkQueue,
),
    int Function(
  int WorkQueueType,
  Pointer<Uint32> pdwWorkQueue,
)>('MFAllocateWorkQueueEx');

int MFAverageTimePerFrameToFrameRate(
  int unAverageTimePerFrame,
  Pointer<Uint32> punNumerator,
  Pointer<Uint32> punDenominator,
) =>
    _MFAverageTimePerFrameToFrameRate(
      unAverageTimePerFrame,
      punNumerator,
      punDenominator,
    );

late final _MFAverageTimePerFrameToFrameRate = _mfplat.lookupFunction<
    Int32 Function(
  Uint64 unAverageTimePerFrame,
  Pointer<Uint32> punNumerator,
  Pointer<Uint32> punDenominator,
),
    int Function(
  int unAverageTimePerFrame,
  Pointer<Uint32> punNumerator,
  Pointer<Uint32> punDenominator,
)>('MFAverageTimePerFrameToFrameRate');

int MFBeginCreateFile(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Utf16> pwszFilePath,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  Pointer<Pointer<COMObject>> ppCancelCookie,
) =>
    _MFBeginCreateFile(
      AccessMode,
      OpenMode,
      fFlags,
      pwszFilePath,
      pCallback,
      pState,
      ppCancelCookie,
    );

late final _MFBeginCreateFile = _mfplat.lookupFunction<
    Int32 Function(
  Int32 AccessMode,
  Int32 OpenMode,
  Int32 fFlags,
  Pointer<Utf16> pwszFilePath,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  Pointer<Pointer<COMObject>> ppCancelCookie,
),
    int Function(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Utf16> pwszFilePath,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  Pointer<Pointer<COMObject>> ppCancelCookie,
)>('MFBeginCreateFile');

int MFBeginRegisterWorkQueueWithMMCSS(
  int dwWorkQueueId,
  Pointer<Utf16> wszClass,
  int dwTaskId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
) =>
    _MFBeginRegisterWorkQueueWithMMCSS(
      dwWorkQueueId,
      wszClass,
      dwTaskId,
      pDoneCallback,
      pDoneState,
    );

late final _MFBeginRegisterWorkQueueWithMMCSS = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<Utf16> wszClass,
  Uint32 dwTaskId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
),
    int Function(
  int dwWorkQueueId,
  Pointer<Utf16> wszClass,
  int dwTaskId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
)>('MFBeginRegisterWorkQueueWithMMCSS');

int MFBeginRegisterWorkQueueWithMMCSSEx(
  int dwWorkQueueId,
  Pointer<Utf16> wszClass,
  int dwTaskId,
  int lPriority,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
) =>
    _MFBeginRegisterWorkQueueWithMMCSSEx(
      dwWorkQueueId,
      wszClass,
      dwTaskId,
      lPriority,
      pDoneCallback,
      pDoneState,
    );

late final _MFBeginRegisterWorkQueueWithMMCSSEx = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<Utf16> wszClass,
  Uint32 dwTaskId,
  Int32 lPriority,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
),
    int Function(
  int dwWorkQueueId,
  Pointer<Utf16> wszClass,
  int dwTaskId,
  int lPriority,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
)>('MFBeginRegisterWorkQueueWithMMCSSEx');

int MFBeginUnregisterWorkQueueWithMMCSS(
  int dwWorkQueueId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
) =>
    _MFBeginUnregisterWorkQueueWithMMCSS(
      dwWorkQueueId,
      pDoneCallback,
      pDoneState,
    );

late final _MFBeginUnregisterWorkQueueWithMMCSS = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
),
    int Function(
  int dwWorkQueueId,
  Pointer<COMObject> pDoneCallback,
  Pointer<COMObject> pDoneState,
)>('MFBeginUnregisterWorkQueueWithMMCSS');

int MFCalculateBitmapImageSize(
  Pointer<BITMAPINFOHEADER> pBMIH,
  int cbBufSize,
  Pointer<Uint32> pcbImageSize,
  Pointer<Int32> pbKnown,
) =>
    _MFCalculateBitmapImageSize(
      pBMIH,
      cbBufSize,
      pcbImageSize,
      pbKnown,
    );

late final _MFCalculateBitmapImageSize = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<BITMAPINFOHEADER> pBMIH,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbImageSize,
  Pointer<Int32> pbKnown,
),
    int Function(
  Pointer<BITMAPINFOHEADER> pBMIH,
  int cbBufSize,
  Pointer<Uint32> pcbImageSize,
  Pointer<Int32> pbKnown,
)>('MFCalculateBitmapImageSize');

int MFCalculateImageSize(
  Pointer<GUID> guidSubtype,
  int unWidth,
  int unHeight,
  Pointer<Uint32> pcbImageSize,
) =>
    _MFCalculateImageSize(
      guidSubtype,
      unWidth,
      unHeight,
      pcbImageSize,
    );

late final _MFCalculateImageSize = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidSubtype,
  Uint32 unWidth,
  Uint32 unHeight,
  Pointer<Uint32> pcbImageSize,
),
    int Function(
  Pointer<GUID> guidSubtype,
  int unWidth,
  int unHeight,
  Pointer<Uint32> pcbImageSize,
)>('MFCalculateImageSize');

int MFCancelCreateFile(
  Pointer<COMObject> pCancelCookie,
) =>
    _MFCancelCreateFile(
      pCancelCookie,
    );

late final _MFCancelCreateFile = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pCancelCookie,
),
    int Function(
  Pointer<COMObject> pCancelCookie,
)>('MFCancelCreateFile');

int MFCancelWorkItem(
  int Key,
) =>
    _MFCancelWorkItem(
      Key,
    );

late final _MFCancelWorkItem = _mfplat.lookupFunction<
    Int32 Function(
  Uint64 Key,
),
    int Function(
  int Key,
)>('MFCancelWorkItem');

int MFCombineSamples(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pSampleToAdd,
  int dwMaxMergedDurationInMS,
  Pointer<Int32> pMerged,
) =>
    _MFCombineSamples(
      pSample,
      pSampleToAdd,
      dwMaxMergedDurationInMS,
      pMerged,
    );

late final _MFCombineSamples = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pSampleToAdd,
  Uint32 dwMaxMergedDurationInMS,
  Pointer<Int32> pMerged,
),
    int Function(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pSampleToAdd,
  int dwMaxMergedDurationInMS,
  Pointer<Int32> pMerged,
)>('MFCombineSamples');

int MFCompareFullToPartialMediaType(
  Pointer<COMObject> pMFTypeFull,
  Pointer<COMObject> pMFTypePartial,
) =>
    _MFCompareFullToPartialMediaType(
      pMFTypeFull,
      pMFTypePartial,
    );

late final _MFCompareFullToPartialMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFTypeFull,
  Pointer<COMObject> pMFTypePartial,
),
    int Function(
  Pointer<COMObject> pMFTypeFull,
  Pointer<COMObject> pMFTypePartial,
)>('MFCompareFullToPartialMediaType');

int MFConvertFromFP16Array(
  Pointer<Float> pDest,
  Pointer<Uint16> pSrc,
  int dwCount,
) =>
    _MFConvertFromFP16Array(
      pDest,
      pSrc,
      dwCount,
    );

late final _MFConvertFromFP16Array = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Float> pDest,
  Pointer<Uint16> pSrc,
  Uint32 dwCount,
),
    int Function(
  Pointer<Float> pDest,
  Pointer<Uint16> pSrc,
  int dwCount,
)>('MFConvertFromFP16Array');

int MFConvertToFP16Array(
  Pointer<Uint16> pDest,
  Pointer<Float> pSrc,
  int dwCount,
) =>
    _MFConvertToFP16Array(
      pDest,
      pSrc,
      dwCount,
    );

late final _MFConvertToFP16Array = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint16> pDest,
  Pointer<Float> pSrc,
  Uint32 dwCount,
),
    int Function(
  Pointer<Uint16> pDest,
  Pointer<Float> pSrc,
  int dwCount,
)>('MFConvertToFP16Array');

int MFCopyImage(
  Pointer<Uint8> pDest,
  int lDestStride,
  Pointer<Uint8> pSrc,
  int lSrcStride,
  int dwWidthInBytes,
  int dwLines,
) =>
    _MFCopyImage(
      pDest,
      lDestStride,
      pSrc,
      lSrcStride,
      dwWidthInBytes,
      dwLines,
    );

late final _MFCopyImage = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pDest,
  Int32 lDestStride,
  Pointer<Uint8> pSrc,
  Int32 lSrcStride,
  Uint32 dwWidthInBytes,
  Uint32 dwLines,
),
    int Function(
  Pointer<Uint8> pDest,
  int lDestStride,
  Pointer<Uint8> pSrc,
  int lSrcStride,
  int dwWidthInBytes,
  int dwLines,
)>('MFCopyImage');

int MFCreate2DMediaBuffer(
  int dwWidth,
  int dwHeight,
  int dwFourCC,
  int fBottomUp,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreate2DMediaBuffer(
      dwWidth,
      dwHeight,
      dwFourCC,
      fBottomUp,
      ppBuffer,
    );

late final _MFCreate2DMediaBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWidth,
  Uint32 dwHeight,
  Uint32 dwFourCC,
  Int32 fBottomUp,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  int dwWidth,
  int dwHeight,
  int dwFourCC,
  int fBottomUp,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreate2DMediaBuffer');

int MFCreateAMMediaTypeFromMFMediaType(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<Pointer<AM_MEDIA_TYPE>> ppAMType,
) =>
    _MFCreateAMMediaTypeFromMFMediaType(
      pMFType,
      guidFormatBlockType,
      ppAMType,
    );

late final _MFCreateAMMediaTypeFromMFMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<Pointer<AM_MEDIA_TYPE>> ppAMType,
),
    int Function(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<Pointer<AM_MEDIA_TYPE>> ppAMType,
)>('MFCreateAMMediaTypeFromMFMediaType');

int MFCreateAlignedMemoryBuffer(
  int cbMaxLength,
  int cbAligment,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateAlignedMemoryBuffer(
      cbMaxLength,
      cbAligment,
      ppBuffer,
    );

late final _MFCreateAlignedMemoryBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 cbMaxLength,
  Uint32 cbAligment,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  int cbMaxLength,
  int cbAligment,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateAlignedMemoryBuffer');

int MFCreateAsyncResult(
  Pointer<COMObject> punkObject,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> punkState,
  Pointer<Pointer<COMObject>> ppAsyncResult,
) =>
    _MFCreateAsyncResult(
      punkObject,
      pCallback,
      punkState,
      ppAsyncResult,
    );

late final _MFCreateAsyncResult = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkObject,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> punkState,
  Pointer<Pointer<COMObject>> ppAsyncResult,
),
    int Function(
  Pointer<COMObject> punkObject,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> punkState,
  Pointer<Pointer<COMObject>> ppAsyncResult,
)>('MFCreateAsyncResult');

int MFCreateAttributes(
  Pointer<Pointer<COMObject>> ppMFAttributes,
  int cInitialSize,
) =>
    _MFCreateAttributes(
      ppMFAttributes,
      cInitialSize,
    );

late final _MFCreateAttributes = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppMFAttributes,
  Uint32 cInitialSize,
),
    int Function(
  Pointer<Pointer<COMObject>> ppMFAttributes,
  int cInitialSize,
)>('MFCreateAttributes');

int MFCreateAudioMediaType(
  Pointer<WAVEFORMATEX> pAudioFormat,
  Pointer<Pointer<COMObject>> ppIAudioMediaType,
) =>
    _MFCreateAudioMediaType(
      pAudioFormat,
      ppIAudioMediaType,
    );

late final _MFCreateAudioMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<WAVEFORMATEX> pAudioFormat,
  Pointer<Pointer<COMObject>> ppIAudioMediaType,
),
    int Function(
  Pointer<WAVEFORMATEX> pAudioFormat,
  Pointer<Pointer<COMObject>> ppIAudioMediaType,
)>('MFCreateAudioMediaType');

int MFCreateCollection(
  Pointer<Pointer<COMObject>> ppIMFCollection,
) =>
    _MFCreateCollection(
      ppIMFCollection,
    );

late final _MFCreateCollection = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIMFCollection,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIMFCollection,
)>('MFCreateCollection');

int MFCreateContentDecryptorContext(
  Pointer<GUID> guidMediaProtectionSystemId,
  Pointer<COMObject> pD3DManager,
  Pointer<COMObject> pContentProtectionDevice,
  Pointer<Pointer<COMObject>> ppContentDecryptorContext,
) =>
    _MFCreateContentDecryptorContext(
      guidMediaProtectionSystemId,
      pD3DManager,
      pContentProtectionDevice,
      ppContentDecryptorContext,
    );

late final _MFCreateContentDecryptorContext = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidMediaProtectionSystemId,
  Pointer<COMObject> pD3DManager,
  Pointer<COMObject> pContentProtectionDevice,
  Pointer<Pointer<COMObject>> ppContentDecryptorContext,
),
    int Function(
  Pointer<GUID> guidMediaProtectionSystemId,
  Pointer<COMObject> pD3DManager,
  Pointer<COMObject> pContentProtectionDevice,
  Pointer<Pointer<COMObject>> ppContentDecryptorContext,
)>('MFCreateContentDecryptorContext');

int MFCreateContentProtectionDevice(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Pointer<COMObject>> ContentProtectionDevice,
) =>
    _MFCreateContentProtectionDevice(
      ProtectionSystemId,
      ContentProtectionDevice,
    );

late final _MFCreateContentProtectionDevice = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Pointer<COMObject>> ContentProtectionDevice,
),
    int Function(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Pointer<COMObject>> ContentProtectionDevice,
)>('MFCreateContentProtectionDevice');

int MFCreateD3D12SynchronizationObject(
  Pointer<COMObject> pDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvSyncObject,
) =>
    _MFCreateD3D12SynchronizationObject(
      pDevice,
      riid,
      ppvSyncObject,
    );

late final _MFCreateD3D12SynchronizationObject = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvSyncObject,
),
    int Function(
  Pointer<COMObject> pDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvSyncObject,
)>('MFCreateD3D12SynchronizationObject');

int MFCreateDXGIDeviceManager(
  Pointer<Uint32> resetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
) =>
    _MFCreateDXGIDeviceManager(
      resetToken,
      ppDeviceManager,
    );

late final _MFCreateDXGIDeviceManager = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint32> resetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
),
    int Function(
  Pointer<Uint32> resetToken,
  Pointer<Pointer<COMObject>> ppDeviceManager,
)>('MFCreateDXGIDeviceManager');

int MFCreateDXGISurfaceBuffer(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  int uSubresourceIndex,
  int fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateDXGISurfaceBuffer(
      riid,
      punkSurface,
      uSubresourceIndex,
      fBottomUpWhenLinear,
      ppBuffer,
    );

late final _MFCreateDXGISurfaceBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  Uint32 uSubresourceIndex,
  Int32 fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  int uSubresourceIndex,
  int fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateDXGISurfaceBuffer');

int MFCreateDXSurfaceBuffer(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  int fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateDXSurfaceBuffer(
      riid,
      punkSurface,
      fBottomUpWhenLinear,
      ppBuffer,
    );

late final _MFCreateDXSurfaceBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  Int32 fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  int fBottomUpWhenLinear,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateDXSurfaceBuffer');

int MFCreateEventQueue(
  Pointer<Pointer<COMObject>> ppMediaEventQueue,
) =>
    _MFCreateEventQueue(
      ppMediaEventQueue,
    );

late final _MFCreateEventQueue = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppMediaEventQueue,
),
    int Function(
  Pointer<Pointer<COMObject>> ppMediaEventQueue,
)>('MFCreateEventQueue');

int MFCreateFile(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Utf16> pwszFileURL,
  Pointer<Pointer<COMObject>> ppIByteStream,
) =>
    _MFCreateFile(
      AccessMode,
      OpenMode,
      fFlags,
      pwszFileURL,
      ppIByteStream,
    );

late final _MFCreateFile = _mfplat.lookupFunction<
    Int32 Function(
  Int32 AccessMode,
  Int32 OpenMode,
  Int32 fFlags,
  Pointer<Utf16> pwszFileURL,
  Pointer<Pointer<COMObject>> ppIByteStream,
),
    int Function(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Utf16> pwszFileURL,
  Pointer<Pointer<COMObject>> ppIByteStream,
)>('MFCreateFile');

int MFCreateLegacyMediaBufferOnMFMediaBuffer(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pMFMediaBuffer,
  int cbOffset,
  Pointer<Pointer<COMObject>> ppMediaBuffer,
) =>
    _MFCreateLegacyMediaBufferOnMFMediaBuffer(
      pSample,
      pMFMediaBuffer,
      cbOffset,
      ppMediaBuffer,
    );

late final _MFCreateLegacyMediaBufferOnMFMediaBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pMFMediaBuffer,
  Uint32 cbOffset,
  Pointer<Pointer<COMObject>> ppMediaBuffer,
),
    int Function(
  Pointer<COMObject> pSample,
  Pointer<COMObject> pMFMediaBuffer,
  int cbOffset,
  Pointer<Pointer<COMObject>> ppMediaBuffer,
)>('MFCreateLegacyMediaBufferOnMFMediaBuffer');

int MFCreateMFByteStreamOnStream(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppByteStream,
) =>
    _MFCreateMFByteStreamOnStream(
      pStream,
      ppByteStream,
    );

late final _MFCreateMFByteStreamOnStream = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppByteStream,
),
    int Function(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppByteStream,
)>('MFCreateMFByteStreamOnStream');

int MFCreateMFByteStreamOnStreamEx(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppByteStream,
) =>
    _MFCreateMFByteStreamOnStreamEx(
      punkStream,
      ppByteStream,
    );

late final _MFCreateMFByteStreamOnStreamEx = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppByteStream,
),
    int Function(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppByteStream,
)>('MFCreateMFByteStreamOnStreamEx');

int MFCreateMFByteStreamWrapper(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppStreamWrapper,
) =>
    _MFCreateMFByteStreamWrapper(
      pStream,
      ppStreamWrapper,
    );

late final _MFCreateMFByteStreamWrapper = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppStreamWrapper,
),
    int Function(
  Pointer<COMObject> pStream,
  Pointer<Pointer<COMObject>> ppStreamWrapper,
)>('MFCreateMFByteStreamWrapper');

int MFCreateMFVideoFormatFromMFMediaType(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<MFVIDEOFORMAT>> ppMFVF,
  Pointer<Uint32> pcbSize,
) =>
    _MFCreateMFVideoFormatFromMFMediaType(
      pMFType,
      ppMFVF,
      pcbSize,
    );

late final _MFCreateMFVideoFormatFromMFMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<MFVIDEOFORMAT>> ppMFVF,
  Pointer<Uint32> pcbSize,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<MFVIDEOFORMAT>> ppMFVF,
  Pointer<Uint32> pcbSize,
)>('MFCreateMFVideoFormatFromMFMediaType');

int MFCreateMediaBufferFromMediaType(
  Pointer<COMObject> pMediaType,
  int llDuration,
  int dwMinLength,
  int dwMinAlignment,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateMediaBufferFromMediaType(
      pMediaType,
      llDuration,
      dwMinLength,
      dwMinAlignment,
      ppBuffer,
    );

late final _MFCreateMediaBufferFromMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaType,
  Int64 llDuration,
  Uint32 dwMinLength,
  Uint32 dwMinAlignment,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  Pointer<COMObject> pMediaType,
  int llDuration,
  int dwMinLength,
  int dwMinAlignment,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateMediaBufferFromMediaType');

int MFCreateMediaBufferWrapper(
  Pointer<COMObject> pBuffer,
  int cbOffset,
  int dwLength,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateMediaBufferWrapper(
      pBuffer,
      cbOffset,
      dwLength,
      ppBuffer,
    );

late final _MFCreateMediaBufferWrapper = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBuffer,
  Uint32 cbOffset,
  Uint32 dwLength,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  Pointer<COMObject> pBuffer,
  int cbOffset,
  int dwLength,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateMediaBufferWrapper');

int MFCreateMediaEvent(
  int met,
  Pointer<GUID> guidExtendedType,
  int hrStatus,
  Pointer<PROPVARIANT> pvValue,
  Pointer<Pointer<COMObject>> ppEvent,
) =>
    _MFCreateMediaEvent(
      met,
      guidExtendedType,
      hrStatus,
      pvValue,
      ppEvent,
    );

late final _MFCreateMediaEvent = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 met,
  Pointer<GUID> guidExtendedType,
  Int32 hrStatus,
  Pointer<PROPVARIANT> pvValue,
  Pointer<Pointer<COMObject>> ppEvent,
),
    int Function(
  int met,
  Pointer<GUID> guidExtendedType,
  int hrStatus,
  Pointer<PROPVARIANT> pvValue,
  Pointer<Pointer<COMObject>> ppEvent,
)>('MFCreateMediaEvent');

int MFCreateMediaExtensionActivate(
  Pointer<Utf16> szActivatableClassId,
  Pointer<COMObject> pConfiguration,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _MFCreateMediaExtensionActivate(
      szActivatableClassId,
      pConfiguration,
      riid,
      ppvObject,
    );

late final _MFCreateMediaExtensionActivate = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szActivatableClassId,
  Pointer<COMObject> pConfiguration,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  Pointer<Utf16> szActivatableClassId,
  Pointer<COMObject> pConfiguration,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('MFCreateMediaExtensionActivate');

int MFCreateMediaType(
  Pointer<Pointer<COMObject>> ppMFType,
) =>
    _MFCreateMediaType(
      ppMFType,
    );

late final _MFCreateMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppMFType,
),
    int Function(
  Pointer<Pointer<COMObject>> ppMFType,
)>('MFCreateMediaType');

int MFCreateMediaTypeFromProperties(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppMediaType,
) =>
    _MFCreateMediaTypeFromProperties(
      punkStream,
      ppMediaType,
    );

late final _MFCreateMediaTypeFromProperties = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppMediaType,
),
    int Function(
  Pointer<COMObject> punkStream,
  Pointer<Pointer<COMObject>> ppMediaType,
)>('MFCreateMediaTypeFromProperties');

int MFCreateMediaTypeFromRepresentation(
  GUID guidRepresentation,
  Pointer pvRepresentation,
  Pointer<Pointer<COMObject>> ppIMediaType,
) =>
    _MFCreateMediaTypeFromRepresentation(
      guidRepresentation,
      pvRepresentation,
      ppIMediaType,
    );

late final _MFCreateMediaTypeFromRepresentation = _mfplat.lookupFunction<
    Int32 Function(
  GUID guidRepresentation,
  Pointer pvRepresentation,
  Pointer<Pointer<COMObject>> ppIMediaType,
),
    int Function(
  GUID guidRepresentation,
  Pointer pvRepresentation,
  Pointer<Pointer<COMObject>> ppIMediaType,
)>('MFCreateMediaTypeFromRepresentation');

int MFCreateMemoryBuffer(
  int cbMaxLength,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateMemoryBuffer(
      cbMaxLength,
      ppBuffer,
    );

late final _MFCreateMemoryBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 cbMaxLength,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  int cbMaxLength,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateMemoryBuffer');

int MFCreateMuxStreamAttributes(
  Pointer<COMObject> pAttributesToMux,
  Pointer<Pointer<COMObject>> ppMuxAttribs,
) =>
    _MFCreateMuxStreamAttributes(
      pAttributesToMux,
      ppMuxAttribs,
    );

late final _MFCreateMuxStreamAttributes = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributesToMux,
  Pointer<Pointer<COMObject>> ppMuxAttribs,
),
    int Function(
  Pointer<COMObject> pAttributesToMux,
  Pointer<Pointer<COMObject>> ppMuxAttribs,
)>('MFCreateMuxStreamAttributes');

int MFCreateMuxStreamMediaType(
  Pointer<COMObject> pMediaTypesToMux,
  Pointer<Pointer<COMObject>> ppMuxMediaType,
) =>
    _MFCreateMuxStreamMediaType(
      pMediaTypesToMux,
      ppMuxMediaType,
    );

late final _MFCreateMuxStreamMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaTypesToMux,
  Pointer<Pointer<COMObject>> ppMuxMediaType,
),
    int Function(
  Pointer<COMObject> pMediaTypesToMux,
  Pointer<Pointer<COMObject>> ppMuxMediaType,
)>('MFCreateMuxStreamMediaType');

int MFCreateMuxStreamSample(
  Pointer<COMObject> pSamplesToMux,
  Pointer<Pointer<COMObject>> ppMuxSample,
) =>
    _MFCreateMuxStreamSample(
      pSamplesToMux,
      ppMuxSample,
    );

late final _MFCreateMuxStreamSample = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSamplesToMux,
  Pointer<Pointer<COMObject>> ppMuxSample,
),
    int Function(
  Pointer<COMObject> pSamplesToMux,
  Pointer<Pointer<COMObject>> ppMuxSample,
)>('MFCreateMuxStreamSample');

int MFCreatePresentationDescriptor(
  int cStreamDescriptors,
  Pointer<Pointer<COMObject>> apStreamDescriptors,
  Pointer<Pointer<COMObject>> ppPresentationDescriptor,
) =>
    _MFCreatePresentationDescriptor(
      cStreamDescriptors,
      apStreamDescriptors,
      ppPresentationDescriptor,
    );

late final _MFCreatePresentationDescriptor = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 cStreamDescriptors,
  Pointer<Pointer<COMObject>> apStreamDescriptors,
  Pointer<Pointer<COMObject>> ppPresentationDescriptor,
),
    int Function(
  int cStreamDescriptors,
  Pointer<Pointer<COMObject>> apStreamDescriptors,
  Pointer<Pointer<COMObject>> ppPresentationDescriptor,
)>('MFCreatePresentationDescriptor');

int MFCreatePropertiesFromMediaType(
  Pointer<COMObject> pMediaType,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _MFCreatePropertiesFromMediaType(
      pMediaType,
      riid,
      ppv,
    );

late final _MFCreatePropertiesFromMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaType,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pMediaType,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('MFCreatePropertiesFromMediaType');

int MFCreateSample(
  Pointer<Pointer<COMObject>> ppIMFSample,
) =>
    _MFCreateSample(
      ppIMFSample,
    );

late final _MFCreateSample = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIMFSample,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIMFSample,
)>('MFCreateSample');

int MFCreateSourceResolver(
  Pointer<Pointer<COMObject>> ppISourceResolver,
) =>
    _MFCreateSourceResolver(
      ppISourceResolver,
    );

late final _MFCreateSourceResolver = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppISourceResolver,
),
    int Function(
  Pointer<Pointer<COMObject>> ppISourceResolver,
)>('MFCreateSourceResolver');

int MFCreateStreamDescriptor(
  int dwStreamIdentifier,
  int cMediaTypes,
  Pointer<Pointer<COMObject>> apMediaTypes,
  Pointer<Pointer<COMObject>> ppDescriptor,
) =>
    _MFCreateStreamDescriptor(
      dwStreamIdentifier,
      cMediaTypes,
      apMediaTypes,
      ppDescriptor,
    );

late final _MFCreateStreamDescriptor = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwStreamIdentifier,
  Uint32 cMediaTypes,
  Pointer<Pointer<COMObject>> apMediaTypes,
  Pointer<Pointer<COMObject>> ppDescriptor,
),
    int Function(
  int dwStreamIdentifier,
  int cMediaTypes,
  Pointer<Pointer<COMObject>> apMediaTypes,
  Pointer<Pointer<COMObject>> ppDescriptor,
)>('MFCreateStreamDescriptor');

int MFCreateStreamOnMFByteStream(
  Pointer<COMObject> pByteStream,
  Pointer<Pointer<COMObject>> ppStream,
) =>
    _MFCreateStreamOnMFByteStream(
      pByteStream,
      ppStream,
    );

late final _MFCreateStreamOnMFByteStream = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pByteStream,
  Pointer<Pointer<COMObject>> ppStream,
),
    int Function(
  Pointer<COMObject> pByteStream,
  Pointer<Pointer<COMObject>> ppStream,
)>('MFCreateStreamOnMFByteStream');

int MFCreateStreamOnMFByteStreamEx(
  Pointer<COMObject> pByteStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _MFCreateStreamOnMFByteStreamEx(
      pByteStream,
      riid,
      ppv,
    );

late final _MFCreateStreamOnMFByteStreamEx = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pByteStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pByteStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('MFCreateStreamOnMFByteStreamEx');

int MFCreateSystemTimeSource(
  Pointer<Pointer<COMObject>> ppSystemTimeSource,
) =>
    _MFCreateSystemTimeSource(
      ppSystemTimeSource,
    );

late final _MFCreateSystemTimeSource = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppSystemTimeSource,
),
    int Function(
  Pointer<Pointer<COMObject>> ppSystemTimeSource,
)>('MFCreateSystemTimeSource');

int MFCreateTempFile(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Pointer<COMObject>> ppIByteStream,
) =>
    _MFCreateTempFile(
      AccessMode,
      OpenMode,
      fFlags,
      ppIByteStream,
    );

late final _MFCreateTempFile = _mfplat.lookupFunction<
    Int32 Function(
  Int32 AccessMode,
  Int32 OpenMode,
  Int32 fFlags,
  Pointer<Pointer<COMObject>> ppIByteStream,
),
    int Function(
  int AccessMode,
  int OpenMode,
  int fFlags,
  Pointer<Pointer<COMObject>> ppIByteStream,
)>('MFCreateTempFile');

int MFCreateTrackedSample(
  Pointer<Pointer<COMObject>> ppMFSample,
) =>
    _MFCreateTrackedSample(
      ppMFSample,
    );

late final _MFCreateTrackedSample = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppMFSample,
),
    int Function(
  Pointer<Pointer<COMObject>> ppMFSample,
)>('MFCreateTrackedSample');

int MFCreateTransformActivate(
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateTransformActivate(
      ppActivate,
    );

late final _MFCreateTransformActivate = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateTransformActivate');

int MFCreateVideoMediaType(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
) =>
    _MFCreateVideoMediaType(
      pVideoFormat,
      ppIVideoMediaType,
    );

late final _MFCreateVideoMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
),
    int Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
)>('MFCreateVideoMediaType');

int MFCreateVideoMediaTypeFromBitMapInfoHeader(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  int dwPixelAspectRatioX,
  int dwPixelAspectRatioY,
  int InterlaceMode,
  int VideoFlags,
  int qwFramesPerSecondNumerator,
  int qwFramesPerSecondDenominator,
  int dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
) =>
    _MFCreateVideoMediaTypeFromBitMapInfoHeader(
      pbmihBitMapInfoHeader,
      dwPixelAspectRatioX,
      dwPixelAspectRatioY,
      InterlaceMode,
      VideoFlags,
      qwFramesPerSecondNumerator,
      qwFramesPerSecondDenominator,
      dwMaxBitRate,
      ppIVideoMediaType,
    );

late final _MFCreateVideoMediaTypeFromBitMapInfoHeader = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  Uint32 dwPixelAspectRatioX,
  Uint32 dwPixelAspectRatioY,
  Int32 InterlaceMode,
  Uint64 VideoFlags,
  Uint64 qwFramesPerSecondNumerator,
  Uint64 qwFramesPerSecondDenominator,
  Uint32 dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
),
    int Function(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  int dwPixelAspectRatioX,
  int dwPixelAspectRatioY,
  int InterlaceMode,
  int VideoFlags,
  int qwFramesPerSecondNumerator,
  int qwFramesPerSecondDenominator,
  int dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
)>('MFCreateVideoMediaTypeFromBitMapInfoHeader');

int MFCreateVideoMediaTypeFromBitMapInfoHeaderEx(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  int cbBitMapInfoHeader,
  int dwPixelAspectRatioX,
  int dwPixelAspectRatioY,
  int InterlaceMode,
  int VideoFlags,
  int dwFramesPerSecondNumerator,
  int dwFramesPerSecondDenominator,
  int dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
) =>
    _MFCreateVideoMediaTypeFromBitMapInfoHeaderEx(
      pbmihBitMapInfoHeader,
      cbBitMapInfoHeader,
      dwPixelAspectRatioX,
      dwPixelAspectRatioY,
      InterlaceMode,
      VideoFlags,
      dwFramesPerSecondNumerator,
      dwFramesPerSecondDenominator,
      dwMaxBitRate,
      ppIVideoMediaType,
    );

late final _MFCreateVideoMediaTypeFromBitMapInfoHeaderEx =
    _mfplat.lookupFunction<
        Int32 Function(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  Uint32 cbBitMapInfoHeader,
  Uint32 dwPixelAspectRatioX,
  Uint32 dwPixelAspectRatioY,
  Int32 InterlaceMode,
  Uint64 VideoFlags,
  Uint32 dwFramesPerSecondNumerator,
  Uint32 dwFramesPerSecondDenominator,
  Uint32 dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
),
        int Function(
  Pointer<BITMAPINFOHEADER> pbmihBitMapInfoHeader,
  int cbBitMapInfoHeader,
  int dwPixelAspectRatioX,
  int dwPixelAspectRatioY,
  int InterlaceMode,
  int VideoFlags,
  int dwFramesPerSecondNumerator,
  int dwFramesPerSecondDenominator,
  int dwMaxBitRate,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
)>('MFCreateVideoMediaTypeFromBitMapInfoHeaderEx');

int MFCreateVideoMediaTypeFromSubtype(
  Pointer<GUID> pAMSubtype,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
) =>
    _MFCreateVideoMediaTypeFromSubtype(
      pAMSubtype,
      ppIVideoMediaType,
    );

late final _MFCreateVideoMediaTypeFromSubtype = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> pAMSubtype,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
),
    int Function(
  Pointer<GUID> pAMSubtype,
  Pointer<Pointer<COMObject>> ppIVideoMediaType,
)>('MFCreateVideoMediaTypeFromSubtype');

int MFCreateVideoSampleAllocatorEx(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
) =>
    _MFCreateVideoSampleAllocatorEx(
      riid,
      ppSampleAllocator,
    );

late final _MFCreateVideoSampleAllocatorEx = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
)>('MFCreateVideoSampleAllocatorEx');

int MFCreateWICBitmapBuffer(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  Pointer<Pointer<COMObject>> ppBuffer,
) =>
    _MFCreateWICBitmapBuffer(
      riid,
      punkSurface,
      ppBuffer,
    );

late final _MFCreateWICBitmapBuffer = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  Pointer<Pointer<COMObject>> ppBuffer,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<COMObject> punkSurface,
  Pointer<Pointer<COMObject>> ppBuffer,
)>('MFCreateWICBitmapBuffer');

int MFCreateWaveFormatExFromMFMediaType(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<WAVEFORMATEX>> ppWF,
  Pointer<Uint32> pcbSize,
  int Flags,
) =>
    _MFCreateWaveFormatExFromMFMediaType(
      pMFType,
      ppWF,
      pcbSize,
      Flags,
    );

late final _MFCreateWaveFormatExFromMFMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<WAVEFORMATEX>> ppWF,
  Pointer<Uint32> pcbSize,
  Uint32 Flags,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<Pointer<WAVEFORMATEX>> ppWF,
  Pointer<Uint32> pcbSize,
  int Flags,
)>('MFCreateWaveFormatExFromMFMediaType');

int MFDeserializeAttributesFromStream(
  Pointer<COMObject> pAttr,
  int dwOptions,
  Pointer<COMObject> pStm,
) =>
    _MFDeserializeAttributesFromStream(
      pAttr,
      dwOptions,
      pStm,
    );

late final _MFDeserializeAttributesFromStream = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttr,
  Uint32 dwOptions,
  Pointer<COMObject> pStm,
),
    int Function(
  Pointer<COMObject> pAttr,
  int dwOptions,
  Pointer<COMObject> pStm,
)>('MFDeserializeAttributesFromStream');

int MFDeserializePresentationDescriptor(
  int cbData,
  Pointer<Uint8> pbData,
  Pointer<Pointer<COMObject>> ppPD,
) =>
    _MFDeserializePresentationDescriptor(
      cbData,
      pbData,
      ppPD,
    );

late final _MFDeserializePresentationDescriptor = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 cbData,
  Pointer<Uint8> pbData,
  Pointer<Pointer<COMObject>> ppPD,
),
    int Function(
  int cbData,
  Pointer<Uint8> pbData,
  Pointer<Pointer<COMObject>> ppPD,
)>('MFDeserializePresentationDescriptor');

int MFEndCreateFile(
  Pointer<COMObject> pResult,
  Pointer<Pointer<COMObject>> ppFile,
) =>
    _MFEndCreateFile(
      pResult,
      ppFile,
    );

late final _MFEndCreateFile = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pResult,
  Pointer<Pointer<COMObject>> ppFile,
),
    int Function(
  Pointer<COMObject> pResult,
  Pointer<Pointer<COMObject>> ppFile,
)>('MFEndCreateFile');

int MFEndRegisterWorkQueueWithMMCSS(
  Pointer<COMObject> pResult,
  Pointer<Uint32> pdwTaskId,
) =>
    _MFEndRegisterWorkQueueWithMMCSS(
      pResult,
      pdwTaskId,
    );

late final _MFEndRegisterWorkQueueWithMMCSS = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pResult,
  Pointer<Uint32> pdwTaskId,
),
    int Function(
  Pointer<COMObject> pResult,
  Pointer<Uint32> pdwTaskId,
)>('MFEndRegisterWorkQueueWithMMCSS');

int MFEndUnregisterWorkQueueWithMMCSS(
  Pointer<COMObject> pResult,
) =>
    _MFEndUnregisterWorkQueueWithMMCSS(
      pResult,
    );

late final _MFEndUnregisterWorkQueueWithMMCSS = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pResult,
),
    int Function(
  Pointer<COMObject> pResult,
)>('MFEndUnregisterWorkQueueWithMMCSS');

int MFFrameRateToAverageTimePerFrame(
  int unNumerator,
  int unDenominator,
  Pointer<Uint64> punAverageTimePerFrame,
) =>
    _MFFrameRateToAverageTimePerFrame(
      unNumerator,
      unDenominator,
      punAverageTimePerFrame,
    );

late final _MFFrameRateToAverageTimePerFrame = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 unNumerator,
  Uint32 unDenominator,
  Pointer<Uint64> punAverageTimePerFrame,
),
    int Function(
  int unNumerator,
  int unDenominator,
  Pointer<Uint64> punAverageTimePerFrame,
)>('MFFrameRateToAverageTimePerFrame');

int MFGetAttributesAsBlob(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  int cbBufSize,
) =>
    _MFGetAttributesAsBlob(
      pAttributes,
      pBuf,
      cbBufSize,
    );

late final _MFGetAttributesAsBlob = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  Uint32 cbBufSize,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  int cbBufSize,
)>('MFGetAttributesAsBlob');

int MFGetAttributesAsBlobSize(
  Pointer<COMObject> pAttributes,
  Pointer<Uint32> pcbBufSize,
) =>
    _MFGetAttributesAsBlobSize(
      pAttributes,
      pcbBufSize,
    );

late final _MFGetAttributesAsBlobSize = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint32> pcbBufSize,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint32> pcbBufSize,
)>('MFGetAttributesAsBlobSize');

int MFGetContentProtectionSystemCLSID(
  Pointer<GUID> guidProtectionSystemID,
  Pointer<GUID> pclsid,
) =>
    _MFGetContentProtectionSystemCLSID(
      guidProtectionSystemID,
      pclsid,
    );

late final _MFGetContentProtectionSystemCLSID = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidProtectionSystemID,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<GUID> guidProtectionSystemID,
  Pointer<GUID> pclsid,
)>('MFGetContentProtectionSystemCLSID');

int MFGetMFTMerit(
  Pointer<COMObject> pMFT,
  int cbVerifier,
  Pointer<Uint8> verifier,
  Pointer<Uint32> merit,
) =>
    _MFGetMFTMerit(
      pMFT,
      cbVerifier,
      verifier,
      merit,
    );

late final _MFGetMFTMerit = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFT,
  Uint32 cbVerifier,
  Pointer<Uint8> verifier,
  Pointer<Uint32> merit,
),
    int Function(
  Pointer<COMObject> pMFT,
  int cbVerifier,
  Pointer<Uint8> verifier,
  Pointer<Uint32> merit,
)>('MFGetMFTMerit');

int MFGetPluginControl(
  Pointer<Pointer<COMObject>> ppPluginControl,
) =>
    _MFGetPluginControl(
      ppPluginControl,
    );

late final _MFGetPluginControl = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppPluginControl,
),
    int Function(
  Pointer<Pointer<COMObject>> ppPluginControl,
)>('MFGetPluginControl');

int MFGetStrideForBitmapInfoHeader(
  int format,
  int dwWidth,
  Pointer<Int32> pStride,
) =>
    _MFGetStrideForBitmapInfoHeader(
      format,
      dwWidth,
      pStride,
    );

late final _MFGetStrideForBitmapInfoHeader = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 format,
  Uint32 dwWidth,
  Pointer<Int32> pStride,
),
    int Function(
  int format,
  int dwWidth,
  Pointer<Int32> pStride,
)>('MFGetStrideForBitmapInfoHeader');

int MFGetSupportedMimeTypes(
  Pointer<PROPVARIANT> pPropVarMimeTypeArray,
) =>
    _MFGetSupportedMimeTypes(
      pPropVarMimeTypeArray,
    );

late final _MFGetSupportedMimeTypes = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> pPropVarMimeTypeArray,
),
    int Function(
  Pointer<PROPVARIANT> pPropVarMimeTypeArray,
)>('MFGetSupportedMimeTypes');

int MFGetSupportedSchemes(
  Pointer<PROPVARIANT> pPropVarSchemeArray,
) =>
    _MFGetSupportedSchemes(
      pPropVarSchemeArray,
    );

late final _MFGetSupportedSchemes = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> pPropVarSchemeArray,
),
    int Function(
  Pointer<PROPVARIANT> pPropVarSchemeArray,
)>('MFGetSupportedSchemes');

int MFGetSystemTime() => _MFGetSystemTime();

late final _MFGetSystemTime =
    _mfplat.lookupFunction<Int64 Function(), int Function()>('MFGetSystemTime');

int MFGetTimerPeriodicity(
  Pointer<Uint32> Periodicity,
) =>
    _MFGetTimerPeriodicity(
      Periodicity,
    );

late final _MFGetTimerPeriodicity = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint32> Periodicity,
),
    int Function(
  Pointer<Uint32> Periodicity,
)>('MFGetTimerPeriodicity');

int MFGetUncompressedVideoFormat(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
) =>
    _MFGetUncompressedVideoFormat(
      pVideoFormat,
    );

late final _MFGetUncompressedVideoFormat = _mfplat.lookupFunction<
    Uint32 Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
),
    int Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
)>('MFGetUncompressedVideoFormat');

int MFGetWorkQueueMMCSSClass(
  int dwWorkQueueId,
  Pointer<Utf16> pwszClass,
  Pointer<Uint32> pcchClass,
) =>
    _MFGetWorkQueueMMCSSClass(
      dwWorkQueueId,
      pwszClass,
      pcchClass,
    );

late final _MFGetWorkQueueMMCSSClass = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<Utf16> pwszClass,
  Pointer<Uint32> pcchClass,
),
    int Function(
  int dwWorkQueueId,
  Pointer<Utf16> pwszClass,
  Pointer<Uint32> pcchClass,
)>('MFGetWorkQueueMMCSSClass');

int MFGetWorkQueueMMCSSPriority(
  int dwWorkQueueId,
  Pointer<Int32> lPriority,
) =>
    _MFGetWorkQueueMMCSSPriority(
      dwWorkQueueId,
      lPriority,
    );

late final _MFGetWorkQueueMMCSSPriority = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<Int32> lPriority,
),
    int Function(
  int dwWorkQueueId,
  Pointer<Int32> lPriority,
)>('MFGetWorkQueueMMCSSPriority');

int MFGetWorkQueueMMCSSTaskId(
  int dwWorkQueueId,
  Pointer<Uint32> pdwTaskId,
) =>
    _MFGetWorkQueueMMCSSTaskId(
      dwWorkQueueId,
      pdwTaskId,
    );

late final _MFGetWorkQueueMMCSSTaskId = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueueId,
  Pointer<Uint32> pdwTaskId,
),
    int Function(
  int dwWorkQueueId,
  Pointer<Uint32> pdwTaskId,
)>('MFGetWorkQueueMMCSSTaskId');

Pointer MFHeapAlloc(
  int nSize,
  int dwFlags,
  Pointer<Utf8> pszFile,
  int line,
  int eat,
) =>
    _MFHeapAlloc(
      nSize,
      dwFlags,
      pszFile,
      line,
      eat,
    );

late final _MFHeapAlloc = _mfplat.lookupFunction<
    Pointer Function(
  IntPtr nSize,
  Uint32 dwFlags,
  Pointer<Utf8> pszFile,
  Int32 line,
  Int32 eat,
),
    Pointer Function(
  int nSize,
  int dwFlags,
  Pointer<Utf8> pszFile,
  int line,
  int eat,
)>('MFHeapAlloc');

void MFHeapFree(
  Pointer pv,
) =>
    _MFHeapFree(
      pv,
    );

late final _MFHeapFree = _mfplat.lookupFunction<
    Void Function(
  Pointer pv,
),
    void Function(
  Pointer pv,
)>('MFHeapFree');

int MFInitAMMediaTypeFromMFMediaType(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<AM_MEDIA_TYPE> pAMType,
) =>
    _MFInitAMMediaTypeFromMFMediaType(
      pMFType,
      guidFormatBlockType,
      pAMType,
    );

late final _MFInitAMMediaTypeFromMFMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<AM_MEDIA_TYPE> pAMType,
),
    int Function(
  Pointer<COMObject> pMFType,
  GUID guidFormatBlockType,
  Pointer<AM_MEDIA_TYPE> pAMType,
)>('MFInitAMMediaTypeFromMFMediaType');

int MFInitAttributesFromBlob(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  int cbBufSize,
) =>
    _MFInitAttributesFromBlob(
      pAttributes,
      pBuf,
      cbBufSize,
    );

late final _MFInitAttributesFromBlob = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  Uint32 cbBufSize,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Uint8> pBuf,
  int cbBufSize,
)>('MFInitAttributesFromBlob');

int MFInitMediaTypeFromAMMediaType(
  Pointer<COMObject> pMFType,
  Pointer<AM_MEDIA_TYPE> pAMType,
) =>
    _MFInitMediaTypeFromAMMediaType(
      pMFType,
      pAMType,
    );

late final _MFInitMediaTypeFromAMMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<AM_MEDIA_TYPE> pAMType,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<AM_MEDIA_TYPE> pAMType,
)>('MFInitMediaTypeFromAMMediaType');

int MFInitMediaTypeFromMFVideoFormat(
  Pointer<COMObject> pMFType,
  Pointer<MFVIDEOFORMAT> pMFVF,
  int cbBufSize,
) =>
    _MFInitMediaTypeFromMFVideoFormat(
      pMFType,
      pMFVF,
      cbBufSize,
    );

late final _MFInitMediaTypeFromMFVideoFormat = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<MFVIDEOFORMAT> pMFVF,
  Uint32 cbBufSize,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<MFVIDEOFORMAT> pMFVF,
  int cbBufSize,
)>('MFInitMediaTypeFromMFVideoFormat');

int MFInitMediaTypeFromMPEG1VideoInfo(
  Pointer<COMObject> pMFType,
  Pointer<MPEG1VIDEOINFO> pMP1VI,
  int cbBufSize,
  Pointer<GUID> pSubtype,
) =>
    _MFInitMediaTypeFromMPEG1VideoInfo(
      pMFType,
      pMP1VI,
      cbBufSize,
      pSubtype,
    );

late final _MFInitMediaTypeFromMPEG1VideoInfo = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<MPEG1VIDEOINFO> pMP1VI,
  Uint32 cbBufSize,
  Pointer<GUID> pSubtype,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<MPEG1VIDEOINFO> pMP1VI,
  int cbBufSize,
  Pointer<GUID> pSubtype,
)>('MFInitMediaTypeFromMPEG1VideoInfo');

int MFInitMediaTypeFromMPEG2VideoInfo(
  Pointer<COMObject> pMFType,
  Pointer<MPEG2VIDEOINFO> pMP2VI,
  int cbBufSize,
  Pointer<GUID> pSubtype,
) =>
    _MFInitMediaTypeFromMPEG2VideoInfo(
      pMFType,
      pMP2VI,
      cbBufSize,
      pSubtype,
    );

late final _MFInitMediaTypeFromMPEG2VideoInfo = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<MPEG2VIDEOINFO> pMP2VI,
  Uint32 cbBufSize,
  Pointer<GUID> pSubtype,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<MPEG2VIDEOINFO> pMP2VI,
  int cbBufSize,
  Pointer<GUID> pSubtype,
)>('MFInitMediaTypeFromMPEG2VideoInfo');

int MFInitMediaTypeFromVideoInfoHeader(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER> pVIH,
  int cbBufSize,
  Pointer<GUID> pSubtype,
) =>
    _MFInitMediaTypeFromVideoInfoHeader(
      pMFType,
      pVIH,
      cbBufSize,
      pSubtype,
    );

late final _MFInitMediaTypeFromVideoInfoHeader = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER> pVIH,
  Uint32 cbBufSize,
  Pointer<GUID> pSubtype,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER> pVIH,
  int cbBufSize,
  Pointer<GUID> pSubtype,
)>('MFInitMediaTypeFromVideoInfoHeader');

int MFInitMediaTypeFromVideoInfoHeader2(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER2> pVIH2,
  int cbBufSize,
  Pointer<GUID> pSubtype,
) =>
    _MFInitMediaTypeFromVideoInfoHeader2(
      pMFType,
      pVIH2,
      cbBufSize,
      pSubtype,
    );

late final _MFInitMediaTypeFromVideoInfoHeader2 = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER2> pVIH2,
  Uint32 cbBufSize,
  Pointer<GUID> pSubtype,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<VIDEOINFOHEADER2> pVIH2,
  int cbBufSize,
  Pointer<GUID> pSubtype,
)>('MFInitMediaTypeFromVideoInfoHeader2');

int MFInitMediaTypeFromWaveFormatEx(
  Pointer<COMObject> pMFType,
  Pointer<WAVEFORMATEX> pWaveFormat,
  int cbBufSize,
) =>
    _MFInitMediaTypeFromWaveFormatEx(
      pMFType,
      pWaveFormat,
      cbBufSize,
    );

late final _MFInitMediaTypeFromWaveFormatEx = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMFType,
  Pointer<WAVEFORMATEX> pWaveFormat,
  Uint32 cbBufSize,
),
    int Function(
  Pointer<COMObject> pMFType,
  Pointer<WAVEFORMATEX> pWaveFormat,
  int cbBufSize,
)>('MFInitMediaTypeFromWaveFormatEx');

int MFInitVideoFormat(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  int type,
) =>
    _MFInitVideoFormat(
      pVideoFormat,
      type,
    );

late final _MFInitVideoFormat = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  Int32 type,
),
    int Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  int type,
)>('MFInitVideoFormat');

int MFInitVideoFormat_RGB(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  int dwWidth,
  int dwHeight,
  int D3Dfmt,
) =>
    _MFInitVideoFormat_RGB(
      pVideoFormat,
      dwWidth,
      dwHeight,
      D3Dfmt,
    );

late final _MFInitVideoFormat_RGB = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  Uint32 dwWidth,
  Uint32 dwHeight,
  Uint32 D3Dfmt,
),
    int Function(
  Pointer<MFVIDEOFORMAT> pVideoFormat,
  int dwWidth,
  int dwHeight,
  int D3Dfmt,
)>('MFInitVideoFormat_RGB');

int MFInvokeCallback(
  Pointer<COMObject> pAsyncResult,
) =>
    _MFInvokeCallback(
      pAsyncResult,
    );

late final _MFInvokeCallback = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAsyncResult,
),
    int Function(
  Pointer<COMObject> pAsyncResult,
)>('MFInvokeCallback');

int MFIsContentProtectionDeviceSupported(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Int32> isSupported,
) =>
    _MFIsContentProtectionDeviceSupported(
      ProtectionSystemId,
      isSupported,
    );

late final _MFIsContentProtectionDeviceSupported = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Int32> isSupported,
),
    int Function(
  Pointer<GUID> ProtectionSystemId,
  Pointer<Int32> isSupported,
)>('MFIsContentProtectionDeviceSupported');

int MFLockDXGIDeviceManager(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppManager,
) =>
    _MFLockDXGIDeviceManager(
      pResetToken,
      ppManager,
    );

late final _MFLockDXGIDeviceManager = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppManager,
),
    int Function(
  Pointer<Uint32> pResetToken,
  Pointer<Pointer<COMObject>> ppManager,
)>('MFLockDXGIDeviceManager');

int MFLockPlatform() => _MFLockPlatform();

late final _MFLockPlatform =
    _mfplat.lookupFunction<Int32 Function(), int Function()>('MFLockPlatform');

int MFLockSharedWorkQueue(
  Pointer<Utf16> wszClass,
  int BasePriority,
  Pointer<Uint32> pdwTaskId,
  Pointer<Uint32> pID,
) =>
    _MFLockSharedWorkQueue(
      wszClass,
      BasePriority,
      pdwTaskId,
      pID,
    );

late final _MFLockSharedWorkQueue = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszClass,
  Int32 BasePriority,
  Pointer<Uint32> pdwTaskId,
  Pointer<Uint32> pID,
),
    int Function(
  Pointer<Utf16> wszClass,
  int BasePriority,
  Pointer<Uint32> pdwTaskId,
  Pointer<Uint32> pID,
)>('MFLockSharedWorkQueue');

int MFLockWorkQueue(
  int dwWorkQueue,
) =>
    _MFLockWorkQueue(
      dwWorkQueue,
    );

late final _MFLockWorkQueue = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueue,
),
    int Function(
  int dwWorkQueue,
)>('MFLockWorkQueue');

int MFMapDX9FormatToDXGIFormat(
  int dx9,
) =>
    _MFMapDX9FormatToDXGIFormat(
      dx9,
    );

late final _MFMapDX9FormatToDXGIFormat = _mfplat.lookupFunction<
    Uint32 Function(
  Uint32 dx9,
),
    int Function(
  int dx9,
)>('MFMapDX9FormatToDXGIFormat');

int MFMapDXGIFormatToDX9Format(
  int dx11,
) =>
    _MFMapDXGIFormatToDX9Format(
      dx11,
    );

late final _MFMapDXGIFormatToDX9Format = _mfplat.lookupFunction<
    Uint32 Function(
  Uint32 dx11,
),
    int Function(
  int dx11,
)>('MFMapDXGIFormatToDX9Format');

int MFPutWaitingWorkItem(
  int hEvent,
  int Priority,
  Pointer<COMObject> pResult,
  Pointer<Uint64> pKey,
) =>
    _MFPutWaitingWorkItem(
      hEvent,
      Priority,
      pResult,
      pKey,
    );

late final _MFPutWaitingWorkItem = _mfplat.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
  Int32 Priority,
  Pointer<COMObject> pResult,
  Pointer<Uint64> pKey,
),
    int Function(
  int hEvent,
  int Priority,
  Pointer<COMObject> pResult,
  Pointer<Uint64> pKey,
)>('MFPutWaitingWorkItem');

int MFPutWorkItem(
  int dwQueue,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
) =>
    _MFPutWorkItem(
      dwQueue,
      pCallback,
      pState,
    );

late final _MFPutWorkItem = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwQueue,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
),
    int Function(
  int dwQueue,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
)>('MFPutWorkItem');

int MFPutWorkItem2(
  int dwQueue,
  int Priority,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
) =>
    _MFPutWorkItem2(
      dwQueue,
      Priority,
      pCallback,
      pState,
    );

late final _MFPutWorkItem2 = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwQueue,
  Int32 Priority,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
),
    int Function(
  int dwQueue,
  int Priority,
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
)>('MFPutWorkItem2');

int MFPutWorkItemEx(
  int dwQueue,
  Pointer<COMObject> pResult,
) =>
    _MFPutWorkItemEx(
      dwQueue,
      pResult,
    );

late final _MFPutWorkItemEx = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwQueue,
  Pointer<COMObject> pResult,
),
    int Function(
  int dwQueue,
  Pointer<COMObject> pResult,
)>('MFPutWorkItemEx');

int MFPutWorkItemEx2(
  int dwQueue,
  int Priority,
  Pointer<COMObject> pResult,
) =>
    _MFPutWorkItemEx2(
      dwQueue,
      Priority,
      pResult,
    );

late final _MFPutWorkItemEx2 = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwQueue,
  Int32 Priority,
  Pointer<COMObject> pResult,
),
    int Function(
  int dwQueue,
  int Priority,
  Pointer<COMObject> pResult,
)>('MFPutWorkItemEx2');

int MFRegisterLocalByteStreamHandler(
  Pointer<Utf16> szFileExtension,
  Pointer<Utf16> szMimeType,
  Pointer<COMObject> pActivate,
) =>
    _MFRegisterLocalByteStreamHandler(
      szFileExtension,
      szMimeType,
      pActivate,
    );

late final _MFRegisterLocalByteStreamHandler = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFileExtension,
  Pointer<Utf16> szMimeType,
  Pointer<COMObject> pActivate,
),
    int Function(
  Pointer<Utf16> szFileExtension,
  Pointer<Utf16> szMimeType,
  Pointer<COMObject> pActivate,
)>('MFRegisterLocalByteStreamHandler');

int MFRegisterLocalSchemeHandler(
  Pointer<Utf16> szScheme,
  Pointer<COMObject> pActivate,
) =>
    _MFRegisterLocalSchemeHandler(
      szScheme,
      pActivate,
    );

late final _MFRegisterLocalSchemeHandler = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szScheme,
  Pointer<COMObject> pActivate,
),
    int Function(
  Pointer<Utf16> szScheme,
  Pointer<COMObject> pActivate,
)>('MFRegisterLocalSchemeHandler');

int MFRegisterPlatformWithMMCSS(
  Pointer<Utf16> wszClass,
  Pointer<Uint32> pdwTaskId,
  int lPriority,
) =>
    _MFRegisterPlatformWithMMCSS(
      wszClass,
      pdwTaskId,
      lPriority,
    );

late final _MFRegisterPlatformWithMMCSS = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszClass,
  Pointer<Uint32> pdwTaskId,
  Int32 lPriority,
),
    int Function(
  Pointer<Utf16> wszClass,
  Pointer<Uint32> pdwTaskId,
  int lPriority,
)>('MFRegisterPlatformWithMMCSS');

int MFRemovePeriodicCallback(
  int dwKey,
) =>
    _MFRemovePeriodicCallback(
      dwKey,
    );

late final _MFRemovePeriodicCallback = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwKey,
),
    int Function(
  int dwKey,
)>('MFRemovePeriodicCallback');

int MFScheduleWorkItem(
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  int Timeout,
  Pointer<Uint64> pKey,
) =>
    _MFScheduleWorkItem(
      pCallback,
      pState,
      Timeout,
      pKey,
    );

late final _MFScheduleWorkItem = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  Int64 Timeout,
  Pointer<Uint64> pKey,
),
    int Function(
  Pointer<COMObject> pCallback,
  Pointer<COMObject> pState,
  int Timeout,
  Pointer<Uint64> pKey,
)>('MFScheduleWorkItem');

int MFScheduleWorkItemEx(
  Pointer<COMObject> pResult,
  int Timeout,
  Pointer<Uint64> pKey,
) =>
    _MFScheduleWorkItemEx(
      pResult,
      Timeout,
      pKey,
    );

late final _MFScheduleWorkItemEx = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pResult,
  Int64 Timeout,
  Pointer<Uint64> pKey,
),
    int Function(
  Pointer<COMObject> pResult,
  int Timeout,
  Pointer<Uint64> pKey,
)>('MFScheduleWorkItemEx');

int MFSerializeAttributesToStream(
  Pointer<COMObject> pAttr,
  int dwOptions,
  Pointer<COMObject> pStm,
) =>
    _MFSerializeAttributesToStream(
      pAttr,
      dwOptions,
      pStm,
    );

late final _MFSerializeAttributesToStream = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttr,
  Uint32 dwOptions,
  Pointer<COMObject> pStm,
),
    int Function(
  Pointer<COMObject> pAttr,
  int dwOptions,
  Pointer<COMObject> pStm,
)>('MFSerializeAttributesToStream');

int MFSerializePresentationDescriptor(
  Pointer<COMObject> pPD,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Uint8>> ppbData,
) =>
    _MFSerializePresentationDescriptor(
      pPD,
      pcbData,
      ppbData,
    );

late final _MFSerializePresentationDescriptor = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pPD,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Uint8>> ppbData,
),
    int Function(
  Pointer<COMObject> pPD,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Uint8>> ppbData,
)>('MFSerializePresentationDescriptor');

int MFShutdown() => _MFShutdown();

late final _MFShutdown =
    _mfplat.lookupFunction<Int32 Function(), int Function()>('MFShutdown');

int MFSplitSample(
  Pointer<COMObject> pSample,
  Pointer<Pointer<COMObject>> pOutputSamples,
  int dwOutputSampleMaxCount,
  Pointer<Uint32> pdwOutputSampleCount,
) =>
    _MFSplitSample(
      pSample,
      pOutputSamples,
      dwOutputSampleMaxCount,
      pdwOutputSampleCount,
    );

late final _MFSplitSample = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSample,
  Pointer<Pointer<COMObject>> pOutputSamples,
  Uint32 dwOutputSampleMaxCount,
  Pointer<Uint32> pdwOutputSampleCount,
),
    int Function(
  Pointer<COMObject> pSample,
  Pointer<Pointer<COMObject>> pOutputSamples,
  int dwOutputSampleMaxCount,
  Pointer<Uint32> pdwOutputSampleCount,
)>('MFSplitSample');

int MFStartup(
  int Version,
  int dwFlags,
) =>
    _MFStartup(
      Version,
      dwFlags,
    );

late final _MFStartup = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 Version,
  Uint32 dwFlags,
),
    int Function(
  int Version,
  int dwFlags,
)>('MFStartup');

int MFTEnum(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<GUID>> ppclsidMFT,
  Pointer<Uint32> pcMFTs,
) =>
    _MFTEnum(
      guidCategory,
      Flags,
      pInputType,
      pOutputType,
      pAttributes,
      ppclsidMFT,
      pcMFTs,
    );

late final _MFTEnum = _mfplat.lookupFunction<
    Int32 Function(
  GUID guidCategory,
  Uint32 Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<GUID>> ppclsidMFT,
  Pointer<Uint32> pcMFTs,
),
    int Function(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<GUID>> ppclsidMFT,
  Pointer<Uint32> pcMFTs,
)>('MFTEnum');

int MFTEnum2(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
) =>
    _MFTEnum2(
      guidCategory,
      Flags,
      pInputType,
      pOutputType,
      pAttributes,
      pppMFTActivate,
      pnumMFTActivate,
    );

late final _MFTEnum2 = _mfplat.lookupFunction<
    Int32 Function(
  GUID guidCategory,
  Uint32 Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
),
    int Function(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
)>('MFTEnum2');

int MFTEnumEx(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
) =>
    _MFTEnumEx(
      guidCategory,
      Flags,
      pInputType,
      pOutputType,
      pppMFTActivate,
      pnumMFTActivate,
    );

late final _MFTEnumEx = _mfplat.lookupFunction<
    Int32 Function(
  GUID guidCategory,
  Uint32 Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
),
    int Function(
  GUID guidCategory,
  int Flags,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputType,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputType,
  Pointer<Pointer<Pointer<COMObject>>> pppMFTActivate,
  Pointer<Uint32> pnumMFTActivate,
)>('MFTEnumEx');

int MFTGetInfo(
  GUID clsidMFT,
  Pointer<Pointer<Utf16>> pszName,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppInputTypes,
  Pointer<Uint32> pcInputTypes,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppOutputTypes,
  Pointer<Uint32> pcOutputTypes,
  Pointer<Pointer<COMObject>> ppAttributes,
) =>
    _MFTGetInfo(
      clsidMFT,
      pszName,
      ppInputTypes,
      pcInputTypes,
      ppOutputTypes,
      pcOutputTypes,
      ppAttributes,
    );

late final _MFTGetInfo = _mfplat.lookupFunction<
    Int32 Function(
  GUID clsidMFT,
  Pointer<Pointer<Utf16>> pszName,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppInputTypes,
  Pointer<Uint32> pcInputTypes,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppOutputTypes,
  Pointer<Uint32> pcOutputTypes,
  Pointer<Pointer<COMObject>> ppAttributes,
),
    int Function(
  GUID clsidMFT,
  Pointer<Pointer<Utf16>> pszName,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppInputTypes,
  Pointer<Uint32> pcInputTypes,
  Pointer<Pointer<MFT_REGISTER_TYPE_INFO>> ppOutputTypes,
  Pointer<Uint32> pcOutputTypes,
  Pointer<Pointer<COMObject>> ppAttributes,
)>('MFTGetInfo');

int MFTRegister(
  GUID clsidMFT,
  GUID guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
  Pointer<COMObject> pAttributes,
) =>
    _MFTRegister(
      clsidMFT,
      guidCategory,
      pszName,
      Flags,
      cInputTypes,
      pInputTypes,
      cOutputTypes,
      pOutputTypes,
      pAttributes,
    );

late final _MFTRegister = _mfplat.lookupFunction<
    Int32 Function(
  GUID clsidMFT,
  GUID guidCategory,
  Pointer<Utf16> pszName,
  Uint32 Flags,
  Uint32 cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  Uint32 cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
  Pointer<COMObject> pAttributes,
),
    int Function(
  GUID clsidMFT,
  GUID guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
  Pointer<COMObject> pAttributes,
)>('MFTRegister');

int MFTRegisterLocal(
  Pointer<COMObject> pClassFactory,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
) =>
    _MFTRegisterLocal(
      pClassFactory,
      guidCategory,
      pszName,
      Flags,
      cInputTypes,
      pInputTypes,
      cOutputTypes,
      pOutputTypes,
    );

late final _MFTRegisterLocal = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pClassFactory,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  Uint32 Flags,
  Uint32 cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  Uint32 cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
),
    int Function(
  Pointer<COMObject> pClassFactory,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
)>('MFTRegisterLocal');

int MFTRegisterLocalByCLSID(
  Pointer<GUID> clisdMFT,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
) =>
    _MFTRegisterLocalByCLSID(
      clisdMFT,
      guidCategory,
      pszName,
      Flags,
      cInputTypes,
      pInputTypes,
      cOutputTypes,
      pOutputTypes,
    );

late final _MFTRegisterLocalByCLSID = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<GUID> clisdMFT,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  Uint32 Flags,
  Uint32 cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  Uint32 cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
),
    int Function(
  Pointer<GUID> clisdMFT,
  Pointer<GUID> guidCategory,
  Pointer<Utf16> pszName,
  int Flags,
  int cInputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pInputTypes,
  int cOutputTypes,
  Pointer<MFT_REGISTER_TYPE_INFO> pOutputTypes,
)>('MFTRegisterLocalByCLSID');

int MFTUnregister(
  GUID clsidMFT,
) =>
    _MFTUnregister(
      clsidMFT,
    );

late final _MFTUnregister = _mfplat.lookupFunction<
    Int32 Function(
  GUID clsidMFT,
),
    int Function(
  GUID clsidMFT,
)>('MFTUnregister');

int MFTUnregisterLocal(
  Pointer<COMObject> pClassFactory,
) =>
    _MFTUnregisterLocal(
      pClassFactory,
    );

late final _MFTUnregisterLocal = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pClassFactory,
),
    int Function(
  Pointer<COMObject> pClassFactory,
)>('MFTUnregisterLocal');

int MFTUnregisterLocalByCLSID(
  GUID clsidMFT,
) =>
    _MFTUnregisterLocalByCLSID(
      clsidMFT,
    );

late final _MFTUnregisterLocalByCLSID = _mfplat.lookupFunction<
    Int32 Function(
  GUID clsidMFT,
),
    int Function(
  GUID clsidMFT,
)>('MFTUnregisterLocalByCLSID');

int MFUnlockDXGIDeviceManager() => _MFUnlockDXGIDeviceManager();

late final _MFUnlockDXGIDeviceManager =
    _mfplat.lookupFunction<Int32 Function(), int Function()>(
        'MFUnlockDXGIDeviceManager');

int MFUnlockPlatform() => _MFUnlockPlatform();

late final _MFUnlockPlatform = _mfplat
    .lookupFunction<Int32 Function(), int Function()>('MFUnlockPlatform');

int MFUnlockWorkQueue(
  int dwWorkQueue,
) =>
    _MFUnlockWorkQueue(
      dwWorkQueue,
    );

late final _MFUnlockWorkQueue = _mfplat.lookupFunction<
    Int32 Function(
  Uint32 dwWorkQueue,
),
    int Function(
  int dwWorkQueue,
)>('MFUnlockWorkQueue');

int MFUnregisterPlatformFromMMCSS() => _MFUnregisterPlatformFromMMCSS();

late final _MFUnregisterPlatformFromMMCSS =
    _mfplat.lookupFunction<Int32 Function(), int Function()>(
        'MFUnregisterPlatformFromMMCSS');

int MFUnwrapMediaType(
  Pointer<COMObject> pWrap,
  Pointer<Pointer<COMObject>> ppOrig,
) =>
    _MFUnwrapMediaType(
      pWrap,
      ppOrig,
    );

late final _MFUnwrapMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pWrap,
  Pointer<Pointer<COMObject>> ppOrig,
),
    int Function(
  Pointer<COMObject> pWrap,
  Pointer<Pointer<COMObject>> ppOrig,
)>('MFUnwrapMediaType');

int MFValidateMediaTypeSize(
  GUID FormatType,
  Pointer<Uint8> pBlock,
  int cbSize,
) =>
    _MFValidateMediaTypeSize(
      FormatType,
      pBlock,
      cbSize,
    );

late final _MFValidateMediaTypeSize = _mfplat.lookupFunction<
    Int32 Function(
  GUID FormatType,
  Pointer<Uint8> pBlock,
  Uint32 cbSize,
),
    int Function(
  GUID FormatType,
  Pointer<Uint8> pBlock,
  int cbSize,
)>('MFValidateMediaTypeSize');

int MFWrapMediaType(
  Pointer<COMObject> pOrig,
  Pointer<GUID> MajorType,
  Pointer<GUID> SubType,
  Pointer<Pointer<COMObject>> ppWrap,
) =>
    _MFWrapMediaType(
      pOrig,
      MajorType,
      SubType,
      ppWrap,
    );

late final _MFWrapMediaType = _mfplat.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pOrig,
  Pointer<GUID> MajorType,
  Pointer<GUID> SubType,
  Pointer<Pointer<COMObject>> ppWrap,
),
    int Function(
  Pointer<COMObject> pOrig,
  Pointer<GUID> MajorType,
  Pointer<GUID> SubType,
  Pointer<Pointer<COMObject>> ppWrap,
)>('MFWrapMediaType');

int MFllMulDiv(
  int a,
  int b,
  int c,
  int d,
) =>
    _MFllMulDiv(
      a,
      b,
      c,
      d,
    );

late final _MFllMulDiv = _mfplat.lookupFunction<
    Int64 Function(
  Int64 a,
  Int64 b,
  Int64 c,
  Int64 d,
),
    int Function(
  int a,
  int b,
  int c,
  int d,
)>('MFllMulDiv');

// -----------------------------------------------------------------------
// mf.dll
// -----------------------------------------------------------------------
final _mf = DynamicLibrary.open('mf.dll');

int CreateNamedPropertyStore(
  Pointer<Pointer<COMObject>> ppStore,
) =>
    _CreateNamedPropertyStore(
      ppStore,
    );

late final _CreateNamedPropertyStore = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppStore,
),
    int Function(
  Pointer<Pointer<COMObject>> ppStore,
)>('CreateNamedPropertyStore');

int MFCreate3GPMediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreate3GPMediaSink(
      pIByteStream,
      pVideoMediaType,
      pAudioMediaType,
      ppIMediaSink,
    );

late final _MFCreate3GPMediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreate3GPMediaSink');

int MFCreateAC3MediaSink(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
) =>
    _MFCreateAC3MediaSink(
      pTargetByteStream,
      pAudioMediaType,
      ppMediaSink,
    );

late final _MFCreateAC3MediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
),
    int Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
)>('MFCreateAC3MediaSink');

int MFCreateADTSMediaSink(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
) =>
    _MFCreateADTSMediaSink(
      pTargetByteStream,
      pAudioMediaType,
      ppMediaSink,
    );

late final _MFCreateADTSMediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
),
    int Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
)>('MFCreateADTSMediaSink');

int MFCreateASFContentInfo(
  Pointer<Pointer<COMObject>> ppIContentInfo,
) =>
    _MFCreateASFContentInfo(
      ppIContentInfo,
    );

late final _MFCreateASFContentInfo = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIContentInfo,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIContentInfo,
)>('MFCreateASFContentInfo');

int MFCreateASFIndexer(
  Pointer<Pointer<COMObject>> ppIIndexer,
) =>
    _MFCreateASFIndexer(
      ppIIndexer,
    );

late final _MFCreateASFIndexer = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIIndexer,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIIndexer,
)>('MFCreateASFIndexer');

int MFCreateASFIndexerByteStream(
  Pointer<COMObject> pIContentByteStream,
  int cbIndexStartOffset,
  Pointer<Pointer<COMObject>> pIIndexByteStream,
) =>
    _MFCreateASFIndexerByteStream(
      pIContentByteStream,
      cbIndexStartOffset,
      pIIndexByteStream,
    );

late final _MFCreateASFIndexerByteStream = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIContentByteStream,
  Uint64 cbIndexStartOffset,
  Pointer<Pointer<COMObject>> pIIndexByteStream,
),
    int Function(
  Pointer<COMObject> pIContentByteStream,
  int cbIndexStartOffset,
  Pointer<Pointer<COMObject>> pIIndexByteStream,
)>('MFCreateASFIndexerByteStream');

int MFCreateASFMediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreateASFMediaSink(
      pIByteStream,
      ppIMediaSink,
    );

late final _MFCreateASFMediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreateASFMediaSink');

int MFCreateASFMediaSinkActivate(
  Pointer<Utf16> pwszFileName,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
) =>
    _MFCreateASFMediaSinkActivate(
      pwszFileName,
      pContentInfo,
      ppIActivate,
    );

late final _MFCreateASFMediaSinkActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszFileName,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
),
    int Function(
  Pointer<Utf16> pwszFileName,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
)>('MFCreateASFMediaSinkActivate');

int MFCreateASFMultiplexer(
  Pointer<Pointer<COMObject>> ppIMultiplexer,
) =>
    _MFCreateASFMultiplexer(
      ppIMultiplexer,
    );

late final _MFCreateASFMultiplexer = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIMultiplexer,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIMultiplexer,
)>('MFCreateASFMultiplexer');

int MFCreateASFProfile(
  Pointer<Pointer<COMObject>> ppIProfile,
) =>
    _MFCreateASFProfile(
      ppIProfile,
    );

late final _MFCreateASFProfile = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIProfile,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIProfile,
)>('MFCreateASFProfile');

int MFCreateASFProfileFromPresentationDescriptor(
  Pointer<COMObject> pIPD,
  Pointer<Pointer<COMObject>> ppIProfile,
) =>
    _MFCreateASFProfileFromPresentationDescriptor(
      pIPD,
      ppIProfile,
    );

late final _MFCreateASFProfileFromPresentationDescriptor = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIPD,
  Pointer<Pointer<COMObject>> ppIProfile,
),
    int Function(
  Pointer<COMObject> pIPD,
  Pointer<Pointer<COMObject>> ppIProfile,
)>('MFCreateASFProfileFromPresentationDescriptor');

int MFCreateASFSplitter(
  Pointer<Pointer<COMObject>> ppISplitter,
) =>
    _MFCreateASFSplitter(
      ppISplitter,
    );

late final _MFCreateASFSplitter = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppISplitter,
),
    int Function(
  Pointer<Pointer<COMObject>> ppISplitter,
)>('MFCreateASFSplitter');

int MFCreateASFStreamSelector(
  Pointer<COMObject> pIASFProfile,
  Pointer<Pointer<COMObject>> ppSelector,
) =>
    _MFCreateASFStreamSelector(
      pIASFProfile,
      ppSelector,
    );

late final _MFCreateASFStreamSelector = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIASFProfile,
  Pointer<Pointer<COMObject>> ppSelector,
),
    int Function(
  Pointer<COMObject> pIASFProfile,
  Pointer<Pointer<COMObject>> ppSelector,
)>('MFCreateASFStreamSelector');

int MFCreateASFStreamingMediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreateASFStreamingMediaSink(
      pIByteStream,
      ppIMediaSink,
    );

late final _MFCreateASFStreamingMediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreateASFStreamingMediaSink');

int MFCreateASFStreamingMediaSinkActivate(
  Pointer<COMObject> pByteStreamActivate,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
) =>
    _MFCreateASFStreamingMediaSinkActivate(
      pByteStreamActivate,
      pContentInfo,
      ppIActivate,
    );

late final _MFCreateASFStreamingMediaSinkActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pByteStreamActivate,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
),
    int Function(
  Pointer<COMObject> pByteStreamActivate,
  Pointer<COMObject> pContentInfo,
  Pointer<Pointer<COMObject>> ppIActivate,
)>('MFCreateASFStreamingMediaSinkActivate');

int MFCreateAggregateSource(
  Pointer<COMObject> pSourceCollection,
  Pointer<Pointer<COMObject>> ppAggSource,
) =>
    _MFCreateAggregateSource(
      pSourceCollection,
      ppAggSource,
    );

late final _MFCreateAggregateSource = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSourceCollection,
  Pointer<Pointer<COMObject>> ppAggSource,
),
    int Function(
  Pointer<COMObject> pSourceCollection,
  Pointer<Pointer<COMObject>> ppAggSource,
)>('MFCreateAggregateSource');

int MFCreateAudioRenderer(
  Pointer<COMObject> pAudioAttributes,
  Pointer<Pointer<COMObject>> ppSink,
) =>
    _MFCreateAudioRenderer(
      pAudioAttributes,
      ppSink,
    );

late final _MFCreateAudioRenderer = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAudioAttributes,
  Pointer<Pointer<COMObject>> ppSink,
),
    int Function(
  Pointer<COMObject> pAudioAttributes,
  Pointer<Pointer<COMObject>> ppSink,
)>('MFCreateAudioRenderer');

int MFCreateAudioRendererActivate(
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateAudioRendererActivate(
      ppActivate,
    );

late final _MFCreateAudioRendererActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateAudioRendererActivate');

int MFCreateCredentialCache(
  Pointer<Pointer<COMObject>> ppCache,
) =>
    _MFCreateCredentialCache(
      ppCache,
    );

late final _MFCreateCredentialCache = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppCache,
),
    int Function(
  Pointer<Pointer<COMObject>> ppCache,
)>('MFCreateCredentialCache');

int MFCreateDeviceSource(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSource,
) =>
    _MFCreateDeviceSource(
      pAttributes,
      ppSource,
    );

late final _MFCreateDeviceSource = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSource,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSource,
)>('MFCreateDeviceSource');

int MFCreateDeviceSourceActivate(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateDeviceSourceActivate(
      pAttributes,
      ppActivate,
    );

late final _MFCreateDeviceSourceActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateDeviceSourceActivate');

int MFCreateEncryptedMediaExtensionsStoreActivate(
  Pointer<COMObject> pmpHost,
  Pointer<COMObject> objectStream,
  Pointer<Utf16> classId,
  Pointer<Pointer<COMObject>> activate,
) =>
    _MFCreateEncryptedMediaExtensionsStoreActivate(
      pmpHost,
      objectStream,
      classId,
      activate,
    );

late final _MFCreateEncryptedMediaExtensionsStoreActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmpHost,
  Pointer<COMObject> objectStream,
  Pointer<Utf16> classId,
  Pointer<Pointer<COMObject>> activate,
),
    int Function(
  Pointer<COMObject> pmpHost,
  Pointer<COMObject> objectStream,
  Pointer<Utf16> classId,
  Pointer<Pointer<COMObject>> activate,
)>('MFCreateEncryptedMediaExtensionsStoreActivate');

int MFCreateFMPEG4MediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreateFMPEG4MediaSink(
      pIByteStream,
      pVideoMediaType,
      pAudioMediaType,
      ppIMediaSink,
    );

late final _MFCreateFMPEG4MediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreateFMPEG4MediaSink');

int MFCreateMP3MediaSink(
  Pointer<COMObject> pTargetByteStream,
  Pointer<Pointer<COMObject>> ppMediaSink,
) =>
    _MFCreateMP3MediaSink(
      pTargetByteStream,
      ppMediaSink,
    );

late final _MFCreateMP3MediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<Pointer<COMObject>> ppMediaSink,
),
    int Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<Pointer<COMObject>> ppMediaSink,
)>('MFCreateMP3MediaSink');

int MFCreateMPEG4MediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreateMPEG4MediaSink(
      pIByteStream,
      pVideoMediaType,
      pAudioMediaType,
      ppIMediaSink,
    );

late final _MFCreateMPEG4MediaSink = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreateMPEG4MediaSink');

int MFCreateMediaSession(
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
) =>
    _MFCreateMediaSession(
      pConfiguration,
      ppMediaSession,
    );

late final _MFCreateMediaSession = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
),
    int Function(
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
)>('MFCreateMediaSession');

int MFCreateMuxSink(
  GUID guidOutputSubType,
  Pointer<COMObject> pOutputAttributes,
  Pointer<COMObject> pOutputByteStream,
  Pointer<Pointer<COMObject>> ppMuxSink,
) =>
    _MFCreateMuxSink(
      guidOutputSubType,
      pOutputAttributes,
      pOutputByteStream,
      ppMuxSink,
    );

late final _MFCreateMuxSink = _mf.lookupFunction<
    Int32 Function(
  GUID guidOutputSubType,
  Pointer<COMObject> pOutputAttributes,
  Pointer<COMObject> pOutputByteStream,
  Pointer<Pointer<COMObject>> ppMuxSink,
),
    int Function(
  GUID guidOutputSubType,
  Pointer<COMObject> pOutputAttributes,
  Pointer<COMObject> pOutputByteStream,
  Pointer<Pointer<COMObject>> ppMuxSink,
)>('MFCreateMuxSink');

int MFCreateNetSchemePlugin(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvHandler,
) =>
    _MFCreateNetSchemePlugin(
      riid,
      ppvHandler,
    );

late final _MFCreateNetSchemePlugin = _mf.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvHandler,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvHandler,
)>('MFCreateNetSchemePlugin');

int MFCreatePMPMediaSession(
  int dwCreationFlags,
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
  Pointer<Pointer<COMObject>> ppEnablerActivate,
) =>
    _MFCreatePMPMediaSession(
      dwCreationFlags,
      pConfiguration,
      ppMediaSession,
      ppEnablerActivate,
    );

late final _MFCreatePMPMediaSession = _mf.lookupFunction<
    Int32 Function(
  Uint32 dwCreationFlags,
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
  Pointer<Pointer<COMObject>> ppEnablerActivate,
),
    int Function(
  int dwCreationFlags,
  Pointer<COMObject> pConfiguration,
  Pointer<Pointer<COMObject>> ppMediaSession,
  Pointer<Pointer<COMObject>> ppEnablerActivate,
)>('MFCreatePMPMediaSession');

int MFCreatePMPServer(
  int dwCreationFlags,
  Pointer<Pointer<COMObject>> ppPMPServer,
) =>
    _MFCreatePMPServer(
      dwCreationFlags,
      ppPMPServer,
    );

late final _MFCreatePMPServer = _mf.lookupFunction<
    Int32 Function(
  Uint32 dwCreationFlags,
  Pointer<Pointer<COMObject>> ppPMPServer,
),
    int Function(
  int dwCreationFlags,
  Pointer<Pointer<COMObject>> ppPMPServer,
)>('MFCreatePMPServer');

int MFCreatePresentationClock(
  Pointer<Pointer<COMObject>> ppPresentationClock,
) =>
    _MFCreatePresentationClock(
      ppPresentationClock,
    );

late final _MFCreatePresentationClock = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppPresentationClock,
),
    int Function(
  Pointer<Pointer<COMObject>> ppPresentationClock,
)>('MFCreatePresentationClock');

int MFCreatePresentationDescriptorFromASFProfile(
  Pointer<COMObject> pIProfile,
  Pointer<Pointer<COMObject>> ppIPD,
) =>
    _MFCreatePresentationDescriptorFromASFProfile(
      pIProfile,
      ppIPD,
    );

late final _MFCreatePresentationDescriptorFromASFProfile = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIProfile,
  Pointer<Pointer<COMObject>> ppIPD,
),
    int Function(
  Pointer<COMObject> pIProfile,
  Pointer<Pointer<COMObject>> ppIPD,
)>('MFCreatePresentationDescriptorFromASFProfile');

int MFCreateProtectedEnvironmentAccess(
  Pointer<Pointer<COMObject>> ppAccess,
) =>
    _MFCreateProtectedEnvironmentAccess(
      ppAccess,
    );

late final _MFCreateProtectedEnvironmentAccess = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppAccess,
),
    int Function(
  Pointer<Pointer<COMObject>> ppAccess,
)>('MFCreateProtectedEnvironmentAccess');

int MFCreateProxyLocator(
  Pointer<Utf16> pszProtocol,
  Pointer<COMObject> pProxyConfig,
  Pointer<Pointer<COMObject>> ppProxyLocator,
) =>
    _MFCreateProxyLocator(
      pszProtocol,
      pProxyConfig,
      ppProxyLocator,
    );

late final _MFCreateProxyLocator = _mf.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszProtocol,
  Pointer<COMObject> pProxyConfig,
  Pointer<Pointer<COMObject>> ppProxyLocator,
),
    int Function(
  Pointer<Utf16> pszProtocol,
  Pointer<COMObject> pProxyConfig,
  Pointer<Pointer<COMObject>> ppProxyLocator,
)>('MFCreateProxyLocator');

int MFCreateRemoteDesktopPlugin(
  Pointer<Pointer<COMObject>> ppPlugin,
) =>
    _MFCreateRemoteDesktopPlugin(
      ppPlugin,
    );

late final _MFCreateRemoteDesktopPlugin = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppPlugin,
),
    int Function(
  Pointer<Pointer<COMObject>> ppPlugin,
)>('MFCreateRemoteDesktopPlugin');

int MFCreateSampleCopierMFT(
  Pointer<Pointer<COMObject>> ppCopierMFT,
) =>
    _MFCreateSampleCopierMFT(
      ppCopierMFT,
    );

late final _MFCreateSampleCopierMFT = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppCopierMFT,
),
    int Function(
  Pointer<Pointer<COMObject>> ppCopierMFT,
)>('MFCreateSampleCopierMFT');

int MFCreateSampleGrabberSinkActivate(
  Pointer<COMObject> pIMFMediaType,
  Pointer<COMObject> pIMFSampleGrabberSinkCallback,
  Pointer<Pointer<COMObject>> ppIActivate,
) =>
    _MFCreateSampleGrabberSinkActivate(
      pIMFMediaType,
      pIMFSampleGrabberSinkCallback,
      ppIActivate,
    );

late final _MFCreateSampleGrabberSinkActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIMFMediaType,
  Pointer<COMObject> pIMFSampleGrabberSinkCallback,
  Pointer<Pointer<COMObject>> ppIActivate,
),
    int Function(
  Pointer<COMObject> pIMFMediaType,
  Pointer<COMObject> pIMFSampleGrabberSinkCallback,
  Pointer<Pointer<COMObject>> ppIActivate,
)>('MFCreateSampleGrabberSinkActivate');

int MFCreateSequencerSegmentOffset(
  int dwId,
  int hnsOffset,
  Pointer<PROPVARIANT> pvarSegmentOffset,
) =>
    _MFCreateSequencerSegmentOffset(
      dwId,
      hnsOffset,
      pvarSegmentOffset,
    );

late final _MFCreateSequencerSegmentOffset = _mf.lookupFunction<
    Int32 Function(
  Uint32 dwId,
  Int64 hnsOffset,
  Pointer<PROPVARIANT> pvarSegmentOffset,
),
    int Function(
  int dwId,
  int hnsOffset,
  Pointer<PROPVARIANT> pvarSegmentOffset,
)>('MFCreateSequencerSegmentOffset');

int MFCreateSequencerSource(
  Pointer<COMObject> pReserved,
  Pointer<Pointer<COMObject>> ppSequencerSource,
) =>
    _MFCreateSequencerSource(
      pReserved,
      ppSequencerSource,
    );

late final _MFCreateSequencerSource = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pReserved,
  Pointer<Pointer<COMObject>> ppSequencerSource,
),
    int Function(
  Pointer<COMObject> pReserved,
  Pointer<Pointer<COMObject>> ppSequencerSource,
)>('MFCreateSequencerSource');

int MFCreateSimpleTypeHandler(
  Pointer<Pointer<COMObject>> ppHandler,
) =>
    _MFCreateSimpleTypeHandler(
      ppHandler,
    );

late final _MFCreateSimpleTypeHandler = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppHandler,
),
    int Function(
  Pointer<Pointer<COMObject>> ppHandler,
)>('MFCreateSimpleTypeHandler');

int MFCreateStandardQualityManager(
  Pointer<Pointer<COMObject>> ppQualityManager,
) =>
    _MFCreateStandardQualityManager(
      ppQualityManager,
    );

late final _MFCreateStandardQualityManager = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppQualityManager,
),
    int Function(
  Pointer<Pointer<COMObject>> ppQualityManager,
)>('MFCreateStandardQualityManager');

int MFCreateTopoLoader(
  Pointer<Pointer<COMObject>> ppObj,
) =>
    _MFCreateTopoLoader(
      ppObj,
    );

late final _MFCreateTopoLoader = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppObj,
),
    int Function(
  Pointer<Pointer<COMObject>> ppObj,
)>('MFCreateTopoLoader');

int MFCreateTopology(
  Pointer<Pointer<COMObject>> ppTopo,
) =>
    _MFCreateTopology(
      ppTopo,
    );

late final _MFCreateTopology = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppTopo,
),
    int Function(
  Pointer<Pointer<COMObject>> ppTopo,
)>('MFCreateTopology');

int MFCreateTopologyNode(
  int NodeType,
  Pointer<Pointer<COMObject>> ppNode,
) =>
    _MFCreateTopologyNode(
      NodeType,
      ppNode,
    );

late final _MFCreateTopologyNode = _mf.lookupFunction<
    Int32 Function(
  Int32 NodeType,
  Pointer<Pointer<COMObject>> ppNode,
),
    int Function(
  int NodeType,
  Pointer<Pointer<COMObject>> ppNode,
)>('MFCreateTopologyNode');

int MFCreateTranscodeProfile(
  Pointer<Pointer<COMObject>> ppTranscodeProfile,
) =>
    _MFCreateTranscodeProfile(
      ppTranscodeProfile,
    );

late final _MFCreateTranscodeProfile = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppTranscodeProfile,
),
    int Function(
  Pointer<Pointer<COMObject>> ppTranscodeProfile,
)>('MFCreateTranscodeProfile');

int MFCreateTranscodeSinkActivate(
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateTranscodeSinkActivate(
      ppActivate,
    );

late final _MFCreateTranscodeSinkActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateTranscodeSinkActivate');

int MFCreateTranscodeTopology(
  Pointer<COMObject> pSrc,
  Pointer<Utf16> pwszOutputFilePath,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
) =>
    _MFCreateTranscodeTopology(
      pSrc,
      pwszOutputFilePath,
      pProfile,
      ppTranscodeTopo,
    );

late final _MFCreateTranscodeTopology = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSrc,
  Pointer<Utf16> pwszOutputFilePath,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
),
    int Function(
  Pointer<COMObject> pSrc,
  Pointer<Utf16> pwszOutputFilePath,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
)>('MFCreateTranscodeTopology');

int MFCreateTranscodeTopologyFromByteStream(
  Pointer<COMObject> pSrc,
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
) =>
    _MFCreateTranscodeTopologyFromByteStream(
      pSrc,
      pOutputStream,
      pProfile,
      ppTranscodeTopo,
    );

late final _MFCreateTranscodeTopologyFromByteStream = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSrc,
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
),
    int Function(
  Pointer<COMObject> pSrc,
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pProfile,
  Pointer<Pointer<COMObject>> ppTranscodeTopo,
)>('MFCreateTranscodeTopologyFromByteStream');

int MFCreateVideoRenderer(
  Pointer<GUID> riidRenderer,
  Pointer<Pointer> ppVideoRenderer,
) =>
    _MFCreateVideoRenderer(
      riidRenderer,
      ppVideoRenderer,
    );

late final _MFCreateVideoRenderer = _mf.lookupFunction<
    Int32 Function(
  Pointer<GUID> riidRenderer,
  Pointer<Pointer> ppVideoRenderer,
),
    int Function(
  Pointer<GUID> riidRenderer,
  Pointer<Pointer> ppVideoRenderer,
)>('MFCreateVideoRenderer');

int MFCreateVideoRendererActivate(
  int hwndVideo,
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateVideoRendererActivate(
      hwndVideo,
      ppActivate,
    );

late final _MFCreateVideoRendererActivate = _mf.lookupFunction<
    Int32 Function(
  IntPtr hwndVideo,
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  int hwndVideo,
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateVideoRendererActivate');

int MFCreateWMAEncoderActivate(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateWMAEncoderActivate(
      pMediaType,
      pEncodingConfigurationProperties,
      ppActivate,
    );

late final _MFCreateWMAEncoderActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateWMAEncoderActivate');

int MFCreateWMVEncoderActivate(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
) =>
    _MFCreateWMVEncoderActivate(
      pMediaType,
      pEncodingConfigurationProperties,
      ppActivate,
    );

late final _MFCreateWMVEncoderActivate = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
),
    int Function(
  Pointer<COMObject> pMediaType,
  Pointer<COMObject> pEncodingConfigurationProperties,
  Pointer<Pointer<COMObject>> ppActivate,
)>('MFCreateWMVEncoderActivate');

int MFEnumDeviceSources(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppSourceActivate,
  Pointer<Uint32> pcSourceActivate,
) =>
    _MFEnumDeviceSources(
      pAttributes,
      pppSourceActivate,
      pcSourceActivate,
    );

late final _MFEnumDeviceSources = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppSourceActivate,
  Pointer<Uint32> pcSourceActivate,
),
    int Function(
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<Pointer<COMObject>>> pppSourceActivate,
  Pointer<Uint32> pcSourceActivate,
)>('MFEnumDeviceSources');

int MFGetLocalId(
  Pointer<Uint8> verifier,
  int size,
  Pointer<Pointer<Utf16>> id,
) =>
    _MFGetLocalId(
      verifier,
      size,
      id,
    );

late final _MFGetLocalId = _mf.lookupFunction<
    Int32 Function(
  Pointer<Uint8> verifier,
  Uint32 size,
  Pointer<Pointer<Utf16>> id,
),
    int Function(
  Pointer<Uint8> verifier,
  int size,
  Pointer<Pointer<Utf16>> id,
)>('MFGetLocalId');

int MFGetService(
  Pointer<COMObject> punkObject,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _MFGetService(
      punkObject,
      guidService,
      riid,
      ppvObject,
    );

late final _MFGetService = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkObject,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  Pointer<COMObject> punkObject,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('MFGetService');

int MFGetSystemId(
  Pointer<Pointer<COMObject>> ppId,
) =>
    _MFGetSystemId(
      ppId,
    );

late final _MFGetSystemId = _mf.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppId,
),
    int Function(
  Pointer<Pointer<COMObject>> ppId,
)>('MFGetSystemId');

int MFGetTopoNodeCurrentType(
  Pointer<COMObject> pNode,
  int dwStreamIndex,
  int fOutput,
  Pointer<Pointer<COMObject>> ppType,
) =>
    _MFGetTopoNodeCurrentType(
      pNode,
      dwStreamIndex,
      fOutput,
      ppType,
    );

late final _MFGetTopoNodeCurrentType = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pNode,
  Uint32 dwStreamIndex,
  Int32 fOutput,
  Pointer<Pointer<COMObject>> ppType,
),
    int Function(
  Pointer<COMObject> pNode,
  int dwStreamIndex,
  int fOutput,
  Pointer<Pointer<COMObject>> ppType,
)>('MFGetTopoNodeCurrentType');

int MFLoadSignedLibrary(
  Pointer<Utf16> pszName,
  Pointer<Pointer<COMObject>> ppLib,
) =>
    _MFLoadSignedLibrary(
      pszName,
      ppLib,
    );

late final _MFLoadSignedLibrary = _mf.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<Pointer<COMObject>> ppLib,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<Pointer<COMObject>> ppLib,
)>('MFLoadSignedLibrary');

int MFRequireProtectedEnvironment(
  Pointer<COMObject> pPresentationDescriptor,
) =>
    _MFRequireProtectedEnvironment(
      pPresentationDescriptor,
    );

late final _MFRequireProtectedEnvironment = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pPresentationDescriptor,
),
    int Function(
  Pointer<COMObject> pPresentationDescriptor,
)>('MFRequireProtectedEnvironment');

int MFShutdownObject(
  Pointer<COMObject> pUnk,
) =>
    _MFShutdownObject(
      pUnk,
    );

late final _MFShutdownObject = _mf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
),
    int Function(
  Pointer<COMObject> pUnk,
)>('MFShutdownObject');

int MFTranscodeGetAudioOutputAvailableTypes(
  Pointer<GUID> guidSubType,
  int dwMFTFlags,
  Pointer<COMObject> pCodecConfig,
  Pointer<Pointer<COMObject>> ppAvailableTypes,
) =>
    _MFTranscodeGetAudioOutputAvailableTypes(
      guidSubType,
      dwMFTFlags,
      pCodecConfig,
      ppAvailableTypes,
    );

late final _MFTranscodeGetAudioOutputAvailableTypes = _mf.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidSubType,
  Uint32 dwMFTFlags,
  Pointer<COMObject> pCodecConfig,
  Pointer<Pointer<COMObject>> ppAvailableTypes,
),
    int Function(
  Pointer<GUID> guidSubType,
  int dwMFTFlags,
  Pointer<COMObject> pCodecConfig,
  Pointer<Pointer<COMObject>> ppAvailableTypes,
)>('MFTranscodeGetAudioOutputAvailableTypes');

// -----------------------------------------------------------------------
// mfsrcsnk.dll
// -----------------------------------------------------------------------
final _mfsrcsnk = DynamicLibrary.open('mfsrcsnk.dll');

int MFCreateAVIMediaSink(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
) =>
    _MFCreateAVIMediaSink(
      pIByteStream,
      pVideoMediaType,
      pAudioMediaType,
      ppIMediaSink,
    );

late final _MFCreateAVIMediaSink = _mfsrcsnk.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
),
    int Function(
  Pointer<COMObject> pIByteStream,
  Pointer<COMObject> pVideoMediaType,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppIMediaSink,
)>('MFCreateAVIMediaSink');

int MFCreateWAVEMediaSink(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
) =>
    _MFCreateWAVEMediaSink(
      pTargetByteStream,
      pAudioMediaType,
      ppMediaSink,
    );

late final _MFCreateWAVEMediaSink = _mfsrcsnk.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
),
    int Function(
  Pointer<COMObject> pTargetByteStream,
  Pointer<COMObject> pAudioMediaType,
  Pointer<Pointer<COMObject>> ppMediaSink,
)>('MFCreateWAVEMediaSink');

// -----------------------------------------------------------------------
// mfsensorgroup.dll
// -----------------------------------------------------------------------
final _mfsensorgroup = DynamicLibrary.open('mfsensorgroup.dll');

int MFCreateCameraOcclusionStateMonitor(
  Pointer<Utf16> symbolicLink,
  Pointer<COMObject> callback,
  Pointer<Pointer<COMObject>> occlusionStateMonitor,
) =>
    _MFCreateCameraOcclusionStateMonitor(
      symbolicLink,
      callback,
      occlusionStateMonitor,
    );

late final _MFCreateCameraOcclusionStateMonitor = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<Utf16> symbolicLink,
  Pointer<COMObject> callback,
  Pointer<Pointer<COMObject>> occlusionStateMonitor,
),
    int Function(
  Pointer<Utf16> symbolicLink,
  Pointer<COMObject> callback,
  Pointer<Pointer<COMObject>> occlusionStateMonitor,
)>('MFCreateCameraOcclusionStateMonitor');

int MFCreateRelativePanelWatcher(
  Pointer<Utf16> videoDeviceId,
  Pointer<Utf16> displayMonitorDeviceId,
  Pointer<Pointer<COMObject>> ppRelativePanelWatcher,
) =>
    _MFCreateRelativePanelWatcher(
      videoDeviceId,
      displayMonitorDeviceId,
      ppRelativePanelWatcher,
    );

late final _MFCreateRelativePanelWatcher = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<Utf16> videoDeviceId,
  Pointer<Utf16> displayMonitorDeviceId,
  Pointer<Pointer<COMObject>> ppRelativePanelWatcher,
),
    int Function(
  Pointer<Utf16> videoDeviceId,
  Pointer<Utf16> displayMonitorDeviceId,
  Pointer<Pointer<COMObject>> ppRelativePanelWatcher,
)>('MFCreateRelativePanelWatcher');

int MFCreateSensorActivityMonitor(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppActivityMonitor,
) =>
    _MFCreateSensorActivityMonitor(
      pCallback,
      ppActivityMonitor,
    );

late final _MFCreateSensorActivityMonitor = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppActivityMonitor,
),
    int Function(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppActivityMonitor,
)>('MFCreateSensorActivityMonitor');

int MFCreateSensorGroup(
  Pointer<Utf16> SensorGroupSymbolicLink,
  Pointer<Pointer<COMObject>> ppSensorGroup,
) =>
    _MFCreateSensorGroup(
      SensorGroupSymbolicLink,
      ppSensorGroup,
    );

late final _MFCreateSensorGroup = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SensorGroupSymbolicLink,
  Pointer<Pointer<COMObject>> ppSensorGroup,
),
    int Function(
  Pointer<Utf16> SensorGroupSymbolicLink,
  Pointer<Pointer<COMObject>> ppSensorGroup,
)>('MFCreateSensorGroup');

int MFCreateSensorProfile(
  Pointer<GUID> ProfileType,
  int ProfileIndex,
  Pointer<Utf16> Constraints,
  Pointer<Pointer<COMObject>> ppProfile,
) =>
    _MFCreateSensorProfile(
      ProfileType,
      ProfileIndex,
      Constraints,
      ppProfile,
    );

late final _MFCreateSensorProfile = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<GUID> ProfileType,
  Uint32 ProfileIndex,
  Pointer<Utf16> Constraints,
  Pointer<Pointer<COMObject>> ppProfile,
),
    int Function(
  Pointer<GUID> ProfileType,
  int ProfileIndex,
  Pointer<Utf16> Constraints,
  Pointer<Pointer<COMObject>> ppProfile,
)>('MFCreateSensorProfile');

int MFCreateSensorProfileCollection(
  Pointer<Pointer<COMObject>> ppSensorProfile,
) =>
    _MFCreateSensorProfileCollection(
      ppSensorProfile,
    );

late final _MFCreateSensorProfileCollection = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppSensorProfile,
),
    int Function(
  Pointer<Pointer<COMObject>> ppSensorProfile,
)>('MFCreateSensorProfileCollection');

int MFCreateSensorStream(
  int StreamId,
  Pointer<COMObject> pAttributes,
  Pointer<COMObject> pMediaTypeCollection,
  Pointer<Pointer<COMObject>> ppStream,
) =>
    _MFCreateSensorStream(
      StreamId,
      pAttributes,
      pMediaTypeCollection,
      ppStream,
    );

late final _MFCreateSensorStream = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Uint32 StreamId,
  Pointer<COMObject> pAttributes,
  Pointer<COMObject> pMediaTypeCollection,
  Pointer<Pointer<COMObject>> ppStream,
),
    int Function(
  int StreamId,
  Pointer<COMObject> pAttributes,
  Pointer<COMObject> pMediaTypeCollection,
  Pointer<Pointer<COMObject>> ppStream,
)>('MFCreateSensorStream');

int MFCreateVirtualCamera(
  int type,
  int lifetime,
  int access,
  Pointer<Utf16> friendlyName,
  Pointer<Utf16> sourceId,
  Pointer<GUID> categories,
  int categoryCount,
  Pointer<Pointer<COMObject>> virtualCamera,
) =>
    _MFCreateVirtualCamera(
      type,
      lifetime,
      access,
      friendlyName,
      sourceId,
      categories,
      categoryCount,
      virtualCamera,
    );

late final _MFCreateVirtualCamera = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Int32 type,
  Int32 lifetime,
  Int32 access,
  Pointer<Utf16> friendlyName,
  Pointer<Utf16> sourceId,
  Pointer<GUID> categories,
  Uint32 categoryCount,
  Pointer<Pointer<COMObject>> virtualCamera,
),
    int Function(
  int type,
  int lifetime,
  int access,
  Pointer<Utf16> friendlyName,
  Pointer<Utf16> sourceId,
  Pointer<GUID> categories,
  int categoryCount,
  Pointer<Pointer<COMObject>> virtualCamera,
)>('MFCreateVirtualCamera');

int MFIsVirtualCameraTypeSupported(
  int type,
  Pointer<Int32> supported,
) =>
    _MFIsVirtualCameraTypeSupported(
      type,
      supported,
    );

late final _MFIsVirtualCameraTypeSupported = _mfsensorgroup.lookupFunction<
    Int32 Function(
  Int32 type,
  Pointer<Int32> supported,
),
    int Function(
  int type,
  Pointer<Int32> supported,
)>('MFIsVirtualCameraTypeSupported');

// -----------------------------------------------------------------------
// mfcore.dll
// -----------------------------------------------------------------------
final _mfcore = DynamicLibrary.open('mfcore.dll');

int MFCreateExtendedCameraIntrinsicModel(
  int distortionModelType,
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsicModel,
) =>
    _MFCreateExtendedCameraIntrinsicModel(
      distortionModelType,
      ppExtendedCameraIntrinsicModel,
    );

late final _MFCreateExtendedCameraIntrinsicModel = _mfcore.lookupFunction<
    Int32 Function(
  Int32 distortionModelType,
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsicModel,
),
    int Function(
  int distortionModelType,
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsicModel,
)>('MFCreateExtendedCameraIntrinsicModel');

int MFCreateExtendedCameraIntrinsics(
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsics,
) =>
    _MFCreateExtendedCameraIntrinsics(
      ppExtendedCameraIntrinsics,
    );

late final _MFCreateExtendedCameraIntrinsics = _mfcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsics,
),
    int Function(
  Pointer<Pointer<COMObject>> ppExtendedCameraIntrinsics,
)>('MFCreateExtendedCameraIntrinsics');

// -----------------------------------------------------------------------
// evr.dll
// -----------------------------------------------------------------------
final _evr = DynamicLibrary.open('evr.dll');

int MFCreateVideoMixer(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _MFCreateVideoMixer(
      pOwner,
      riidDevice,
      riid,
      ppv,
    );

late final _MFCreateVideoMixer = _evr.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('MFCreateVideoMixer');

int MFCreateVideoMixerAndPresenter(
  Pointer<COMObject> pMixerOwner,
  Pointer<COMObject> pPresenterOwner,
  Pointer<GUID> riidMixer,
  Pointer<Pointer> ppvVideoMixer,
  Pointer<GUID> riidPresenter,
  Pointer<Pointer> ppvVideoPresenter,
) =>
    _MFCreateVideoMixerAndPresenter(
      pMixerOwner,
      pPresenterOwner,
      riidMixer,
      ppvVideoMixer,
      riidPresenter,
      ppvVideoPresenter,
    );

late final _MFCreateVideoMixerAndPresenter = _evr.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMixerOwner,
  Pointer<COMObject> pPresenterOwner,
  Pointer<GUID> riidMixer,
  Pointer<Pointer> ppvVideoMixer,
  Pointer<GUID> riidPresenter,
  Pointer<Pointer> ppvVideoPresenter,
),
    int Function(
  Pointer<COMObject> pMixerOwner,
  Pointer<COMObject> pPresenterOwner,
  Pointer<GUID> riidMixer,
  Pointer<Pointer> ppvVideoMixer,
  Pointer<GUID> riidPresenter,
  Pointer<Pointer> ppvVideoPresenter,
)>('MFCreateVideoMixerAndPresenter');

int MFCreateVideoPresenter(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppVideoPresenter,
) =>
    _MFCreateVideoPresenter(
      pOwner,
      riidDevice,
      riid,
      ppVideoPresenter,
    );

late final _MFCreateVideoPresenter = _evr.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppVideoPresenter,
),
    int Function(
  Pointer<COMObject> pOwner,
  Pointer<GUID> riidDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> ppVideoPresenter,
)>('MFCreateVideoPresenter');

int MFCreateVideoSampleAllocator(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
) =>
    _MFCreateVideoSampleAllocator(
      riid,
      ppSampleAllocator,
    );

late final _MFCreateVideoSampleAllocator = _evr.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppSampleAllocator,
)>('MFCreateVideoSampleAllocator');

int MFCreateVideoSampleFromSurface(
  Pointer<COMObject> pUnkSurface,
  Pointer<Pointer<COMObject>> ppSample,
) =>
    _MFCreateVideoSampleFromSurface(
      pUnkSurface,
      ppSample,
    );

late final _MFCreateVideoSampleFromSurface = _evr.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkSurface,
  Pointer<Pointer<COMObject>> ppSample,
),
    int Function(
  Pointer<COMObject> pUnkSurface,
  Pointer<Pointer<COMObject>> ppSample,
)>('MFCreateVideoSampleFromSurface');

int MFGetPlaneSize(
  int format,
  int dwWidth,
  int dwHeight,
  Pointer<Uint32> pdwPlaneSize,
) =>
    _MFGetPlaneSize(
      format,
      dwWidth,
      dwHeight,
      pdwPlaneSize,
    );

late final _MFGetPlaneSize = _evr.lookupFunction<
    Int32 Function(
  Uint32 format,
  Uint32 dwWidth,
  Uint32 dwHeight,
  Pointer<Uint32> pdwPlaneSize,
),
    int Function(
  int format,
  int dwWidth,
  int dwHeight,
  Pointer<Uint32> pdwPlaneSize,
)>('MFGetPlaneSize');

int MFIsFormatYUV(
  int Format,
) =>
    _MFIsFormatYUV(
      Format,
    );

late final _MFIsFormatYUV = _evr.lookupFunction<
    Int32 Function(
  Uint32 Format,
),
    int Function(
  int Format,
)>('MFIsFormatYUV');

// -----------------------------------------------------------------------
// mfreadwrite.dll
// -----------------------------------------------------------------------
final _mfreadwrite = DynamicLibrary.open('mfreadwrite.dll');

int MFCreateSinkWriterFromMediaSink(
  Pointer<COMObject> pMediaSink,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
) =>
    _MFCreateSinkWriterFromMediaSink(
      pMediaSink,
      pAttributes,
      ppSinkWriter,
    );

late final _MFCreateSinkWriterFromMediaSink = _mfreadwrite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaSink,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
),
    int Function(
  Pointer<COMObject> pMediaSink,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
)>('MFCreateSinkWriterFromMediaSink');

int MFCreateSinkWriterFromURL(
  Pointer<Utf16> pwszOutputURL,
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
) =>
    _MFCreateSinkWriterFromURL(
      pwszOutputURL,
      pByteStream,
      pAttributes,
      ppSinkWriter,
    );

late final _MFCreateSinkWriterFromURL = _mfreadwrite.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszOutputURL,
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
),
    int Function(
  Pointer<Utf16> pwszOutputURL,
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSinkWriter,
)>('MFCreateSinkWriterFromURL');

int MFCreateSourceReaderFromByteStream(
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
) =>
    _MFCreateSourceReaderFromByteStream(
      pByteStream,
      pAttributes,
      ppSourceReader,
    );

late final _MFCreateSourceReaderFromByteStream = _mfreadwrite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
),
    int Function(
  Pointer<COMObject> pByteStream,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
)>('MFCreateSourceReaderFromByteStream');

int MFCreateSourceReaderFromMediaSource(
  Pointer<COMObject> pMediaSource,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
) =>
    _MFCreateSourceReaderFromMediaSource(
      pMediaSource,
      pAttributes,
      ppSourceReader,
    );

late final _MFCreateSourceReaderFromMediaSource = _mfreadwrite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMediaSource,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
),
    int Function(
  Pointer<COMObject> pMediaSource,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
)>('MFCreateSourceReaderFromMediaSource');

int MFCreateSourceReaderFromURL(
  Pointer<Utf16> pwszURL,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
) =>
    _MFCreateSourceReaderFromURL(
      pwszURL,
      pAttributes,
      ppSourceReader,
    );

late final _MFCreateSourceReaderFromURL = _mfreadwrite.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszURL,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
),
    int Function(
  Pointer<Utf16> pwszURL,
  Pointer<COMObject> pAttributes,
  Pointer<Pointer<COMObject>> ppSourceReader,
)>('MFCreateSourceReaderFromURL');

// -----------------------------------------------------------------------
// mfplay.dll
// -----------------------------------------------------------------------
final _mfplay = DynamicLibrary.open('mfplay.dll');

int MFPCreateMediaPlayer(
  Pointer<Utf16> pwszURL,
  int fStartPlayback,
  int creationOptions,
  Pointer<COMObject> pCallback,
  int hWnd,
  Pointer<Pointer<COMObject>> ppMediaPlayer,
) =>
    _MFPCreateMediaPlayer(
      pwszURL,
      fStartPlayback,
      creationOptions,
      pCallback,
      hWnd,
      ppMediaPlayer,
    );

late final _MFPCreateMediaPlayer = _mfplay.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszURL,
  Int32 fStartPlayback,
  Int32 creationOptions,
  Pointer<COMObject> pCallback,
  IntPtr hWnd,
  Pointer<Pointer<COMObject>> ppMediaPlayer,
),
    int Function(
  Pointer<Utf16> pwszURL,
  int fStartPlayback,
  int creationOptions,
  Pointer<COMObject> pCallback,
  int hWnd,
  Pointer<Pointer<COMObject>> ppMediaPlayer,
)>('MFPCreateMediaPlayer');

// -----------------------------------------------------------------------
// opmxbox.dll
// -----------------------------------------------------------------------
final _opmxbox = DynamicLibrary.open('opmxbox.dll');

int OPMXboxEnableHDCP(
  int HDCPType,
) =>
    _OPMXboxEnableHDCP(
      HDCPType,
    );

late final _OPMXboxEnableHDCP = _opmxbox.lookupFunction<
    Int32 Function(
  Int32 HDCPType,
),
    int Function(
  int HDCPType,
)>('OPMXboxEnableHDCP');

int OPMXboxGetHDCPStatus(
  Pointer<Int32> pHDCPStatus,
) =>
    _OPMXboxGetHDCPStatus(
      pHDCPStatus,
    );

late final _OPMXboxGetHDCPStatus = _opmxbox.lookupFunction<
    Int32 Function(
  Pointer<Int32> pHDCPStatus,
),
    int Function(
  Pointer<Int32> pHDCPStatus,
)>('OPMXboxGetHDCPStatus');

int OPMXboxGetHDCPStatusAndType(
  Pointer<Int32> pHDCPStatus,
  Pointer<Int32> pHDCPType,
) =>
    _OPMXboxGetHDCPStatusAndType(
      pHDCPStatus,
      pHDCPType,
    );

late final _OPMXboxGetHDCPStatusAndType = _opmxbox.lookupFunction<
    Int32 Function(
  Pointer<Int32> pHDCPStatus,
  Pointer<Int32> pHDCPType,
),
    int Function(
  Pointer<Int32> pHDCPStatus,
  Pointer<Int32> pHDCPType,
)>('OPMXboxGetHDCPStatusAndType');
