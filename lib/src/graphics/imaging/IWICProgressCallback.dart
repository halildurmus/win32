// IWICProgressCallback.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICProgressCallback = '{4776F9CD-9517-45FA-BF24-E89C5EC5C60C}';

/// {@category Interface}
/// {@category com}
class IWICProgressCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWICProgressCallback(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    int uFrameNum,
    int operation,
    double dblProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFrameNum,
            Int32 operation,
            Double dblProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFrameNum,
            int operation,
            double dblProgress,
          )>()(
        ptr.ref.lpVtbl,
        uFrameNum,
        operation,
        dblProgress,
      );
}
