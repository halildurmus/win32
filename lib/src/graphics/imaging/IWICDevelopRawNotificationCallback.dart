// IWICDevelopRawNotificationCallback.dart

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

/// @nodoc
const IID_IWICDevelopRawNotificationCallback =
    '{95C75A6E-3E8C-4EC2-85A8-AEBCC551E59B}';

/// {@category Interface}
/// {@category com}
class IWICDevelopRawNotificationCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWICDevelopRawNotificationCallback(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    int NotificationMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NotificationMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NotificationMask,
          )>()(
        ptr.ref.lpVtbl,
        NotificationMask,
      );
}
