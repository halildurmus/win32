// IMbnInterfaceManager.dart

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
import '../../networkmanagement/mobilebroadband/IMbnInterface.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnInterfaceManager = '{DCBBBAB6-201B-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnInterfaceManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnInterfaceManager(Pointer<COMObject> ptr) : super(ptr);

  int GetInterface(
    Pointer<Utf16> interfaceID,
    Pointer<Pointer<COMObject>> mbnInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            Pointer<Pointer<COMObject>> mbnInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            Pointer<Pointer<COMObject>> mbnInterface,
          )>()(
        ptr.ref.lpVtbl,
        interfaceID,
        mbnInterface,
      );

  int GetInterfaces(
    Pointer<Pointer<SAFEARRAY>> mbnInterfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> mbnInterfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> mbnInterfaces,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterfaces,
      );
}

/// @nodoc
const CLSID_MbnInterfaceManager = '{BDFEE05B-4418-11DD-90ED-001C257CCFF1}';

/// {@category com}
class MbnInterfaceManager extends IMbnInterfaceManager {
  MbnInterfaceManager(Pointer<COMObject> ptr) : super(ptr);

  factory MbnInterfaceManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MbnInterfaceManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMbnInterfaceManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MbnInterfaceManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
