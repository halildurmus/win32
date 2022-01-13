// IBDA_DRM.dart

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
const IID_IBDA_DRM = '{F98D88B0-1992-4CD6-A6D9-B9AFAB99330D}';

/// {@category Interface}
/// {@category com}
class IBDA_DRM extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_DRM(Pointer<COMObject> ptr) : super(ptr);

  int GetDRMPairingStatus(
    Pointer<Uint32> pdwStatus,
    Pointer<Int32> phError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Int32> phError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Int32> phError,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
        phError,
      );

  int PerformDRMPairing(
    int fSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSync,
          )>()(
        ptr.ref.lpVtbl,
        fSync,
      );
}
