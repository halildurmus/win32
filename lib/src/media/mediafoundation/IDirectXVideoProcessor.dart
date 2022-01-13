// IDirectXVideoProcessor.dart

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
import '../../media/mediafoundation/IDirectXVideoProcessorService.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IDirectXVideoProcessor = '{8C3A39F0-916E-4690-804F-4C8001355D25}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoProcessor extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDirectXVideoProcessor(Pointer<COMObject> ptr) : super(ptr);

  int GetVideoProcessorService(
    Pointer<Pointer<COMObject>> ppService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppService,
          )>()(
        ptr.ref.lpVtbl,
        ppService,
      );

  int GetCreationParameters(
    Pointer<GUID> pDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    Pointer<Uint32> pRenderTargetFormat,
    Pointer<Uint32> pMaxNumSubStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pRenderTargetFormat,
            Pointer<Uint32> pMaxNumSubStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pRenderTargetFormat,
            Pointer<Uint32> pMaxNumSubStreams,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceGuid,
        pVideoDesc,
        pRenderTargetFormat,
        pMaxNumSubStreams,
      );

  int GetVideoProcessorCaps(
    Pointer<DXVA2_VideoProcessorCaps> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXVA2_VideoProcessorCaps> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXVA2_VideoProcessorCaps> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetProcAmpRange(
    int ProcAmpCap,
    Pointer<DXVA2_ValueRange> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ProcAmpCap,
            Pointer<DXVA2_ValueRange> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProcAmpCap,
            Pointer<DXVA2_ValueRange> pRange,
          )>()(
        ptr.ref.lpVtbl,
        ProcAmpCap,
        pRange,
      );

  int GetFilterPropertyRange(
    int FilterSetting,
    Pointer<DXVA2_ValueRange> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 FilterSetting,
            Pointer<DXVA2_ValueRange> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FilterSetting,
            Pointer<DXVA2_ValueRange> pRange,
          )>()(
        ptr.ref.lpVtbl,
        FilterSetting,
        pRange,
      );

  int VideoProcessBlt(
    Pointer<COMObject> pRenderTarget,
    Pointer<DXVA2_VideoProcessBltParams> pBltParams,
    Pointer<DXVA2_VideoSample> pSamples,
    int NumSamples,
    Pointer<IntPtr> pHandleComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<DXVA2_VideoProcessBltParams> pBltParams,
            Pointer<DXVA2_VideoSample> pSamples,
            Uint32 NumSamples,
            Pointer<IntPtr> pHandleComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<DXVA2_VideoProcessBltParams> pBltParams,
            Pointer<DXVA2_VideoSample> pSamples,
            int NumSamples,
            Pointer<IntPtr> pHandleComplete,
          )>()(
        ptr.ref.lpVtbl,
        pRenderTarget,
        pBltParams,
        pSamples,
        NumSamples,
        pHandleComplete,
      );
}
