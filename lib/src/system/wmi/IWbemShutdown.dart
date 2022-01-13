// IWbemShutdown.dart

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
import '../../system/wmi/IWbemContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemShutdown = '{B7B31DF9-D515-11D3-A11C-00105A1F515A}';

/// {@category Interface}
/// {@category com}
class IWbemShutdown extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemShutdown(Pointer<COMObject> ptr) : super(ptr);

  int Shutdown(
    int uReason,
    int uMaxMilliseconds,
    Pointer<COMObject> pCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 uReason,
            Uint32 uMaxMilliseconds,
            Pointer<COMObject> pCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uReason,
            int uMaxMilliseconds,
            Pointer<COMObject> pCtx,
          )>()(
        ptr.ref.lpVtbl,
        uReason,
        uMaxMilliseconds,
        pCtx,
      );
}
