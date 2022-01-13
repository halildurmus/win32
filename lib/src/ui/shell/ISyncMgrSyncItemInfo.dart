// ISyncMgrSyncItemInfo.dart

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
const IID_ISyncMgrSyncItemInfo = '{E7FD9502-BE0C-4464-90A1-2B5277031232}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSyncItemInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISyncMgrSyncItemInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeLabel(
    Pointer<Pointer<Utf16>> ppszTypeLabel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTypeLabel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTypeLabel,
          )>()(
        ptr.ref.lpVtbl,
        ppszTypeLabel,
      );

  int GetComment(
    Pointer<Pointer<Utf16>> ppszComment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszComment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszComment,
          )>()(
        ptr.ref.lpVtbl,
        ppszComment,
      );

  int GetLastSyncTime(
    Pointer<FILETIME> pftLastSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftLastSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftLastSync,
          )>()(
        ptr.ref.lpVtbl,
        pftLastSync,
      );

  int IsEnabled() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsConnected() => ptr.ref.lpVtbl.value
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
}
