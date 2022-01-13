// IFaxServerNotify2.dart

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
import '../../devices/fax/IFaxServer2.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxJobStatus.dart';

/// @nodoc
const IID_IFaxServerNotify2 = '{EC9C69B9-5FE7-4805-9467-82FCD96AF903}';

/// {@category Interface}
/// {@category com}
class IFaxServerNotify2 extends IDispatch {
  // vtable begins at 7, is 26 entries long.
  IFaxServerNotify2(Pointer<COMObject> ptr) : super(ptr);

  int OnIncomingJobAdded(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
      );

  int OnIncomingJobRemoved(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
      );

  int OnIncomingJobChanged(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
    Pointer<COMObject> pJobStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
        pJobStatus,
      );

  int OnOutgoingJobAdded(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
      );

  int OnOutgoingJobRemoved(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
      );

  int OnOutgoingJobChanged(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrJobId,
    Pointer<COMObject> pJobStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrJobId,
        pJobStatus,
      );

  int OnIncomingMessageAdded(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrMessageId,
      );

  int OnIncomingMessageRemoved(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrMessageId,
      );

  int OnOutgoingMessageAdded(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrMessageId,
      );

  int OnOutgoingMessageRemoved(
    Pointer<COMObject> pFaxServer,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bstrMessageId,
      );

  int OnReceiptOptionsChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnActivityLoggingConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnSecurityConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnEventLoggingConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnOutgoingQueueConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnOutgoingArchiveConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnIncomingArchiveConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnDevicesConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnOutboundRoutingGroupsConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnOutboundRoutingRulesConfigChange(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnServerActivityChange(
    Pointer<COMObject> pFaxServer,
    int lIncomingMessages,
    int lRoutingMessages,
    int lOutgoingMessages,
    int lQueuedMessages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Int32 lIncomingMessages,
            Int32 lRoutingMessages,
            Int32 lOutgoingMessages,
            Int32 lQueuedMessages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            int lIncomingMessages,
            int lRoutingMessages,
            int lOutgoingMessages,
            int lQueuedMessages,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        lIncomingMessages,
        lRoutingMessages,
        lOutgoingMessages,
        lQueuedMessages,
      );

  int OnQueuesStatusChange(
    Pointer<COMObject> pFaxServer,
    int bOutgoingQueueBlocked,
    int bOutgoingQueuePaused,
    int bIncomingQueueBlocked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Int16 bOutgoingQueueBlocked,
            Int16 bOutgoingQueuePaused,
            Int16 bIncomingQueueBlocked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            int bOutgoingQueueBlocked,
            int bOutgoingQueuePaused,
            int bIncomingQueueBlocked,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        bOutgoingQueueBlocked,
        bOutgoingQueuePaused,
        bIncomingQueueBlocked,
      );

  int OnNewCall(
    Pointer<COMObject> pFaxServer,
    int lCallId,
    int lDeviceId,
    Pointer<Utf16> bstrCallerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Int32 lCallId,
            Int32 lDeviceId,
            Pointer<Utf16> bstrCallerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            int lCallId,
            int lDeviceId,
            Pointer<Utf16> bstrCallerId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        lCallId,
        lDeviceId,
        bstrCallerId,
      );

  int OnServerShutDown(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );

  int OnDeviceStatusChange(
    Pointer<COMObject> pFaxServer,
    int lDeviceId,
    int bPoweredOff,
    int bSending,
    int bReceiving,
    int bRinging,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Int32 lDeviceId,
            Int16 bPoweredOff,
            Int16 bSending,
            Int16 bReceiving,
            Int16 bRinging,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            int lDeviceId,
            int bPoweredOff,
            int bSending,
            int bReceiving,
            int bRinging,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        lDeviceId,
        bPoweredOff,
        bSending,
        bReceiving,
        bRinging,
      );

  int OnGeneralServerConfigChanged(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );
}
