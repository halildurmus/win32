// INetCfgComponentPropertyUi.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetCfgComponentPropertyUi = '{932238E0-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentPropertyUi extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  INetCfgComponentPropertyUi(Pointer<COMObject> ptr) : super(ptr);

  int QueryPropertyUi(
    Pointer<COMObject> pUnkReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkReserved,
          )>()(
        ptr.ref.lpVtbl,
        pUnkReserved,
      );

  int SetContext(
    Pointer<COMObject> pUnkReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkReserved,
          )>()(
        ptr.ref.lpVtbl,
        pUnkReserved,
      );

  int MergePropPages(
    Pointer<Uint32> pdwDefPages,
    Pointer<Pointer<Uint8>> pahpspPrivate,
    Pointer<Uint32> pcPages,
    int hwndParent,
    Pointer<Pointer<Utf16>> pszStartPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDefPages,
            Pointer<Pointer<Uint8>> pahpspPrivate,
            Pointer<Uint32> pcPages,
            IntPtr hwndParent,
            Pointer<Pointer<Utf16>> pszStartPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDefPages,
            Pointer<Pointer<Uint8>> pahpspPrivate,
            Pointer<Uint32> pcPages,
            int hwndParent,
            Pointer<Pointer<Utf16>> pszStartPage,
          )>()(
        ptr.ref.lpVtbl,
        pdwDefPages,
        pahpspPrivate,
        pcPages,
        hwndParent,
        pszStartPage,
      );

  int ValidateProperties(
    int hwndSheet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndSheet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndSheet,
          )>()(
        ptr.ref.lpVtbl,
        hwndSheet,
      );

  int ApplyProperties() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int CancelProperties() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
