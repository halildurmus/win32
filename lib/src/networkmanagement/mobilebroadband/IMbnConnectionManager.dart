// IMbnConnectionManager.dart

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
import '../../networkmanagement/mobilebroadband/IMbnConnection.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnConnectionManager = '{DCBBBAB6-201D-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnConnectionManager(Pointer<COMObject> ptr) : super(ptr);

  int GetConnection(
    Pointer<Utf16> connectionID,
    Pointer<Pointer<COMObject>> mbnConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> connectionID,
            Pointer<Pointer<COMObject>> mbnConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> connectionID,
            Pointer<Pointer<COMObject>> mbnConnection,
          )>()(
        ptr.ref.lpVtbl,
        connectionID,
        mbnConnection,
      );

  int GetConnections(
    Pointer<Pointer<SAFEARRAY>> mbnConnections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> mbnConnections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> mbnConnections,
          )>()(
        ptr.ref.lpVtbl,
        mbnConnections,
      );
}

/// @nodoc
const CLSID_MbnConnectionManager = '{BDFEE05C-4418-11DD-90ED-001C257CCFF1}';

/// {@category com}
class MbnConnectionManager extends IMbnConnectionManager {
  MbnConnectionManager(Pointer<COMObject> ptr) : super(ptr);

  factory MbnConnectionManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MbnConnectionManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMbnConnectionManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MbnConnectionManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
