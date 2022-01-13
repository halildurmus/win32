// IFsrmAutoApplyQuota.dart

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

import '../../storage/fileserverresourcemanager/IFsrmQuotaObject.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmDerivedObjectsResult.dart';

/// @nodoc
const IID_IFsrmAutoApplyQuota = '{F82E5729-6ABA-4740-BFC7-C7F58F75FB7B}';

/// {@category Interface}
/// {@category com}
class IFsrmAutoApplyQuota extends IFsrmQuotaObject {
  // vtable begins at 28, is 3 entries long.
  IFsrmAutoApplyQuota(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get ExcludeFolders {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> folders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> folders,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ExcludeFolders(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> folders,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> folders,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CommitAndUpdateDerived(
    int commitOptions,
    int applyOptions,
    Pointer<Pointer<COMObject>> derivedObjectsResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 commitOptions,
            Int32 applyOptions,
            Pointer<Pointer<COMObject>> derivedObjectsResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commitOptions,
            int applyOptions,
            Pointer<Pointer<COMObject>> derivedObjectsResult,
          )>()(
        ptr.ref.lpVtbl,
        commitOptions,
        applyOptions,
        derivedObjectsResult,
      );
}
