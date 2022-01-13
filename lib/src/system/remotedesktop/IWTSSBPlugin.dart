// IWTSSBPlugin.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IWTSSBPlugin = '{DC44BE78-B18D-4399-B210-641BF67A002C}';

/// {@category Interface}
/// {@category com}
class IWTSSBPlugin extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWTSSBPlugin(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Uint32> PluginCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PluginCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PluginCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        PluginCapabilities,
      );

  int WTSSBX_MachineChangeNotification(
    int NotificationType,
    int MachineId,
    Pointer<WTSSBX_MACHINE_INFO> pMachineInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NotificationType,
            Int32 MachineId,
            Pointer<WTSSBX_MACHINE_INFO> pMachineInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NotificationType,
            int MachineId,
            Pointer<WTSSBX_MACHINE_INFO> pMachineInfo,
          )>()(
        ptr.ref.lpVtbl,
        NotificationType,
        MachineId,
        pMachineInfo,
      );

  int WTSSBX_SessionChangeNotification(
    int NotificationType,
    int MachineId,
    int NumOfSessions,
    Pointer<WTSSBX_SESSION_INFO> SessionInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NotificationType,
            Int32 MachineId,
            Uint32 NumOfSessions,
            Pointer<WTSSBX_SESSION_INFO> SessionInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NotificationType,
            int MachineId,
            int NumOfSessions,
            Pointer<WTSSBX_SESSION_INFO> SessionInfo,
          )>()(
        ptr.ref.lpVtbl,
        NotificationType,
        MachineId,
        NumOfSessions,
        SessionInfo,
      );

  int WTSSBX_GetMostSuitableServer(
    Pointer<Utf16> UserName,
    Pointer<Utf16> DomainName,
    Pointer<Utf16> ApplicationType,
    Pointer<Utf16> FarmName,
    Pointer<Int32> pMachineId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> UserName,
            Pointer<Utf16> DomainName,
            Pointer<Utf16> ApplicationType,
            Pointer<Utf16> FarmName,
            Pointer<Int32> pMachineId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> UserName,
            Pointer<Utf16> DomainName,
            Pointer<Utf16> ApplicationType,
            Pointer<Utf16> FarmName,
            Pointer<Int32> pMachineId,
          )>()(
        ptr.ref.lpVtbl,
        UserName,
        DomainName,
        ApplicationType,
        FarmName,
        pMachineId,
      );

  int Terminated() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int WTSSBX_GetUserExternalSession(
    Pointer<Utf16> UserName,
    Pointer<Utf16> DomainName,
    Pointer<Utf16> ApplicationType,
    Pointer<WTSSBX_IP_ADDRESS> RedirectorInternalIP,
    Pointer<Uint32> pSessionId,
    Pointer<WTSSBX_MACHINE_CONNECT_INFO> pMachineConnectInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> UserName,
            Pointer<Utf16> DomainName,
            Pointer<Utf16> ApplicationType,
            Pointer<WTSSBX_IP_ADDRESS> RedirectorInternalIP,
            Pointer<Uint32> pSessionId,
            Pointer<WTSSBX_MACHINE_CONNECT_INFO> pMachineConnectInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> UserName,
            Pointer<Utf16> DomainName,
            Pointer<Utf16> ApplicationType,
            Pointer<WTSSBX_IP_ADDRESS> RedirectorInternalIP,
            Pointer<Uint32> pSessionId,
            Pointer<WTSSBX_MACHINE_CONNECT_INFO> pMachineConnectInfo,
          )>()(
        ptr.ref.lpVtbl,
        UserName,
        DomainName,
        ApplicationType,
        RedirectorInternalIP,
        pSessionId,
        pMachineConnectInfo,
      );
}
