// IDirectXVideoDecoder.dart

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
import '../../media/mediafoundation/IDirectXVideoDecoderService.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IDirectXVideoDecoder = '{F2B0810A-FD00-43C9-918C-DF94E2D8EF7D}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoDecoder extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDirectXVideoDecoder(Pointer<COMObject> ptr) : super(ptr);

  int GetVideoDecoderService(
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
    Pointer<DXVA2_ConfigPictureDecode> pConfig,
    Pointer<Pointer<Pointer<COMObject>>> pDecoderRenderTargets,
    Pointer<Uint32> pNumSurfaces,
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
            Pointer<DXVA2_ConfigPictureDecode> pConfig,
            Pointer<Pointer<Pointer<COMObject>>> pDecoderRenderTargets,
            Pointer<Uint32> pNumSurfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDeviceGuid,
            Pointer<DXVA2_VideoDesc> pVideoDesc,
            Pointer<DXVA2_ConfigPictureDecode> pConfig,
            Pointer<Pointer<Pointer<COMObject>>> pDecoderRenderTargets,
            Pointer<Uint32> pNumSurfaces,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceGuid,
        pVideoDesc,
        pConfig,
        pDecoderRenderTargets,
        pNumSurfaces,
      );

  int GetBuffer(
    int BufferType,
    Pointer<Pointer> ppBuffer,
    Pointer<Uint32> pBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BufferType,
            Pointer<Pointer> ppBuffer,
            Pointer<Uint32> pBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferType,
            Pointer<Pointer> ppBuffer,
            Pointer<Uint32> pBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        BufferType,
        ppBuffer,
        pBufferSize,
      );

  int ReleaseBuffer(
    int BufferType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferType,
          )>()(
        ptr.ref.lpVtbl,
        BufferType,
      );

  int BeginFrame(
    Pointer<COMObject> pRenderTarget,
    Pointer pvPVPData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer pvPVPData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer pvPVPData,
          )>()(
        ptr.ref.lpVtbl,
        pRenderTarget,
        pvPVPData,
      );

  int EndFrame(
    Pointer<IntPtr> pHandleComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pHandleComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pHandleComplete,
          )>()(
        ptr.ref.lpVtbl,
        pHandleComplete,
      );

  int Execute(
    Pointer<DXVA2_DecodeExecuteParams> pExecuteParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXVA2_DecodeExecuteParams> pExecuteParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXVA2_DecodeExecuteParams> pExecuteParams,
          )>()(
        ptr.ref.lpVtbl,
        pExecuteParams,
      );
}
