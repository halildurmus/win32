// IWRdsProtocolManager.dart

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
import '../../system/remotedesktop/IWRdsProtocolSettings.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/IWRdsProtocolListener.dart';

/// @nodoc
const IID_IWRdsProtocolManager = '{DC796967-3ABB-40CD-A446-105276B58950}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolManager extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IWRdsProtocolManager(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIWRdsSettings,
    Pointer<WRDS_SETTINGS> pWRdsSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWRdsSettings,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWRdsSettings,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>()(
        ptr.ref.lpVtbl,
        pIWRdsSettings,
        pWRdsSettings,
      );

  int CreateListener(
    Pointer<Utf16> wszListenerName,
    Pointer<Pointer<COMObject>> pProtocolListener,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszListenerName,
            Pointer<Pointer<COMObject>> pProtocolListener,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszListenerName,
            Pointer<Pointer<COMObject>> pProtocolListener,
          )>()(
        ptr.ref.lpVtbl,
        wszListenerName,
        pProtocolListener,
      );

  int NotifyServiceStateChange(
    Pointer<WTS_SERVICE_STATE> pTSServiceStateChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_SERVICE_STATE> pTSServiceStateChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_SERVICE_STATE> pTSServiceStateChange,
          )>()(
        ptr.ref.lpVtbl,
        pTSServiceStateChange,
      );

  int NotifySessionOfServiceStart(
    Pointer<WTS_SESSION_ID> SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
      );

  int NotifySessionOfServiceStop(
    Pointer<WTS_SESSION_ID> SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
      );

  int NotifySessionStateChange(
    Pointer<WTS_SESSION_ID> SessionId,
    int EventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
            Uint32 EventId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_SESSION_ID> SessionId,
            int EventId,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
        EventId,
      );

  int NotifySettingsChange(
    Pointer<WRDS_SETTINGS> pWRdsSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>()(
        ptr.ref.lpVtbl,
        pWRdsSettings,
      );

  int Uninitialize() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
