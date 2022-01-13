// ITsSbPlacement.dart

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
import '../../system/remotedesktop/ITsSbPlacementNotifySink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbPlacement = '{DAADEE5F-6D32-480E-9E36-DDAB2329F06D}';

/// {@category Interface}
/// {@category com}
class ITsSbPlacement extends ITsSbPlugin {
  // vtable begins at 5, is 1 entries long.
  ITsSbPlacement(Pointer<COMObject> ptr) : super(ptr);

  int QueryEnvironmentForTarget(
    Pointer<COMObject> pConnection,
    Pointer<COMObject> pPlacementSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pPlacementSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pPlacementSink,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
        pPlacementSink,
      );
}
