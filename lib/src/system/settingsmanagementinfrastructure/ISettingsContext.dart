// ISettingsContext.dart

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
import '../../system/com/IStream.dart';
import '../../system/settingsmanagementinfrastructure/ITargetInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsResult.dart';
import '../../system/settingsmanagementinfrastructure/IItemEnumerator.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsIdentity.dart';

/// @nodoc
const IID_ISettingsContext = '{9F7D7BBD-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsContext extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISettingsContext(Pointer<COMObject> ptr) : super(ptr);

  int Serialize(
    Pointer<COMObject> pStream,
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pTarget,
      );

  int Deserialize(
    Pointer<COMObject> pStream,
    Pointer<COMObject> pTarget,
    Pointer<Pointer<Pointer<COMObject>>> pppResults,
    Pointer<IntPtr> pcResultCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pTarget,
            Pointer<Pointer<Pointer<COMObject>>> pppResults,
            Pointer<IntPtr> pcResultCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pTarget,
            Pointer<Pointer<Pointer<COMObject>>> pppResults,
            Pointer<IntPtr> pcResultCount,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pTarget,
        pppResults,
        pcResultCount,
      );

  int SetUserData(
    Pointer pUserData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pUserData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pUserData,
          )>()(
        ptr.ref.lpVtbl,
        pUserData,
      );

  int GetUserData(
    Pointer<Pointer> pUserData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> pUserData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> pUserData,
          )>()(
        ptr.ref.lpVtbl,
        pUserData,
      );

  int GetNamespaces(
    Pointer<Pointer<COMObject>> ppNamespaceIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNamespaceIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNamespaceIds,
          )>()(
        ptr.ref.lpVtbl,
        ppNamespaceIds,
      );

  int GetStoredSettings(
    Pointer<COMObject> pIdentity,
    Pointer<Pointer<COMObject>> ppAddedSettings,
    Pointer<Pointer<COMObject>> ppModifiedSettings,
    Pointer<Pointer<COMObject>> ppDeletedSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIdentity,
            Pointer<Pointer<COMObject>> ppAddedSettings,
            Pointer<Pointer<COMObject>> ppModifiedSettings,
            Pointer<Pointer<COMObject>> ppDeletedSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIdentity,
            Pointer<Pointer<COMObject>> ppAddedSettings,
            Pointer<Pointer<COMObject>> ppModifiedSettings,
            Pointer<Pointer<COMObject>> ppDeletedSettings,
          )>()(
        ptr.ref.lpVtbl,
        pIdentity,
        ppAddedSettings,
        ppModifiedSettings,
        ppDeletedSettings,
      );

  int RevertSetting(
    Pointer<COMObject> pIdentity,
    Pointer<Utf16> pwzSetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIdentity,
            Pointer<Utf16> pwzSetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIdentity,
            Pointer<Utf16> pwzSetting,
          )>()(
        ptr.ref.lpVtbl,
        pIdentity,
        pwzSetting,
      );
}
