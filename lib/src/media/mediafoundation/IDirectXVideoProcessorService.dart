// IDirectXVideoProcessorService.dart

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

import '../../media/mediafoundation/IDirectXVideoAccelerationService.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/IDirectXVideoProcessor.dart';

/// @nodoc
const IID_IDirectXVideoProcessorService =
    '{FC51A552-D5E7-11D9-AF55-00054E43FF02}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoProcessorService extends IDirectXVideoAccelerationService {
  // vtable begins at 4, is 8 entries long.
  IDirectXVideoProcessorService(Pointer<COMObject> ptr) : super(ptr);

  int RegisterVideoProcessorSoftwareDevice(
    Pointer pCallbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pCallbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pCallbacks,
          )>()(
        ptr.ref.lpVtbl,
        pCallbacks,
      );

  int GetVideoProcessorDeviceGuids(
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    Pointer<Uint32> pCount,
    Pointer<Pointer<GUID>> pGuids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pCount,
            Pointer<Pointer<GUID>> pGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pCount,
            Pointer<Pointer<GUID>> pGuids,
          )>()(
        ptr.ref.lpVtbl,
        pVideoDesc,
        pCount,
        pGuids,
      );

  int GetVideoProcessorRenderTargets(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    Pointer<Uint32> pCount,
    Pointer<Pointer<Uint32>> pFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        pCount,
        pFormats,
      );

  int GetVideoProcessorSubStreamFormats(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    int RenderTargetFormat,
    Pointer<Uint32> pCount,
    Pointer<Pointer<Uint32>> pFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Uint32 RenderTargetFormat,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            int RenderTargetFormat,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        RenderTargetFormat,
        pCount,
        pFormats,
      );

  int GetVideoProcessorCaps(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    int RenderTargetFormat,
    Pointer<DXVA2_VideoProcessorCaps> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Uint32 RenderTargetFormat,
            Pointer<DXVA2_VideoProcessorCaps> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            int RenderTargetFormat,
            Pointer<DXVA2_VideoProcessorCaps> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        RenderTargetFormat,
        pCaps,
      );

  int GetProcAmpRange(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    int RenderTargetFormat,
    int ProcAmpCap,
    Pointer<DXVA2_ValueRange> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Uint32 RenderTargetFormat,
            Uint32 ProcAmpCap,
            Pointer<DXVA2_ValueRange> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            int RenderTargetFormat,
            int ProcAmpCap,
            Pointer<DXVA2_ValueRange> pRange,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        RenderTargetFormat,
        ProcAmpCap,
        pRange,
      );

  int GetFilterPropertyRange(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    int RenderTargetFormat,
    int FilterSetting,
    Pointer<DXVA2_ValueRange> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Uint32 RenderTargetFormat,
            Uint32 FilterSetting,
            Pointer<DXVA2_ValueRange> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            int RenderTargetFormat,
            int FilterSetting,
            Pointer<DXVA2_ValueRange> pRange,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        RenderTargetFormat,
        FilterSetting,
        pRange,
      );

  int CreateVideoProcessor(
    Pointer<GUID> VideoProcDeviceGuid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    int RenderTargetFormat,
    int MaxNumSubStreams,
    Pointer<Pointer<COMObject>> ppVidProcess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Uint32 RenderTargetFormat,
            Uint32 MaxNumSubStreams,
            Pointer<Pointer<COMObject>> ppVidProcess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> VideoProcDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            int RenderTargetFormat,
            int MaxNumSubStreams,
            Pointer<Pointer<COMObject>> ppVidProcess,
          )>()(
        ptr.ref.lpVtbl,
        VideoProcDeviceGuid,
        pVideoDesc,
        RenderTargetFormat,
        MaxNumSubStreams,
        ppVidProcess,
      );
}
