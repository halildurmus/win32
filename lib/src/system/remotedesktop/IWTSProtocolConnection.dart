// IWTSProtocolConnection.dart

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
import '../../system/remotedesktop/IWTSProtocolLogonErrorRedirector.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/IWTSProtocolLicenseConnection.dart';
import '../../system/remotedesktop/IWTSProtocolShadowConnection.dart';

/// @nodoc
const IID_IWTSProtocolConnection = '{23083765-9095-4648-98BF-EF81C914032D}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolConnection extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IWTSProtocolConnection(Pointer<COMObject> ptr) : super(ptr);

  int GetLogonErrorRedirector(
    Pointer<Pointer<COMObject>> ppLogonErrorRedir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLogonErrorRedir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLogonErrorRedir,
          )>()(
        ptr.ref.lpVtbl,
        ppLogonErrorRedir,
      );

  int SendPolicyData(
    Pointer<WTS_POLICY_DATA> pPolicyData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_POLICY_DATA> pPolicyData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_POLICY_DATA> pPolicyData,
          )>()(
        ptr.ref.lpVtbl,
        pPolicyData,
      );

  int AcceptConnection() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetClientData(
    Pointer<WTS_CLIENT_DATA> pClientData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_CLIENT_DATA> pClientData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_CLIENT_DATA> pClientData,
          )>()(
        ptr.ref.lpVtbl,
        pClientData,
      );

  int GetUserCredentials(
    Pointer<WTS_USER_CREDENTIAL> pUserCreds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_USER_CREDENTIAL> pUserCreds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_USER_CREDENTIAL> pUserCreds,
          )>()(
        ptr.ref.lpVtbl,
        pUserCreds,
      );

  int GetLicenseConnection(
    Pointer<Pointer<COMObject>> ppLicenseConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLicenseConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLicenseConnection,
          )>()(
        ptr.ref.lpVtbl,
        ppLicenseConnection,
      );

  int AuthenticateClientToSession(
    Pointer<WTS_SESSION_ID> SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int NotifySessionId(
    Pointer<WTS_SESSION_ID> SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetProtocolHandles(
    Pointer<IntPtr> pKeyboardHandle,
    Pointer<IntPtr> pMouseHandle,
    Pointer<IntPtr> pBeepHandle,
    Pointer<IntPtr> pVideoHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pKeyboardHandle,
            Pointer<IntPtr> pMouseHandle,
            Pointer<IntPtr> pBeepHandle,
            Pointer<IntPtr> pVideoHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pKeyboardHandle,
            Pointer<IntPtr> pMouseHandle,
            Pointer<IntPtr> pBeepHandle,
            Pointer<IntPtr> pVideoHandle,
          )>()(
        ptr.ref.lpVtbl,
        pKeyboardHandle,
        pMouseHandle,
        pBeepHandle,
        pVideoHandle,
      );

  int ConnectNotify(
    int SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SessionId,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
      );

  int IsUserAllowedToLogon(
    int SessionId,
    int UserToken,
    Pointer<Utf16> pDomainName,
    Pointer<Utf16> pUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SessionId,
            IntPtr UserToken,
            Pointer<Utf16> pDomainName,
            Pointer<Utf16> pUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SessionId,
            int UserToken,
            Pointer<Utf16> pDomainName,
            Pointer<Utf16> pUserName,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
        UserToken,
        pDomainName,
        pUserName,
      );

  int SessionArbitrationEnumeration(
    int hUserToken,
    int bSingleSessionPerUserEnabled,
    Pointer<Uint32> pSessionIdArray,
    Pointer<Uint32> pdwSessionIdentifierCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hUserToken,
            Int32 bSingleSessionPerUserEnabled,
            Pointer<Uint32> pSessionIdArray,
            Pointer<Uint32> pdwSessionIdentifierCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hUserToken,
            int bSingleSessionPerUserEnabled,
            Pointer<Uint32> pSessionIdArray,
            Pointer<Uint32> pdwSessionIdentifierCount,
          )>()(
        ptr.ref.lpVtbl,
        hUserToken,
        bSingleSessionPerUserEnabled,
        pSessionIdArray,
        pdwSessionIdentifierCount,
      );

  int LogonNotify(
    int hClientToken,
    Pointer<Utf16> wszUserName,
    Pointer<Utf16> wszDomainName,
    Pointer<WTS_SESSION_ID> SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hClientToken,
            Pointer<Utf16> wszUserName,
            Pointer<Utf16> wszDomainName,
            Pointer<WTS_SESSION_ID> SessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hClientToken,
            Pointer<Utf16> wszUserName,
            Pointer<Utf16> wszDomainName,
            Pointer<WTS_SESSION_ID> SessionId,
          )>()(
        ptr.ref.lpVtbl,
        hClientToken,
        wszUserName,
        wszDomainName,
        SessionId,
      );

  int GetUserData(
    Pointer<WTS_POLICY_DATA> pPolicyData,
    Pointer<WTS_USER_DATA> pClientData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_POLICY_DATA> pPolicyData,
            Pointer<WTS_USER_DATA> pClientData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_POLICY_DATA> pPolicyData,
            Pointer<WTS_USER_DATA> pClientData,
          )>()(
        ptr.ref.lpVtbl,
        pPolicyData,
        pClientData,
      );

  int DisconnectNotify() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetProtocolStatus(
    Pointer<WTS_PROTOCOL_STATUS> pProtocolStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_PROTOCOL_STATUS> pProtocolStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_PROTOCOL_STATUS> pProtocolStatus,
          )>()(
        ptr.ref.lpVtbl,
        pProtocolStatus,
      );

  int GetLastInputTime(
    Pointer<Uint64> pLastInputTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pLastInputTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pLastInputTime,
          )>()(
        ptr.ref.lpVtbl,
        pLastInputTime,
      );

  int SetErrorInfo(
    int ulError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulError,
          )>()(
        ptr.ref.lpVtbl,
        ulError,
      );

  int SendBeep(
    int Frequency,
    int Duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Frequency,
            Uint32 Duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Frequency,
            int Duration,
          )>()(
        ptr.ref.lpVtbl,
        Frequency,
        Duration,
      );

  int CreateVirtualChannel(
    Pointer<Utf8> szEndpointName,
    int bStatic,
    int RequestedPriority,
    Pointer<IntPtr> phChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> szEndpointName,
            Int32 bStatic,
            Uint32 RequestedPriority,
            Pointer<IntPtr> phChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> szEndpointName,
            int bStatic,
            int RequestedPriority,
            Pointer<IntPtr> phChannel,
          )>()(
        ptr.ref.lpVtbl,
        szEndpointName,
        bStatic,
        RequestedPriority,
        phChannel,
      );

  int QueryProperty(
    GUID QueryType,
    int ulNumEntriesIn,
    int ulNumEntriesOut,
    Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
    Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID QueryType,
            Uint32 ulNumEntriesIn,
            Uint32 ulNumEntriesOut,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID QueryType,
            int ulNumEntriesIn,
            int ulNumEntriesOut,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
          )>()(
        ptr.ref.lpVtbl,
        QueryType,
        ulNumEntriesIn,
        ulNumEntriesOut,
        pPropertyEntriesIn,
        pPropertyEntriesOut,
      );

  int GetShadowConnection(
    Pointer<Pointer<COMObject>> ppShadowConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShadowConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShadowConnection,
          )>()(
        ptr.ref.lpVtbl,
        ppShadowConnection,
      );
}
