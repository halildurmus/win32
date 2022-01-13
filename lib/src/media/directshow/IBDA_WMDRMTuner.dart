// IBDA_WMDRMTuner.dart

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
const IID_IBDA_WMDRMTuner = '{86D979CF-A8A7-4F94-B5FB-14C0ACA68FE6}';

/// {@category Interface}
/// {@category com}
class IBDA_WMDRMTuner extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBDA_WMDRMTuner(Pointer<COMObject> ptr) : super(ptr);

  int PurchaseEntitlement(
    int ulDialogRequest,
    Pointer<Utf16> bstrLanguage,
    int ulPurchaseTokenLen,
    Pointer<Uint8> pbPurchaseToken,
    Pointer<Uint32> pulDescrambleStatus,
    Pointer<Uint32> pulCaptureTokenLen,
    Pointer<Uint8> pbCaptureToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            Uint32 ulPurchaseTokenLen,
            Pointer<Uint8> pbPurchaseToken,
            Pointer<Uint32> pulDescrambleStatus,
            Pointer<Uint32> pulCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            int ulPurchaseTokenLen,
            Pointer<Uint8> pbPurchaseToken,
            Pointer<Uint32> pulDescrambleStatus,
            Pointer<Uint32> pulCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>()(
        ptr.ref.lpVtbl,
        ulDialogRequest,
        bstrLanguage,
        ulPurchaseTokenLen,
        pbPurchaseToken,
        pulDescrambleStatus,
        pulCaptureTokenLen,
        pbCaptureToken,
      );

  int CancelCaptureToken(
    int ulCaptureTokenLen,
    Pointer<Uint8> pbCaptureToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>()(
        ptr.ref.lpVtbl,
        ulCaptureTokenLen,
        pbCaptureToken,
      );

  int SetPidProtection(
    int ulPid,
    Pointer<GUID> uuidKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulPid,
            Pointer<GUID> uuidKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulPid,
            Pointer<GUID> uuidKey,
          )>()(
        ptr.ref.lpVtbl,
        ulPid,
        uuidKey,
      );

  int GetPidProtection(
    int pulPid,
    Pointer<GUID> uuidKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pulPid,
            Pointer<GUID> uuidKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pulPid,
            Pointer<GUID> uuidKey,
          )>()(
        ptr.ref.lpVtbl,
        pulPid,
        uuidKey,
      );

  int SetSyncValue(
    int ulSyncValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSyncValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSyncValue,
          )>()(
        ptr.ref.lpVtbl,
        ulSyncValue,
      );

  int GetStartCodeProfile(
    Pointer<Uint32> pulStartCodeProfileLen,
    Pointer<Uint8> pbStartCodeProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStartCodeProfileLen,
            Pointer<Uint8> pbStartCodeProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStartCodeProfileLen,
            Pointer<Uint8> pbStartCodeProfile,
          )>()(
        ptr.ref.lpVtbl,
        pulStartCodeProfileLen,
        pbStartCodeProfile,
      );
}
