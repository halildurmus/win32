// IDCompositionSurfaceFactory.dart

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
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionSurface.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionVirtualSurface.dart';

/// @nodoc
const IID_IDCompositionSurfaceFactory =
    '{E334BC12-3937-4E02-85EB-FCF4EB30D2C8}';

/// {@category Interface}
/// {@category com}
class IDCompositionSurfaceFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDCompositionSurfaceFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateSurface(
    int width,
    int height,
    int pixelFormat,
    int alphaMode,
    Pointer<Pointer<COMObject>> surface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 width,
            Uint32 height,
            Uint32 pixelFormat,
            Uint32 alphaMode,
            Pointer<Pointer<COMObject>> surface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
            int pixelFormat,
            int alphaMode,
            Pointer<Pointer<COMObject>> surface,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
        pixelFormat,
        alphaMode,
        surface,
      );

  int CreateVirtualSurface(
    int initialWidth,
    int initialHeight,
    int pixelFormat,
    int alphaMode,
    Pointer<Pointer<COMObject>> virtualSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 initialWidth,
            Uint32 initialHeight,
            Uint32 pixelFormat,
            Uint32 alphaMode,
            Pointer<Pointer<COMObject>> virtualSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int initialWidth,
            int initialHeight,
            int pixelFormat,
            int alphaMode,
            Pointer<Pointer<COMObject>> virtualSurface,
          )>()(
        ptr.ref.lpVtbl,
        initialWidth,
        initialHeight,
        pixelFormat,
        alphaMode,
        virtualSurface,
      );
}
