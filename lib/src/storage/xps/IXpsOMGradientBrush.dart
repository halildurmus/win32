// IXpsOMGradientBrush.dart

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
import '../../storage/xps/IXpsOMGradientStopCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';
import '../../storage/xps/structs.g.dart';

/// @nodoc
const IID_IXpsOMGradientBrush = '{EDB59622-61A2-42C3-BACE-ACF2286C06BF}';

/// {@category Interface}
/// {@category com}
class IXpsOMGradientBrush extends IXpsOMBrush {
  // vtable begins at 7, is 10 entries long.
  IXpsOMGradientBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetGradientStops(
    Pointer<Pointer<COMObject>> gradientStops,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStops,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStops,
          )>()(
        ptr.ref.lpVtbl,
        gradientStops,
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
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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

  int GetSpreadMethod(
    Pointer<Int32> spreadMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> spreadMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> spreadMethod,
          )>()(
        ptr.ref.lpVtbl,
        spreadMethod,
      );

  int SetSpreadMethod(
    int spreadMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 spreadMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int spreadMethod,
          )>()(
        ptr.ref.lpVtbl,
        spreadMethod,
      );

  int GetColorInterpolationMode(
    Pointer<Int32> colorInterpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> colorInterpolationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> colorInterpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        colorInterpolationMode,
      );

  int SetColorInterpolationMode(
    int colorInterpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 colorInterpolationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int colorInterpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        colorInterpolationMode,
      );
}
