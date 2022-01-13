// IMbnPinManagerEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnPinManager.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';

/// @nodoc
const IID_IMbnPinManagerEvents = '{DCBBBAB6-2006-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnPinManagerEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnPinManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnPinListAvailable(
    Pointer<COMObject> pinManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pinManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pinManager,
          )>()(
        ptr.ref.lpVtbl,
        pinManager,
      );

  int OnGetPinStateComplete(
    Pointer<COMObject> pinManager,
    MBN_PIN_INFO pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pinManager,
            MBN_PIN_INFO pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pinManager,
            MBN_PIN_INFO pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        pinManager,
        pinInfo,
        requestID,
        status,
      );
}
