// IDXGIDecodeSwapChain.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGIDecodeSwapChain = '{2633066B-4514-4C7A-8FD8-12EA98059D18}';

/// {@category Interface}
/// {@category com}
class IDXGIDecodeSwapChain extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDXGIDecodeSwapChain(Pointer<COMObject> ptr) : super(ptr);

  int PresentBuffer(
    int BufferToPresent,
    int SyncInterval,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferToPresent,
            Uint32 SyncInterval,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferToPresent,
            int SyncInterval,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        BufferToPresent,
        SyncInterval,
        Flags,
      );

  int SetSourceRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int SetTargetRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int SetDestSize(
    int Width,
    int Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetSourceRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int GetTargetRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int GetDestSize(
    Pointer<Uint32> pWidth,
    Pointer<Uint32> pHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetColorSpace(
    int ColorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetColorSpace() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
}
