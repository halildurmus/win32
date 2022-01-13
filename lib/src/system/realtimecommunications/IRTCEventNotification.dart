// IRTCEventNotification.dart

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
import '../../system/realtimecommunications/structs.g.dart';
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCEventNotification = '{13FA24C7-5748-4B21-91F5-7397609CE747}';

/// {@category Interface}
/// {@category com}
class IRTCEventNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRTCEventNotification(Pointer<COMObject> ptr) : super(ptr);

  int Event(
    int RTCEvent,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RTCEvent,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RTCEvent,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        RTCEvent,
        pEvent,
      );
}
