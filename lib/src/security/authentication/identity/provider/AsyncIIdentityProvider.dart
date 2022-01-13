// AsyncIIdentityProvider.dart

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
import '../../../../foundation/structs.g.dart';
import '../../../../system/com/IEnumUnknown.dart';
import '../../../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../../../security/authentication/identity/provider/IIdentityAdvise.dart';

/// @nodoc
const IID_AsyncIIdentityProvider = '{C6FC9901-C433-4646-8F48-4E4687AAE2A0}';

/// {@category Interface}
/// {@category com}
class AsyncIIdentityProvider extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  AsyncIIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int Begin_GetIdentityEnum(
    int eIdentityType,
    Pointer<PROPERTYKEY> pFilterkey,
    Pointer<PROPVARIANT> pFilterPropVarValue,
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

  int Finish_GetIdentityEnum(
    Pointer<Pointer<COMObject>> ppIdentityEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Begin_Create(
    Pointer<Utf16> lpszUserName,
    Pointer<PROPVARIANT> pKeywordsToAdd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUserName,
            Pointer<PROPVARIANT> pKeywordsToAdd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUserName,
            Pointer<PROPVARIANT> pKeywordsToAdd,
          )>()(
        ptr.ref.lpVtbl,
        lpszUserName,
        pKeywordsToAdd,
      );

  int Finish_Create(
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int Begin_Import(
    Pointer<COMObject> pPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Finish_Import() => ptr.ref.lpVtbl.value
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

  int Begin_Delete(
    Pointer<Utf16> lpszUniqueID,
    Pointer<PROPVARIANT> pKeywordsToDelete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Finish_Delete() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Begin_FindByUniqueID(
    Pointer<Utf16> lpszUniqueID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszUniqueID,
          )>()(
        ptr.ref.lpVtbl,
        lpszUniqueID,
      );

  int Finish_FindByUniqueID(
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Begin_GetProviderPropertyStore() => ptr.ref.lpVtbl.value
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

  int Finish_GetProviderPropertyStore(
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int Begin_Advise(
    Pointer<COMObject> pIdentityAdvise,
    int dwIdentityUpdateEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIdentityAdvise,
            Uint32 dwIdentityUpdateEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIdentityAdvise,
            int dwIdentityUpdateEvents,
          )>()(
        ptr.ref.lpVtbl,
        pIdentityAdvise,
        dwIdentityUpdateEvents,
      );

  int Finish_Advise(
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pdwCookie,
      );

  int Begin_UnAdvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int Finish_UnAdvise() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
