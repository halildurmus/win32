// ID2D1Effect.dart

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

import '../../graphics/direct2d/ID2D1Properties.dart';
import '../../graphics/direct2d/ID2D1Image.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Effect = '{28211A43-7D89-476F-8181-2D6159B220AD}';

/// {@category Interface}
/// {@category com}
class ID2D1Effect extends ID2D1Properties {
  // vtable begins at 14, is 5 entries long.
  ID2D1Effect(Pointer<COMObject> ptr) : super(ptr);

  void SetInput(
    int index,
    Pointer<COMObject> input,
    int invalidate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> input,
            Int32 invalidate,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int index,
            Pointer<COMObject> input,
            int invalidate,
          )>()(
        ptr.ref.lpVtbl,
        index,
        input,
        invalidate,
      );

  int SetInputCount(
    int inputCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 inputCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int inputCount,
          )>()(
        ptr.ref.lpVtbl,
        inputCount,
      );

  void GetInput(
    int index,
    Pointer<Pointer<COMObject>> input,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> input,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> input,
          )>()(
        ptr.ref.lpVtbl,
        index,
        input,
      );

  int GetInputCount() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  void GetOutput(
    Pointer<Pointer<COMObject>> outputImage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> outputImage,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> outputImage,
          )>()(
        ptr.ref.lpVtbl,
        outputImage,
      );
}
