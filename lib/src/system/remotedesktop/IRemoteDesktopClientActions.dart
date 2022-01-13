// IRemoteDesktopClientActions.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IRemoteDesktopClientActions =
    '{7D54BC4E-1028-45D4-8B0A-B9B6BFFBA176}';

/// {@category Interface}
/// {@category com}
class IRemoteDesktopClientActions extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IRemoteDesktopClientActions(Pointer<COMObject> ptr) : super(ptr);

  int SuspendScreenUpdates() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ResumeScreenUpdates() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ExecuteRemoteAction(
    int remoteAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 remoteAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int remoteAction,
          )>()(
        ptr.ref.lpVtbl,
        remoteAction,
      );

  int GetSnapshot(
    int snapshotEncoding,
    int snapshotFormat,
    int snapshotWidth,
    int snapshotHeight,
    Pointer<Pointer<Utf16>> snapshotData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 snapshotEncoding,
            Int32 snapshotFormat,
            Uint32 snapshotWidth,
            Uint32 snapshotHeight,
            Pointer<Pointer<Utf16>> snapshotData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int snapshotEncoding,
            int snapshotFormat,
            int snapshotWidth,
            int snapshotHeight,
            Pointer<Pointer<Utf16>> snapshotData,
          )>()(
        ptr.ref.lpVtbl,
        snapshotEncoding,
        snapshotFormat,
        snapshotWidth,
        snapshotHeight,
        snapshotData,
      );
}
