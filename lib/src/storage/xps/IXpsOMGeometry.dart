// IXpsOMGeometry.dart

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

import '../../storage/xps/IXpsOMShareable.dart';
import '../../storage/xps/IXpsOMGeometryFigureCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';
import '../../storage/xps/IXpsOMGeometry.dart';

/// @nodoc
const IID_IXpsOMGeometry = '{64FCF3D7-4D58-44BA-AD73-A13AF6492072}';

/// {@category Interface}
/// {@category com}
class IXpsOMGeometry extends IXpsOMShareable {
  // vtable begins at 5, is 9 entries long.
  IXpsOMGeometry(Pointer<COMObject> ptr) : super(ptr);

  int GetFigures(
    Pointer<Pointer<COMObject>> figures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> figures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> figures,
          )>()(
        ptr.ref.lpVtbl,
        figures,
      );

  int GetFillRule(
    Pointer<Int32> fillRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fillRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fillRule,
          )>()(
        ptr.ref.lpVtbl,
        fillRule,
      );

  int SetFillRule(
    int fillRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fillRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fillRule,
          )>()(
        ptr.ref.lpVtbl,
        fillRule,
      );

  int GetTransform(
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int GetTransformLocal(
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int SetTransformLocal(
    Pointer<COMObject> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int GetTransformLookup(
    Pointer<Pointer<Utf16>> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int SetTransformLookup(
    Pointer<Utf16> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int Clone(
    Pointer<Pointer<COMObject>> geometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
      );
}
