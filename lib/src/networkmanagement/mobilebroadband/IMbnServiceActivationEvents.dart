// IMbnServiceActivationEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnServiceActivation.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnServiceActivationEvents =
    '{DCBBBAB6-2018-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnServiceActivationEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnServiceActivationEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnActivationComplete(
    Pointer<COMObject> serviceActivation,
    Pointer<SAFEARRAY> vendorSpecificData,
    int requestID,
    int status,
    int networkError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> serviceActivation,
            Pointer<SAFEARRAY> vendorSpecificData,
            Uint32 requestID,
            Int32 status,
            Uint32 networkError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> serviceActivation,
            Pointer<SAFEARRAY> vendorSpecificData,
            int requestID,
            int status,
            int networkError,
          )>()(
        ptr.ref.lpVtbl,
        serviceActivation,
        vendorSpecificData,
        requestID,
        status,
        networkError,
      );
}
