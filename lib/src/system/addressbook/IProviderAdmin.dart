// IProviderAdmin.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../system/addressbook/IProfSect.dart';

/// @nodoc
const IID_IProviderAdmin = 'null';

/// {@category Interface}
/// {@category com}
class IProviderAdmin extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IProviderAdmin(Pointer<COMObject> ptr) : super(ptr);

  int GetLastError(
    int hResult,
    int ulFlags,
    Pointer<Pointer<MAPIERROR>> lppMAPIError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        ulFlags,
        lppMAPIError,
      );

  int GetProviderTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppTable,
      );

  int CreateProvider(
    Pointer<Int8> lpszProvider,
    int cValues,
    Pointer<SPropValue> lpProps,
    int ulUIParam,
    int ulFlags,
    Pointer<MAPIUID> lpUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpszProvider,
            Uint32 cValues,
            Pointer<SPropValue> lpProps,
            IntPtr ulUIParam,
            Uint32 ulFlags,
            Pointer<MAPIUID> lpUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpszProvider,
            int cValues,
            Pointer<SPropValue> lpProps,
            int ulUIParam,
            int ulFlags,
            Pointer<MAPIUID> lpUID,
          )>()(
        ptr.ref.lpVtbl,
        lpszProvider,
        cValues,
        lpProps,
        ulUIParam,
        ulFlags,
        lpUID,
      );

  int DeleteProvider(
    Pointer<MAPIUID> lpUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MAPIUID> lpUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MAPIUID> lpUID,
          )>()(
        ptr.ref.lpVtbl,
        lpUID,
      );

  int OpenProfileSection(
    Pointer<MAPIUID> lpUID,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppProfSect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MAPIUID> lpUID,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppProfSect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MAPIUID> lpUID,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppProfSect,
          )>()(
        ptr.ref.lpVtbl,
        lpUID,
        lpInterface,
        ulFlags,
        lppProfSect,
      );
}
