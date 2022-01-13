// IBDA_ISDBConditionalAccess.dart

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
const IID_IBDA_ISDBConditionalAccess = '{5E68C627-16C2-4E6C-B1E2-D00170CDAA0F}';

/// {@category Interface}
/// {@category com}
class IBDA_ISDBConditionalAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBDA_ISDBConditionalAccess(Pointer<COMObject> ptr) : super(ptr);

  int SetIsdbCasRequest(
    int ulRequestId,
    int ulcbRequestBufferLen,
    Pointer<Uint8> pbRequestBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRequestId,
            Uint32 ulcbRequestBufferLen,
            Pointer<Uint8> pbRequestBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRequestId,
            int ulcbRequestBufferLen,
            Pointer<Uint8> pbRequestBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ulRequestId,
        ulcbRequestBufferLen,
        pbRequestBuffer,
      );
}
