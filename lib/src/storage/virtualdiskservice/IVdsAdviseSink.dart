// IVdsAdviseSink.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsAdviseSink = '{8326CD1D-CF59-4936-B786-5EFC08798E25}';

/// {@category Interface}
/// {@category com}
class IVdsAdviseSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsAdviseSink(Pointer<COMObject> ptr) : super(ptr);

  int OnNotify(
    int lNumberOfNotifications,
    Pointer<VDS_NOTIFICATION> pNotificationArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNumberOfNotifications,
            Pointer<VDS_NOTIFICATION> pNotificationArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNumberOfNotifications,
            Pointer<VDS_NOTIFICATION> pNotificationArray,
          )>()(
        ptr.ref.lpVtbl,
        lNumberOfNotifications,
        pNotificationArray,
      );
}
