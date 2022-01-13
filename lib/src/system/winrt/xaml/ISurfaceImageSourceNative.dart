// ISurfaceImageSourceNative.dart

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
import '../../../graphics/dxgi/IDXGIDevice.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/dxgi/IDXGISurface.dart';

/// @nodoc
const IID_ISurfaceImageSourceNative = '{F2E9EDC1-D307-4525-9886-0FAFAA44163C}';

/// {@category Interface}
/// {@category com}
class ISurfaceImageSourceNative extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISurfaceImageSourceNative(Pointer<COMObject> ptr) : super(ptr);

  int SetDevice(
    Pointer<COMObject> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> device,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> device,
          )>()(
        ptr.ref.lpVtbl,
        device,
      );

  int BeginDraw(
    RECT updateRect,
    Pointer<Pointer<COMObject>> surface,
    Pointer<POINT> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT updateRect,
            Pointer<Pointer<COMObject>> surface,
            Pointer<POINT> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT updateRect,
            Pointer<Pointer<COMObject>> surface,
            Pointer<POINT> offset,
          )>()(
        ptr.ref.lpVtbl,
        updateRect,
        surface,
        offset,
      );

  int EndDraw() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
