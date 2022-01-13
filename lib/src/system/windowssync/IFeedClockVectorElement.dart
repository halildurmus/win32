// IFeedClockVectorElement.dart

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

import '../../system/windowssync/IClockVectorElement.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFeedClockVectorElement = '{A40B46D2-E97B-4156-B6DA-991F501B0F05}';

/// {@category Interface}
/// {@category com}
class IFeedClockVectorElement extends IClockVectorElement {
  // vtable begins at 5, is 2 entries long.
  IFeedClockVectorElement(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncTime(
    Pointer<SYNC_TIME> pSyncTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNC_TIME> pSyncTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNC_TIME> pSyncTime,
          )>()(
        ptr.ref.lpVtbl,
        pSyncTime,
      );

  int GetFlags(
    Pointer<Uint8> pbFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbFlags,
          )>()(
        ptr.ref.lpVtbl,
        pbFlags,
      );
}
