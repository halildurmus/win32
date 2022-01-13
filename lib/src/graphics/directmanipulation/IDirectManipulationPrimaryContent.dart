// IDirectManipulationPrimaryContent.dart

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
import '../../graphics/directmanipulation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationPrimaryContent =
    '{C12851E4-1698-4625-B9B1-7CA3EC18630B}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationPrimaryContent extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDirectManipulationPrimaryContent(Pointer<COMObject> ptr) : super(ptr);

  int SetSnapInterval(
    int motion,
    double interval,
    double offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 motion,
            Float interval,
            Float offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int motion,
            double interval,
            double offset,
          )>()(
        ptr.ref.lpVtbl,
        motion,
        interval,
        offset,
      );

  int SetSnapPoints(
    int motion,
    Pointer<Float> points,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 motion,
            Pointer<Float> points,
            Uint32 pointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int motion,
            Pointer<Float> points,
            int pointCount,
          )>()(
        ptr.ref.lpVtbl,
        motion,
        points,
        pointCount,
      );

  int SetSnapType(
    int motion,
    int type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 motion,
            Int32 type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int motion,
            int type,
          )>()(
        ptr.ref.lpVtbl,
        motion,
        type,
      );

  int SetSnapCoordinate(
    int motion,
    int coordinate,
    double origin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 motion,
            Int32 coordinate,
            Float origin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int motion,
            int coordinate,
            double origin,
          )>()(
        ptr.ref.lpVtbl,
        motion,
        coordinate,
        origin,
      );

  int SetZoomBoundaries(
    double zoomMinimum,
    double zoomMaximum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float zoomMinimum,
            Float zoomMaximum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double zoomMinimum,
            double zoomMaximum,
          )>()(
        ptr.ref.lpVtbl,
        zoomMinimum,
        zoomMaximum,
      );

  int SetHorizontalAlignment(
    int alignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alignment,
          )>()(
        ptr.ref.lpVtbl,
        alignment,
      );

  int SetVerticalAlignment(
    int alignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alignment,
          )>()(
        ptr.ref.lpVtbl,
        alignment,
      );

  int GetInertiaEndTransform(
    Pointer<Float> matrix,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> matrix,
            Uint32 pointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> matrix,
            int pointCount,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
        pointCount,
      );

  int GetCenterPoint(
    Pointer<Float> centerX,
    Pointer<Float> centerY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> centerX,
            Pointer<Float> centerY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> centerX,
            Pointer<Float> centerY,
          )>()(
        ptr.ref.lpVtbl,
        centerX,
        centerY,
      );
}

/// @nodoc
const CLSID_DirectManipulationPrimaryContent =
    '{CAA02661-D59E-41C7-8393-3BA3BACB6B57}';

/// {@category com}
class DirectManipulationPrimaryContent
    extends IDirectManipulationPrimaryContent {
  DirectManipulationPrimaryContent(Pointer<COMObject> ptr) : super(ptr);

  factory DirectManipulationPrimaryContent.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_DirectManipulationPrimaryContent);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IDirectManipulationPrimaryContent);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DirectManipulationPrimaryContent(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
