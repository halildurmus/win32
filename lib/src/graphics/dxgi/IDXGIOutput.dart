// IDXGIOutput.dart

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

import '../../graphics/dxgi/IDXGIObject.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/dxgi/IDXGISurface.dart';

/// @nodoc
const IID_IDXGIOutput = '{AE02EEDB-C735-4690-8D52-5A8DC20213AA}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput extends IDXGIObject {
  // vtable begins at 7, is 12 entries long.
  IDXGIOutput(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc(
    Pointer<DXGI_OUTPUT_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_OUTPUT_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_OUTPUT_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetDisplayModeList(
    int EnumFormat,
    int Flags,
    Pointer<Uint32> pNumModes,
    Pointer<DXGI_MODE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EnumFormat,
            Uint32 Flags,
            Pointer<Uint32> pNumModes,
            Pointer<DXGI_MODE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EnumFormat,
            int Flags,
            Pointer<Uint32> pNumModes,
            Pointer<DXGI_MODE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        EnumFormat,
        Flags,
        pNumModes,
        pDesc,
      );

  int FindClosestMatchingMode(
    Pointer<DXGI_MODE_DESC> pModeToMatch,
    Pointer<DXGI_MODE_DESC> pClosestMatch,
    Pointer<COMObject> pConcernedDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MODE_DESC> pModeToMatch,
            Pointer<DXGI_MODE_DESC> pClosestMatch,
            Pointer<COMObject> pConcernedDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MODE_DESC> pModeToMatch,
            Pointer<DXGI_MODE_DESC> pClosestMatch,
            Pointer<COMObject> pConcernedDevice,
          )>()(
        ptr.ref.lpVtbl,
        pModeToMatch,
        pClosestMatch,
        pConcernedDevice,
      );

  int WaitForVBlank() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int TakeOwnership(
    Pointer<COMObject> pDevice,
    int Exclusive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 Exclusive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int Exclusive,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        Exclusive,
      );

  void ReleaseOwnership() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetGammaControlCapabilities(
    Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES> pGammaCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES> pGammaCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES> pGammaCaps,
          )>()(
        ptr.ref.lpVtbl,
        pGammaCaps,
      );

  int SetGammaControl(
    Pointer<DXGI_GAMMA_CONTROL> pArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL> pArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL> pArray,
          )>()(
        ptr.ref.lpVtbl,
        pArray,
      );

  int GetGammaControl(
    Pointer<DXGI_GAMMA_CONTROL> pArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL> pArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_GAMMA_CONTROL> pArray,
          )>()(
        ptr.ref.lpVtbl,
        pArray,
      );

  int SetDisplaySurface(
    Pointer<COMObject> pScanoutSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pScanoutSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pScanoutSurface,
          )>()(
        ptr.ref.lpVtbl,
        pScanoutSurface,
      );

  int GetDisplaySurfaceData(
    Pointer<COMObject> pDestination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestination,
          )>()(
        ptr.ref.lpVtbl,
        pDestination,
      );

  int GetFrameStatistics(
    Pointer<DXGI_FRAME_STATISTICS> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_FRAME_STATISTICS> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_FRAME_STATISTICS> pStats,
          )>()(
        ptr.ref.lpVtbl,
        pStats,
      );
}
