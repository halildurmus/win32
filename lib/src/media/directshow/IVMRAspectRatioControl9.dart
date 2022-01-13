// IVMRAspectRatioControl9.dart

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
const IID_IVMRAspectRatioControl9 = '{00D96C29-BBDE-4EFC-9901-BB5036392146}';

/// {@category Interface}
/// {@category com}
class IVMRAspectRatioControl9 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVMRAspectRatioControl9(Pointer<COMObject> ptr) : super(ptr);

  int GetAspectRatioMode(
    Pointer<Uint32> lpdwARMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwARMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwARMode,
          )>()(
        ptr.ref.lpVtbl,
        lpdwARMode,
      );

  int SetAspectRatioMode(
    int dwARMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwARMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwARMode,
          )>()(
        ptr.ref.lpVtbl,
        dwARMode,
      );
}
