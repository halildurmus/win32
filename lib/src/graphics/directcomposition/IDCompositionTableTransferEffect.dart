// IDCompositionTableTransferEffect.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionTableTransferEffect =
    '{9B7E82E2-69C5-4EB4-A5F5-A7033F5132CD}';

/// {@category Interface}
/// {@category com}
class IDCompositionTableTransferEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 17 entries long.
  IDCompositionTableTransferEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetRedTable(
    Pointer<Float> tableValues,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> tableValues,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> tableValues,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        tableValues,
        count,
      );

  int SetGreenTable(
    Pointer<Float> tableValues,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> tableValues,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> tableValues,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        tableValues,
        count,
      );

  int SetBlueTable(
    Pointer<Float> tableValues,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> tableValues,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> tableValues,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        tableValues,
        count,
      );

  int SetAlphaTable(
    Pointer<Float> tableValues,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> tableValues,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> tableValues,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        tableValues,
        count,
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

  int SetGreenDisable(
    int greenDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetBlueDisable(
    int blueDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetAlphaDisable(
    int alphaDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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

  int SetRedTableValue_1(
    int index,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        index,
        animation,
      );

  int SetRedTableValue(
    int index,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int SetGreenTableValue_1(
    int index,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        index,
        animation,
      );

  int SetGreenTableValue(
    int index,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int SetBlueTableValue_1(
    int index,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        index,
        animation,
      );

  int SetBlueTableValue(
    int index,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int SetAlphaTableValue_1(
    int index,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        index,
        animation,
      );

  int SetAlphaTableValue(
    int index,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );
}
