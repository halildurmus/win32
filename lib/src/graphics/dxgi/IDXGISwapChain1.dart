// IDXGISwapChain1.dart

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

import '../../graphics/dxgi/IDXGISwapChain.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_IDXGISwapChain1 = '{790A45F7-0D42-4876-983A-0A55CFE6F4AA}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChain1 extends IDXGISwapChain {
  // vtable begins at 18, is 11 entries long.
  IDXGISwapChain1(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc1(
    Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetFullscreenDesc(
    Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetHwnd(
    Pointer<IntPtr> pHwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pHwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pHwnd,
          )>()(
        ptr.ref.lpVtbl,
        pHwnd,
      );

  int GetCoreWindow(
    Pointer<GUID> refiid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refiid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refiid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        refiid,
        ppUnk,
      );

  int Present1(
    int SyncInterval,
    int PresentFlags,
    Pointer<DXGI_PRESENT_PARAMETERS> pPresentParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SyncInterval,
            Uint32 PresentFlags,
            Pointer<DXGI_PRESENT_PARAMETERS> pPresentParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SyncInterval,
            int PresentFlags,
            Pointer<DXGI_PRESENT_PARAMETERS> pPresentParameters,
          )>()(
        ptr.ref.lpVtbl,
        SyncInterval,
        PresentFlags,
        pPresentParameters,
      );

  int IsTemporaryMonoSupported() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int GetRestrictToOutput(
    Pointer<Pointer<COMObject>> ppRestrictToOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRestrictToOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRestrictToOutput,
          )>()(
        ptr.ref.lpVtbl,
        ppRestrictToOutput,
      );

  int SetBackgroundColor(
    Pointer<DXGI_RGBA> pColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_RGBA> pColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_RGBA> pColor,
          )>()(
        ptr.ref.lpVtbl,
        pColor,
      );

  int GetBackgroundColor(
    Pointer<DXGI_RGBA> pColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_RGBA> pColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_RGBA> pColor,
          )>()(
        ptr.ref.lpVtbl,
        pColor,
      );

  int SetRotation(
    int Rotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Rotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Rotation,
          )>()(
        ptr.ref.lpVtbl,
        Rotation,
      );

  int GetRotation(
    Pointer<Int32> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        pRotation,
      );
}
