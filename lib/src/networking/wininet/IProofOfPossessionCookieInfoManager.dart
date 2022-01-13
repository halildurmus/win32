// IProofOfPossessionCookieInfoManager.dart

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
import '../../networking/wininet/structs.g.dart';

/// @nodoc
const IID_IProofOfPossessionCookieInfoManager =
    '{CDAECE56-4EDF-43DF-B113-88E4556FA1BB}';

/// {@category Interface}
/// {@category com}
class IProofOfPossessionCookieInfoManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProofOfPossessionCookieInfoManager(Pointer<COMObject> ptr) : super(ptr);

  int GetCookieInfoForUri(
    Pointer<Utf16> uri,
    Pointer<Uint32> cookieInfoCount,
    Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Uint32> cookieInfoCount,
            Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Uint32> cookieInfoCount,
            Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
          )>()(
        ptr.ref.lpVtbl,
        uri,
        cookieInfoCount,
        cookieInfo,
      );
}

/// @nodoc
const CLSID_ProofOfPossessionCookieInfoManager =
    '{A9927F85-A304-4390-8B23-A75F1C668600}';

/// {@category com}
class ProofOfPossessionCookieInfoManager
    extends IProofOfPossessionCookieInfoManager {
  ProofOfPossessionCookieInfoManager(Pointer<COMObject> ptr) : super(ptr);

  factory ProofOfPossessionCookieInfoManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_ProofOfPossessionCookieInfoManager);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IProofOfPossessionCookieInfoManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ProofOfPossessionCookieInfoManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
