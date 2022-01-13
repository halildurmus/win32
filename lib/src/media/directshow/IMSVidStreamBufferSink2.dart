// IMSVidStreamBufferSink2.dart

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

import '../../media/directshow/IMSVidStreamBufferSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSink2 = '{2CA9FC63-C131-4E5A-955A-544A47C67146}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSink2 extends IMSVidStreamBufferSink {
  // vtable begins at 22, is 1 entries long.
  IMSVidStreamBufferSink2(Pointer<COMObject> ptr) : super(ptr);

  int UnlockProfile() => ptr.ref.lpVtbl.value
          .elementAt(22)
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
