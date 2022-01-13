// INetCfgComponentNotifyBinding.dart

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
import '../../networkmanagement/netmanagement/INetCfgBindingPath.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetCfgComponentNotifyBinding =
    '{932238E1-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentNotifyBinding extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetCfgComponentNotifyBinding(Pointer<COMObject> ptr) : super(ptr);

  int QueryBindingPath(
    int dwChangeFlag,
    Pointer<COMObject> pIPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangeFlag,
            Pointer<COMObject> pIPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangeFlag,
            Pointer<COMObject> pIPath,
          )>()(
        ptr.ref.lpVtbl,
        dwChangeFlag,
        pIPath,
      );

  int NotifyBindingPath(
    int dwChangeFlag,
    Pointer<COMObject> pIPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangeFlag,
            Pointer<COMObject> pIPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangeFlag,
            Pointer<COMObject> pIPath,
          )>()(
        ptr.ref.lpVtbl,
        dwChangeFlag,
        pIPath,
      );
}
