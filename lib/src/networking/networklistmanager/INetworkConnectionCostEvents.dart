// INetworkConnectionCostEvents.dart

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
const IID_INetworkConnectionCostEvents =
    '{DCB0000B-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkConnectionCostEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetworkConnectionCostEvents(Pointer<COMObject> ptr) : super(ptr);

  int ConnectionCostChanged(
    GUID connectionId,
    int newCost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID connectionId,
            Uint32 newCost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID connectionId,
            int newCost,
          )>()(
        ptr.ref.lpVtbl,
        connectionId,
        newCost,
      );

  int ConnectionDataPlanStatusChanged(
    GUID connectionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID connectionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID connectionId,
          )>()(
        ptr.ref.lpVtbl,
        connectionId,
      );
}
