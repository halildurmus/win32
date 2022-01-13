// IGPMBackupDir.dart

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
import '../../foundation/structs.g.dart';
import '../../system/grouppolicy/IGPMBackup.dart';
import '../../system/grouppolicy/IGPMSearchCriteria.dart';
import '../../system/grouppolicy/IGPMBackupCollection.dart';

/// @nodoc
const IID_IGPMBackupDir = '{B1568BED-0A93-4ACC-810F-AFE7081019B9}';

/// {@category Interface}
/// {@category com}
class IGPMBackupDir extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IGPMBackupDir(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get BackupDirectory {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetBackup(
    Pointer<Utf16> bstrID,
    Pointer<Pointer<COMObject>> ppBackup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrID,
            Pointer<Pointer<COMObject>> ppBackup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrID,
            Pointer<Pointer<COMObject>> ppBackup,
          )>()(
        ptr.ref.lpVtbl,
        bstrID,
        ppBackup,
      );

  int SearchBackups(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMBackupCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMBackupCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMBackupCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        ppIGPMBackupCollection,
      );
}

/// @nodoc
const CLSID_GPMBackupDir = '{FCE4A59D-0F21-4AFA-B859-E6D0C62CD10C}';

/// {@category com}
class GPMBackupDir extends IGPMBackupDir {
  GPMBackupDir(Pointer<COMObject> ptr) : super(ptr);

  factory GPMBackupDir.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMBackupDir);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMBackupDir);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMBackupDir(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
