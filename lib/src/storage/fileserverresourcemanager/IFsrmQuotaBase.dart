// IFsrmQuotaBase.dart

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

import '../../storage/fileserverresourcemanager/IFsrmObject.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmAction.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';

/// @nodoc
const IID_IFsrmQuotaBase = '{1568A795-3924-4118-B74B-68D8F0FA5DAF}';

/// {@category Interface}
/// {@category com}
class IFsrmQuotaBase extends IFsrmObject {
  // vtable begins at 12, is 10 entries long.
  IFsrmQuotaBase(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get QuotaLimit {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> quotaLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> quotaLimit,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set QuotaLimit(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT quotaLimit,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT quotaLimit,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get QuotaFlags {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> quotaFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> quotaFlags,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set QuotaFlags(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 quotaFlags,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int quotaFlags,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<SAFEARRAY> get Thresholds {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> thresholds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> thresholds,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddThreshold(
    int threshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threshold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threshold,
          )>()(
        ptr.ref.lpVtbl,
        threshold,
      );

  int DeleteThreshold(
    int threshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threshold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threshold,
          )>()(
        ptr.ref.lpVtbl,
        threshold,
      );

  int ModifyThreshold(
    int threshold,
    int newThreshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threshold,
            Int32 newThreshold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threshold,
            int newThreshold,
          )>()(
        ptr.ref.lpVtbl,
        threshold,
        newThreshold,
      );

  int CreateThresholdAction(
    int threshold,
    int actionType,
    Pointer<Pointer<COMObject>> action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threshold,
            Int32 actionType,
            Pointer<Pointer<COMObject>> action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threshold,
            int actionType,
            Pointer<Pointer<COMObject>> action,
          )>()(
        ptr.ref.lpVtbl,
        threshold,
        actionType,
        action,
      );

  int EnumThresholdActions(
    int threshold,
    Pointer<Pointer<COMObject>> actions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threshold,
            Pointer<Pointer<COMObject>> actions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threshold,
            Pointer<Pointer<COMObject>> actions,
          )>()(
        ptr.ref.lpVtbl,
        threshold,
        actions,
      );
}
