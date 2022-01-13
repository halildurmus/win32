// ISCPSecureQuery.dart

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
import '../../media/devicemanager/IMDSPStorageGlobals.dart';
import '../../media/devicemanager/ISCPSecureExchange.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureQuery = '{1DCB3A0D-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class ISCPSecureQuery extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISCPSecureQuery(Pointer<COMObject> ptr) : super(ptr);

  int GetDataDemands(
    Pointer<Uint32> pfuFlags,
    Pointer<Uint32> pdwMinRightsData,
    Pointer<Uint32> pdwMinExamineData,
    Pointer<Uint32> pdwMinDecideData,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pfuFlags,
            Pointer<Uint32> pdwMinRightsData,
            Pointer<Uint32> pdwMinExamineData,
            Pointer<Uint32> pdwMinDecideData,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pfuFlags,
            Pointer<Uint32> pdwMinRightsData,
            Pointer<Uint32> pdwMinExamineData,
            Pointer<Uint32> pdwMinDecideData,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pfuFlags,
        pdwMinRightsData,
        pdwMinExamineData,
        pdwMinDecideData,
        abMac,
      );

  int ExamineData(
    int fuFlags,
    Pointer<Utf16> pwszExtension,
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuFlags,
            Pointer<Utf16> pwszExtension,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuFlags,
            Pointer<Utf16> pwszExtension,
            Pointer<Uint8> pData,
            int dwSize,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        fuFlags,
        pwszExtension,
        pData,
        dwSize,
        abMac,
      );

  int MakeDecision(
    int fuFlags,
    Pointer<Uint8> pData,
    int dwSize,
    int dwAppSec,
    Pointer<Uint8> pbSPSessionKey,
    int dwSessionKeyLen,
    Pointer<COMObject> pStorageGlobals,
    Pointer<Pointer<COMObject>> ppExchange,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
        ppExchange,
        abMac,
      );

  int GetRights(
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<Uint8> pbSPSessionKey,
    int dwSessionKeyLen,
    Pointer<COMObject> pStgGlobals,
    Pointer<Pointer<WMDMRIGHTS>> ppRights,
    Pointer<Uint32> pnRightsCount,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
            Pointer<Uint8> abMac,
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
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwSize,
        pbSPSessionKey,
        dwSessionKeyLen,
        pStgGlobals,
        ppRights,
        pnRightsCount,
        abMac,
      );
}
