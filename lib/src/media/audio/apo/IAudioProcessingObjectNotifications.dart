// IAudioProcessingObjectNotifications.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/apo/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioProcessingObjectNotifications =
    '{56B0C76F-02FD-4B21-A52E-9F8219FC86E4}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectNotifications extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioProcessingObjectNotifications(Pointer<COMObject> ptr) : super(ptr);

  int GetApoNotificationRegistrationInfo(
    Pointer<Pointer<APO_NOTIFICATION_DESCRIPTOR>> apoNotifications,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<APO_NOTIFICATION_DESCRIPTOR>> apoNotifications,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<APO_NOTIFICATION_DESCRIPTOR>> apoNotifications,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        apoNotifications,
        count,
      );

  void HandleNotification(
    Pointer<APO_NOTIFICATION> apoNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<APO_NOTIFICATION> apoNotification,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<APO_NOTIFICATION> apoNotification,
          )>()(
        ptr.ref.lpVtbl,
        apoNotification,
      );
}
