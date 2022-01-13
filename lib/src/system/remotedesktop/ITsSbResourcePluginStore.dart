// ITsSbResourcePluginStore.dart

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
import '../../system/remotedesktop/ITsSbTarget.dart';
import '../../system/remotedesktop/ITsSbSession.dart';
import '../../system/remotedesktop/ITsSbEnvironment.dart';
import '../../system/com/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITsSbResourcePluginStore = '{5C38F65F-BCF1-4036-A6BF-9E3CCCAE0B63}';

/// {@category Interface}
/// {@category com}
class ITsSbResourcePluginStore extends IUnknown {
  // vtable begins at 3, is 28 entries long.
  ITsSbResourcePluginStore(Pointer<COMObject> ptr) : super(ptr);

  int QueryTarget(
    Pointer<Utf16> TargetName,
    Pointer<Utf16> FarmName,
    Pointer<Pointer<COMObject>> ppTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> FarmName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> FarmName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>()(
        ptr.ref.lpVtbl,
        TargetName,
        FarmName,
        ppTarget,
      );

  int QuerySessionBySessionId(
    int dwSessionId,
    Pointer<Utf16> TargetName,
    Pointer<Pointer<COMObject>> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSessionId,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSessionId,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        dwSessionId,
        TargetName,
        ppSession,
      );

  int AddTargetToStore(
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
      );

  int AddSessionToStore(
    Pointer<COMObject> pSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSession,
          )>()(
        ptr.ref.lpVtbl,
        pSession,
      );

  int AddEnvironmentToStore(
    Pointer<COMObject> pEnvironment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
          )>()(
        ptr.ref.lpVtbl,
        pEnvironment,
      );

  int RemoveEnvironmentFromStore(
    Pointer<Utf16> EnvironmentName,
    int bIgnoreOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            Int32 bIgnoreOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            int bIgnoreOwner,
          )>()(
        ptr.ref.lpVtbl,
        EnvironmentName,
        bIgnoreOwner,
      );

  int EnumerateFarms(
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<SAFEARRAY>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<SAFEARRAY>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<SAFEARRAY>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
        pVal,
      );

  int QueryEnvironment(
    Pointer<Utf16> EnvironmentName,
    Pointer<Pointer<COMObject>> ppEnvironment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            Pointer<Pointer<COMObject>> ppEnvironment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            Pointer<Pointer<COMObject>> ppEnvironment,
          )>()(
        ptr.ref.lpVtbl,
        EnvironmentName,
        ppEnvironment,
      );

  int EnumerateEnvironments(
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
        pVal,
      );

  int SaveTarget(
    Pointer<COMObject> pTarget,
    int bForceWrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTarget,
            Int32 bForceWrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTarget,
            int bForceWrite,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
        bForceWrite,
      );

  int SaveEnvironment(
    Pointer<COMObject> pEnvironment,
    int bForceWrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
            Int32 bForceWrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
            int bForceWrite,
          )>()(
        ptr.ref.lpVtbl,
        pEnvironment,
        bForceWrite,
      );

  int SaveSession(
    Pointer<COMObject> pSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSession,
          )>()(
        ptr.ref.lpVtbl,
        pSession,
      );

  int SetTargetProperty(
    Pointer<Utf16> TargetName,
    Pointer<Utf16> PropertyName,
    Pointer<VARIANT> pProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>()(
        ptr.ref.lpVtbl,
        TargetName,
        PropertyName,
        pProperty,
      );

  int SetEnvironmentProperty(
    Pointer<Utf16> EnvironmentName,
    Pointer<Utf16> PropertyName,
    Pointer<VARIANT> pProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> EnvironmentName,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>()(
        ptr.ref.lpVtbl,
        EnvironmentName,
        PropertyName,
        pProperty,
      );

  int SetTargetState(
    Pointer<Utf16> targetName,
    int newState,
    Pointer<Int32> pOldState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Int32 newState,
            Pointer<Int32> pOldState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            int newState,
            Pointer<Int32> pOldState,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        newState,
        pOldState,
      );

  int SetSessionState(
    Pointer<COMObject> sbSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sbSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sbSession,
          )>()(
        ptr.ref.lpVtbl,
        sbSession,
      );

  int EnumerateTargets(
    Pointer<Utf16> FarmName,
    Pointer<Utf16> EnvName,
    int sortByFieldId,
    Pointer<Utf16> sortyByPropName,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FarmName,
            Pointer<Utf16> EnvName,
            Int32 sortByFieldId,
            Pointer<Utf16> sortyByPropName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FarmName,
            Pointer<Utf16> EnvName,
            int sortByFieldId,
            Pointer<Utf16> sortyByPropName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        FarmName,
        EnvName,
        sortByFieldId,
        sortyByPropName,
        pdwCount,
        pVal,
      );

  int EnumerateSessions(
    Pointer<Utf16> targetName,
    Pointer<Utf16> userName,
    Pointer<Utf16> userDomain,
    Pointer<Utf16> poolName,
    Pointer<Utf16> initialProgram,
    Pointer<Int32> pSessionState,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> userName,
            Pointer<Utf16> userDomain,
            Pointer<Utf16> poolName,
            Pointer<Utf16> initialProgram,
            Pointer<Int32> pSessionState,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> userName,
            Pointer<Utf16> userDomain,
            Pointer<Utf16> poolName,
            Pointer<Utf16> initialProgram,
            Pointer<Int32> pSessionState,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        userName,
        userDomain,
        poolName,
        initialProgram,
        pSessionState,
        pdwCount,
        ppVal,
      );

  int GetFarmProperty(
    Pointer<Utf16> farmName,
    Pointer<Utf16> propertyName,
    Pointer<VARIANT> pVarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> farmName,
            Pointer<Utf16> propertyName,
            Pointer<VARIANT> pVarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> farmName,
            Pointer<Utf16> propertyName,
            Pointer<VARIANT> pVarValue,
          )>()(
        ptr.ref.lpVtbl,
        farmName,
        propertyName,
        pVarValue,
      );

  int DeleteTarget(
    Pointer<Utf16> targetName,
    Pointer<Utf16> hostName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> hostName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            Pointer<Utf16> hostName,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        hostName,
      );

  int SetTargetPropertyWithVersionCheck(
    Pointer<COMObject> pTarget,
    Pointer<Utf16> PropertyName,
    Pointer<VARIANT> pProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTarget,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTarget,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
        PropertyName,
        pProperty,
      );

  int SetEnvironmentPropertyWithVersionCheck(
    Pointer<COMObject> pEnvironment,
    Pointer<Utf16> PropertyName,
    Pointer<VARIANT> pProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnvironment,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pProperty,
          )>()(
        ptr.ref.lpVtbl,
        pEnvironment,
        PropertyName,
        pProperty,
      );

  int AcquireTargetLock(
    Pointer<Utf16> targetName,
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> targetName,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> targetName,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        targetName,
        dwTimeout,
        ppContext,
      );

  int ReleaseTargetLock(
    Pointer<COMObject> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );

  int TestAndSetServerState(
    Pointer<Utf16> PoolName,
    Pointer<Utf16> ServerFQDN,
    int NewState,
    int TestState,
    Pointer<Int32> pInitState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> ServerFQDN,
            Int32 NewState,
            Int32 TestState,
            Pointer<Int32> pInitState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> ServerFQDN,
            int NewState,
            int TestState,
            Pointer<Int32> pInitState,
          )>()(
        ptr.ref.lpVtbl,
        PoolName,
        ServerFQDN,
        NewState,
        TestState,
        pInitState,
      );

  int SetServerWaitingToStart(
    Pointer<Utf16> PoolName,
    Pointer<Utf16> serverName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> serverName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> serverName,
          )>()(
        ptr.ref.lpVtbl,
        PoolName,
        serverName,
      );

  int GetServerState(
    Pointer<Utf16> PoolName,
    Pointer<Utf16> ServerFQDN,
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> ServerFQDN,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PoolName,
            Pointer<Utf16> ServerFQDN,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        PoolName,
        ServerFQDN,
        pState,
      );

  int SetServerDrainMode(
    Pointer<Utf16> ServerFQDN,
    int DrainMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ServerFQDN,
            Uint32 DrainMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ServerFQDN,
            int DrainMode,
          )>()(
        ptr.ref.lpVtbl,
        ServerFQDN,
        DrainMode,
      );
}
