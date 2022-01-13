// ID2D1SvgStrokeDashArray.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1SvgStrokeDashArray = '{F1C0CA52-92A3-4F00-B4CE-F35691EFD9D9}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgStrokeDashArray extends ID2D1SvgAttribute {
  // vtable begins at 6, is 6 entries long.
  ID2D1SvgStrokeDashArray(Pointer<COMObject> ptr) : super(ptr);

  int RemoveDashesAtEnd(
    int dashesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dashesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dashesCount,
          )>()(
        ptr.ref.lpVtbl,
        dashesCount,
      );

  int UpdateDashes_1(
    Pointer<D2D1_SVG_LENGTH> dashes,
    int dashesCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            Uint32 dashesCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            int dashesCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        dashes,
        dashesCount,
        startIndex,
      );

  int UpdateDashes(
    Pointer<Float> dashes,
    int dashesCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> dashes,
            int dashesCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        dashes,
        dashesCount,
        startIndex,
      );

  int GetDashes_1(
    Pointer<D2D1_SVG_LENGTH> dashes,
    int dashesCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            Uint32 dashesCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            int dashesCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        dashes,
        dashesCount,
        startIndex,
      );

  int GetDashes(
    Pointer<Float> dashes,
    int dashesCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> dashes,
            int dashesCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        dashes,
        dashesCount,
        startIndex,
      );

  int GetDashesCount() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
