// IDXGISwapChain2.dart

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

import '../../graphics/dxgi/IDXGISwapChain1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGISwapChain2 = '{A8BE2AC4-199F-4946-B331-79599FB98DE7}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChain2 extends IDXGISwapChain1 {
  // vtable begins at 29, is 7 entries long.
  IDXGISwapChain2(Pointer<COMObject> ptr) : super(ptr);

  int SetSourceSize(
    int Width,
    int Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
      );

  int GetSourceSize(
    Pointer<Uint32> pWidth,
    Pointer<Uint32> pHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pWidth,
            Pointer<Uint32> pHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pWidth,
            Pointer<Uint32> pHeight,
          )>()(
        ptr.ref.lpVtbl,
        pWidth,
        pHeight,
      );

  int SetMaximumFrameLatency(
    int MaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 MaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        MaxLatency,
      );

  int GetMaximumFrameLatency(
    Pointer<Uint32> pMaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        pMaxLatency,
      );

  int GetFrameLatencyWaitableObject() => ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetMatrixTransform(
    Pointer<DXGI_MATRIX_3X2_F> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MATRIX_3X2_F> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MATRIX_3X2_F> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );

  int GetMatrixTransform(
    Pointer<DXGI_MATRIX_3X2_F> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MATRIX_3X2_F> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MATRIX_3X2_F> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );
}
