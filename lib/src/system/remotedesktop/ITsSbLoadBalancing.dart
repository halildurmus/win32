// ITsSbLoadBalancing.dart

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
import '../../system/remotedesktop/ITsSbLoadBalancingNotifySink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbLoadBalancing = '{24329274-9EB7-11DC-AE98-F2B456D89593}';

/// {@category Interface}
/// {@category com}
class ITsSbLoadBalancing extends ITsSbPlugin {
  // vtable begins at 5, is 1 entries long.
  ITsSbLoadBalancing(Pointer<COMObject> ptr) : super(ptr);

  int GetMostSuitableTarget(
    Pointer<COMObject> pConnection,
    Pointer<COMObject> pLBSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pLBSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<COMObject> pLBSink,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
        pLBSink,
      );
}
