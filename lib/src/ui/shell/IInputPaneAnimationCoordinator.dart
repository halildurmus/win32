// IInputPaneAnimationCoordinator.dart

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
import '../../specialTypes.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInputPaneAnimationCoordinator =
    '{2AF16BA9-2DE5-4B75-82D9-01372AFBFFB4}';

/// {@category Interface}
/// {@category com}
class IInputPaneAnimationCoordinator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInputPaneAnimationCoordinator(Pointer<COMObject> ptr) : super(ptr);

  int AddAnimation(
    Pointer<COMObject> device,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> device,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> device,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        device,
        animation,
      );
}
