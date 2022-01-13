// IMbnSms.dart

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
import '../../networkmanagement/mobilebroadband/IMbnSmsConfiguration.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnSms = '{DCBBBAB6-2015-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnSms extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMbnSms(Pointer<COMObject> ptr) : super(ptr);

  int GetSmsConfiguration(
    Pointer<Pointer<COMObject>> smsConfiguration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> smsConfiguration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> smsConfiguration,
          )>()(
        ptr.ref.lpVtbl,
        smsConfiguration,
      );

  int SetSmsConfiguration(
    Pointer<COMObject> smsConfiguration,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> smsConfiguration,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> smsConfiguration,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        smsConfiguration,
        requestID,
      );

  int SmsSendPdu(
    Pointer<Utf16> pduData,
    int size,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pduData,
            Uint8 size,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pduData,
            int size,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        pduData,
        size,
        requestID,
      );

  int SmsSendCdma(
    Pointer<Utf16> address,
    int encoding,
    int language,
    int sizeInCharacters,
    Pointer<SAFEARRAY> message,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> address,
            Int32 encoding,
            Int32 language,
            Uint32 sizeInCharacters,
            Pointer<SAFEARRAY> message,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> address,
            int encoding,
            int language,
            int sizeInCharacters,
            Pointer<SAFEARRAY> message,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        address,
        encoding,
        language,
        sizeInCharacters,
        message,
        requestID,
      );

  int SmsSendCdmaPdu(
    Pointer<SAFEARRAY> message,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> message,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> message,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        message,
        requestID,
      );

  int SmsRead(
    Pointer<MBN_SMS_FILTER> smsFilter,
    int smsFormat,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_SMS_FILTER> smsFilter,
            Int32 smsFormat,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_SMS_FILTER> smsFilter,
            int smsFormat,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        smsFilter,
        smsFormat,
        requestID,
      );

  int SmsDelete(
    Pointer<MBN_SMS_FILTER> smsFilter,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_SMS_FILTER> smsFilter,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_SMS_FILTER> smsFilter,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        smsFilter,
        requestID,
      );

  int GetSmsStatus(
    Pointer<MBN_SMS_STATUS_INFO> smsStatusInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_SMS_STATUS_INFO> smsStatusInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_SMS_STATUS_INFO> smsStatusInfo,
          )>()(
        ptr.ref.lpVtbl,
        smsStatusInfo,
      );
}
