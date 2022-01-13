// IWiaMiniDrvCallBack.dart

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
import '../../devices/imageacquisition/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWiaMiniDrvCallBack = '{33A57D5A-3DE8-11D2-9A36-00C04FA36145}';

/// {@category Interface}
/// {@category com}
class IWiaMiniDrvCallBack extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWiaMiniDrvCallBack(Pointer<COMObject> ptr) : super(ptr);

  int MiniDrvCallback(
    int lReason,
    int lStatus,
    int lPercentComplete,
    int lOffset,
    int lLength,
    Pointer<MINIDRV_TRANSFER_CONTEXT> pTranCtx,
    int lReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lReason,
            Int32 lStatus,
            Int32 lPercentComplete,
            Int32 lOffset,
            Int32 lLength,
            Pointer<MINIDRV_TRANSFER_CONTEXT> pTranCtx,
            Int32 lReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lReason,
            int lStatus,
            int lPercentComplete,
            int lOffset,
            int lLength,
            Pointer<MINIDRV_TRANSFER_CONTEXT> pTranCtx,
            int lReserved,
          )>()(
        ptr.ref.lpVtbl,
        lReason,
        lStatus,
        lPercentComplete,
        lOffset,
        lLength,
        pTranCtx,
        lReserved,
      );
}
