// IStreamBufferSink2.dart

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

import '../../media/directshow/IStreamBufferSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferSink2 = '{DB94A660-F4FB-4BFA-BCC6-FE159A4EEA93}';

/// {@category Interface}
/// {@category com}
class IStreamBufferSink2 extends IStreamBufferSink {
  // vtable begins at 6, is 1 entries long.
  IStreamBufferSink2(Pointer<COMObject> ptr) : super(ptr);

  int UnlockProfile() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
