// IMSVidStreamBufferSinkEvent4.dart

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

import '../../media/directshow/IMSVidStreamBufferSinkEvent3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSinkEvent4 =
    '{1B01DCB0-DAF0-412C-A5D1-590C7F62E2B8}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSinkEvent4 extends IMSVidStreamBufferSinkEvent3 {
  // vtable begins at 14, is 1 entries long.
  IMSVidStreamBufferSinkEvent4(Pointer<COMObject> ptr) : super(ptr);

  int WriteFailureClear() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
