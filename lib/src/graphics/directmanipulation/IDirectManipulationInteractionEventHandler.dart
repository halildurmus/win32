// IDirectManipulationInteractionEventHandler.dart

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
const IID_IDirectManipulationInteractionEventHandler =
    '{E43F45B8-42B4-403E-B1F2-273B8F510830}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationInteractionEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectManipulationInteractionEventHandler(Pointer<COMObject> ptr)
      : super(ptr);

  int OnInteraction(
    Pointer<COMObject> viewport,
    int interaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> viewport,
            Int32 interaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> viewport,
            int interaction,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
        interaction,
      );
}
