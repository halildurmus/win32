// IDCompositionLinearTransferEffect.dart

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

/// @nodoc
const IID_IDCompositionLinearTransferEffect =
    '{4305EE5B-C4A0-4C88-9385-67124E017683}';

/// {@category Interface}
/// {@category com}
class IDCompositionLinearTransferEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 21 entries long.
  IDCompositionLinearTransferEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetRedYIntercept_1(
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

  int SetRedYIntercept(
    double redYIntercept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float redYIntercept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double redYIntercept,
          )>()(
        ptr.ref.lpVtbl,
        redYIntercept,
      );

  int SetRedSlope_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetRedSlope(
    double redSlope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float redSlope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double redSlope,
          )>()(
        ptr.ref.lpVtbl,
        redSlope,
      );

  int SetRedDisable(
    int redDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 redDisable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int redDisable,
          )>()(
        ptr.ref.lpVtbl,
        redDisable,
      );

  int SetGreenYIntercept_1(
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

  int SetGreenYIntercept(
    double greenYIntercept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float greenYIntercept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double greenYIntercept,
          )>()(
        ptr.ref.lpVtbl,
        greenYIntercept,
      );

  int SetGreenSlope_1(
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

  int SetGreenSlope(
    double greenSlope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float greenSlope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double greenSlope,
          )>()(
        ptr.ref.lpVtbl,
        greenSlope,
      );

  int SetGreenDisable(
    int greenDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 greenDisable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int greenDisable,
          )>()(
        ptr.ref.lpVtbl,
        greenDisable,
      );

  int SetBlueYIntercept_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetBlueYIntercept(
    double blueYIntercept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float blueYIntercept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double blueYIntercept,
          )>()(
        ptr.ref.lpVtbl,
        blueYIntercept,
      );

  int SetBlueSlope_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int SetBlueSlope(
    double blueSlope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float blueSlope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double blueSlope,
          )>()(
        ptr.ref.lpVtbl,
        blueSlope,
      );

  int SetBlueDisable(
    int blueDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 blueDisable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int blueDisable,
          )>()(
        ptr.ref.lpVtbl,
        blueDisable,
      );

  int SetAlphaYIntercept_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetAlphaYIntercept(
    double alphaYIntercept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float alphaYIntercept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double alphaYIntercept,
          )>()(
        ptr.ref.lpVtbl,
        alphaYIntercept,
      );

  int SetAlphaSlope_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SetAlphaSlope(
    double alphaSlope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float alphaSlope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double alphaSlope,
          )>()(
        ptr.ref.lpVtbl,
        alphaSlope,
      );

  int SetAlphaDisable(
    int alphaDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alphaDisable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alphaDisable,
          )>()(
        ptr.ref.lpVtbl,
        alphaDisable,
      );

  int SetClampOutput(
    int clampOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 clampOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int clampOutput,
          )>()(
        ptr.ref.lpVtbl,
        clampOutput,
      );
}
