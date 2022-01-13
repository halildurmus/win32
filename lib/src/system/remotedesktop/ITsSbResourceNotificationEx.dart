// ITsSbResourceNotificationEx.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITsSbResourceNotificationEx =
    '{A8A47FDE-CA91-44D2-B897-3AA28A43B2B7}';

/// {@category Interface}
/// {@category com}
class ITsSbResourceNotificationEx extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITsSbResourceNotificationEx(Pointer<COMObject> ptr) : super(ptr);

  int NotifySessionChangeEx(
    Pointer<Utf16> targetName,
    Pointer<Utf16> userName,
    Pointer<Utf16> domain,
    int sessionId,
    int sessionState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> userName,
            Pointer<Utf16> domain,
            Uint32 sessionId,
            Int32 sessionState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> userName,
            Pointer<Utf16> domain,
            int sessionId,
            int sessionState,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        userName,
        domain,
        sessionId,
        sessionState,
      );

  int NotifyTargetChangeEx(
    Pointer<Utf16> targetName,
    int targetChangeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Uint32 targetChangeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            int targetChangeType,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        targetChangeType,
      );

  int NotifyClientConnectionStateChangeEx(
    Pointer<Utf16> userName,
    Pointer<Utf16> domain,
    Pointer<Utf16> initialProgram,
    Pointer<Utf16> poolName,
    Pointer<Utf16> targetName,
    int connectionChangeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userName,
            Pointer<Utf16> domain,
            Pointer<Utf16> initialProgram,
            Pointer<Utf16> poolName,
            Pointer<Utf16> targetName,
            Int32 connectionChangeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userName,
            Pointer<Utf16> domain,
            Pointer<Utf16> initialProgram,
            Pointer<Utf16> poolName,
            Pointer<Utf16> targetName,
            int connectionChangeType,
          )>()(
        ptr.ref.lpVtbl,
        userName,
        domain,
        initialProgram,
        poolName,
        targetName,
        connectionChangeType,
      );
}
