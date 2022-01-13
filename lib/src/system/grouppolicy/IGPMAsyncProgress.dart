// IGPMAsyncProgress.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMStatusMsgCollection.dart';

/// @nodoc
const IID_IGPMAsyncProgress = '{6AAC29F8-5948-4324-BF70-423818942DBC}';

/// {@category Interface}
/// {@category com}
class IGPMAsyncProgress extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IGPMAsyncProgress(Pointer<COMObject> ptr) : super(ptr);

  int Status(
    int lProgressNumerator,
    int lProgressDenominator,
    int hrStatus,
    Pointer<VARIANT> pResult,
    Pointer<COMObject> ppIGPMStatusMsgCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lProgressNumerator,
            Int32 lProgressDenominator,
            Int32 hrStatus,
            Pointer<VARIANT> pResult,
            Pointer<COMObject> ppIGPMStatusMsgCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lProgressNumerator,
            int lProgressDenominator,
            int hrStatus,
            Pointer<VARIANT> pResult,
            Pointer<COMObject> ppIGPMStatusMsgCollection,
          )>()(
        ptr.ref.lpVtbl,
        lProgressNumerator,
        lProgressDenominator,
        hrStatus,
        pResult,
        ppIGPMStatusMsgCollection,
      );
}
