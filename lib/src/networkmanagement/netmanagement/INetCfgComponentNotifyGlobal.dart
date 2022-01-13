// INetCfgComponentNotifyGlobal.dart

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
import '../../networkmanagement/netmanagement/INetCfgBindingPath.dart';
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';

/// @nodoc
const IID_INetCfgComponentNotifyGlobal =
    '{932238E2-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentNotifyGlobal extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INetCfgComponentNotifyGlobal(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedNotifications(
    Pointer<Uint32> dwNotifications,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwNotifications,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwNotifications,
          )>()(
        ptr.ref.lpVtbl,
        dwNotifications,
      );

  int SysQueryBindingPath(
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

  int SysNotifyBindingPath(
    int dwChangeFlag,
    Pointer<COMObject> pIPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SysNotifyComponent(
    int dwChangeFlag,
    Pointer<COMObject> pIComp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangeFlag,
            Pointer<COMObject> pIComp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangeFlag,
            Pointer<COMObject> pIComp,
          )>()(
        ptr.ref.lpVtbl,
        dwChangeFlag,
        pIComp,
      );
}
