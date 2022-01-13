// ITsSbPluginNotifySink.dart

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

import '../../system/remotedesktop/ITsSbBaseNotifySink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbPluginNotifySink = '{44DFE30B-C3BE-40F5-BF82-7A95BB795ADF}';

/// {@category Interface}
/// {@category com}
class ITsSbPluginNotifySink extends ITsSbBaseNotifySink {
  // vtable begins at 5, is 2 entries long.
  ITsSbPluginNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnInitialized(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );

  int OnTerminated() => ptr.ref.lpVtbl.value
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
