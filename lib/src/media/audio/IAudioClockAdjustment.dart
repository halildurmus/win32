// IAudioClockAdjustment.dart

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
const IID_IAudioClockAdjustment = '{F6E4C0A0-46D9-4FB8-BE21-57A3EF2B626C}';

/// {@category Interface}
/// {@category com}
class IAudioClockAdjustment extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClockAdjustment(Pointer<COMObject> ptr) : super(ptr);

  int SetSampleRate(
    double flSampleRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flSampleRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flSampleRate,
          )>()(
        ptr.ref.lpVtbl,
        flSampleRate,
      );
}
