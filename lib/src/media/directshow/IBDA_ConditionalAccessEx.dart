// IBDA_ConditionalAccessEx.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IBDA_ConditionalAccessEx = '{497C3418-23CB-44BA-BB62-769F506FCEA7}';

/// {@category Interface}
/// {@category com}
class IBDA_ConditionalAccessEx extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IBDA_ConditionalAccessEx(Pointer<COMObject> ptr) : super(ptr);

  int CheckEntitlementToken(
    int ulDialogRequest,
    Pointer<Utf16> bstrLanguage,
    int RequestType,
    int ulcbEntitlementTokenLen,
    Pointer<Uint8> pbEntitlementToken,
    Pointer<Uint32> pulDescrambleStatus,
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
            Int32 RequestType,
            Uint32 ulcbEntitlementTokenLen,
            Pointer<Uint8> pbEntitlementToken,
            Pointer<Uint32> pulDescrambleStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            int RequestType,
            int ulcbEntitlementTokenLen,
            Pointer<Uint8> pbEntitlementToken,
            Pointer<Uint32> pulDescrambleStatus,
          )>()(
        ptr.ref.lpVtbl,
        ulDialogRequest,
        bstrLanguage,
        RequestType,
        ulcbEntitlementTokenLen,
        pbEntitlementToken,
        pulDescrambleStatus,
      );

  int SetCaptureToken(
    int ulcbCaptureTokenLen,
    Pointer<Uint8> pbCaptureToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcbCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcbCaptureTokenLen,
            Pointer<Uint8> pbCaptureToken,
          )>()(
        ptr.ref.lpVtbl,
        ulcbCaptureTokenLen,
        pbCaptureToken,
      );

  int OpenBroadcastMmi(
    int ulDialogRequest,
    Pointer<Utf16> bstrLanguage,
    int EventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            Uint32 EventId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            int EventId,
          )>()(
        ptr.ref.lpVtbl,
        ulDialogRequest,
        bstrLanguage,
        EventId,
      );

  int CloseMmiDialog(
    int ulDialogRequest,
    Pointer<Utf16> bstrLanguage,
    int ulDialogNumber,
    int ReasonCode,
    Pointer<Uint32> pulSessionResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            Uint32 ulDialogNumber,
            Int32 ReasonCode,
            Pointer<Uint32> pulSessionResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            int ulDialogNumber,
            int ReasonCode,
            Pointer<Uint32> pulSessionResult,
          )>()(
        ptr.ref.lpVtbl,
        ulDialogRequest,
        bstrLanguage,
        ulDialogNumber,
        ReasonCode,
        pulSessionResult,
      );

  int CreateDialogRequestNumber(
    Pointer<Uint32> pulDialogRequestNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulDialogRequestNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulDialogRequestNumber,
          )>()(
        ptr.ref.lpVtbl,
        pulDialogRequestNumber,
      );
}
