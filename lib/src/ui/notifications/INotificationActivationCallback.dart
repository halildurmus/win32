// INotificationActivationCallback.dart

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
import '../../ui/notifications/structs.g.dart';

/// @nodoc
const IID_INotificationActivationCallback =
    '{53E31837-6600-4A81-9395-75CFFE746F94}';

/// {@category Interface}
/// {@category com}
class INotificationActivationCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INotificationActivationCallback(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<Utf16> appUserModelId,
    Pointer<Utf16> invokedArgs,
    Pointer<NOTIFICATION_USER_INPUT_DATA> data,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> appUserModelId,
            Pointer<Utf16> invokedArgs,
            Pointer<NOTIFICATION_USER_INPUT_DATA> data,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> appUserModelId,
            Pointer<Utf16> invokedArgs,
            Pointer<NOTIFICATION_USER_INPUT_DATA> data,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        appUserModelId,
        invokedArgs,
        data,
        count,
      );
}
