// IRealTimeStylusSynchronization.dart

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
import '../../ui/tabletpc/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRealTimeStylusSynchronization =
    '{AA87EAB8-AB4A-4CEA-B5CB-46D84C6A2509}';

/// {@category Interface}
/// {@category com}
class IRealTimeStylusSynchronization extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRealTimeStylusSynchronization(Pointer<COMObject> ptr) : super(ptr);

  int AcquireLock(
    int lock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lock,
          )>()(
        ptr.ref.lpVtbl,
        lock,
      );

  int ReleaseLock(
    int lock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lock,
          )>()(
        ptr.ref.lpVtbl,
        lock,
      );
}
