// ID2D1Bitmap1.dart

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

import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/direct2d/ID2D1ColorContext.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Bitmap1 = '{A898A84C-3873-4588-B08B-EBBF978DF041}';

/// {@category Interface}
/// {@category com}
class ID2D1Bitmap1 extends ID2D1Bitmap {
  // vtable begins at 11, is 5 entries long.
  ID2D1Bitmap1(Pointer<COMObject> ptr) : super(ptr);

  void GetColorContext(
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        colorContext,
      );

  int GetOptions() => ptr.ref.lpVtbl.value
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

  int GetSurface(
    Pointer<Pointer<COMObject>> dxgiSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dxgiSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dxgiSurface,
          )>()(
        ptr.ref.lpVtbl,
        dxgiSurface,
      );

  int $Map(
    int options,
    Pointer<D2D1_MAPPED_RECT> mappedRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<D2D1_MAPPED_RECT> mappedRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<D2D1_MAPPED_RECT> mappedRect,
          )>()(
        ptr.ref.lpVtbl,
        options,
        mappedRect,
      );

  int Unmap() => ptr.ref.lpVtbl.value
          .elementAt(15)
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
