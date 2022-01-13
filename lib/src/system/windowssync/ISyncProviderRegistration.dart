// ISyncProviderRegistration.dart

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
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncProviderConfigUIInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumSyncProviderConfigUIInfos.dart';
import '../../system/windowssync/ISyncProviderInfo.dart';
import '../../system/windowssync/IEnumSyncProviderInfos.dart';
import '../../system/windowssync/IRegisteredSyncProvider.dart';
import '../../system/windowssync/ISyncProviderConfigUI.dart';
import '../../system/windowssync/ISyncRegistrationChange.dart';

/// @nodoc
const IID_ISyncProviderRegistration = '{CB45953B-7624-47BC-A472-EB8CAC6B222E}';

/// {@category Interface}
/// {@category com}
class ISyncProviderRegistration extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  ISyncProviderRegistration(Pointer<COMObject> ptr) : super(ptr);

  int CreateSyncProviderConfigUIRegistrationInstance(
    Pointer<SyncProviderConfigUIConfiguration> pConfigUIConfig,
    Pointer<Pointer<COMObject>> ppConfigUIInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SyncProviderConfigUIConfiguration> pConfigUIConfig,
            Pointer<Pointer<COMObject>> ppConfigUIInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SyncProviderConfigUIConfiguration> pConfigUIConfig,
            Pointer<Pointer<COMObject>> ppConfigUIInfo,
          )>()(
        ptr.ref.lpVtbl,
        pConfigUIConfig,
        ppConfigUIInfo,
      );

  int UnregisterSyncProviderConfigUI(
    Pointer<GUID> pguidInstanceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
      );

  int EnumerateSyncProviderConfigUIs(
    Pointer<GUID> pguidContentType,
    int dwSupportedArchitecture,
    Pointer<Pointer<COMObject>> ppEnumSyncProviderConfigUIInfos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContentType,
            Uint32 dwSupportedArchitecture,
            Pointer<Pointer<COMObject>> ppEnumSyncProviderConfigUIInfos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContentType,
            int dwSupportedArchitecture,
            Pointer<Pointer<COMObject>> ppEnumSyncProviderConfigUIInfos,
          )>()(
        ptr.ref.lpVtbl,
        pguidContentType,
        dwSupportedArchitecture,
        ppEnumSyncProviderConfigUIInfos,
      );

  int CreateSyncProviderRegistrationInstance(
    Pointer<SyncProviderConfiguration> pProviderConfiguration,
    Pointer<Pointer<COMObject>> ppProviderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SyncProviderConfiguration> pProviderConfiguration,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SyncProviderConfiguration> pProviderConfiguration,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>()(
        ptr.ref.lpVtbl,
        pProviderConfiguration,
        ppProviderInfo,
      );

  int UnregisterSyncProvider(
    Pointer<GUID> pguidInstanceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
      );

  int GetSyncProviderConfigUIInfoforProvider(
    Pointer<GUID> pguidProviderInstanceId,
    Pointer<Pointer<COMObject>> ppProviderConfigUIInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidProviderInstanceId,
            Pointer<Pointer<COMObject>> ppProviderConfigUIInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidProviderInstanceId,
            Pointer<Pointer<COMObject>> ppProviderConfigUIInfo,
          )>()(
        ptr.ref.lpVtbl,
        pguidProviderInstanceId,
        ppProviderConfigUIInfo,
      );

  int EnumerateSyncProviders(
    Pointer<GUID> pguidContentType,
    int dwStateFlagsToFilterMask,
    int dwStateFlagsToFilter,
    Pointer<GUID> refProviderClsId,
    int dwSupportedArchitecture,
    Pointer<Pointer<COMObject>> ppEnumSyncProviderInfos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContentType,
            Uint32 dwStateFlagsToFilterMask,
            Uint32 dwStateFlagsToFilter,
            Pointer<GUID> refProviderClsId,
            Uint32 dwSupportedArchitecture,
            Pointer<Pointer<COMObject>> ppEnumSyncProviderInfos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContentType,
            int dwStateFlagsToFilterMask,
            int dwStateFlagsToFilter,
            Pointer<GUID> refProviderClsId,
            int dwSupportedArchitecture,
            Pointer<Pointer<COMObject>> ppEnumSyncProviderInfos,
          )>()(
        ptr.ref.lpVtbl,
        pguidContentType,
        dwStateFlagsToFilterMask,
        dwStateFlagsToFilter,
        refProviderClsId,
        dwSupportedArchitecture,
        ppEnumSyncProviderInfos,
      );

  int GetSyncProviderInfo(
    Pointer<GUID> pguidInstanceId,
    Pointer<Pointer<COMObject>> ppProviderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        ppProviderInfo,
      );

  int GetSyncProviderFromInstanceId(
    Pointer<GUID> pguidInstanceId,
    int dwClsContext,
    Pointer<Pointer<COMObject>> ppSyncProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Uint32 dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            int dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProvider,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        dwClsContext,
        ppSyncProvider,
      );

  int GetSyncProviderConfigUIInfo(
    Pointer<GUID> pguidInstanceId,
    Pointer<Pointer<COMObject>> ppConfigUIInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Pointer<COMObject>> ppConfigUIInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Pointer<COMObject>> ppConfigUIInfo,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        ppConfigUIInfo,
      );

  int GetSyncProviderConfigUIFromInstanceId(
    Pointer<GUID> pguidInstanceId,
    int dwClsContext,
    Pointer<Pointer<COMObject>> ppConfigUI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Uint32 dwClsContext,
            Pointer<Pointer<COMObject>> ppConfigUI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            int dwClsContext,
            Pointer<Pointer<COMObject>> ppConfigUI,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        dwClsContext,
        ppConfigUI,
      );

  int GetSyncProviderState(
    Pointer<GUID> pguidInstanceId,
    Pointer<Uint32> pdwStateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Uint32> pdwStateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<Uint32> pdwStateFlags,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        pdwStateFlags,
      );

  int SetSyncProviderState(
    Pointer<GUID> pguidInstanceId,
    int dwStateFlagsMask,
    int dwStateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Uint32 dwStateFlagsMask,
            Uint32 dwStateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            int dwStateFlagsMask,
            int dwStateFlags,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        dwStateFlagsMask,
        dwStateFlags,
      );

  int RegisterForEvent(
    Pointer<IntPtr> phEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phEvent,
          )>()(
        ptr.ref.lpVtbl,
        phEvent,
      );

  int RevokeEvent(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int GetChange(
    int hEvent,
    Pointer<Pointer<COMObject>> ppChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Pointer<COMObject>> ppChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Pointer<COMObject>> ppChange,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        ppChange,
      );
}

/// @nodoc
const CLSID_SyncProviderRegistration = '{F82B4EF1-93A9-4DDE-8015-F7950A1A6E31}';

/// {@category com}
class SyncProviderRegistration extends ISyncProviderRegistration {
  SyncProviderRegistration(Pointer<COMObject> ptr) : super(ptr);

  factory SyncProviderRegistration.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SyncProviderRegistration);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISyncProviderRegistration);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SyncProviderRegistration(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
