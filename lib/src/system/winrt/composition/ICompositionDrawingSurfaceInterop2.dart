// ICompositionDrawingSurfaceInterop2.dart

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

import '../../../system/winrt/composition/ICompositionDrawingSurfaceInterop.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICompositionDrawingSurfaceInterop2 =
    '{41E64AAE-98C0-4239-8E95-A330DD6AA18B}';

/// {@category Interface}
/// {@category com}
class ICompositionDrawingSurfaceInterop2
    extends ICompositionDrawingSurfaceInterop {
  // vtable begins at 9, is 1 entries long.
  ICompositionDrawingSurfaceInterop2(Pointer<COMObject> ptr) : super(ptr);

  int CopySurface(
    Pointer<COMObject> destinationResource,
    int destinationOffsetX,
    int destinationOffsetY,
    Pointer<RECT> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> destinationResource,
            Int32 destinationOffsetX,
            Int32 destinationOffsetY,
            Pointer<RECT> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> destinationResource,
            int destinationOffsetX,
            int destinationOffsetY,
            Pointer<RECT> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        destinationResource,
        destinationOffsetX,
        destinationOffsetY,
        sourceRectangle,
      );
}
