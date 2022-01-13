// IMFHDCPStatus.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFHDCPStatus = '{DE400F54-5BF1-40CF-8964-0BEA136B1E3D}';

/// {@category Interface}
/// {@category com}
class IMFHDCPStatus extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFHDCPStatus(Pointer<COMObject> ptr) : super(ptr);

  int Query(
    Pointer<Int32> pStatus,
    Pointer<Int32> pfStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Int32> pfStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Int32> pfStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
        pfStatus,
      );

  int $Set(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );
}
