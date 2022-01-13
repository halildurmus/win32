// IIdentityProvider.dart

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
import '../../../../security/authentication/identity/provider/structs.g.dart';
import '../../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../../specialTypes.dart';
import '../../../../system/com/IEnumUnknown.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../../../security/authentication/identity/provider/IIdentityAdvise.dart';

/// @nodoc
const IID_IIdentityProvider = '{0D1B9E0C-E8BA-4F55-A81B-BCE934B948F5}';

/// {@category Interface}
/// {@category com}
class IIdentityProvider extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetIdentityEnum(
    int eIdentityType,
    Pointer<PROPERTYKEY> pFilterkey,
    Pointer<PROPVARIANT> pFilterPropVarValue,
    Pointer<Pointer<COMObject>> ppIdentityEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Create(
    Pointer<Utf16> lpszUserName,
    Pointer<Pointer<COMObject>> ppPropertyStore,
    Pointer<PROPVARIANT> pKeywordsToAdd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUserName,
            Pointer<Pointer<COMObject>> ppPropertyStore,
            Pointer<PROPVARIANT> pKeywordsToAdd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUserName,
            Pointer<Pointer<COMObject>> ppPropertyStore,
            Pointer<PROPVARIANT> pKeywordsToAdd,
          )>()(
        ptr.ref.lpVtbl,
        lpszUserName,
        ppPropertyStore,
        pKeywordsToAdd,
      );

  int Import(
    Pointer<COMObject> pPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        pPropertyStore,
      );

  int Delete(
    Pointer<Utf16> lpszUniqueID,
    Pointer<PROPVARIANT> pKeywordsToDelete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<PROPVARIANT> pKeywordsToDelete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<PROPVARIANT> pKeywordsToDelete,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
        pKeywordsToDelete,
      );

  int FindByUniqueID(
    Pointer<Utf16> lpszUniqueID,
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
        ppPropertyStore,
      );

  int GetProviderPropertyStore(
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertyStore,
      );

  int Advise(
    Pointer<COMObject> pIdentityAdvise,
    int dwIdentityUpdateEvents,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIdentityAdvise,
            Uint32 dwIdentityUpdateEvents,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIdentityAdvise,
            int dwIdentityUpdateEvents,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pIdentityAdvise,
        dwIdentityUpdateEvents,
        pdwCookie,
      );

  int UnAdvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
