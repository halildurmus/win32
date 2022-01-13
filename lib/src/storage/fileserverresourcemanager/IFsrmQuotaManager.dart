// IFsrmQuotaManager.dart

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

import '../../system/com/IDispatch.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmQuota.dart';
import '../../storage/fileserverresourcemanager/IFsrmAutoApplyQuota.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';

/// @nodoc
const IID_IFsrmQuotaManager = '{8BB68C7D-19D8-4FFB-809E-BE4FC1734014}';

/// {@category Interface}
/// {@category com}
class IFsrmQuotaManager extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IFsrmQuotaManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get ActionVariables {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get ActionVariableDescriptions {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateQuota(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> quota,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>()(
        ptr.ref.lpVtbl,
        path,
        quota,
      );

  int CreateAutoApplyQuota(
    Pointer<Utf16> quotaTemplateName,
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> quota,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> quotaTemplateName,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> quotaTemplateName,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>()(
        ptr.ref.lpVtbl,
        quotaTemplateName,
        path,
        quota,
      );

  int GetQuota(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> quota,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>()(
        ptr.ref.lpVtbl,
        path,
        quota,
      );

  int GetAutoApplyQuota(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> quota,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>()(
        ptr.ref.lpVtbl,
        path,
        quota,
      );

  int GetRestrictiveQuota(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> quota,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> quota,
          )>()(
        ptr.ref.lpVtbl,
        path,
        quota,
      );

  int EnumQuotas(
    Pointer<Utf16> path,
    int options,
    Pointer<Pointer<COMObject>> quotas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Pointer<COMObject>> quotas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Pointer<COMObject>> quotas,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        quotas,
      );

  int EnumAutoApplyQuotas(
    Pointer<Utf16> path,
    int options,
    Pointer<Pointer<COMObject>> quotas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Pointer<COMObject>> quotas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Pointer<COMObject>> quotas,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        quotas,
      );

  int EnumEffectiveQuotas(
    Pointer<Utf16> path,
    int options,
    Pointer<Pointer<COMObject>> quotas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Pointer<COMObject>> quotas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Pointer<COMObject>> quotas,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        quotas,
      );

  int Scan(
    Pointer<Utf16> strPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPath,
          )>()(
        ptr.ref.lpVtbl,
        strPath,
      );

  int CreateQuotaCollection(
    Pointer<Pointer<COMObject>> collection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>()(
        ptr.ref.lpVtbl,
        collection,
      );
}

/// @nodoc
const CLSID_FsrmQuotaManager = '{90DCAB7F-347C-4BFC-B543-540326305FBE}';

/// {@category com}
class FsrmQuotaManager extends IFsrmQuotaManager {
  FsrmQuotaManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmQuotaManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmQuotaManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmQuotaManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmQuotaManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
