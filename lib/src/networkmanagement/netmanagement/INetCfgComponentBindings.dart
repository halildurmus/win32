// INetCfgComponentBindings.dart

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
import '../../networkmanagement/netmanagement/IEnumNetCfgBindingPath.dart';
import '../../networkmanagement/netmanagement/INetCfgBindingPath.dart';

/// @nodoc
const IID_INetCfgComponentBindings = '{C0E8AE9E-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentBindings extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  INetCfgComponentBindings(Pointer<COMObject> ptr) : super(ptr);

  int BindTo(
    Pointer<COMObject> pnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pnccItem,
      );

  int UnbindFrom(
    Pointer<COMObject> pnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pnccItem,
      );

  int SupportsBindingInterface(
    int dwFlags,
    Pointer<Utf16> pszwInterfaceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszwInterfaceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszwInterfaceName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszwInterfaceName,
      );

  int IsBoundTo(
    Pointer<COMObject> pnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pnccItem,
      );

  int IsBindableTo(
    Pointer<COMObject> pnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pnccItem,
      );

  int EnumBindingPaths(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppIEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppIEnum,
      );

  int MoveBefore(
    Pointer<COMObject> pncbItemSrc,
    Pointer<COMObject> pncbItemDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pncbItemSrc,
            Pointer<COMObject> pncbItemDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pncbItemSrc,
            Pointer<COMObject> pncbItemDest,
          )>()(
        ptr.ref.lpVtbl,
        pncbItemSrc,
        pncbItemDest,
      );

  int MoveAfter(
    Pointer<COMObject> pncbItemSrc,
    Pointer<COMObject> pncbItemDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pncbItemSrc,
            Pointer<COMObject> pncbItemDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pncbItemSrc,
            Pointer<COMObject> pncbItemDest,
          )>()(
        ptr.ref.lpVtbl,
        pncbItemSrc,
        pncbItemDest,
      );
}
