// IESEvents.dart

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
import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IESEvents = '{ABD414BF-CFE5-4E5E-AF5B-4B4E49C5BFEB}';

/// {@category Interface}
/// {@category com}
class IESEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IESEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnESEventReceived(
    GUID guidEventType,
    Pointer<COMObject> pESEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidEventType,
            Pointer<COMObject> pESEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidEventType,
            Pointer<COMObject> pESEvent,
          )>()(
        ptr.ref.lpVtbl,
        guidEventType,
        pESEvent,
      );
}
