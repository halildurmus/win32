// INetworkCostManagerEvents.dart

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
import '../../networking/networklistmanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetworkCostManagerEvents = '{DCB00009-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkCostManagerEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetworkCostManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  int CostChanged(
    int newCost,
    Pointer<NLM_SOCKADDR> pDestAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 newCost,
            Pointer<NLM_SOCKADDR> pDestAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newCost,
            Pointer<NLM_SOCKADDR> pDestAddr,
          )>()(
        ptr.ref.lpVtbl,
        newCost,
        pDestAddr,
      );

  int DataPlanStatusChanged(
    Pointer<NLM_SOCKADDR> pDestAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NLM_SOCKADDR> pDestAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NLM_SOCKADDR> pDestAddr,
          )>()(
        ptr.ref.lpVtbl,
        pDestAddr,
      );
}
