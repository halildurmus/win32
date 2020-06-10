// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IShellItem.dart';
import '../com/combase.dart';
import '../com/comerrors.dart';
import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IShellItem2 = '{7e9fb0d3-919f-4307-ab2e-9b1860310c93}';

typedef GetPropertyStore_Native = Int32 Function(
    Pointer obj, Uint32 flags, Pointer<GUID> riid, Pointer<IntPtr> ppv);
typedef GetPropertyStore_Dart = int Function(
    Pointer obj, int flags, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef GetPropertyStoreWithCreateObject_Native = Int32 Function(
    Pointer obj,
    Uint32 flags,
    Pointer<COMObject> punkCreateObject,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);
typedef GetPropertyStoreWithCreateObject_Dart = int Function(
    Pointer obj,
    int flags,
    Pointer<COMObject> punkCreateObject,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);

typedef GetPropertyStoreForKeys_Native = Int32 Function(
    Pointer obj,
    Pointer<PROPERTYKEY> rgKeys,
    Uint32 cKeys,
    Uint32 flags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);
typedef GetPropertyStoreForKeys_Dart = int Function(
    Pointer obj,
    Pointer<PROPERTYKEY> rgKeys,
    int cKeys,
    int flags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);

typedef GetPropertyDescriptionList_Native = Int32 Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<IntPtr> ppv);
typedef GetPropertyDescriptionList_Dart = int Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef Update_Native = Int32 Function(Pointer obj, Pointer<COMObject> pbc);
typedef Update_Dart = int Function(Pointer obj, Pointer<COMObject> pbc);

typedef GetProperty_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar);
typedef GetProperty_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar);

typedef GetCLSID_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<CLSID> pclsid);
typedef GetCLSID_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<CLSID> pclsid);

typedef GetFileTime_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft);
typedef GetFileTime_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft);

typedef GetInt32_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pi);
typedef GetInt32_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pi);

typedef GetString_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Utf16> ppsz);
typedef GetString_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Utf16> ppsz);

typedef GetUInt32_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui);
typedef GetUInt32_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui);

typedef GetUInt64_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint64> pull);
typedef GetUInt64_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Uint64> pull);

typedef GetBool_Native = Int32 Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pf);
typedef GetBool_Dart = int Function(
    Pointer obj, Pointer<PROPERTYKEY> key, Pointer<Int32> pf);

class IShellItem2 extends IShellItem {
  // vtable begins at 8, ends at 20

  @override
  Pointer<COMObject> ptr;

  IShellItem2(this.ptr) : super(ptr);

  int GetPropertyStore(int flags, Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<GetPropertyStore_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<GetPropertyStore_Dart>()(
          ptr.ref.lpVtbl, flags, riid, ppv);

  int GetPropertyStoreWithCreateObject(
          int flags,
          Pointer<COMObject> punkCreateObject,
          Pointer<GUID> riid,
          Pointer<IntPtr> ppv) =>
      Pointer<
                      NativeFunction<
                          GetPropertyStoreWithCreateObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<GetPropertyStoreWithCreateObject_Dart>()(
          ptr.ref.lpVtbl, flags, punkCreateObject, riid, ppv);

  int GetPropertyStoreForKeys(Pointer<PROPERTYKEY> rgKeys, int cKeys, int flags,
          Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<GetPropertyStoreForKeys_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<GetPropertyStoreForKeys_Dart>()(
          ptr.ref.lpVtbl, rgKeys, cKeys, flags, riid, ppv);

  int GetPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<GetPropertyDescriptionList_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<GetPropertyDescriptionList_Dart>()(
          ptr.ref.lpVtbl, keyType, riid, ppv);

  int Update(Pointer<COMObject> pbc) =>
      Pointer<NativeFunction<Update_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<Update_Dart>()(ptr.ref.lpVtbl, pbc);

  int GetProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      Pointer<NativeFunction<GetProperty_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<GetProperty_Dart>()(ptr.ref.lpVtbl, key, ppropvar);

  int GetCLSID(Pointer<PROPERTYKEY> key, Pointer<CLSID> pclsid) =>
      Pointer<NativeFunction<GetCLSID_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<GetCLSID_Dart>()(ptr.ref.lpVtbl, key, pclsid);

  int GetFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      Pointer<NativeFunction<GetFileTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<GetFileTime_Dart>()(ptr.ref.lpVtbl, key, pft);

  int GetInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) =>
      Pointer<NativeFunction<GetInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<GetInt32_Dart>()(ptr.ref.lpVtbl, key, pi);

  int GetString(Pointer<PROPERTYKEY> key, Pointer<Utf16> ppsz) =>
      Pointer<NativeFunction<GetString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<GetString_Dart>()(ptr.ref.lpVtbl, key, ppsz);

  int GetUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      Pointer<NativeFunction<GetUInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<GetUInt32_Dart>()(ptr.ref.lpVtbl, key, pui);

  int GetUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      Pointer<NativeFunction<GetUInt64_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<GetUInt64_Dart>()(ptr.ref.lpVtbl, key, pull);

  int GetBool(Pointer<PROPERTYKEY> key, Pointer<Int32> pf) =>
      Pointer<NativeFunction<GetBool_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<GetBool_Dart>()(ptr.ref.lpVtbl, key, pf);
}
