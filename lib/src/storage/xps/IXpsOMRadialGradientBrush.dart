// IXpsOMRadialGradientBrush.dart

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

import '../../storage/xps/IXpsOMGradientBrush.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMRadialGradientBrush.dart';

/// @nodoc
const IID_IXpsOMRadialGradientBrush = '{75F207E5-08BF-413C-96B1-B82B4064176B}';

/// {@category Interface}
/// {@category com}
class IXpsOMRadialGradientBrush extends IXpsOMGradientBrush {
  // vtable begins at 17, is 7 entries long.
  IXpsOMRadialGradientBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetCenter(
    Pointer<XPS_POINT> center,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> center,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> center,
          )>()(
        ptr.ref.lpVtbl,
        center,
      );

  int SetCenter(
    Pointer<XPS_POINT> center,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> center,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> center,
          )>()(
        ptr.ref.lpVtbl,
        center,
      );

  int GetRadiiSizes(
    Pointer<XPS_SIZE> radiiSizes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> radiiSizes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> radiiSizes,
          )>()(
        ptr.ref.lpVtbl,
        radiiSizes,
      );

  int SetRadiiSizes(
    Pointer<XPS_SIZE> radiiSizes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> radiiSizes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> radiiSizes,
          )>()(
        ptr.ref.lpVtbl,
        radiiSizes,
      );

  int GetGradientOrigin(
    Pointer<XPS_POINT> origin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>()(
        ptr.ref.lpVtbl,
        origin,
      );

  int SetGradientOrigin(
    Pointer<XPS_POINT> origin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>()(
        ptr.ref.lpVtbl,
        origin,
      );

  int Clone(
    Pointer<Pointer<COMObject>> radialGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        radialGradientBrush,
      );
}
