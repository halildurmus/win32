// IDirectManipulationCompositor2.dart

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

import '../../graphics/directmanipulation/IDirectManipulationCompositor.dart';
import '../../graphics/directmanipulation/IDirectManipulationPrimaryContent.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationCompositor2 =
    '{D38C7822-F1CB-43CB-B4B9-AC0C767A412E}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationCompositor2 extends IDirectManipulationCompositor {
  // vtable begins at 7, is 1 entries long.
  IDirectManipulationCompositor2(Pointer<COMObject> ptr) : super(ptr);

  int AddContentWithCrossProcessChaining(
    Pointer<COMObject> content,
    Pointer<COMObject> device,
    Pointer<COMObject> parentVisual,
    Pointer<COMObject> childVisual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
            Pointer<COMObject> device,
            Pointer<COMObject> parentVisual,
            Pointer<COMObject> childVisual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
            Pointer<COMObject> device,
            Pointer<COMObject> parentVisual,
            Pointer<COMObject> childVisual,
          )>()(
        ptr.ref.lpVtbl,
        content,
        device,
        parentVisual,
        childVisual,
      );
}
