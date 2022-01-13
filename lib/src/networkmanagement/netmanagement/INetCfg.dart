// INetCfg.dart

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
import '../../networkmanagement/netmanagement/IEnumNetCfgComponent.dart';
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';

/// @nodoc
const IID_INetCfg = '{C0E8AE93-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfg extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  INetCfg(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer pvReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvReserved,
          )>()(
        ptr.ref.lpVtbl,
        pvReserved,
      );

  int Uninitialize() => ptr.ref.lpVtbl.value
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

  int Apply() => ptr.ref.lpVtbl.value
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

  int Cancel() => ptr.ref.lpVtbl.value
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

  int EnumComponents(
    Pointer<GUID> pguidClass,
    Pointer<Pointer<COMObject>> ppenumComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidClass,
            Pointer<Pointer<COMObject>> ppenumComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidClass,
            Pointer<Pointer<COMObject>> ppenumComponent,
          )>()(
        ptr.ref.lpVtbl,
        pguidClass,
        ppenumComponent,
      );

  int FindComponent(
    Pointer<Utf16> pszwInfId,
    Pointer<Pointer<COMObject>> pComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<Pointer<COMObject>> pComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<Pointer<COMObject>> pComponent,
          )>()(
        ptr.ref.lpVtbl,
        pszwInfId,
        pComponent,
      );

  int QueryNetCfgClass(
    Pointer<GUID> pguidClass,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidClass,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidClass,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        pguidClass,
        riid,
        ppvObject,
      );
}
