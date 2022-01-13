// IDCompositionVisual2.dart

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

import '../../graphics/directcomposition/IDCompositionVisual.dart';
import '../../graphics/directcomposition/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionVisual2 = '{E8DE1639-4331-4B26-BC5F-6A321D347A85}';

/// {@category Interface}
/// {@category com}
class IDCompositionVisual2 extends IDCompositionVisual {
  // vtable begins at 20, is 2 entries long.
  IDCompositionVisual2(Pointer<COMObject> ptr) : super(ptr);

  int SetOpacityMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int SetBackFaceVisibility(
    int visibility,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 visibility,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int visibility,
          )>()(
        ptr.ref.lpVtbl,
        visibility,
      );
}
