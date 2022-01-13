// IAMClockSlave.dart

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
const IID_IAMClockSlave = '{9FD52741-176D-4B36-8F51-CA8F933223BE}';

/// {@category Interface}
/// {@category com}
class IAMClockSlave extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAMClockSlave(Pointer<COMObject> ptr) : super(ptr);

  int SetErrorTolerance(
    int dwTolerance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTolerance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTolerance,
          )>()(
        ptr.ref.lpVtbl,
        dwTolerance,
      );

  int GetErrorTolerance(
    Pointer<Uint32> pdwTolerance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTolerance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTolerance,
          )>()(
        ptr.ref.lpVtbl,
        pdwTolerance,
      );
}
