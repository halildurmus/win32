// ISettingsEngine.dart

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
import '../../system/settingsmanagementinfrastructure/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/IItemEnumerator.dart';
import '../../foundation/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsIdentity.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsNamespace.dart';
import '../../system/com/IStream.dart';
import '../../specialTypes.dart';
import '../../system/settingsmanagementinfrastructure/ITargetInfo.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsContext.dart';

/// @nodoc
const IID_ISettingsEngine = '{9F7D7BB9-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsEngine extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  ISettingsEngine(Pointer<COMObject> ptr) : super(ptr);

  int GetNamespaces(
    int Flags,
    Pointer Reserved,
    Pointer<Pointer<COMObject>> Namespaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> Namespaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> Namespaces,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Reserved,
        Namespaces,
      );

  int GetNamespace(
    Pointer<COMObject> SettingsID,
    int Access,
    Pointer Reserved,
    Pointer<Pointer<COMObject>> NamespaceItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            Int32 Access,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> NamespaceItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            int Access,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> NamespaceItem,
          )>()(
        ptr.ref.lpVtbl,
        SettingsID,
        Access,
        Reserved,
        NamespaceItem,
      );

  int GetErrorDescription(
    int HResult,
    Pointer<Pointer<Utf16>> Message,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HResult,
            Pointer<Pointer<Utf16>> Message,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HResult,
            Pointer<Pointer<Utf16>> Message,
          )>()(
        ptr.ref.lpVtbl,
        HResult,
        Message,
      );

  int CreateSettingsIdentity(
    Pointer<Pointer<COMObject>> SettingsID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetStoreStatus(
    Pointer Reserved,
    Pointer<Int32> Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Reserved,
            Pointer<Int32> Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Reserved,
            Pointer<Int32> Status,
          )>()(
        ptr.ref.lpVtbl,
        Reserved,
        Status,
      );

  int LoadStore(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int UnloadStore(
    Pointer Reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Reserved,
          )>()(
        ptr.ref.lpVtbl,
        Reserved,
      );

  int RegisterNamespace(
    Pointer<COMObject> SettingsID,
    Pointer<COMObject> Stream,
    int PushSettings,
    Pointer<VARIANT> Results,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            Pointer<COMObject> Stream,
            Int32 PushSettings,
            Pointer<VARIANT> Results,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            Pointer<COMObject> Stream,
            int PushSettings,
            Pointer<VARIANT> Results,
          )>()(
        ptr.ref.lpVtbl,
        SettingsID,
        Stream,
        PushSettings,
        Results,
      );

  int UnregisterNamespace(
    Pointer<COMObject> SettingsID,
    int RemoveSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            Int32 RemoveSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SettingsID,
            int RemoveSettings,
          )>()(
        ptr.ref.lpVtbl,
        SettingsID,
        RemoveSettings,
      );

  int CreateTargetInfo(
    Pointer<Pointer<COMObject>> Target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Target,
          )>()(
        ptr.ref.lpVtbl,
        Target,
      );

  int GetTargetInfo(
    Pointer<Pointer<COMObject>> Target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Target,
          )>()(
        ptr.ref.lpVtbl,
        Target,
      );

  int SetTargetInfo(
    Pointer<COMObject> Target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Target,
          )>()(
        ptr.ref.lpVtbl,
        Target,
      );

  int CreateSettingsContext(
    int Flags,
    Pointer Reserved,
    Pointer<Pointer<COMObject>> SettingsContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> SettingsContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer Reserved,
            Pointer<Pointer<COMObject>> SettingsContext,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Reserved,
        SettingsContext,
      );

  int SetSettingsContext(
    Pointer<COMObject> SettingsContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SettingsContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SettingsContext,
          )>()(
        ptr.ref.lpVtbl,
        SettingsContext,
      );

  int ApplySettingsContext(
    Pointer<COMObject> SettingsContext,
    Pointer<Pointer<Pointer<Utf16>>> pppwzIdentities,
    Pointer<IntPtr> pcIdentities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SettingsContext,
            Pointer<Pointer<Pointer<Utf16>>> pppwzIdentities,
            Pointer<IntPtr> pcIdentities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SettingsContext,
            Pointer<Pointer<Pointer<Utf16>>> pppwzIdentities,
            Pointer<IntPtr> pcIdentities,
          )>()(
        ptr.ref.lpVtbl,
        SettingsContext,
        pppwzIdentities,
        pcIdentities,
      );

  int GetSettingsContext(
    Pointer<Pointer<COMObject>> SettingsContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> SettingsContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> SettingsContext,
          )>()(
        ptr.ref.lpVtbl,
        SettingsContext,
      );
}

/// @nodoc
const CLSID_SettingsEngine = '{9F7D7BB5-20B3-11DA-81A5-0030F1642E3C}';

/// {@category com}
class SettingsEngine extends ISettingsEngine {
  SettingsEngine(Pointer<COMObject> ptr) : super(ptr);

  factory SettingsEngine.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SettingsEngine);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISettingsEngine);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SettingsEngine(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
