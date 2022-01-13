// INetCfgComponentControl.dart

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
import '../../networkmanagement/netmanagement/INetCfg.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/netmanagement/INetCfgPnpReconfigCallback.dart';

/// @nodoc
const IID_INetCfgComponentControl = '{932238DF-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentControl extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INetCfgComponentControl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIComp,
    Pointer<COMObject> pINetCfg,
    int fInstalling,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIComp,
            Pointer<COMObject> pINetCfg,
            Int32 fInstalling,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIComp,
            Pointer<COMObject> pINetCfg,
            int fInstalling,
          )>()(
        ptr.ref.lpVtbl,
        pIComp,
        pINetCfg,
        fInstalling,
      );

  int ApplyRegistryChanges() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ApplyPnpChanges(
    Pointer<COMObject> pICallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pICallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pICallback,
          )>()(
        ptr.ref.lpVtbl,
        pICallback,
      );

  int CancelChanges() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
