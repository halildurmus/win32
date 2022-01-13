// IDirectManipulationContent.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IDirectManipulationContent = '{B89962CB-3D89-442B-BB58-5098FA0F9F16}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationContent extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirectManipulationContent(Pointer<COMObject> ptr) : super(ptr);

  int GetContentRect(
    Pointer<RECT> contentSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> contentSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> contentSize,
          )>()(
        ptr.ref.lpVtbl,
        contentSize,
      );

  int SetContentRect(
    Pointer<RECT> contentSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> contentSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> contentSize,
          )>()(
        ptr.ref.lpVtbl,
        contentSize,
      );

  int GetViewport(
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        object,
      );

  int GetTag(
    Pointer<GUID> riid,
    Pointer<Pointer> object,
    Pointer<Uint32> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
            Pointer<Uint32> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
            Pointer<Uint32> id,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        object,
        id,
      );

  int SetTag(
    Pointer<COMObject> object,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Uint32 id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int id,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
      );

  int GetOutputTransform(
    Pointer<Float> matrix,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetContentTransform(
    Pointer<Float> matrix,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SyncContentTransform(
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
}
