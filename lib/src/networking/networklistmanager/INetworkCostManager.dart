// INetworkCostManager.dart

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
const IID_INetworkCostManager = '{DCB00008-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkCostManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetworkCostManager(Pointer<COMObject> ptr) : super(ptr);

  int GetCost(
    Pointer<Uint32> pCost,
    Pointer<NLM_SOCKADDR> pDestIPAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCost,
            Pointer<NLM_SOCKADDR> pDestIPAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCost,
            Pointer<NLM_SOCKADDR> pDestIPAddr,
          )>()(
        ptr.ref.lpVtbl,
        pCost,
        pDestIPAddr,
      );

  int GetDataPlanStatus(
    Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
    Pointer<NLM_SOCKADDR> pDestIPAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
            Pointer<NLM_SOCKADDR> pDestIPAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NLM_DATAPLAN_STATUS> pDataPlanStatus,
            Pointer<NLM_SOCKADDR> pDestIPAddr,
          )>()(
        ptr.ref.lpVtbl,
        pDataPlanStatus,
        pDestIPAddr,
      );

  int SetDestinationAddresses(
    int length,
    Pointer<NLM_SOCKADDR> pDestIPAddrList,
    int bAppend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 length,
            Pointer<NLM_SOCKADDR> pDestIPAddrList,
            Int16 bAppend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int length,
            Pointer<NLM_SOCKADDR> pDestIPAddrList,
            int bAppend,
          )>()(
        ptr.ref.lpVtbl,
        length,
        pDestIPAddrList,
        bAppend,
      );
}
