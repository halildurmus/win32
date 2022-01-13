// IDCompositionHueRotationEffect.dart

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
const IID_IDCompositionHueRotationEffect =
    '{6DB9F920-0770-4781-B0C6-381912F9D167}';

/// {@category Interface}
/// {@category com}
class IDCompositionHueRotationEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 2 entries long.
  IDCompositionHueRotationEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetAngle_1(
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

  int SetAngle(
    double amountDegrees,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float amountDegrees,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double amountDegrees,
          )>()(
        ptr.ref.lpVtbl,
        amountDegrees,
      );
}
