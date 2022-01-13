// IXpsOMTileBrush.dart

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

import '../../storage/xps/IXpsOMBrush.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';

/// @nodoc
const IID_IXpsOMTileBrush = '{0FC2328D-D722-4A54-B2EC-BE90218A789E}';

/// {@category Interface}
/// {@category com}
class IXpsOMTileBrush extends IXpsOMBrush {
  // vtable begins at 7, is 11 entries long.
  IXpsOMTileBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetTransform(
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetTransformLocal(
    Pointer<COMObject> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int SetTransformLookup(
    Pointer<Utf16> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetViewbox(
    Pointer<XPS_RECT> viewbox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> viewbox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> viewbox,
          )>()(
        ptr.ref.lpVtbl,
        viewbox,
      );

  int SetViewbox(
    Pointer<XPS_RECT> viewbox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> viewbox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> viewbox,
          )>()(
        ptr.ref.lpVtbl,
        viewbox,
      );

  int GetViewport(
    Pointer<XPS_RECT> viewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> viewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> viewport,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
      );

  int SetViewport(
    Pointer<XPS_RECT> viewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> viewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> viewport,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
      );

  int GetTileMode(
    Pointer<Int32> tileMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> tileMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> tileMode,
          )>()(
        ptr.ref.lpVtbl,
        tileMode,
      );

  int SetTileMode(
    int tileMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 tileMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tileMode,
          )>()(
        ptr.ref.lpVtbl,
        tileMode,
      );
}
