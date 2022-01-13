// ITfKeyTraceEventSink.dart

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
const IID_ITfKeyTraceEventSink = '{1CD4C13B-1C36-4191-A70A-7F3E611F367D}';

/// {@category Interface}
/// {@category com}
class ITfKeyTraceEventSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfKeyTraceEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnKeyTraceDown(
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
      );

  int OnKeyTraceUp(
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
      );
}
