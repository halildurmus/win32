// IMbnSmsEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnSms.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnSmsEvents = '{DCBBBAB6-2016-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnSmsEvents extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMbnSmsEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnSmsConfigurationChange(
    Pointer<COMObject> sms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
          )>()(
        ptr.ref.lpVtbl,
        sms,
      );

  int OnSetSmsConfigurationComplete(
    Pointer<COMObject> sms,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        sms,
        requestID,
        status,
      );

  int OnSmsSendComplete(
    Pointer<COMObject> sms,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        sms,
        requestID,
        status,
      );

  int OnSmsReadComplete(
    Pointer<COMObject> sms,
    int smsFormat,
    Pointer<SAFEARRAY> readMsgs,
    int moreMsgs,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
            Int32 smsFormat,
            Pointer<SAFEARRAY> readMsgs,
            Int16 moreMsgs,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
            int smsFormat,
            Pointer<SAFEARRAY> readMsgs,
            int moreMsgs,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        sms,
        smsFormat,
        readMsgs,
        moreMsgs,
        requestID,
        status,
      );

  int OnSmsNewClass0Message(
    Pointer<COMObject> sms,
    int smsFormat,
    Pointer<SAFEARRAY> readMsgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
            Int32 smsFormat,
            Pointer<SAFEARRAY> readMsgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
            int smsFormat,
            Pointer<SAFEARRAY> readMsgs,
          )>()(
        ptr.ref.lpVtbl,
        sms,
        smsFormat,
        readMsgs,
      );

  int OnSmsDeleteComplete(
    Pointer<COMObject> sms,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        sms,
        requestID,
        status,
      );

  int OnSmsStatusChange(
    Pointer<COMObject> sms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sms,
          )>()(
        ptr.ref.lpVtbl,
        sms,
      );
}
