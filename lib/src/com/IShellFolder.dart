// IShellFolder.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IShellFolder = '{000214E6-0000-0000-C000-000000000046}';

typedef _ParseDisplayName_Native = Int32 Function(
    Pointer obj,
    IntPtr hwnd,
    Pointer pbc,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer<ITEMIDLIST>> ppidl,
    Pointer<Uint32> pdwAttributes);
typedef _ParseDisplayName_Dart = int Function(
    Pointer obj,
    int hwnd,
    Pointer pbc,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer<ITEMIDLIST>> ppidl,
    Pointer<Uint32> pdwAttributes);

typedef _EnumObjects_Native = Int32 Function(
    Pointer obj, IntPtr hwnd, Uint32 grfFlags, Pointer<Pointer> ppenumIDList);
typedef _EnumObjects_Dart = int Function(
    Pointer obj, int hwnd, int grfFlags, Pointer<Pointer> ppenumIDList);

typedef _BindToObject_Native = Int32 Function(
    Pointer obj,
    Pointer<ITEMIDLIST> pidl,
    Pointer pbc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _BindToObject_Dart = int Function(Pointer obj, Pointer<ITEMIDLIST> pidl,
    Pointer pbc, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _BindToStorage_Native = Int32 Function(
    Pointer obj,
    Pointer<ITEMIDLIST> pidl,
    Pointer pbc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _BindToStorage_Dart = int Function(
    Pointer obj,
    Pointer<ITEMIDLIST> pidl,
    Pointer pbc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);

typedef _CompareIDs_Native = Int32 Function(Pointer obj, IntPtr lParam,
    Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2);
typedef _CompareIDs_Dart = int Function(Pointer obj, int lParam,
    Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2);

typedef _CreateViewObject_Native = Int32 Function(
    Pointer obj, IntPtr hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _CreateViewObject_Dart = int Function(
    Pointer obj, int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetAttributesOf_Native = Int32 Function(Pointer obj, Uint32 cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl, Pointer<Uint32> rgfInOut);
typedef _GetAttributesOf_Dart = int Function(Pointer obj, int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl, Pointer<Uint32> rgfInOut);

typedef _GetUIObjectOf_Native = Int32 Function(
    Pointer obj,
    IntPtr hwndOwner,
    Uint32 cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<GUID> riid,
    Pointer<Uint32> rgfReserved,
    Pointer<Pointer> ppv);
typedef _GetUIObjectOf_Dart = int Function(
    Pointer obj,
    int hwndOwner,
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<GUID> riid,
    Pointer<Uint32> rgfReserved,
    Pointer<Pointer> ppv);

typedef _GetDisplayNameOf_Native = Int32 Function(Pointer obj,
    Pointer<ITEMIDLIST> pidl, Uint32 uFlags, Pointer<STRRET> pName);
typedef _GetDisplayNameOf_Dart = int Function(
    Pointer obj, Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName);

typedef _SetNameOf_Native = Int32 Function(
    Pointer obj,
    IntPtr hwnd,
    Pointer<ITEMIDLIST> pidl,
    Pointer<Utf16> pszName,
    Uint32 uFlags,
    Pointer<Pointer<ITEMIDLIST>> ppidlOut);
typedef _SetNameOf_Dart = int Function(
    Pointer obj,
    int hwnd,
    Pointer<ITEMIDLIST> pidl,
    Pointer<Utf16> pszName,
    int uFlags,
    Pointer<Pointer<ITEMIDLIST>> ppidlOut);

/// {@category Interface}
/// {@category com}
class IShellFolder extends IUnknown {
  // vtable begins at 3, ends at 12

  IShellFolder(Pointer<COMObject> ptr) : super(ptr);

  int ParseDisplayName(
          int hwnd,
          Pointer pbc,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer<ITEMIDLIST>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_ParseDisplayName_Native>>>()
              .value
              .asFunction<_ParseDisplayName_Dart>()(ptr.ref.lpVtbl, hwnd, pbc,
          pszDisplayName, pchEaten, ppidl, pdwAttributes);

  int EnumObjects(int hwnd, int grfFlags, Pointer<Pointer> ppenumIDList) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_EnumObjects_Native>>>()
              .value
              .asFunction<_EnumObjects_Dart>()(
          ptr.ref.lpVtbl, hwnd, grfFlags, ppenumIDList);

  int BindToObject(Pointer<ITEMIDLIST> pidl, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_BindToObject_Native>>>()
              .value
              .asFunction<_BindToObject_Dart>()(
          ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int BindToStorage(Pointer<ITEMIDLIST> pidl, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_BindToStorage_Native>>>()
              .value
              .asFunction<_BindToStorage_Dart>()(
          ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int CompareIDs(
          int lParam, Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_CompareIDs_Native>>>()
          .value
          .asFunction<_CompareIDs_Dart>()(ptr.ref.lpVtbl, lParam, pidl1, pidl2);

  int CreateViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_CreateViewObject_Native>>>()
              .value
              .asFunction<_CreateViewObject_Dart>()(
          ptr.ref.lpVtbl, hwndOwner, riid, ppv);

  int GetAttributesOf(int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<Uint32> rgfInOut) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_GetAttributesOf_Native>>>()
              .value
              .asFunction<_GetAttributesOf_Dart>()(
          ptr.ref.lpVtbl, cidl, apidl, rgfInOut);

  int GetUIObjectOf(
          int hwndOwner,
          int cidl,
          Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<GUID> riid,
          Pointer<Uint32> rgfReserved,
          Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_GetUIObjectOf_Native>>>()
              .value
              .asFunction<_GetUIObjectOf_Dart>()(
          ptr.ref.lpVtbl, hwndOwner, cidl, apidl, riid, rgfReserved, ppv);

  int GetDisplayNameOf(
          Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_GetDisplayNameOf_Native>>>()
              .value
              .asFunction<_GetDisplayNameOf_Dart>()(
          ptr.ref.lpVtbl, pidl, uFlags, pName);

  int SetNameOf(int hwnd, Pointer<ITEMIDLIST> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<ITEMIDLIST>> ppidlOut) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_SetNameOf_Native>>>()
              .value
              .asFunction<_SetNameOf_Dart>()(
          ptr.ref.lpVtbl, hwnd, pidl, pszName, uFlags, ppidlOut);
}
