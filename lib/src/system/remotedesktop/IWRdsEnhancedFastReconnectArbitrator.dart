// IWRdsEnhancedFastReconnectArbitrator.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWRdsEnhancedFastReconnectArbitrator =
    '{5718AE9B-47F2-499F-B634-D8175BD51131}';

/// {@category Interface}
/// {@category com}
class IWRdsEnhancedFastReconnectArbitrator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWRdsEnhancedFastReconnectArbitrator(Pointer<COMObject> ptr) : super(ptr);

  int GetSessionForEnhancedFastReconnect(
    Pointer<Int32> pSessionIdArray,
    int dwSessionCount,
    Pointer<Int32> pResultSessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSessionIdArray,
            Uint32 dwSessionCount,
            Pointer<Int32> pResultSessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSessionIdArray,
            int dwSessionCount,
            Pointer<Int32> pResultSessionId,
          )>()(
        ptr.ref.lpVtbl,
        pSessionIdArray,
        dwSessionCount,
        pResultSessionId,
      );
}
