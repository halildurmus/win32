// IDXGIFactory2.dart

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

import '../../graphics/dxgi/IDXGIFactory1.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../graphics/dxgi/IDXGISwapChain1.dart';

/// @nodoc
const IID_IDXGIFactory2 = '{50C83A1C-E072-4C48-87B0-3630FA36A6D0}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory2 extends IDXGIFactory1 {
  // vtable begins at 14, is 11 entries long.
  IDXGIFactory2(Pointer<COMObject> ptr) : super(ptr);

  int IsWindowedStereoEnabled() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int CreateSwapChainForHwnd(
    Pointer<COMObject> pDevice,
    int hWnd,
    Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
    Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pFullscreenDesc,
    Pointer<COMObject> pRestrictToOutput,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            IntPtr hWnd,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pFullscreenDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int hWnd,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<DXGI_SWAP_CHAIN_FULLSCREEN_DESC> pFullscreenDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        hWnd,
        pDesc,
        pFullscreenDesc,
        pRestrictToOutput,
        ppSwapChain,
      );

  int CreateSwapChainForCoreWindow(
    Pointer<COMObject> pDevice,
    Pointer<COMObject> pWindow,
    Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
    Pointer<COMObject> pRestrictToOutput,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<COMObject> pWindow,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<COMObject> pWindow,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pWindow,
        pDesc,
        pRestrictToOutput,
        ppSwapChain,
      );

  int GetSharedResourceAdapterLuid(
    int hResource,
    Pointer<LUID> pLuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hResource,
            Pointer<LUID> pLuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResource,
            Pointer<LUID> pLuid,
          )>()(
        ptr.ref.lpVtbl,
        hResource,
        pLuid,
      );

  int RegisterStereoStatusWindow(
    int WindowHandle,
    int wMsg,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr WindowHandle,
            Uint32 wMsg,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WindowHandle,
            int wMsg,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        WindowHandle,
        wMsg,
        pdwCookie,
      );

  int RegisterStereoStatusEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        pdwCookie,
      );

  void UnregisterStereoStatus(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int RegisterOcclusionStatusWindow(
    int WindowHandle,
    int wMsg,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr WindowHandle,
            Uint32 wMsg,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WindowHandle,
            int wMsg,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        WindowHandle,
        wMsg,
        pdwCookie,
      );

  int RegisterOcclusionStatusEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        pdwCookie,
      );

  void UnregisterOcclusionStatus(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int CreateSwapChainForComposition(
    Pointer<COMObject> pDevice,
    Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
    Pointer<COMObject> pRestrictToOutput,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pDesc,
        pRestrictToOutput,
        ppSwapChain,
      );
}
