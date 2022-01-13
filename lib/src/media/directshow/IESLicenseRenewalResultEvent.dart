// IESLicenseRenewalResultEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IESLicenseRenewalResultEvent =
    '{D5A48EF5-A81B-4DF0-ACAA-5E35E7EA45D4}';

/// {@category Interface}
/// {@category com}
class IESLicenseRenewalResultEvent extends IESEvent {
  // vtable begins at 8, is 11 entries long.
  IESLicenseRenewalResultEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetCallersId(
    Pointer<Uint32> pdwCallersId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCallersId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCallersId,
          )>()(
        ptr.ref.lpVtbl,
        pdwCallersId,
      );

  int GetFileName(
    Pointer<Pointer<Utf16>> pbstrFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFilename,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFilename,
      );

  int IsRenewalSuccessful(
    Pointer<Int32> pfRenewalSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRenewalSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRenewalSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        pfRenewalSuccessful,
      );

  int IsCheckEntitlementCallRequired(
    Pointer<Int32> pfCheckEntTokenCallNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCheckEntTokenCallNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCheckEntTokenCallNeeded,
          )>()(
        ptr.ref.lpVtbl,
        pfCheckEntTokenCallNeeded,
      );

  int GetDescrambledStatus(
    Pointer<Uint32> pDescrambledStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pDescrambledStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pDescrambledStatus,
          )>()(
        ptr.ref.lpVtbl,
        pDescrambledStatus,
      );

  int GetRenewalResultCode(
    Pointer<Uint32> pdwRenewalResultCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRenewalResultCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRenewalResultCode,
          )>()(
        ptr.ref.lpVtbl,
        pdwRenewalResultCode,
      );

  int GetCASFailureCode(
    Pointer<Uint32> pdwCASFailureCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCASFailureCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCASFailureCode,
          )>()(
        ptr.ref.lpVtbl,
        pdwCASFailureCode,
      );

  int GetRenewalHResult(
    Pointer<Int32> phr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phr,
          )>()(
        ptr.ref.lpVtbl,
        phr,
      );

  int GetEntitlementTokenLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int GetEntitlementToken(
    Pointer<Pointer<SAFEARRAY>> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
      );

  int GetExpiryDate(
    Pointer<Uint64> pqwExpiryDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>()(
        ptr.ref.lpVtbl,
        pqwExpiryDate,
      );
}
