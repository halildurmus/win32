// IRDPSRAPIPerfCounterLogger.dart

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
const IID_IRDPSRAPIPerfCounterLogger = '{071C2533-0FA4-4E8F-AE83-9C10B4305AB5}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIPerfCounterLogger extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRDPSRAPIPerfCounterLogger(Pointer<COMObject> ptr) : super(ptr);

  int LogValue(
    int lValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 lValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lValue,
          )>()(
        ptr.ref.lpVtbl,
        lValue,
      );
}
