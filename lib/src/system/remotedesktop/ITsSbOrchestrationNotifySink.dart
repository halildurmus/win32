// ITsSbOrchestrationNotifySink.dart

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
import '../../system/remotedesktop/ITsSbTarget.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbOrchestrationNotifySink =
    '{36C37D61-926B-442F-BCA5-118C6D50DCF2}';

/// {@category Interface}
/// {@category com}
class ITsSbOrchestrationNotifySink extends ITsSbBaseNotifySink {
  // vtable begins at 5, is 1 entries long.
  ITsSbOrchestrationNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnReadyToConnect(
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
      );
}
