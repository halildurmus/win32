// IDtcNetworkAccessConfig3.dart

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

import '../../system/distributedtransactioncoordinator/IDtcNetworkAccessConfig2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDtcNetworkAccessConfig3 = '{76E4B4F3-2CA5-466B-89D5-FD218EE75B49}';

/// {@category Interface}
/// {@category com}
class IDtcNetworkAccessConfig3 extends IDtcNetworkAccessConfig2 {
  // vtable begins at 22, is 2 entries long.
  IDtcNetworkAccessConfig3(Pointer<COMObject> ptr) : super(ptr);

  int GetLUAccess(
    Pointer<Int32> pbLUAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLUAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLUAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbLUAccess,
      );

  int SetLUAccess(
    int bLUAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bLUAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bLUAccess,
          )>()(
        ptr.ref.lpVtbl,
        bLUAccess,
      );
}
