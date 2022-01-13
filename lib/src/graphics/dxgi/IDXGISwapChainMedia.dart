// IDXGISwapChainMedia.dart

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
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGISwapChainMedia = '{DD95B90B-F05F-4F6A-BD65-25BFB264BD84}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChainMedia extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDXGISwapChainMedia(Pointer<COMObject> ptr) : super(ptr);

  int GetFrameStatisticsMedia(
    Pointer<DXGI_FRAME_STATISTICS_MEDIA> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_FRAME_STATISTICS_MEDIA> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_FRAME_STATISTICS_MEDIA> pStats,
          )>()(
        ptr.ref.lpVtbl,
        pStats,
      );

  int SetPresentDuration(
    int Duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Duration,
          )>()(
        ptr.ref.lpVtbl,
        Duration,
      );

  int CheckPresentDurationSupport(
    int DesiredPresentDuration,
    Pointer<Uint32> pClosestSmallerPresentDuration,
    Pointer<Uint32> pClosestLargerPresentDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 DesiredPresentDuration,
            Pointer<Uint32> pClosestSmallerPresentDuration,
            Pointer<Uint32> pClosestLargerPresentDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DesiredPresentDuration,
            Pointer<Uint32> pClosestSmallerPresentDuration,
            Pointer<Uint32> pClosestLargerPresentDuration,
          )>()(
        ptr.ref.lpVtbl,
        DesiredPresentDuration,
        pClosestSmallerPresentDuration,
        pClosestLargerPresentDuration,
      );
}
