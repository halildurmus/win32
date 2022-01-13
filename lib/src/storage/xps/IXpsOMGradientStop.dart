// IXpsOMGradientStop.dart

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
import '../../storage/xps/IXpsOMGradientBrush.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMColorProfileResource.dart';
import '../../storage/xps/IXpsOMGradientStop.dart';

/// @nodoc
const IID_IXpsOMGradientStop = '{5CF4F5CC-3969-49B5-A70A-5550B618FE49}';

/// {@category Interface}
/// {@category com}
class IXpsOMGradientStop extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IXpsOMGradientStop(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> owner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>()(
        ptr.ref.lpVtbl,
        owner,
      );

  int GetOffset(
    Pointer<Float> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int SetOffset(
    double offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int GetColor(
    Pointer<XPS_COLOR> color,
    Pointer<Pointer<COMObject>> colorProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<Pointer<COMObject>> colorProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<Pointer<COMObject>> colorProfile,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
      );

  int SetColor(
    Pointer<XPS_COLOR> color,
    Pointer<COMObject> colorProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
      );

  int Clone(
    Pointer<Pointer<COMObject>> gradientStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStop,
          )>()(
        ptr.ref.lpVtbl,
        gradientStop,
      );
}
