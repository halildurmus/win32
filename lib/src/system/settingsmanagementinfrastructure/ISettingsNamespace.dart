// ISettingsNamespace.dart

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
import '../../system/settingsmanagementinfrastructure/ISettingsIdentity.dart';
import '../../foundation/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/IItemEnumerator.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsResult.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsItem.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISettingsNamespace = '{9F7D7BBA-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsNamespace extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISettingsNamespace(Pointer<COMObject> ptr) : super(ptr);

  int GetIdentity(
    Pointer<Pointer<COMObject>> SettingsID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> SettingsID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> SettingsID,
          )>()(
        ptr.ref.lpVtbl,
        SettingsID,
      );

  int Settings(
    Pointer<Pointer<COMObject>> Settings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Settings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Settings,
          )>()(
        ptr.ref.lpVtbl,
        Settings,
      );

  int Save(
    int PushSettings,
    Pointer<Pointer<COMObject>> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PushSettings,
            Pointer<Pointer<COMObject>> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PushSettings,
            Pointer<Pointer<COMObject>> Result,
          )>()(
        ptr.ref.lpVtbl,
        PushSettings,
        Result,
      );

  int GetSettingByPath(
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Setting,
      );

  int CreateSettingByPath(
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Setting,
      );

  int RemoveSettingByPath(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int GetAttribute(
    Pointer<Utf16> Name,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
      );
}
