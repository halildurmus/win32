// IStreamBufferMediaSeeking2.dart

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

import '../../media/directshow/IStreamBufferMediaSeeking.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferMediaSeeking2 = '{3A439AB0-155F-470A-86A6-9EA54AFD6EAF}';

/// {@category Interface}
/// {@category com}
class IStreamBufferMediaSeeking2 extends IStreamBufferMediaSeeking {
  // vtable begins at 20, is 1 entries long.
  IStreamBufferMediaSeeking2(Pointer<COMObject> ptr) : super(ptr);

  int SetRateEx(
    double dRate,
    int dwFramesPerSec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dRate,
            Uint32 dwFramesPerSec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dRate,
            int dwFramesPerSec,
          )>()(
        ptr.ref.lpVtbl,
        dRate,
        dwFramesPerSec,
      );
}
