// ITsSbResourceNotification.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/ITsSbSession.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/ITsSbTarget.dart';
import '../../system/remotedesktop/ITsSbClientConnection.dart';

/// @nodoc
const IID_ITsSbResourceNotification = '{65D3E85A-C39B-11DC-B92D-3CD255D89593}';

/// {@category Interface}
/// {@category com}
class ITsSbResourceNotification extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITsSbResourceNotification(Pointer<COMObject> ptr) : super(ptr);

  int NotifySessionChange(
    int changeType,
    Pointer<COMObject> pSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 changeType,
            Pointer<COMObject> pSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
            Pointer<COMObject> pSession,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
        pSession,
      );

  int NotifyTargetChange(
    int TargetChangeType,
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 TargetChangeType,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TargetChangeType,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        TargetChangeType,
        pTarget,
      );

  int NotifyClientConnectionStateChange(
    int ChangeType,
    Pointer<COMObject> pConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ChangeType,
            Pointer<COMObject> pConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChangeType,
            Pointer<COMObject> pConnection,
          )>()(
        ptr.ref.lpVtbl,
        ChangeType,
        pConnection,
      );
}
