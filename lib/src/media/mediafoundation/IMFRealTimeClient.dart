// IMFRealTimeClient.dart

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
const IID_IMFRealTimeClient = '{2347D60B-3FB5-480C-8803-8DF3ADCD3EF0}';

/// {@category Interface}
/// {@category com}
class IMFRealTimeClient extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFRealTimeClient(Pointer<COMObject> ptr) : super(ptr);

  int RegisterThreads(
    int dwTaskIndex,
    Pointer<Utf16> wszClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTaskIndex,
            Pointer<Utf16> wszClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTaskIndex,
            Pointer<Utf16> wszClass,
          )>()(
        ptr.ref.lpVtbl,
        dwTaskIndex,
        wszClass,
      );

  int UnregisterThreads() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetWorkQueue(
    int dwWorkQueueId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWorkQueueId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWorkQueueId,
          )>()(
        ptr.ref.lpVtbl,
        dwWorkQueueId,
      );
}
