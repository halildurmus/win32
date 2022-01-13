// IDXGIFactoryMedia.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../graphics/dxgi/IDXGISwapChain1.dart';
import '../../graphics/dxgi/IDXGIResource.dart';
import '../../graphics/dxgi/IDXGIDecodeSwapChain.dart';

/// @nodoc
const IID_IDXGIFactoryMedia = '{41E7D1F2-A591-4F7B-A2E5-FA9C843E1C12}';

/// {@category Interface}
/// {@category com}
class IDXGIFactoryMedia extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDXGIFactoryMedia(Pointer<COMObject> ptr) : super(ptr);

  int CreateSwapChainForCompositionSurfaceHandle(
    Pointer<COMObject> pDevice,
    int hSurface,
    Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
    Pointer<COMObject> pRestrictToOutput,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            IntPtr hSurface,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int hSurface,
            Pointer<DXGI_SWAP_CHAIN_DESC1> pDesc,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        hSurface,
        pDesc,
        pRestrictToOutput,
        ppSwapChain,
      );

  int CreateDecodeSwapChainForCompositionSurfaceHandle(
    Pointer<COMObject> pDevice,
    int hSurface,
    Pointer<DXGI_DECODE_SWAP_CHAIN_DESC> pDesc,
    Pointer<COMObject> pYuvDecodeBuffers,
    Pointer<COMObject> pRestrictToOutput,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            IntPtr hSurface,
            Pointer<DXGI_DECODE_SWAP_CHAIN_DESC> pDesc,
            Pointer<COMObject> pYuvDecodeBuffers,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int hSurface,
            Pointer<DXGI_DECODE_SWAP_CHAIN_DESC> pDesc,
            Pointer<COMObject> pYuvDecodeBuffers,
            Pointer<COMObject> pRestrictToOutput,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        hSurface,
        pDesc,
        pYuvDecodeBuffers,
        pRestrictToOutput,
        ppSwapChain,
      );
}
