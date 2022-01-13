// IDXGISwapChain.dart

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

import '../../graphics/dxgi/IDXGIDeviceSubObject.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_IDXGISwapChain = '{310D36A0-D2E7-4C0A-AA04-6A9D23B8886A}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChain extends IDXGIDeviceSubObject {
  // vtable begins at 8, is 10 entries long.
  IDXGISwapChain(Pointer<COMObject> ptr) : super(ptr);

  int Present(
    int SyncInterval,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SyncInterval,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SyncInterval,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        SyncInterval,
        Flags,
      );

  int GetBuffer(
    int Buffer,
    Pointer<GUID> riid,
    Pointer<Pointer> ppSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Buffer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Buffer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSurface,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        riid,
        ppSurface,
      );

  int SetFullscreenState(
    int Fullscreen,
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Fullscreen,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Fullscreen,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        Fullscreen,
        pTarget,
      );

  int GetFullscreenState(
    Pointer<Int32> pFullscreen,
    Pointer<Pointer<COMObject>> ppTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFullscreen,
            Pointer<Pointer<COMObject>> ppTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFullscreen,
            Pointer<Pointer<COMObject>> ppTarget,
          )>()(
        ptr.ref.lpVtbl,
        pFullscreen,
        ppTarget,
      );

  int GetDesc(
    Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int ResizeBuffers(
    int BufferCount,
    int Width,
    int Height,
    int NewFormat,
    int SwapChainFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferCount,
            Uint32 Width,
            Uint32 Height,
            Uint32 NewFormat,
            Uint32 SwapChainFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferCount,
            int Width,
            int Height,
            int NewFormat,
            int SwapChainFlags,
          )>()(
        ptr.ref.lpVtbl,
        BufferCount,
        Width,
        Height,
        NewFormat,
        SwapChainFlags,
      );

  int ResizeTarget(
    Pointer<DXGI_MODE_DESC> pNewTargetParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MODE_DESC> pNewTargetParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MODE_DESC> pNewTargetParameters,
          )>()(
        ptr.ref.lpVtbl,
        pNewTargetParameters,
      );

  int GetContainingOutput(
    Pointer<Pointer<COMObject>> ppOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOutput,
          )>()(
        ptr.ref.lpVtbl,
        ppOutput,
      );

  int GetFrameStatistics(
    Pointer<DXGI_FRAME_STATISTICS> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetLastPresentCount(
    Pointer<Uint32> pLastPresentCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLastPresentCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLastPresentCount,
          )>()(
        ptr.ref.lpVtbl,
        pLastPresentCount,
      );
}
