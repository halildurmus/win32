// IWbemBackupRestore.dart

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

/// @nodoc
const IID_IWbemBackupRestore = '{C49E32C7-BC8B-11D2-85D4-00105A1F8304}';

/// {@category Interface}
/// {@category com}
class IWbemBackupRestore extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemBackupRestore(Pointer<COMObject> ptr) : super(ptr);

  int Backup(
    Pointer<Utf16> strBackupToFile,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strBackupToFile,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strBackupToFile,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        strBackupToFile,
        lFlags,
      );

  int Restore(
    Pointer<Utf16> strRestoreFromFile,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strRestoreFromFile,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strRestoreFromFile,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        strRestoreFromFile,
        lFlags,
      );
}

/// @nodoc
const CLSID_WbemBackupRestore = '{C49E32C6-BC8B-11D2-85D4-00105A1F8304}';

/// {@category com}
class WbemBackupRestore extends IWbemBackupRestore {
  WbemBackupRestore(Pointer<COMObject> ptr) : super(ptr);

  factory WbemBackupRestore.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemBackupRestore);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemBackupRestore);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemBackupRestore(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
