// ITpmVirtualSmartCardManagerStatusCallback.dart

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
import '../../security/tpm/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITpmVirtualSmartCardManagerStatusCallback =
    '{1A1BB35F-ABB8-451C-A1AE-33D98F1BEF4A}';

/// {@category Interface}
/// {@category com}
class ITpmVirtualSmartCardManagerStatusCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITpmVirtualSmartCardManagerStatusCallback(Pointer<COMObject> ptr)
      : super(ptr);

  int ReportProgress(
    int Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Status,
          )>()(
        ptr.ref.lpVtbl,
        Status,
      );

  int ReportError(
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Error,
          )>()(
        ptr.ref.lpVtbl,
        Error,
      );
}
