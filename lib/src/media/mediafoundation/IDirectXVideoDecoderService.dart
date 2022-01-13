// IDirectXVideoDecoderService.dart

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
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../media/mediafoundation/IDirectXVideoDecoder.dart';

/// @nodoc
const IID_IDirectXVideoDecoderService =
    '{FC51A551-D5E7-11D9-AF55-00054E43FF02}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoDecoderService extends IDirectXVideoAccelerationService {
  // vtable begins at 4, is 4 entries long.
  IDirectXVideoDecoderService(Pointer<COMObject> ptr) : super(ptr);

  int GetDecoderDeviceGuids(
    Pointer<Uint32> pCount,
    Pointer<Pointer<GUID>> pGuids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Pointer<GUID>> pGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Pointer<GUID>> pGuids,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
        pGuids,
      );

  int GetDecoderRenderTargets(
    Pointer<GUID> Guid,
    Pointer<Uint32> pCount,
    Pointer<Pointer<Uint32>> pFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint32>> pFormats,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        pCount,
        pFormats,
      );

  int GetDecoderConfigurations(
    Pointer<GUID> Guid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    Pointer pReserved,
    Pointer<Uint32> pCount,
    Pointer<Pointer<DXVA2_ConfigPictureDecode>> ppConfigs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer pReserved,
            Pointer<Uint32> pCount,
            Pointer<Pointer<DXVA2_ConfigPictureDecode>> ppConfigs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer pReserved,
            Pointer<Uint32> pCount,
            Pointer<Pointer<DXVA2_ConfigPictureDecode>> ppConfigs,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        pVideoDesc,
        pReserved,
        pCount,
        ppConfigs,
      );

  int CreateVideoDecoder(
    Pointer<GUID> Guid,
    Pointer<DXVA2_VideoDesc> pVideoDesc,
    Pointer<DXVA2_ConfigPictureDecode> pConfig,
    Pointer<Pointer<COMObject>> ppDecoderRenderTargets,
    int NumRenderTargets,
    Pointer<Pointer<COMObject>> ppDecode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<DXVA2_ConfigPictureDecode> pConfig,
            Pointer<Pointer<COMObject>> ppDecoderRenderTargets,
            Uint32 NumRenderTargets,
            Pointer<Pointer<COMObject>> ppDecode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<DXVA2_ConfigPictureDecode> pConfig,
            Pointer<Pointer<COMObject>> ppDecoderRenderTargets,
            int NumRenderTargets,
            Pointer<Pointer<COMObject>> ppDecode,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        pVideoDesc,
        pConfig,
        ppDecoderRenderTargets,
        NumRenderTargets,
        ppDecode,
      );
}
