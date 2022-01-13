// IVPNotify2.dart

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

import '../../media/directshow/IVPNotify.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVPNotify2 = 'null';

/// {@category Interface}
/// {@category com}
class IVPNotify2 extends IVPNotify {
  // vtable begins at 6, is 2 entries long.
  IVPNotify2(Pointer<COMObject> ptr) : super(ptr);

  int SetVPSyncMaster(
    int bVPSyncMaster,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bVPSyncMaster,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bVPSyncMaster,
          )>()(
        ptr.ref.lpVtbl,
        bVPSyncMaster,
      );

  int GetVPSyncMaster(
    Pointer<Int32> pbVPSyncMaster,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbVPSyncMaster,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbVPSyncMaster,
          )>()(
        ptr.ref.lpVtbl,
        pbVPSyncMaster,
      );
}
