// ISCPSecureQuery2.dart

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

import '../../media/devicemanager/ISCPSecureQuery.dart';
import '../../media/devicemanager/IMDSPStorageGlobals.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/ISCPSecureExchange.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureQuery2 = '{EBE17E25-4FD7-4632-AF46-6D93D4FCC72E}';

/// {@category Interface}
/// {@category com}
class ISCPSecureQuery2 extends ISCPSecureQuery {
  // vtable begins at 7, is 1 entries long.
  ISCPSecureQuery2(Pointer<COMObject> ptr) : super(ptr);

  int MakeDecision2(
    int fuFlags,
    Pointer<Uint8> pData,
    int dwSize,
    int dwAppSec,
    Pointer<Uint8> pbSPSessionKey,
    int dwSessionKeyLen,
    Pointer<COMObject> pStorageGlobals,
    Pointer<Uint8> pAppCertApp,
    int dwAppCertAppLen,
    Pointer<Uint8> pAppCertSP,
    int dwAppCertSPLen,
    Pointer<Pointer<Utf16>> pszRevocationURL,
    Pointer<Uint32> pdwRevocationURLLen,
    Pointer<Uint32> pdwRevocationBitFlag,
    Pointer<Uint64> pqwFileSize,
    Pointer<COMObject> pUnknown,
    Pointer<Pointer<COMObject>> ppExchange,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuFlags,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Uint32 dwAppSec,
            Pointer<Uint8> pbSPSessionKey,
            Uint32 dwSessionKeyLen,
            Pointer<COMObject> pStorageGlobals,
            Pointer<Uint8> pAppCertApp,
            Uint32 dwAppCertAppLen,
            Pointer<Uint8> pAppCertSP,
            Uint32 dwAppCertSPLen,
            Pointer<Pointer<Utf16>> pszRevocationURL,
            Pointer<Uint32> pdwRevocationURLLen,
            Pointer<Uint32> pdwRevocationBitFlag,
            Pointer<Uint64> pqwFileSize,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppExchange,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuFlags,
            Pointer<Uint8> pData,
            int dwSize,
            int dwAppSec,
            Pointer<Uint8> pbSPSessionKey,
            int dwSessionKeyLen,
            Pointer<COMObject> pStorageGlobals,
            Pointer<Uint8> pAppCertApp,
            int dwAppCertAppLen,
            Pointer<Uint8> pAppCertSP,
            int dwAppCertSPLen,
            Pointer<Pointer<Utf16>> pszRevocationURL,
            Pointer<Uint32> pdwRevocationURLLen,
            Pointer<Uint32> pdwRevocationBitFlag,
            Pointer<Uint64> pqwFileSize,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppExchange,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        fuFlags,
        pData,
        dwSize,
        dwAppSec,
        pbSPSessionKey,
        dwSessionKeyLen,
        pStorageGlobals,
        pAppCertApp,
        dwAppCertAppLen,
        pAppCertSP,
        dwAppCertSPLen,
        pszRevocationURL,
        pdwRevocationURLLen,
        pdwRevocationBitFlag,
        pqwFileSize,
        pUnknown,
        ppExchange,
        abMac,
      );
}
