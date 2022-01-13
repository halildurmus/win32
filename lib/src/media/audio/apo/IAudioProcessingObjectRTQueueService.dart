// IAudioProcessingObjectRTQueueService.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioProcessingObjectRTQueueService =
    '{ACD65E2F-955B-4B57-B9BF-AC297BB752C9}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectRTQueueService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioProcessingObjectRTQueueService(Pointer<COMObject> ptr) : super(ptr);

  int GetRealTimeWorkQueue(
    Pointer<Uint32> workQueueId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> workQueueId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> workQueueId,
          )>()(
        ptr.ref.lpVtbl,
        workQueueId,
      );
}
