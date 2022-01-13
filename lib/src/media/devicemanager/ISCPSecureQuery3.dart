// ISCPSecureQuery3.dart

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

import '../../media/devicemanager/ISCPSecureQuery2.dart';
import '../../media/devicemanager/IMDSPStorageGlobals.dart';
import '../../media/devicemanager/IWMDMProgress3.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/ISCPSecureExchange.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureQuery3 = '{B7EDD1A2-4DAB-484B-B3C5-AD39B8B4C0B1}';

/// {@category Interface}
/// {@category com}
class ISCPSecureQuery3 extends ISCPSecureQuery2 {
  // vtable begins at 8, is 2 entries long.
  ISCPSecureQuery3(Pointer<COMObject> ptr) : super(ptr);

  int GetRightsOnClearChannel(
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<Uint8> pbSPSessionKey,
    int dwSessionKeyLen,
    Pointer<COMObject> pStgGlobals,
    Pointer<COMObject> pProgressCallback,
    Pointer<Pointer<WMDMRIGHTS>> ppRights,
    Pointer<Uint32> pnRightsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Pointer<Uint8> pbSPSessionKey,
            Uint32 dwSessionKeyLen,
            Pointer<COMObject> pStgGlobals,
            Pointer<COMObject> pProgressCallback,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            int dwSize,
            Pointer<Uint8> pbSPSessionKey,
            int dwSessionKeyLen,
            Pointer<COMObject> pStgGlobals,
            Pointer<COMObject> pProgressCallback,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwSize,
        pbSPSessionKey,
        dwSessionKeyLen,
        pStgGlobals,
        pProgressCallback,
        ppRights,
        pnRightsCount,
      );

  int MakeDecisionOnClearChannel(
    int fuFlags,
    Pointer<Uint8> pData,
    int dwSize,
    int dwAppSec,
    Pointer<Uint8> pbSPSessionKey,
    int dwSessionKeyLen,
    Pointer<COMObject> pStorageGlobals,
    Pointer<COMObject> pProgressCallback,
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
            Pointer<COMObject> pProgressCallback,
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
            Pointer<COMObject> pProgressCallback,
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
          )>()(
        ptr.ref.lpVtbl,
        fuFlags,
        pData,
        dwSize,
        dwAppSec,
        pbSPSessionKey,
        dwSessionKeyLen,
        pStorageGlobals,
        pProgressCallback,
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
      );
}
