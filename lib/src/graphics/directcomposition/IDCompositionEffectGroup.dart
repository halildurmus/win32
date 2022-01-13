// IDCompositionEffectGroup.dart

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

import '../../graphics/directcomposition/IDCompositionEffect.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionTransform3D.dart';

/// @nodoc
const IID_IDCompositionEffectGroup = '{A7929A74-E6B2-4BD6-8B95-4040119CA34D}';

/// {@category Interface}
/// {@category com}
class IDCompositionEffectGroup extends IDCompositionEffect {
  // vtable begins at 3, is 3 entries long.
  IDCompositionEffectGroup(Pointer<COMObject> ptr) : super(ptr);

  int SetOpacity_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetOpacity(
    double opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  int SetTransform3D(
    Pointer<COMObject> transform3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> transform3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> transform3D,
          )>()(
        ptr.ref.lpVtbl,
        transform3D,
      );
}
