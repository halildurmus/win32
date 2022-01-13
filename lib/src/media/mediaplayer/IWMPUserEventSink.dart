// IWMPUserEventSink.dart

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
const IID_IWMPUserEventSink = '{CFCCFA72-C343-48C3-A2DE-B7A4402E39F2}';

/// {@category Interface}
/// {@category com}
class IWMPUserEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPUserEventSink(Pointer<COMObject> ptr) : super(ptr);

  int NotifyUserEvent(
    int EventCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EventCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventCode,
          )>()(
        ptr.ref.lpVtbl,
        EventCode,
      );
}
