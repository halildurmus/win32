// ID2D1SvgPaint.dart

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

import '../../graphics/direct2d/ID2D1SvgAttribute.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1SvgPaint = '{D59BAB0A-68A2-455B-A5DC-9EB2854E2490}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgPaint extends ID2D1SvgAttribute {
  // vtable begins at 6, is 7 entries long.
  ID2D1SvgPaint(Pointer<COMObject> ptr) : super(ptr);

  int SetPaintType(
    int paintType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 paintType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int paintType,
          )>()(
        ptr.ref.lpVtbl,
        paintType,
      );

  int GetPaintType() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetColor(
    Pointer<D2D1_COLOR_F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  void GetColor(
    Pointer<D2D1_COLOR_F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  int SetId(
    Pointer<Utf16> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> id,
          )>()(
        ptr.ref.lpVtbl,
        id,
      );

  int GetId(
    Pointer<Utf16> id,
    int idCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> id,
            Uint32 idCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> id,
            int idCount,
          )>()(
        ptr.ref.lpVtbl,
        id,
        idCount,
      );

  int GetIdLength() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
}
