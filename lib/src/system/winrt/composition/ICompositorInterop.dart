// ICompositorInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ICompositorInterop = '{25297D5C-3AD4-4C9C-B5CF-E36A38512330}';

/// {@category Interface}
/// {@category com}
class ICompositorInterop extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ICompositorInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateCompositionSurfaceForHandle(
    int swapChain,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr swapChain,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int swapChain,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        swapChain,
        result,
      );

  int CreateCompositionSurfaceForSwapChain(
    Pointer<COMObject> swapChain,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> swapChain,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> swapChain,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        swapChain,
        result,
      );

  int CreateGraphicsDevice(
    Pointer<COMObject> renderingDevice,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> renderingDevice,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> renderingDevice,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        renderingDevice,
        result,
      );
}
