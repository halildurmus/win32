// IDXGISwapChain3.dart

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

import '../../graphics/dxgi/IDXGISwapChain2.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDXGISwapChain3 = '{94D99BDB-F1F8-4AB0-B236-7DA0170EDAB1}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChain3 extends IDXGISwapChain2 {
  // vtable begins at 36, is 4 entries long.
  IDXGISwapChain3(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentBackBufferIndex() => ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CheckColorSpaceSupport(
    int ColorSpace,
    Pointer<Uint32> pColorSpaceSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ColorSpace,
            Pointer<Uint32> pColorSpaceSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ColorSpace,
            Pointer<Uint32> pColorSpaceSupport,
          )>()(
        ptr.ref.lpVtbl,
        ColorSpace,
        pColorSpaceSupport,
      );

  int SetColorSpace1(
    int ColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ColorSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ColorSpace,
          )>()(
        ptr.ref.lpVtbl,
        ColorSpace,
      );

  int ResizeBuffers1(
    int BufferCount,
    int Width,
    int Height,
    int Format,
    int SwapChainFlags,
    Pointer<Uint32> pCreationNodeMask,
    Pointer<Pointer<COMObject>> ppPresentQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferCount,
            Uint32 Width,
            Uint32 Height,
            Uint32 Format,
            Uint32 SwapChainFlags,
            Pointer<Uint32> pCreationNodeMask,
            Pointer<Pointer<COMObject>> ppPresentQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferCount,
            int Width,
            int Height,
            int Format,
            int SwapChainFlags,
            Pointer<Uint32> pCreationNodeMask,
            Pointer<Pointer<COMObject>> ppPresentQueue,
          )>()(
        ptr.ref.lpVtbl,
        BufferCount,
        Width,
        Height,
        Format,
        SwapChainFlags,
        pCreationNodeMask,
        ppPresentQueue,
      );
}
