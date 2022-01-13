// ITsSbGlobalStore.dart

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
import '../../system/com/structs.g.dart';
import '../../system/remotedesktop/ITsSbEnvironment.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITsSbGlobalStore = '{9AB60F7B-BD72-4D9F-8A3A-A0EA5574E635}';

/// {@category Interface}
/// {@category com}
class ITsSbGlobalStore extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITsSbGlobalStore(Pointer<COMObject> ptr) : super(ptr);

  int QueryTarget(
    Pointer<Utf16> ProviderName,
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
            Pointer<Utf16> ProviderName,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> FarmName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> FarmName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>()(
        ptr.ref.lpVtbl,
        ProviderName,
        TargetName,
        FarmName,
        ppTarget,
      );

  int QuerySessionBySessionId(
    Pointer<Utf16> ProviderName,
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
            Pointer<Utf16> ProviderName,
            Uint32 dwSessionId,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            int dwSessionId,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        ProviderName,
        dwSessionId,
        TargetName,
        ppSession,
      );

  int EnumerateFarms(
    Pointer<Utf16> ProviderName,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<SAFEARRAY>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<SAFEARRAY>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<SAFEARRAY>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        ProviderName,
        pdwCount,
        pVal,
      );

  int EnumerateTargets(
    Pointer<Utf16> ProviderName,
    Pointer<Utf16> FarmName,
    Pointer<Utf16> EnvName,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Utf16> FarmName,
            Pointer<Utf16> EnvName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Utf16> FarmName,
            Pointer<Utf16> EnvName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        ProviderName,
        FarmName,
        EnvName,
        pdwCount,
        pVal,
      );

  int EnumerateEnvironmentsByProvider(
    Pointer<Utf16> ProviderName,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProviderName,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        ProviderName,
        pdwCount,
        ppVal,
      );

  int EnumerateSessions(
    Pointer<Utf16> ProviderName,
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
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProviderName,
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
            Pointer<Utf16> ProviderName,
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
        ProviderName,
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
          .elementAt(9)
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
}
