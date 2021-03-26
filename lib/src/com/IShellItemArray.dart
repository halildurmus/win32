// IShellItemArray.dart

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
const IID_IShellItemArray = '{B63EA76D-1F85-456F-A19C-48159EFA858B}';

typedef _BindToHandler_Native = Int32 Function(Pointer obj, Pointer pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<Pointer> ppvOut);
typedef _BindToHandler_Dart = int Function(Pointer obj, Pointer pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<Pointer> ppvOut);

typedef _GetPropertyStore_Native = Int32 Function(
    Pointer obj, Uint32 flags, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _GetPropertyStore_Dart = int Function(
    Pointer obj, int flags, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetPropertyDescriptionList_Native = Int32 Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _GetPropertyDescriptionList_Dart = int Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetAttributes_Native = Int32 Function(Pointer obj, Uint32 AttribFlags,
    Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs);
typedef _GetAttributes_Dart = int Function(
    Pointer obj, int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs);

typedef _GetCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwNumItems);
typedef _GetCount_Dart = int Function(Pointer obj, Pointer<Uint32> pdwNumItems);

typedef _GetItemAt_Native = Int32 Function(
    Pointer obj, Uint32 dwIndex, Pointer<Pointer> ppsi);
typedef _GetItemAt_Dart = int Function(
    Pointer obj, int dwIndex, Pointer<Pointer> ppsi);

typedef _EnumItems_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppenumShellItems);
typedef _EnumItems_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppenumShellItems);

/// {@category Interface}
/// {@category com}
class IShellItemArray extends IUnknown {
  // vtable begins at 3, ends at 9

  IShellItemArray(Pointer<COMObject> ptr) : super(ptr);

  int BindToHandler(Pointer pbc, Pointer<GUID> bhid, Pointer<GUID> riid,
          Pointer<Pointer> ppvOut) =>
      Pointer<NativeFunction<_BindToHandler_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_BindToHandler_Dart>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppvOut);

  int GetPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_GetPropertyStore_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetPropertyStore_Dart>()(
          ptr.ref.lpVtbl, flags, riid, ppv);

  int GetPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_GetPropertyDescriptionList_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetPropertyDescriptionList_Dart>()(
          ptr.ref.lpVtbl, keyType, riid, ppv);

  int GetAttributes(
          int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      Pointer<NativeFunction<_GetAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetAttributes_Dart>()(
          ptr.ref.lpVtbl, AttribFlags, sfgaoMask, psfgaoAttribs);

  int GetCount(Pointer<Uint32> pdwNumItems) =>
      Pointer<NativeFunction<_GetCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetCount_Dart>()(ptr.ref.lpVtbl, pdwNumItems);

  int GetItemAt(int dwIndex, Pointer<Pointer> ppsi) =>
      Pointer<NativeFunction<_GetItemAt_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetItemAt_Dart>()(ptr.ref.lpVtbl, dwIndex, ppsi);

  int EnumItems(Pointer<Pointer> ppenumShellItems) =>
      Pointer<NativeFunction<_EnumItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_EnumItems_Dart>()(ptr.ref.lpVtbl, ppenumShellItems);
}
