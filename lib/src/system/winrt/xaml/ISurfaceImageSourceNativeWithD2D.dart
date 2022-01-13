// ISurfaceImageSourceNativeWithD2D.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISurfaceImageSourceNativeWithD2D =
    '{54298223-41E1-4A41-9C08-02E8256864A1}';

/// {@category Interface}
/// {@category com}
class ISurfaceImageSourceNativeWithD2D extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISurfaceImageSourceNativeWithD2D(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<RECT> updateRect,
    Pointer<GUID> iid,
    Pointer<Pointer> updateObject,
    Pointer<POINT> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> updateRect,
            Pointer<GUID> iid,
            Pointer<Pointer> updateObject,
            Pointer<POINT> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> updateRect,
            Pointer<GUID> iid,
            Pointer<Pointer> updateObject,
            Pointer<POINT> offset,
          )>()(
        ptr.ref.lpVtbl,
        updateRect,
        iid,
        updateObject,
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

  int SuspendDraw() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int ResumeDraw() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
