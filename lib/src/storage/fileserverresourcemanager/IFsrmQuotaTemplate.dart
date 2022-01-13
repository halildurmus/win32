// IFsrmQuotaTemplate.dart

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

import '../../storage/fileserverresourcemanager/IFsrmQuotaBase.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmDerivedObjectsResult.dart';

/// @nodoc
const IID_IFsrmQuotaTemplate = '{A2EFAB31-295E-46BB-B976-E86D58B52E8B}';

/// {@category Interface}
/// {@category com}
class IFsrmQuotaTemplate extends IFsrmQuotaBase {
  // vtable begins at 22, is 4 entries long.
  IFsrmQuotaTemplate(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Name(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> name,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> name,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CopyTemplate(
    Pointer<Utf16> quotaTemplateName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> quotaTemplateName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> quotaTemplateName,
          )>()(
        ptr.ref.lpVtbl,
        quotaTemplateName,
      );

  int CommitAndUpdateDerived(
    int commitOptions,
    int applyOptions,
    Pointer<Pointer<COMObject>> derivedObjectsResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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
