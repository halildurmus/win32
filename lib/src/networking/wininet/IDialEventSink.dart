// IDialEventSink.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDialEventSink = '{2D86F4FF-6E2D-4488-B2E9-6934AFD41BEA}';

/// {@category Interface}
/// {@category com}
class IDialEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDialEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnEvent(
    int dwEvent,
    int dwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEvent,
            Uint32 dwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEvent,
            int dwStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwEvent,
        dwStatus,
      );
}
