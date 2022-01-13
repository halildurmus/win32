// IDot11AdHocNetworkNotificationSink.dart

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
import '../../networkmanagement/wifi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDot11AdHocNetworkNotificationSink =
    '{8F10CC2A-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocNetworkNotificationSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDot11AdHocNetworkNotificationSink(Pointer<COMObject> ptr) : super(ptr);

  int OnStatusChange(
    int eStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eStatus,
          )>()(
        ptr.ref.lpVtbl,
        eStatus,
      );

  int OnConnectFail(
    int eFailReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eFailReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eFailReason,
          )>()(
        ptr.ref.lpVtbl,
        eFailReason,
      );
}
