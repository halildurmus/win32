// IVssAsync.dart

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
const IID_IVssAsync = '{507C37B4-CF5B-4E95-B0AF-14EB9767467E}';

/// {@category Interface}
/// {@category com}
class IVssAsync extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVssAsync(Pointer<COMObject> ptr) : super(ptr);

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Wait(
    int dwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        dwMilliseconds,
      );

  int QueryStatus(
    Pointer<Int32> pHrResult,
    Pointer<Int32> pReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<Int32> pReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<Int32> pReserved,
          )>()(
        ptr.ref.lpVtbl,
        pHrResult,
        pReserved,
      );
}
