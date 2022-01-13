// IDXVAHD_Device.dart

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
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IDXVAHD_VideoProcessor.dart';

/// @nodoc
const IID_IDXVAHD_Device = '{95F12DFD-D77E-49BE-815F-57D579634D6D}';

/// {@category Interface}
/// {@category com}
class IDXVAHD_Device extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDXVAHD_Device(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoSurface(
    int Width,
    int Height,
    int Format,
    int Pool,
    int Usage,
    int Type,
    int NumSurfaces,
    Pointer<Pointer<COMObject>> ppSurfaces,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Format,
            Uint32 Pool,
            Uint32 Usage,
            Int32 Type,
            Uint32 NumSurfaces,
            Pointer<Pointer<COMObject>> ppSurfaces,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Format,
            int Pool,
            int Usage,
            int Type,
            int NumSurfaces,
            Pointer<Pointer<COMObject>> ppSurfaces,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Format,
        Pool,
        Usage,
        Type,
        NumSurfaces,
        ppSurfaces,
        pSharedHandle,
      );

  int GetVideoProcessorDeviceCaps(
    Pointer<DXVAHD_VPDEVCAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXVAHD_VPDEVCAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXVAHD_VPDEVCAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetVideoProcessorOutputFormats(
    int Count,
    Pointer<Uint32> pFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> pFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> pFormats,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pFormats,
      );

  int GetVideoProcessorInputFormats(
    int Count,
    Pointer<Uint32> pFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> pFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> pFormats,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pFormats,
      );

  int GetVideoProcessorCaps(
    int Count,
    Pointer<DXVAHD_VPCAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<DXVAHD_VPCAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<DXVAHD_VPCAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pCaps,
      );

  int GetVideoProcessorCustomRates(
    Pointer<GUID> pVPGuid,
    int Count,
    Pointer<DXVAHD_CUSTOM_RATE_DATA> pRates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pVPGuid,
            Uint32 Count,
            Pointer<DXVAHD_CUSTOM_RATE_DATA> pRates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pVPGuid,
            int Count,
            Pointer<DXVAHD_CUSTOM_RATE_DATA> pRates,
          )>()(
        ptr.ref.lpVtbl,
        pVPGuid,
        Count,
        pRates,
      );

  int GetVideoProcessorFilterRange(
    int Filter,
    Pointer<DXVAHD_FILTER_RANGE_DATA> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Filter,
            Pointer<DXVAHD_FILTER_RANGE_DATA> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Filter,
            Pointer<DXVAHD_FILTER_RANGE_DATA> pRange,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        pRange,
      );

  int CreateVideoProcessor(
    Pointer<GUID> pVPGuid,
    Pointer<Pointer<COMObject>> ppVideoProcessor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pVPGuid,
            Pointer<Pointer<COMObject>> ppVideoProcessor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pVPGuid,
            Pointer<Pointer<COMObject>> ppVideoProcessor,
          )>()(
        ptr.ref.lpVtbl,
        pVPGuid,
        ppVideoProcessor,
      );
}
