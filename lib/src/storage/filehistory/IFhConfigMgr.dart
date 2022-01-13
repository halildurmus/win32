// IFhConfigMgr.dart

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
import '../../storage/filehistory/structs.g.dart';
import '../../storage/filehistory/IFhScopeIterator.dart';
import '../../storage/filehistory/IFhTarget.dart';

/// @nodoc
const IID_IFhConfigMgr = '{6A5FEA5B-BF8F-4EE5-B8C3-44D8A0D7331C}';

/// {@category Interface}
/// {@category com}
class IFhConfigMgr extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IFhConfigMgr(Pointer<COMObject> ptr) : super(ptr);

  int LoadConfiguration() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreateDefaultConfiguration(
    int OverwriteIfExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OverwriteIfExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OverwriteIfExists,
          )>()(
        ptr.ref.lpVtbl,
        OverwriteIfExists,
      );

  int SaveConfiguration() => ptr.ref.lpVtbl.value
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

  int AddRemoveExcludeRule(
    int Add,
    int Category,
    Pointer<Utf16> Item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Add,
            Int32 Category,
            Pointer<Utf16> Item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Add,
            int Category,
            Pointer<Utf16> Item,
          )>()(
        ptr.ref.lpVtbl,
        Add,
        Category,
        Item,
      );

  int GetIncludeExcludeRules(
    int Include,
    int Category,
    Pointer<Pointer<COMObject>> Iterator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Include,
            Int32 Category,
            Pointer<Pointer<COMObject>> Iterator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Include,
            int Category,
            Pointer<Pointer<COMObject>> Iterator,
          )>()(
        ptr.ref.lpVtbl,
        Include,
        Category,
        Iterator,
      );

  int GetLocalPolicy(
    int LocalPolicyType,
    Pointer<Uint64> PolicyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 LocalPolicyType,
            Pointer<Uint64> PolicyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LocalPolicyType,
            Pointer<Uint64> PolicyValue,
          )>()(
        ptr.ref.lpVtbl,
        LocalPolicyType,
        PolicyValue,
      );

  int SetLocalPolicy(
    int LocalPolicyType,
    int PolicyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 LocalPolicyType,
            Uint64 PolicyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LocalPolicyType,
            int PolicyValue,
          )>()(
        ptr.ref.lpVtbl,
        LocalPolicyType,
        PolicyValue,
      );

  int GetBackupStatus(
    Pointer<Int32> BackupStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> BackupStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> BackupStatus,
          )>()(
        ptr.ref.lpVtbl,
        BackupStatus,
      );

  int SetBackupStatus(
    int BackupStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BackupStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BackupStatus,
          )>()(
        ptr.ref.lpVtbl,
        BackupStatus,
      );

  int GetDefaultTarget(
    Pointer<Pointer<COMObject>> DefaultTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> DefaultTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> DefaultTarget,
          )>()(
        ptr.ref.lpVtbl,
        DefaultTarget,
      );

  int ValidateTarget(
    Pointer<Utf16> TargetUrl,
    Pointer<Int32> ValidationResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Int32> ValidationResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Int32> ValidationResult,
          )>()(
        ptr.ref.lpVtbl,
        TargetUrl,
        ValidationResult,
      );

  int ProvisionAndSetNewTarget(
    Pointer<Utf16> TargetUrl,
    Pointer<Utf16> TargetName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Utf16> TargetName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Utf16> TargetName,
          )>()(
        ptr.ref.lpVtbl,
        TargetUrl,
        TargetName,
      );

  int ChangeDefaultTargetRecommendation(
    int Recommend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Recommend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Recommend,
          )>()(
        ptr.ref.lpVtbl,
        Recommend,
      );

  int QueryProtectionStatus(
    Pointer<Uint32> ProtectionState,
    Pointer<Pointer<Utf16>> ProtectedUntilTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ProtectionState,
            Pointer<Pointer<Utf16>> ProtectedUntilTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ProtectionState,
            Pointer<Pointer<Utf16>> ProtectedUntilTime,
          )>()(
        ptr.ref.lpVtbl,
        ProtectionState,
        ProtectedUntilTime,
      );
}

/// @nodoc
const CLSID_FhConfigMgr = '{ED43BB3C-09E9-498A-9DF6-2177244C6DB4}';

/// {@category com}
class FhConfigMgr extends IFhConfigMgr {
  FhConfigMgr(Pointer<COMObject> ptr) : super(ptr);

  factory FhConfigMgr.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FhConfigMgr);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFhConfigMgr);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FhConfigMgr(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
