// IMFVideoSampleAllocatorNotifyEx.dart

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

import '../../media/mediafoundation/IMFVideoSampleAllocatorNotify.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoSampleAllocatorNotifyEx =
    '{3978AA1A-6D5B-4B7F-A340-90899189AE34}';

/// {@category Interface}
/// {@category com}
class IMFVideoSampleAllocatorNotifyEx extends IMFVideoSampleAllocatorNotify {
  // vtable begins at 4, is 1 entries long.
  IMFVideoSampleAllocatorNotifyEx(Pointer<COMObject> ptr) : super(ptr);

  int NotifyPrune(
    Pointer<COMObject> MIDL__IMFVideoSampleAllocatorNotifyEx0000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__IMFVideoSampleAllocatorNotifyEx0000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__IMFVideoSampleAllocatorNotifyEx0000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IMFVideoSampleAllocatorNotifyEx0000,
      );
}
