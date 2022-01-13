// ITsSbProvider.dart

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
import '../../system/remotedesktop/ITsSbLoadBalanceResult.dart';
import '../../system/remotedesktop/ITsSbSession.dart';
import '../../system/remotedesktop/ITsSbPluginPropertySet.dart';
import '../../system/remotedesktop/ITsSbTargetPropertySet.dart';
import '../../system/remotedesktop/ITsSbEnvironment.dart';
import '../../system/remotedesktop/ITsSbResourcePluginStore.dart';
import '../../system/remotedesktop/ITsSbFilterPluginStore.dart';
import '../../system/remotedesktop/ITsSbResourceNotification.dart';
import '../../system/remotedesktop/ITsSbGlobalStore.dart';
import '../../system/remotedesktop/ITsSbEnvironmentPropertySet.dart';

/// @nodoc
const IID_ITsSbProvider = '{87A4098F-6D7B-44DD-BC17-8CE44E370D52}';

/// {@category Interface}
/// {@category com}
class ITsSbProvider extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ITsSbProvider(Pointer<COMObject> ptr) : super(ptr);

  int CreateTargetObject(
    Pointer<Utf16> TargetName,
    Pointer<Utf16> EnvironmentName,
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
            Pointer<Utf16> EnvironmentName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> EnvironmentName,
            Pointer<Pointer<COMObject>> ppTarget,
          )>()(
        ptr.ref.lpVtbl,
        TargetName,
        EnvironmentName,
        ppTarget,
      );

  int CreateLoadBalanceResultObject(
    Pointer<Utf16> TargetName,
    Pointer<Pointer<COMObject>> ppLBResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppLBResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Pointer<COMObject>> ppLBResult,
          )>()(
        ptr.ref.lpVtbl,
        TargetName,
        ppLBResult,
      );

  int CreateSessionObject(
    Pointer<Utf16> TargetName,
    Pointer<Utf16> UserName,
    Pointer<Utf16> Domain,
    int SessionId,
    Pointer<Pointer<COMObject>> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> UserName,
            Pointer<Utf16> Domain,
            Uint32 SessionId,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetName,
            Pointer<Utf16> UserName,
            Pointer<Utf16> Domain,
            int SessionId,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        TargetName,
        UserName,
        Domain,
        SessionId,
        ppSession,
      );

  int CreatePluginPropertySet(
    Pointer<Pointer<COMObject>> ppPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertySet,
      );

  int CreateTargetPropertySetObject(
    Pointer<Pointer<COMObject>> ppPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertySet,
      );

  int CreateEnvironmentObject(
    Pointer<Utf16> Name,
    int ServerWeight,
    Pointer<Pointer<COMObject>> ppEnvironment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Uint32 ServerWeight,
            Pointer<Pointer<COMObject>> ppEnvironment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int ServerWeight,
            Pointer<Pointer<COMObject>> ppEnvironment,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        ServerWeight,
        ppEnvironment,
      );

  int GetResourcePluginStore(
    Pointer<Pointer<COMObject>> ppStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>()(
        ptr.ref.lpVtbl,
        ppStore,
      );

  int GetFilterPluginStore(
    Pointer<Pointer<COMObject>> ppStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStore,
          )>()(
        ptr.ref.lpVtbl,
        ppStore,
      );

  int RegisterForNotification(
    int notificationType,
    Pointer<Utf16> ResourceToMonitor,
    Pointer<COMObject> pPluginNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 notificationType,
            Pointer<Utf16> ResourceToMonitor,
            Pointer<COMObject> pPluginNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int notificationType,
            Pointer<Utf16> ResourceToMonitor,
            Pointer<COMObject> pPluginNotification,
          )>()(
        ptr.ref.lpVtbl,
        notificationType,
        ResourceToMonitor,
        pPluginNotification,
      );

  int UnRegisterForNotification(
    int notificationType,
    Pointer<Utf16> ResourceToMonitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 notificationType,
            Pointer<Utf16> ResourceToMonitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int notificationType,
            Pointer<Utf16> ResourceToMonitor,
          )>()(
        ptr.ref.lpVtbl,
        notificationType,
        ResourceToMonitor,
      );

  int GetInstanceOfGlobalStore(
    Pointer<Pointer<COMObject>> ppGlobalStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGlobalStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGlobalStore,
          )>()(
        ptr.ref.lpVtbl,
        ppGlobalStore,
      );

  int CreateEnvironmentPropertySetObject(
    Pointer<Pointer<COMObject>> ppPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertySet,
      );
}
