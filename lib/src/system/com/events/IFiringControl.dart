// IFiringControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../system/com/events/IEventSubscription.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IFiringControl = '{E0498C93-4EFE-11D1-9971-00C04FBBB345}';

/// {@category Interface}
/// {@category com}
class IFiringControl extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IFiringControl(Pointer<COMObject> ptr) : super(ptr);

  int FireSubscription(
    Pointer<COMObject> subscription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> subscription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> subscription,
          )>()(
        ptr.ref.lpVtbl,
        subscription,
      );
}
