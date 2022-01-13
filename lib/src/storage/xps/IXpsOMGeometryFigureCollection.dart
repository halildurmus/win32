// IXpsOMGeometryFigureCollection.dart

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
import '../../storage/xps/IXpsOMGeometryFigure.dart';

/// @nodoc
const IID_IXpsOMGeometryFigureCollection =
    '{FD48C3F3-A58E-4B5A-8826-1DE54ABE72B2}';

/// {@category Interface}
/// {@category com}
class IXpsOMGeometryFigureCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IXpsOMGeometryFigureCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetAt(
    int index,
    Pointer<Pointer<COMObject>> geometryFigure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> geometryFigure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> geometryFigure,
          )>()(
        ptr.ref.lpVtbl,
        index,
        geometryFigure,
      );

  int InsertAt(
    int index,
    Pointer<COMObject> geometryFigure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> geometryFigure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> geometryFigure,
          )>()(
        ptr.ref.lpVtbl,
        index,
        geometryFigure,
      );

  int RemoveAt(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int SetAt(
    int index,
    Pointer<COMObject> geometryFigure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> geometryFigure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> geometryFigure,
          )>()(
        ptr.ref.lpVtbl,
        index,
        geometryFigure,
      );

  int Append(
    Pointer<COMObject> geometryFigure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometryFigure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> geometryFigure,
          )>()(
        ptr.ref.lpVtbl,
        geometryFigure,
      );
}
