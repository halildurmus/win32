// IMFCaptureEngineOnEventCallback.dart

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
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCaptureEngineOnEventCallback =
    '{AEDA51C0-9025-4983-9012-DE597B88B089}';

/// {@category Interface}
/// {@category com}
class IMFCaptureEngineOnEventCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFCaptureEngineOnEventCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnEvent(
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
