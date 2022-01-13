// IDirectManipulationDragDropEventHandler.dart

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
import '../../graphics/directmanipulation/IDirectManipulationViewport2.dart';
import '../../graphics/directmanipulation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationDragDropEventHandler =
    '{1FA11B10-701B-41AE-B5F2-49E36BD595AA}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationDragDropEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectManipulationDragDropEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnDragDropStatusChange(
    Pointer<COMObject> viewport,
    int current,
    int previous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> viewport,
            Int32 current,
            Int32 previous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> viewport,
            int current,
            int previous,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
        current,
        previous,
      );
}
