// IGPMBackupDirEx.dart

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
import '../../system/grouppolicy/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMSearchCriteria.dart';

/// @nodoc
const IID_IGPMBackupDirEx = '{F8DC55ED-3BA0-4864-AAD4-D365189EE1D5}';

/// {@category Interface}
/// {@category com}
class IGPMBackupDirEx extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IGPMBackupDirEx(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get BackupDir {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupDir,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get BackupType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pgpmBackupType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pgpmBackupType,
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
    Pointer<VARIANT> pvarBackup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrID,
            Pointer<VARIANT> pvarBackup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrID,
            Pointer<VARIANT> pvarBackup,
          )>()(
        ptr.ref.lpVtbl,
        bstrID,
        pvarBackup,
      );

  int SearchBackups(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<VARIANT> pvarBackupCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<VARIANT> pvarBackupCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<VARIANT> pvarBackupCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        pvarBackupCollection,
      );
}

/// @nodoc
const CLSID_GPMBackupDirEx = '{E8C0988A-CF03-4C5B-8BE2-2AA9AD32AADA}';

/// {@category com}
class GPMBackupDirEx extends IGPMBackupDirEx {
  GPMBackupDirEx(Pointer<COMObject> ptr) : super(ptr);

  factory GPMBackupDirEx.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMBackupDirEx);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMBackupDirEx);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMBackupDirEx(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
