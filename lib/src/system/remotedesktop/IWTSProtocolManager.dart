// IWTSProtocolManager.dart

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
import '../../system/remotedesktop/IWTSProtocolListener.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IWTSProtocolManager = '{F9EAF6CC-ED79-4F01-821D-1F881B9F66CC}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWTSProtocolManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateListener(
    Pointer<Utf16> wszListenerName,
    Pointer<Pointer<COMObject>> pProtocolListener,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
          .elementAt(4)
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
          .elementAt(5)
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

  int NotifySessionStateChange(
    Pointer<WTS_SESSION_ID> SessionId,
    int EventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
