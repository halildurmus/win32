// IMFTrackedSample.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTrackedSample = '{245BF8E9-0755-40F7-88A5-AE0F18D55E17}';

/// {@category Interface}
/// {@category com}
class IMFTrackedSample extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTrackedSample(Pointer<COMObject> ptr) : super(ptr);

  int SetAllocator(
    Pointer<COMObject> pSampleAllocator,
    Pointer<COMObject> pUnkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSampleAllocator,
            Pointer<COMObject> pUnkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSampleAllocator,
            Pointer<COMObject> pUnkState,
          )>()(
        ptr.ref.lpVtbl,
        pSampleAllocator,
        pUnkState,
      );
}
