// IDtcLuRecoveryInitiatedByLu.dart

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
import '../../system/distributedtransactioncoordinator/IDtcLuRecoveryInitiatedByLuWork.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDtcLuRecoveryInitiatedByLu =
    '{4131E768-1AEA-11D0-944B-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcLuRecoveryInitiatedByLu extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDtcLuRecoveryInitiatedByLu(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectToHandleWorkFromLu(
    Pointer<Pointer<COMObject>> ppWork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWork,
          )>()(
        ptr.ref.lpVtbl,
        ppWork,
      );
}
