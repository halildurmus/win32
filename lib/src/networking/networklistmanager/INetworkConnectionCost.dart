// INetworkConnectionCost.dart

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
import '../../networking/networklistmanager/structs.g.dart';

/// @nodoc
const IID_INetworkConnectionCost = '{DCB0000A-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkConnectionCost extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetworkConnectionCost(Pointer<COMObject> ptr) : super(ptr);

  int GetCost(
    Pointer<Uint32> pCost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCost,
          )>()(
        ptr.ref.lpVtbl,
        pCost,
      );

  int GetDataPlanStatus(
    Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
          )>()(
        ptr.ref.lpVtbl,
        pDataPlanStatus,
      );
}
