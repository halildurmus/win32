// AsyncIIdentityStore.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../specialTypes.dart';
import '../../../../security/authentication/identity/provider/structs.g.dart';
import '../../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../../system/com/IEnumUnknown.dart';

/// @nodoc
const IID_AsyncIIdentityStore = '{EEFA1616-48DE-4872-AA64-6E6206535A51}';

/// {@category Interface}
/// {@category com}
class AsyncIIdentityStore extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  AsyncIIdentityStore(Pointer<COMObject> ptr) : super(ptr);

  int Begin_GetCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Finish_GetCount(
    Pointer<Uint32> pdwProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwProviders,
          )>()(
        ptr.ref.lpVtbl,
        pdwProviders,
      );

  int Begin_GetAt(
    int dwProvider,
    Pointer<GUID> pProvGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProvider,
            Pointer<GUID> pProvGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProvider,
            Pointer<GUID> pProvGuid,
          )>()(
        ptr.ref.lpVtbl,
        dwProvider,
        pProvGuid,
      );

  int Finish_GetAt(
    Pointer<GUID> pProvGuid,
    Pointer<Pointer<COMObject>> ppIdentityProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pProvGuid,
            Pointer<Pointer<COMObject>> ppIdentityProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pProvGuid,
            Pointer<Pointer<COMObject>> ppIdentityProvider,
          )>()(
        ptr.ref.lpVtbl,
        pProvGuid,
        ppIdentityProvider,
      );

  int Begin_AddToCache(
    Pointer<Utf16> lpszUniqueID,
    Pointer<GUID> ProviderGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
        ProviderGUID,
      );

  int Finish_AddToCache() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Begin_ConvertToSid(
    Pointer<Utf16> lpszUniqueID,
    Pointer<GUID> ProviderGUID,
    int cbSid,
    Pointer<Uint8> pSid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
            Uint16 cbSid,
            Pointer<Uint8> pSid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
            int cbSid,
            Pointer<Uint8> pSid,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
        ProviderGUID,
        cbSid,
        pSid,
      );

  int Finish_ConvertToSid(
    Pointer<Uint8> pSid,
    Pointer<Uint16> pcbRequiredSid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pSid,
            Pointer<Uint16> pcbRequiredSid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pSid,
            Pointer<Uint16> pcbRequiredSid,
          )>()(
        ptr.ref.lpVtbl,
        pSid,
        pcbRequiredSid,
      );

  int Begin_EnumerateIdentities(
    int eIdentityType,
    Pointer<PROPERTYKEY> pFilterkey,
    Pointer<PROPVARIANT> pFilterPropVarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eIdentityType,
            Pointer<PROPERTYKEY> pFilterkey,
            Pointer<PROPVARIANT> pFilterPropVarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eIdentityType,
            Pointer<PROPERTYKEY> pFilterkey,
            Pointer<PROPVARIANT> pFilterPropVarValue,
          )>()(
        ptr.ref.lpVtbl,
        eIdentityType,
        pFilterkey,
        pFilterPropVarValue,
      );

  int Finish_EnumerateIdentities(
    Pointer<Pointer<COMObject>> ppIdentityEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIdentityEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIdentityEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppIdentityEnum,
      );

  int Begin_Reset() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int Finish_Reset() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
