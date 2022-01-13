// IMbnVendorSpecificEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnVendorSpecificOperation.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnVendorSpecificEvents = '{DCBBBAB6-201A-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnVendorSpecificEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnVendorSpecificEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnEventNotification(
    Pointer<COMObject> vendorOperation,
    Pointer<SAFEARRAY> vendorSpecificData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> vendorOperation,
            Pointer<SAFEARRAY> vendorSpecificData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> vendorOperation,
            Pointer<SAFEARRAY> vendorSpecificData,
          )>()(
        ptr.ref.lpVtbl,
        vendorOperation,
        vendorSpecificData,
      );

  int OnSetVendorSpecificComplete(
    Pointer<COMObject> vendorOperation,
    Pointer<SAFEARRAY> vendorSpecificData,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> vendorOperation,
            Pointer<SAFEARRAY> vendorSpecificData,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> vendorOperation,
            Pointer<SAFEARRAY> vendorSpecificData,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        vendorOperation,
        vendorSpecificData,
        requestID,
      );
}
