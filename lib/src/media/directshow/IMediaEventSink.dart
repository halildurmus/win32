// IMediaEventSink.dart

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
const IID_IMediaEventSink = '{56A868A2-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMediaEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMediaEventSink(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    int EventCode,
    int EventParam1,
    int EventParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EventCode,
            IntPtr EventParam1,
            IntPtr EventParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventCode,
            int EventParam1,
            int EventParam2,
          )>()(
        ptr.ref.lpVtbl,
        EventCode,
        EventParam1,
        EventParam2,
      );
}
