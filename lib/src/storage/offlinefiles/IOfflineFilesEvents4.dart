// IOfflineFilesEvents4.dart

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

import '../../storage/offlinefiles/IOfflineFilesEvents3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesEvents4 = '{DBD69B1E-C7D2-473E-B35F-9D8C24C0C484}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesEvents4 extends IOfflineFilesEvents3 {
  // vtable begins at 40, is 2 entries long.
  IOfflineFilesEvents4(Pointer<COMObject> ptr) : super(ptr);

  int PrefetchCloseHandleBegin() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int PrefetchCloseHandleEnd(
    int dwClosedHandleCount,
    int dwOpenHandleCount,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClosedHandleCount,
            Uint32 dwOpenHandleCount,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClosedHandleCount,
            int dwOpenHandleCount,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        dwClosedHandleCount,
        dwOpenHandleCount,
        hrResult,
      );
}
