// ITpmVirtualSmartCardManager.dart

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
import '../../security/tpm/ITpmVirtualSmartCardManagerStatusCallback.dart';

/// @nodoc
const IID_ITpmVirtualSmartCardManager =
    '{112B1DFF-D9DC-41F7-869F-D67FEE7CB591}';

/// {@category Interface}
/// {@category com}
class ITpmVirtualSmartCardManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITpmVirtualSmartCardManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateVirtualSmartCard(
    Pointer<Utf16> pszFriendlyName,
    int bAdminAlgId,
    Pointer<Uint8> pbAdminKey,
    int cbAdminKey,
    Pointer<Uint8> pbAdminKcv,
    int cbAdminKcv,
    Pointer<Uint8> pbPuk,
    int cbPuk,
    Pointer<Uint8> pbPin,
    int cbPin,
    int fGenerate,
    Pointer<COMObject> pStatusCallback,
    Pointer<Pointer<Utf16>> ppszInstanceId,
    Pointer<Int32> pfNeedReboot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFriendlyName,
            Uint8 bAdminAlgId,
            Pointer<Uint8> pbAdminKey,
            Uint32 cbAdminKey,
            Pointer<Uint8> pbAdminKcv,
            Uint32 cbAdminKcv,
            Pointer<Uint8> pbPuk,
            Uint32 cbPuk,
            Pointer<Uint8> pbPin,
            Uint32 cbPin,
            Int32 fGenerate,
            Pointer<COMObject> pStatusCallback,
            Pointer<Pointer<Utf16>> ppszInstanceId,
            Pointer<Int32> pfNeedReboot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFriendlyName,
            int bAdminAlgId,
            Pointer<Uint8> pbAdminKey,
            int cbAdminKey,
            Pointer<Uint8> pbAdminKcv,
            int cbAdminKcv,
            Pointer<Uint8> pbPuk,
            int cbPuk,
            Pointer<Uint8> pbPin,
            int cbPin,
            int fGenerate,
            Pointer<COMObject> pStatusCallback,
            Pointer<Pointer<Utf16>> ppszInstanceId,
            Pointer<Int32> pfNeedReboot,
          )>()(
        ptr.ref.lpVtbl,
        pszFriendlyName,
        bAdminAlgId,
        pbAdminKey,
        cbAdminKey,
        pbAdminKcv,
        cbAdminKcv,
        pbPuk,
        cbPuk,
        pbPin,
        cbPin,
        fGenerate,
        pStatusCallback,
        ppszInstanceId,
        pfNeedReboot,
      );

  int DestroyVirtualSmartCard(
    Pointer<Utf16> pszInstanceId,
    Pointer<COMObject> pStatusCallback,
    Pointer<Int32> pfNeedReboot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszInstanceId,
            Pointer<COMObject> pStatusCallback,
            Pointer<Int32> pfNeedReboot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszInstanceId,
            Pointer<COMObject> pStatusCallback,
            Pointer<Int32> pfNeedReboot,
          )>()(
        ptr.ref.lpVtbl,
        pszInstanceId,
        pStatusCallback,
        pfNeedReboot,
      );
}

/// @nodoc
const CLSID_TpmVirtualSmartCardManager =
    '{16A18E86-7F6E-4C20-AD89-4FFC0DB7A96A}';

/// {@category com}
class TpmVirtualSmartCardManager extends ITpmVirtualSmartCardManager {
  TpmVirtualSmartCardManager(Pointer<COMObject> ptr) : super(ptr);

  factory TpmVirtualSmartCardManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TpmVirtualSmartCardManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITpmVirtualSmartCardManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TpmVirtualSmartCardManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
