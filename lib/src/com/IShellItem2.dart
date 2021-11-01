// IShellItem2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IShellItem.dart';

/// @nodoc
const IID_IShellItem2 = '{7E9FB0D3-919F-4307-AB2E-9B1860310C93}';

typedef _GetPropertyStore_Native = Int32 Function(
    Pointer obj, Int32 flags, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _GetPropertyStore_Dart = int Function(
    Pointer obj, int flags, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetPropertyStoreWithCreateObject_Native = Int32 Function(
    Pointer obj,
    Int32 flags,
    Pointer<COMObject> punkCreateObject,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _GetPropertyStoreWithCreateObject_Dart = int Function(
    Pointer obj,
    int flags,
    Pointer<COMObject> punkCreateObject,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);

typedef _GetPropertyStoreForKeys_Native = Int32 Function(
    Pointer obj,
    Pointer<PROPERTYKEY> rgKeys,
    Uint32 cKeys,
    Int32 flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _GetPropertyStoreForKeys_Dart = int Function(
    Pointer obj,
    Pointer<PROPERTYKEY> rgKeys,
    int cKeys,
    int flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);

typedef _GetPropertyDescriptionList_Native = Int32 Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _GetPropertyDescriptionList_Dart = int Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _Update_Native = Int32 Function(Pointer obj, Pointer<COMObject> pbc);
typedef _Update_Dart = int Function(Pointer obj, Pointer<COMObject> pbc);

typedef _GetProperty_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar);
typedef _GetProperty_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar);

typedef _GetCLSID_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid);
typedef _GetCLSID_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid);

typedef _GetFileTime_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft);
typedef _GetFileTime_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft);

typedef _GetInt32_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pi);
typedef _GetInt32_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pi);

typedef _GetString_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz);
typedef _GetString_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz);

typedef _GetUInt32_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui);
typedef _GetUInt32_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui);

typedef _GetUInt64_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint64> pull);
typedef _GetUInt64_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint64> pull);

typedef _GetBool_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pf);
typedef _GetBool_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pf);

/// {@category Interface}
/// {@category com}
class IShellItem2 extends IShellItem {
  // vtable begins at 8, ends at 20

  IShellItem2(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_GetPropertyStore_Native>>>()
              .value
              .asFunction<_GetPropertyStore_Dart>()(
          ptr.ref.lpVtbl, flags, riid, ppv);

  int
      GetPropertyStoreWithCreateObject(
              int flags,
              Pointer<COMObject> punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv) =>
          ptr.ref.lpVtbl.value
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              _GetPropertyStoreWithCreateObject_Native>>>()
                  .value
                  .asFunction<_GetPropertyStoreWithCreateObject_Dart>()(
              ptr.ref.lpVtbl, flags, punkCreateObject, riid, ppv);

  int GetPropertyStoreForKeys(Pointer<PROPERTYKEY> rgKeys, int cKeys, int flags,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_GetPropertyStoreForKeys_Native>>>()
              .value
              .asFunction<_GetPropertyStoreForKeys_Dart>()(
          ptr.ref.lpVtbl, rgKeys, cKeys, flags, riid, ppv);

  int GetPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_GetPropertyDescriptionList_Native>>>()
              .value
              .asFunction<_GetPropertyDescriptionList_Dart>()(
          ptr.ref.lpVtbl, keyType, riid, ppv);

  int Update(Pointer<COMObject> pbc) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_Update_Native>>>()
      .value
      .asFunction<_Update_Dart>()(ptr.ref.lpVtbl, pbc);

  int GetProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<Pointer<NativeFunction<_GetProperty_Native>>>()
          .value
          .asFunction<_GetProperty_Dart>()(ptr.ref.lpVtbl, key, ppropvar);

  int GetCLSID(Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<Pointer<NativeFunction<_GetCLSID_Native>>>()
          .value
          .asFunction<_GetCLSID_Dart>()(ptr.ref.lpVtbl, key, pclsid);

  int GetFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<Pointer<NativeFunction<_GetFileTime_Native>>>()
          .value
          .asFunction<_GetFileTime_Dart>()(ptr.ref.lpVtbl, key, pft);

  int GetInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<Pointer<NativeFunction<_GetInt32_Native>>>()
          .value
          .asFunction<_GetInt32_Dart>()(ptr.ref.lpVtbl, key, pi);

  int GetString(Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<Pointer<NativeFunction<_GetString_Native>>>()
          .value
          .asFunction<_GetString_Dart>()(ptr.ref.lpVtbl, key, ppsz);

  int GetUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<Pointer<NativeFunction<_GetUInt32_Native>>>()
          .value
          .asFunction<_GetUInt32_Dart>()(ptr.ref.lpVtbl, key, pui);

  int GetUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<Pointer<NativeFunction<_GetUInt64_Native>>>()
          .value
          .asFunction<_GetUInt64_Dart>()(ptr.ref.lpVtbl, key, pull);

  int GetBool(Pointer<PROPERTYKEY> key, Pointer<Int32> pf) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<Pointer<NativeFunction<_GetBool_Native>>>()
          .value
          .asFunction<_GetBool_Dart>()(ptr.ref.lpVtbl, key, pf);
}
