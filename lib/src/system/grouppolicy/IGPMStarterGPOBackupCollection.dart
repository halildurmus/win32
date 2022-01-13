// IGPMStarterGPOBackupCollection.dart

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
import '../../specialTypes.dart';
import '../../system/ole/IEnumVARIANT.dart';

/// @nodoc
const IID_IGPMStarterGPOBackupCollection =
    '{C998031D-ADD0-4BB5-8DEA-298505D8423B}';

/// {@category Interface}
/// {@category com}
class IGPMStarterGPOBackupCollection extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IGPMStarterGPOBackupCollection(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int lIndex,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pVal,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMTmplBackup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMTmplBackup,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_GPMStarterGPOBackupCollection =
    '{E75EA59D-1AEB-4CB5-A78A-281DAA582406}';

/// {@category com}
class GPMStarterGPOBackupCollection extends IGPMStarterGPOBackupCollection {
  GPMStarterGPOBackupCollection(Pointer<COMObject> ptr) : super(ptr);

  factory GPMStarterGPOBackupCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_GPMStarterGPOBackupCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMStarterGPOBackupCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMStarterGPOBackupCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
