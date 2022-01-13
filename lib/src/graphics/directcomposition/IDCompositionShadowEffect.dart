// IDCompositionShadowEffect.dart

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

import '../../graphics/directcomposition/IDCompositionFilterEffect.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_IDCompositionShadowEffect = '{4AD18AC0-CFD2-4C2F-BB62-96E54FDB6879}';

/// {@category Interface}
/// {@category com}
class IDCompositionShadowEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 11 entries long.
  IDCompositionShadowEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetStandardDeviation_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetStandardDeviation(
    double amount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amount,
          )>()(
        ptr.ref.lpVtbl,
        amount,
      );

  int SetColor(
    Pointer<D2D_VECTOR_4F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_4F> color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_4F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  int SetRed_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetRed(
    double amount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amount,
          )>()(
        ptr.ref.lpVtbl,
        amount,
      );

  int SetGreen_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetGreen(
    double amount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amount,
          )>()(
        ptr.ref.lpVtbl,
        amount,
      );

  int SetBlue_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetBlue(
    double amount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amount,
          )>()(
        ptr.ref.lpVtbl,
        amount,
      );

  int SetAlpha_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetAlpha(
    double amount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amount,
          )>()(
        ptr.ref.lpVtbl,
        amount,
      );
}
