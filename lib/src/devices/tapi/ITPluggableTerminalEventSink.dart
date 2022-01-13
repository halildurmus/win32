// ITPluggableTerminalEventSink.dart

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
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITPluggableTerminalEventSink =
    '{6E0887BE-BA1A-492E-BD10-4020EC5E33E0}';

/// {@category Interface}
/// {@category com}
class ITPluggableTerminalEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITPluggableTerminalEventSink(Pointer<COMObject> ptr) : super(ptr);

  int FireEvent(
    Pointer<MSP_EVENT_INFO> pMspEventInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSP_EVENT_INFO> pMspEventInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSP_EVENT_INFO> pMspEventInfo,
          )>()(
        ptr.ref.lpVtbl,
        pMspEventInfo,
      );
}
