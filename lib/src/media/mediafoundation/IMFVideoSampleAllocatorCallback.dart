// IMFVideoSampleAllocatorCallback.dart

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
import '../../media/mediafoundation/IMFVideoSampleAllocatorNotify.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoSampleAllocatorCallback =
    '{992388B4-3372-4F67-8B6F-C84C071F4751}';

/// {@category Interface}
/// {@category com}
class IMFVideoSampleAllocatorCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFVideoSampleAllocatorCallback(Pointer<COMObject> ptr) : super(ptr);

  int SetCallback(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
      );

  int GetFreeSampleCount(
    Pointer<Int32> plSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSamples,
          )>()(
        ptr.ref.lpVtbl,
        plSamples,
      );
}
