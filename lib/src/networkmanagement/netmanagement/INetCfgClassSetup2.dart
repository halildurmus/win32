// INetCfgClassSetup2.dart

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

import '../../networkmanagement/netmanagement/INetCfgClassSetup.dart';
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetCfgClassSetup2 = '{C0E8AEA0-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgClassSetup2 extends INetCfgClassSetup {
  // vtable begins at 6, is 1 entries long.
  INetCfgClassSetup2(Pointer<COMObject> ptr) : super(ptr);

  int UpdateNonEnumeratedComponent(
    Pointer<COMObject> pIComp,
    int dwSetupFlags,
    int dwUpgradeFromBuildNo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIComp,
            Uint32 dwSetupFlags,
            Uint32 dwUpgradeFromBuildNo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIComp,
            int dwSetupFlags,
            int dwUpgradeFromBuildNo,
          )>()(
        ptr.ref.lpVtbl,
        pIComp,
        dwSetupFlags,
        dwUpgradeFromBuildNo,
      );
}
