// INetCfgClass.dart

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
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';
import '../../networkmanagement/netmanagement/IEnumNetCfgComponent.dart';

/// @nodoc
const IID_INetCfgClass = '{C0E8AE97-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgClass extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetCfgClass(Pointer<COMObject> ptr) : super(ptr);

  int FindComponent(
    Pointer<Utf16> pszwInfId,
    Pointer<Pointer<COMObject>> ppnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pszwInfId,
        ppnccItem,
      );

  int EnumComponents(
    Pointer<Pointer<COMObject>> ppenumComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumComponent,
          )>()(
        ptr.ref.lpVtbl,
        ppenumComponent,
      );
}
