// ITPluggableTerminalEventSinkRegistration.dart

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
import '../../devices/tapi/ITPluggableTerminalEventSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITPluggableTerminalEventSinkRegistration =
    '{F7115709-A216-4957-A759-060AB32A90D1}';

/// {@category Interface}
/// {@category com}
class ITPluggableTerminalEventSinkRegistration extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITPluggableTerminalEventSinkRegistration(Pointer<COMObject> ptr) : super(ptr);

  int RegisterSink(
    Pointer<COMObject> pEventSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventSink,
          )>()(
        ptr.ref.lpVtbl,
        pEventSink,
      );

  int UnregisterSink() => ptr.ref.lpVtbl.value
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
}
