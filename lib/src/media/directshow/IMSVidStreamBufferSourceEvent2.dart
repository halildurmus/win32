// IMSVidStreamBufferSourceEvent2.dart

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

import '../../media/directshow/IMSVidStreamBufferSourceEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSourceEvent2 =
    '{7AEF50CE-8E22-4BA8-BC06-A92A458B4EF2}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSourceEvent2 extends IMSVidStreamBufferSourceEvent {
  // vtable begins at 17, is 1 entries long.
  IMSVidStreamBufferSourceEvent2(Pointer<COMObject> ptr) : super(ptr);

  int RateChange(
    double qwNewRate,
    double qwOldRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double qwNewRate,
            Double qwOldRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double qwNewRate,
            double qwOldRate,
          )>()(
        ptr.ref.lpVtbl,
        qwNewRate,
        qwOldRate,
      );
}
