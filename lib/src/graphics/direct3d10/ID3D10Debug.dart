// ID3D10Debug.dart

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
import '../../graphics/dxgi/IDXGISwapChain.dart';

/// @nodoc
const IID_ID3D10Debug = '{9B7E4E01-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10Debug extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ID3D10Debug(Pointer<COMObject> ptr) : super(ptr);

  int SetFeatureMask(
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );

  int GetFeatureMask() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetPresentPerRenderOpDelay(
    int Milliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Milliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Milliseconds,
          )>()(
        ptr.ref.lpVtbl,
        Milliseconds,
      );

  int GetPresentPerRenderOpDelay() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetSwapChain(
    Pointer<COMObject> pSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pSwapChain,
      );

  int GetSwapChain(
    Pointer<Pointer<COMObject>> ppSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        ppSwapChain,
      );

  int Validate() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
