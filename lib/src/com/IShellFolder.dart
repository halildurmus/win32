// IShellFolder.dart

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

import 'IUnknown.dart';

/// @nodoc
const IID_IShellFolder = '{000214E6-0000-0000-C000-000000000046}';

typedef _ParseDisplayName_Native = Int32 Function(
    Pointer obj,
    IntPtr hwnd,
    Pointer pbc,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer<Uint32>> ppidl,
    Pointer<Uint32> pdwAttributes);
typedef _ParseDisplayName_Dart = int Function(
    Pointer obj,
    int hwnd,
    Pointer pbc,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer<Uint32>> ppidl,
    Pointer<Uint32> pdwAttributes);

typedef _EnumObjects_Native = Int32 Function(
    Pointer obj, IntPtr hwnd, Uint32 grfFlags, Pointer<Pointer> ppenumIDList);
typedef _EnumObjects_Dart = int Function(
    Pointer obj, int hwnd, int grfFlags, Pointer<Pointer> ppenumIDList);

typedef _BindToObject_Native = Int32 Function(Pointer obj, Pointer<Uint32> pidl,
    Pointer pbc, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _BindToObject_Dart = int Function(Pointer obj, Pointer<Uint32> pidl,
    Pointer pbc, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _BindToStorage_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint32> pidl,
    Pointer pbc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _BindToStorage_Dart = int Function(Pointer obj, Pointer<Uint32> pidl,
    Pointer pbc, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _CompareIDs_Native = Int32 Function(
    Pointer obj, IntPtr lParam, Pointer<Uint32> pidl1, Pointer<Uint32> pidl2);
typedef _CompareIDs_Dart = int Function(
    Pointer obj, int lParam, Pointer<Uint32> pidl1, Pointer<Uint32> pidl2);

typedef _CreateViewObject_Native = Int32 Function(
    Pointer obj, IntPtr hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _CreateViewObject_Dart = int Function(
    Pointer obj, int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetAttributesOf_Native = Int32 Function(Pointer obj, Uint32 cidl,
    Pointer<Pointer<Uint32>> apidl, Pointer<Uint32> rgfInOut);
typedef _GetAttributesOf_Dart = int Function(Pointer obj, int cidl,
    Pointer<Pointer<Uint32>> apidl, Pointer<Uint32> rgfInOut);

typedef _GetUIObjectOf_Native = Int32 Function(
    Pointer obj,
    IntPtr hwndOwner,
    Uint32 cidl,
    Pointer<Pointer<Uint32>> apidl,
    Pointer<GUID> riid,
    Pointer<Uint32> rgfReserved,
    Pointer<Pointer> ppv);
typedef _GetUIObjectOf_Dart = int Function(
    Pointer obj,
    int hwndOwner,
    int cidl,
    Pointer<Pointer<Uint32>> apidl,
    Pointer<GUID> riid,
    Pointer<Uint32> rgfReserved,
    Pointer<Pointer> ppv);

typedef _GetDisplayNameOf_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pidl, Uint32 uFlags, Pointer<STRRET> pName);
typedef _GetDisplayNameOf_Dart = int Function(
    Pointer obj, Pointer<Uint32> pidl, int uFlags, Pointer<STRRET> pName);

typedef _SetNameOf_Native = Int32 Function(
    Pointer obj,
    IntPtr hwnd,
    Pointer<Uint32> pidl,
    Pointer<Utf16> pszName,
    Uint32 uFlags,
    Pointer<Pointer<Uint32>> ppidlOut);
typedef _SetNameOf_Dart = int Function(
    Pointer obj,
    int hwnd,
    Pointer<Uint32> pidl,
    Pointer<Utf16> pszName,
    int uFlags,
    Pointer<Pointer<Uint32>> ppidlOut);

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
          Pointer<Pointer<Uint32>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      Pointer<NativeFunction<_ParseDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_ParseDisplayName_Dart>()(ptr.ref.lpVtbl, hwnd, pbc,
          pszDisplayName, pchEaten, ppidl, pdwAttributes);

  int EnumObjects(int hwnd, int grfFlags, Pointer<Pointer> ppenumIDList) =>
      Pointer<NativeFunction<_EnumObjects_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_EnumObjects_Dart>()(
          ptr.ref.lpVtbl, hwnd, grfFlags, ppenumIDList);

  int BindToObject(Pointer<Uint32> pidl, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_BindToObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_BindToObject_Dart>()(
          ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int BindToStorage(Pointer<Uint32> pidl, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_BindToStorage_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_BindToStorage_Dart>()(
          ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int CompareIDs(int lParam, Pointer<Uint32> pidl1, Pointer<Uint32> pidl2) =>
      Pointer<NativeFunction<_CompareIDs_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_CompareIDs_Dart>()(ptr.ref.lpVtbl, lParam, pidl1, pidl2);

  int CreateViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_CreateViewObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_CreateViewObject_Dart>()(
          ptr.ref.lpVtbl, hwndOwner, riid, ppv);

  int GetAttributesOf(
          int cidl, Pointer<Pointer<Uint32>> apidl, Pointer<Uint32> rgfInOut) =>
      Pointer<NativeFunction<_GetAttributesOf_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetAttributesOf_Dart>()(
          ptr.ref.lpVtbl, cidl, apidl, rgfInOut);

  int GetUIObjectOf(
          int hwndOwner,
          int cidl,
          Pointer<Pointer<Uint32>> apidl,
          Pointer<GUID> riid,
          Pointer<Uint32> rgfReserved,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_GetUIObjectOf_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_GetUIObjectOf_Dart>()(
          ptr.ref.lpVtbl, hwndOwner, cidl, apidl, riid, rgfReserved, ppv);

  int GetDisplayNameOf(
          Pointer<Uint32> pidl, int uFlags, Pointer<STRRET> pName) =>
      Pointer<NativeFunction<_GetDisplayNameOf_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_GetDisplayNameOf_Dart>()(
          ptr.ref.lpVtbl, pidl, uFlags, pName);

  int SetNameOf(int hwnd, Pointer<Uint32> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<Uint32>> ppidlOut) =>
      Pointer<NativeFunction<_SetNameOf_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_SetNameOf_Dart>()(
          ptr.ref.lpVtbl, hwnd, pidl, pszName, uFlags, ppidlOut);
}
