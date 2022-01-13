// IDXGIFactory.dart

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
import '../../graphics/dxgi/IDXGIAdapter.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGISwapChain.dart';

/// @nodoc
const IID_IDXGIFactory = '{7B7166EC-21C7-44AE-B21A-C9AE321AE369}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory extends IDXGIObject {
  // vtable begins at 7, is 5 entries long.
  IDXGIFactory(Pointer<COMObject> ptr) : super(ptr);

  int EnumAdapters(
    int Adapter,
    Pointer<Pointer<COMObject>> ppAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        ppAdapter,
      );

  int MakeWindowAssociation(
    int WindowHandle,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr WindowHandle,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WindowHandle,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        WindowHandle,
        Flags,
      );

  int GetWindowAssociation(
    Pointer<IntPtr> pWindowHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pWindowHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pWindowHandle,
          )>()(
        ptr.ref.lpVtbl,
        pWindowHandle,
      );

  int CreateSwapChain(
    Pointer<COMObject> pDevice,
    Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<DXGI_SWAP_CHAIN_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pDesc,
        ppSwapChain,
      );

  int CreateSoftwareAdapter(
    int Module,
    Pointer<Pointer<COMObject>> ppAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr Module,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        ppAdapter,
      );
}
