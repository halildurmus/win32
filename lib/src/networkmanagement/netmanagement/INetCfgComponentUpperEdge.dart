// INetCfgComponentUpperEdge.dart

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
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetCfgComponentUpperEdge = '{932238E4-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentUpperEdge extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetCfgComponentUpperEdge(Pointer<COMObject> ptr) : super(ptr);

  int GetInterfaceIdsForAdapter(
    Pointer<COMObject> pAdapter,
    Pointer<Uint32> pdwNumInterfaces,
    Pointer<Pointer<GUID>> ppguidInterfaceIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            Pointer<Uint32> pdwNumInterfaces,
            Pointer<Pointer<GUID>> ppguidInterfaceIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            Pointer<Uint32> pdwNumInterfaces,
            Pointer<Pointer<GUID>> ppguidInterfaceIds,
          )>()(
        ptr.ref.lpVtbl,
        pAdapter,
        pdwNumInterfaces,
        ppguidInterfaceIds,
      );

  int AddInterfacesToAdapter(
    Pointer<COMObject> pAdapter,
    int dwNumInterfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            Uint32 dwNumInterfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            int dwNumInterfaces,
          )>()(
        ptr.ref.lpVtbl,
        pAdapter,
        dwNumInterfaces,
      );

  int RemoveInterfacesFromAdapter(
    Pointer<COMObject> pAdapter,
    int dwNumInterfaces,
    Pointer<GUID> pguidInterfaceIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            Uint32 dwNumInterfaces,
            Pointer<GUID> pguidInterfaceIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAdapter,
            int dwNumInterfaces,
            Pointer<GUID> pguidInterfaceIds,
          )>()(
        ptr.ref.lpVtbl,
        pAdapter,
        dwNumInterfaces,
        pguidInterfaceIds,
      );
}
