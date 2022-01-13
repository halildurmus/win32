// ITsSbLoadBalancingNotifySink.dart

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
import '../../system/remotedesktop/ITsSbLoadBalanceResult.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbLoadBalancingNotifySink =
    '{5F8A8297-3244-4E6A-958A-27C822C1E141}';

/// {@category Interface}
/// {@category com}
class ITsSbLoadBalancingNotifySink extends ITsSbBaseNotifySink {
  // vtable begins at 5, is 1 entries long.
  ITsSbLoadBalancingNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnGetMostSuitableTarget(
    Pointer<COMObject> pLBResult,
    int fIsNewConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLBResult,
            Int32 fIsNewConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLBResult,
            int fIsNewConnection,
          )>()(
        ptr.ref.lpVtbl,
        pLBResult,
        fIsNewConnection,
      );
}
