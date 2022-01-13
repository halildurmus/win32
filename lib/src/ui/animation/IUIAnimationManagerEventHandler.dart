// IUIAnimationManagerEventHandler.dart

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
import '../../ui/animation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationManagerEventHandler =
    '{783321ED-78A3-4366-B574-6AF607A64788}';

/// {@category Interface}
/// {@category com}
class IUIAnimationManagerEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationManagerEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnManagerStatusChanged(
    int newStatus,
    int previousStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 newStatus,
            Int32 previousStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newStatus,
            int previousStatus,
          )>()(
        ptr.ref.lpVtbl,
        newStatus,
        previousStatus,
      );
}
