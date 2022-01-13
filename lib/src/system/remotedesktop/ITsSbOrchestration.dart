// ITsSbOrchestration.dart

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

import '../../system/remotedesktop/ITsSbPlugin.dart';
import '../../system/remotedesktop/ITsSbClientConnection.dart';
import '../../system/remotedesktop/ITsSbOrchestrationNotifySink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbOrchestration = '{64FC1172-9EB7-11DC-8B00-3ABA56D89593}';

/// {@category Interface}
/// {@category com}
class ITsSbOrchestration extends ITsSbPlugin {
  // vtable begins at 5, is 1 entries long.
  ITsSbOrchestration(Pointer<COMObject> ptr) : super(ptr);

  int PrepareTargetForConnect(
    Pointer<COMObject> pConnection,
    Pointer<COMObject> pOrchestrationNotifySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pOrchestrationNotifySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pOrchestrationNotifySink,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
        pOrchestrationNotifySink,
      );
}
