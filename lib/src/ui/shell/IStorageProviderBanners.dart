// IStorageProviderBanners.dart

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
const IID_IStorageProviderBanners = '{5EFB46D7-47C0-4B68-ACDA-DED47C90EC91}';

/// {@category Interface}
/// {@category com}
class IStorageProviderBanners extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IStorageProviderBanners(Pointer<COMObject> ptr) : super(ptr);

  int SetBanner(
    Pointer<Utf16> providerIdentity,
    Pointer<Utf16> subscriptionId,
    Pointer<Utf16> contentId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
            Pointer<Utf16> contentId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
            Pointer<Utf16> contentId,
          )>()(
        ptr.ref.lpVtbl,
        providerIdentity,
        subscriptionId,
        contentId,
      );

  int ClearBanner(
    Pointer<Utf16> providerIdentity,
    Pointer<Utf16> subscriptionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
          )>()(
        ptr.ref.lpVtbl,
        providerIdentity,
        subscriptionId,
      );

  int ClearAllBanners(
    Pointer<Utf16> providerIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
          )>()(
        ptr.ref.lpVtbl,
        providerIdentity,
      );

  int GetBanner(
    Pointer<Utf16> providerIdentity,
    Pointer<Utf16> subscriptionId,
    Pointer<Pointer<Utf16>> contentId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
            Pointer<Pointer<Utf16>> contentId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> providerIdentity,
            Pointer<Utf16> subscriptionId,
            Pointer<Pointer<Utf16>> contentId,
          )>()(
        ptr.ref.lpVtbl,
        providerIdentity,
        subscriptionId,
        contentId,
      );
}

/// @nodoc
const CLSID_StorageProviderBanners = '{7CCDF9F4-E576-455A-8BC7-F6EC68D6F063}';

/// {@category com}
class StorageProviderBanners extends IStorageProviderBanners {
  StorageProviderBanners(Pointer<COMObject> ptr) : super(ptr);

  factory StorageProviderBanners.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_StorageProviderBanners);
    final iid = calloc<GUID>()..ref.setGUID(IID_IStorageProviderBanners);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return StorageProviderBanners(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
