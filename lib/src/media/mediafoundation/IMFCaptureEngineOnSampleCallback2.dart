// IMFCaptureEngineOnSampleCallback2.dart

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

import '../../media/mediafoundation/IMFCaptureEngineOnSampleCallback.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCaptureEngineOnSampleCallback2 =
    '{E37CEED7-340F-4514-9F4D-9C2AE026100B}';

/// {@category Interface}
/// {@category com}
class IMFCaptureEngineOnSampleCallback2
    extends IMFCaptureEngineOnSampleCallback {
  // vtable begins at 4, is 1 entries long.
  IMFCaptureEngineOnSampleCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnSynchronizedEvent(
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        pEvent,
      );
}
