// ITpmVirtualSmartCardManager2.dart

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

import '../../security/tpm/ITpmVirtualSmartCardManager.dart';
import '../../foundation/structs.g.dart';
import '../../security/tpm/ITpmVirtualSmartCardManagerStatusCallback.dart';

/// @nodoc
const IID_ITpmVirtualSmartCardManager2 =
    '{FDF8A2B9-02DE-47F4-BC26-AA85AB5E5267}';

/// {@category Interface}
/// {@category com}
class ITpmVirtualSmartCardManager2 extends ITpmVirtualSmartCardManager {
  // vtable begins at 5, is 1 entries long.
  ITpmVirtualSmartCardManager2(Pointer<COMObject> ptr) : super(ptr);

  int CreateVirtualSmartCardWithPinPolicy(
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
    Pointer<Uint8> pbPinPolicy,
    int cbPinPolicy,
    int fGenerate,
    Pointer<COMObject> pStatusCallback,
    Pointer<Pointer<Utf16>> ppszInstanceId,
    Pointer<Int32> pfNeedReboot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
            Pointer<Uint8> pbPinPolicy,
            Uint32 cbPinPolicy,
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
            Pointer<Uint8> pbPinPolicy,
            int cbPinPolicy,
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
        pbPinPolicy,
        cbPinPolicy,
        fGenerate,
        pStatusCallback,
        ppszInstanceId,
        pfNeedReboot,
      );
}
