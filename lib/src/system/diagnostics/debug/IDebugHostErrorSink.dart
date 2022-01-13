// IDebugHostErrorSink.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostErrorSink = '{C8FF0F0B-FCE9-467E-8BB3-5D69EF109C00}';

/// {@category Interface}
/// {@category com}
class IDebugHostErrorSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugHostErrorSink(Pointer<COMObject> ptr) : super(ptr);

  int ReportError(
    int errClass,
    int hrError,
    Pointer<Utf16> message,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 errClass,
            Int32 hrError,
            Pointer<Utf16> message,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int errClass,
            int hrError,
            Pointer<Utf16> message,
          )>()(
        ptr.ref.lpVtbl,
        errClass,
        hrError,
        message,
      );
}
