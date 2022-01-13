// IInternetZoneManagerEx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/urlmon/IInternetZoneManager.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetZoneManagerEx = '{A4C23339-8E06-431E-9BF4-7E711C085648}';

/// {@category Interface}
/// {@category com}
class IInternetZoneManagerEx extends IInternetZoneManager {
  // vtable begins at 15, is 2 entries long.
  IInternetZoneManagerEx(Pointer<COMObject> ptr) : super(ptr);

  int GetZoneActionPolicyEx(
    int dwZone,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    int urlZoneReg,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Int32 urlZoneReg,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            int urlZoneReg,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        dwAction,
        pPolicy,
        cbPolicy,
        urlZoneReg,
        dwFlags,
      );

  int SetZoneActionPolicyEx(
    int dwZone,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    int urlZoneReg,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Int32 urlZoneReg,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            int urlZoneReg,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        dwAction,
        pPolicy,
        cbPolicy,
        urlZoneReg,
        dwFlags,
      );
}
