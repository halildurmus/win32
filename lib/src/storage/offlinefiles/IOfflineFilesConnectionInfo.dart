// IOfflineFilesConnectionInfo.dart

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
import '../../storage/offlinefiles/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesConnectionInfo =
    '{EFB23A09-A867-4BE8-83A6-86969A7D0856}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesConnectionInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOfflineFilesConnectionInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectState(
    Pointer<Int32> pConnectState,
    Pointer<Int32> pOfflineReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pConnectState,
            Pointer<Int32> pOfflineReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pConnectState,
            Pointer<Int32> pOfflineReason,
          )>()(
        ptr.ref.lpVtbl,
        pConnectState,
        pOfflineReason,
      );

  int SetConnectState(
    int hwndParent,
    int dwFlags,
    int ConnectState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Uint32 dwFlags,
            Int32 ConnectState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int dwFlags,
            int ConnectState,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        dwFlags,
        ConnectState,
      );

  int TransitionOnline(
    int hwndParent,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        dwFlags,
      );

  int TransitionOffline(
    int hwndParent,
    int dwFlags,
    int bForceOpenFilesClosed,
    Pointer<Int32> pbOpenFilesPreventedTransition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Uint32 dwFlags,
            Int32 bForceOpenFilesClosed,
            Pointer<Int32> pbOpenFilesPreventedTransition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int dwFlags,
            int bForceOpenFilesClosed,
            Pointer<Int32> pbOpenFilesPreventedTransition,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        dwFlags,
        bForceOpenFilesClosed,
        pbOpenFilesPreventedTransition,
      );
}
