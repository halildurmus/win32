// IDirectManipulationDragDropBehavior.dart

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
import '../../graphics/directmanipulation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationDragDropBehavior =
    '{814B5AF5-C2C8-4270-A9B7-A198CE8D02FA}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationDragDropBehavior extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectManipulationDragDropBehavior(Pointer<COMObject> ptr) : super(ptr);

  int SetConfiguration(
    int configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int GetStatus(
    Pointer<Int32> status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );
}
