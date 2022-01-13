// IEnhancedStorageACT.dart

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
import '../../storage/enhancedstorage/structs.g.dart';
import '../../storage/enhancedstorage/IEnhancedStorageSilo.dart';

/// @nodoc
const IID_IEnhancedStorageACT = '{6E7781F4-E0F2-4239-B976-A01ABAB52930}';

/// {@category Interface}
/// {@category com}
class IEnhancedStorageACT extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IEnhancedStorageACT(Pointer<COMObject> ptr) : super(ptr);

  int Authorize(
    int hwndParent,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 hwndParent,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        dwFlags,
      );

  int Unauthorize() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetAuthorizationState(
    Pointer<ACT_AUTHORIZATION_STATE> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ACT_AUTHORIZATION_STATE> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ACT_AUTHORIZATION_STATE> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int GetMatchingVolume(
    Pointer<Pointer<Utf16>> ppwszVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszVolume,
          )>()(
        ptr.ref.lpVtbl,
        ppwszVolume,
      );

  int GetUniqueIdentity(
    Pointer<Pointer<Utf16>> ppwszIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszIdentity,
          )>()(
        ptr.ref.lpVtbl,
        ppwszIdentity,
      );

  int GetSilos(
    Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSilos,
    Pointer<Uint32> pcEnhancedStorageSilos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSilos,
            Pointer<Uint32> pcEnhancedStorageSilos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSilos,
            Pointer<Uint32> pcEnhancedStorageSilos,
          )>()(
        ptr.ref.lpVtbl,
        pppIEnhancedStorageSilos,
        pcEnhancedStorageSilos,
      );
}

/// @nodoc
const CLSID_EnhancedStorageACT = '{AF076A15-2ECE-4AD4-BB21-29F040E176D8}';

/// {@category com}
class EnhancedStorageACT extends IEnhancedStorageACT {
  EnhancedStorageACT(Pointer<COMObject> ptr) : super(ptr);

  factory EnhancedStorageACT.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EnhancedStorageACT);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEnhancedStorageACT);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EnhancedStorageACT(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
