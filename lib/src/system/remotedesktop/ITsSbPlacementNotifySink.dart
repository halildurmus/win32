// ITsSbPlacementNotifySink.dart

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

import '../../system/remotedesktop/ITsSbBaseNotifySink.dart';
import '../../system/remotedesktop/ITsSbEnvironment.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbPlacementNotifySink = '{68A0C487-2B4F-46C2-94A1-6CE685183634}';

/// {@category Interface}
/// {@category com}
class ITsSbPlacementNotifySink extends ITsSbBaseNotifySink {
  // vtable begins at 5, is 1 entries long.
  ITsSbPlacementNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnQueryEnvironmentCompleted(
    Pointer<COMObject> pEnvironment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
          )>()(
        ptr.ref.lpVtbl,
        pEnvironment,
      );
}
