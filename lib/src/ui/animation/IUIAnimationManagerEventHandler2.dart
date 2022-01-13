// IUIAnimationManagerEventHandler2.dart

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
const IID_IUIAnimationManagerEventHandler2 =
    '{F6E022BA-BFF3-42EC-9033-E073F33E83C3}';

/// {@category Interface}
/// {@category com}
class IUIAnimationManagerEventHandler2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationManagerEventHandler2(Pointer<COMObject> ptr) : super(ptr);

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
