// IMbnConnectionProfileManager.dart

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
import '../../networkmanagement/mobilebroadband/IMbnInterface.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/IMbnConnectionProfile.dart';

/// @nodoc
const IID_IMbnConnectionProfileManager =
    '{DCBBBAB6-200F-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionProfileManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMbnConnectionProfileManager(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectionProfiles(
    Pointer<COMObject> mbnInterface,
    Pointer<Pointer<SAFEARRAY>> connectionProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Pointer<Pointer<SAFEARRAY>> connectionProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Pointer<Pointer<SAFEARRAY>> connectionProfiles,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
        connectionProfiles,
      );

  int GetConnectionProfile(
    Pointer<COMObject> mbnInterface,
    Pointer<Utf16> profileName,
    Pointer<Pointer<COMObject>> connectionProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Pointer<Utf16> profileName,
            Pointer<Pointer<COMObject>> connectionProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Pointer<Utf16> profileName,
            Pointer<Pointer<COMObject>> connectionProfile,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
        profileName,
        connectionProfile,
      );

  int CreateConnectionProfile(
    Pointer<Utf16> xmlProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> xmlProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> xmlProfile,
          )>()(
        ptr.ref.lpVtbl,
        xmlProfile,
      );
}

/// @nodoc
const CLSID_MbnConnectionProfileManager =
    '{BDFEE05A-4418-11DD-90ED-001C257CCFF1}';

/// {@category com}
class MbnConnectionProfileManager extends IMbnConnectionProfileManager {
  MbnConnectionProfileManager(Pointer<COMObject> ptr) : super(ptr);

  factory MbnConnectionProfileManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_MbnConnectionProfileManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMbnConnectionProfileManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MbnConnectionProfileManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
