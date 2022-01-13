// IAMClockAdjust.dart

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
const IID_IAMClockAdjust = '{4D5466B0-A49C-11D1-ABE8-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IAMClockAdjust extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMClockAdjust(Pointer<COMObject> ptr) : super(ptr);

  int SetClockDelta(
    int rtDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtDelta,
          )>()(
        ptr.ref.lpVtbl,
        rtDelta,
      );
}
