// IXpsRasterizer.dart

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
import '../../graphics/printing/IXpsRasterizerNotificationCallback.dart';
import '../../graphics/imaging/IWICBitmap.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsRasterizer = '{7567CFC8-C156-47A8-9DAC-11A2AE5BDD6B}';

/// {@category Interface}
/// {@category com}
class IXpsRasterizer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXpsRasterizer(Pointer<COMObject> ptr) : super(ptr);

  int RasterizeRect(
    int x,
    int y,
    int width,
    int height,
    Pointer<COMObject> notificationCallback,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
            Int32 width,
            Int32 height,
            Pointer<COMObject> notificationCallback,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
            int width,
            int height,
            Pointer<COMObject> notificationCallback,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        width,
        height,
        notificationCallback,
        bitmap,
      );

  int SetMinimalLineWidth(
    int width,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 width,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
          )>()(
        ptr.ref.lpVtbl,
        width,
      );
}
