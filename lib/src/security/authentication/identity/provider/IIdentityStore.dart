// IIdentityStore.dart

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
const IID_IIdentityStore = '{DF586FA5-6F35-44F1-B209-B38E169772EB}';

/// {@category Interface}
/// {@category com}
class IIdentityStore extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IIdentityStore(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pdwProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetAt(
    int dwProvider,
    Pointer<GUID> pProvGuid,
    Pointer<Pointer<COMObject>> ppIdentityProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProvider,
            Pointer<GUID> pProvGuid,
            Pointer<Pointer<COMObject>> ppIdentityProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProvider,
            Pointer<GUID> pProvGuid,
            Pointer<Pointer<COMObject>> ppIdentityProvider,
          )>()(
        ptr.ref.lpVtbl,
        dwProvider,
        pProvGuid,
        ppIdentityProvider,
      );

  int AddToCache(
    Pointer<Utf16> lpszUniqueID,
    Pointer<GUID> ProviderGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int ConvertToSid(
    Pointer<Utf16> lpszUniqueID,
    Pointer<GUID> ProviderGUID,
    int cbSid,
    Pointer<Uint8> pSid,
    Pointer<Uint16> pcbRequiredSid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
            Uint16 cbSid,
            Pointer<Uint8> pSid,
            Pointer<Uint16> pcbRequiredSid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<GUID> ProviderGUID,
            int cbSid,
            Pointer<Uint8> pSid,
            Pointer<Uint16> pcbRequiredSid,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
        ProviderGUID,
        cbSid,
        pSid,
        pcbRequiredSid,
      );

  int EnumerateIdentities(
    int eIdentityType,
    Pointer<PROPERTYKEY> pFilterkey,
    Pointer<PROPVARIANT> pFilterPropVarValue,
    Pointer<Pointer<COMObject>> ppIdentityEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eIdentityType,
            Pointer<PROPERTYKEY> pFilterkey,
            Pointer<PROPVARIANT> pFilterPropVarValue,
            Pointer<Pointer<COMObject>> ppIdentityEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eIdentityType,
            Pointer<PROPERTYKEY> pFilterkey,
            Pointer<PROPVARIANT> pFilterPropVarValue,
            Pointer<Pointer<COMObject>> ppIdentityEnum,
          )>()(
        ptr.ref.lpVtbl,
        eIdentityType,
        pFilterkey,
        pFilterPropVarValue,
        ppIdentityEnum,
      );

  int Reset() => ptr.ref.lpVtbl.value
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
}
