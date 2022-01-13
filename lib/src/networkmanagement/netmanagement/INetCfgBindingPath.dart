// INetCfgBindingPath.dart

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
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';
import '../../networkmanagement/netmanagement/IEnumNetCfgBindingInterface.dart';

/// @nodoc
const IID_INetCfgBindingPath = '{C0E8AE96-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgBindingPath extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  INetCfgBindingPath(Pointer<COMObject> ptr) : super(ptr);

  int IsSamePathAs(
    Pointer<COMObject> pPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPath,
          )>()(
        ptr.ref.lpVtbl,
        pPath,
      );

  int IsSubPathOf(
    Pointer<COMObject> pPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPath,
          )>()(
        ptr.ref.lpVtbl,
        pPath,
      );

  int IsEnabled() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Enable(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int GetPathToken(
    Pointer<Pointer<Utf16>> ppszwPathToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwPathToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwPathToken,
          )>()(
        ptr.ref.lpVtbl,
        ppszwPathToken,
      );

  int GetOwner(
    Pointer<Pointer<COMObject>> ppComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppComponent,
          )>()(
        ptr.ref.lpVtbl,
        ppComponent,
      );

  int GetDepth(
    Pointer<Uint32> pcInterfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcInterfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcInterfaces,
          )>()(
        ptr.ref.lpVtbl,
        pcInterfaces,
      );

  int EnumBindingInterfaces(
    Pointer<Pointer<COMObject>> ppenumInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumInterface,
          )>()(
        ptr.ref.lpVtbl,
        ppenumInterface,
      );
}
