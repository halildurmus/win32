// IDtcLuRecoveryInitiatedByDtc.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDtcLuRecoveryInitiatedByDtc =
    '{4131E764-1AEA-11D0-944B-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcLuRecoveryInitiatedByDtc extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDtcLuRecoveryInitiatedByDtc(Pointer<COMObject> ptr) : super(ptr);

  int GetWork(
    Pointer<Int32> pWork,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pWork,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pWork,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pWork,
        ppv,
      );
}
