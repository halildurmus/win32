// IFsrmFileScreenTemplate.dart

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

import '../../storage/fileserverresourcemanager/IFsrmFileScreenBase.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmDerivedObjectsResult.dart';

/// @nodoc
const IID_IFsrmFileScreenTemplate = '{205BEBF8-DD93-452A-95A6-32B566B35828}';

/// {@category Interface}
/// {@category com}
class IFsrmFileScreenTemplate extends IFsrmFileScreenBase {
  // vtable begins at 18, is 4 entries long.
  IFsrmFileScreenTemplate(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
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
        .elementAt(19)
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
    Pointer<Utf16> fileScreenTemplateName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileScreenTemplateName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileScreenTemplateName,
          )>()(
        ptr.ref.lpVtbl,
        fileScreenTemplateName,
      );

  int CommitAndUpdateDerived(
    int commitOptions,
    int applyOptions,
    Pointer<Pointer<COMObject>> derivedObjectsResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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
