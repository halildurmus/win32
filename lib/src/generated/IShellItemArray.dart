// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

typedef BindToHandler_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<GUID> bhid,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppvOut);
typedef BindToHandler_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<IntPtr> ppvOut);

typedef GetPropertyStore_Native = Int32 Function(
    Pointer obj, Uint32 flags, Pointer<GUID> riid, Pointer<IntPtr> ppv);
typedef GetPropertyStore_Dart = int Function(
    Pointer obj, int flags, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef GetPropertyDescriptionList_Native = Int32 Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<IntPtr> ppv);
typedef GetPropertyDescriptionList_Dart = int Function(Pointer obj,
    Pointer<PROPERTYKEY> keyType, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef GetAttributes_Native = Int32 Function(Pointer obj, Uint32 AttribFlags,
    Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs);
typedef GetAttributes_Dart = int Function(
    Pointer obj, int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs);

typedef GetCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwNumItems);
typedef GetCount_Dart = int Function(Pointer obj, Pointer<Uint32> pdwNumItems);

typedef GetItemAt_Native = Int32 Function(
    Pointer obj, Uint32 dwIndex, Pointer<IntPtr> ppsi);
typedef GetItemAt_Dart = int Function(
    Pointer obj, int dwIndex, Pointer<IntPtr> ppsi);

typedef EnumItems_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppenumShellItems);
typedef EnumItems_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppenumShellItems);

class IShellItemArray extends IUnknown {
  // vtable begins at 3, ends at 9

  @override
  Pointer<COMObject> ptr;

  IShellItemArray(this.ptr) : super(ptr);

  int BindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<IntPtr> ppvOut) =>
      Pointer<NativeFunction<BindToHandler_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<BindToHandler_Dart>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppvOut);

  int GetPropertyStore(int flags, Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<GetPropertyStore_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<GetPropertyStore_Dart>()(
          ptr.ref.lpVtbl, flags, riid, ppv);

  int GetPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<GetPropertyDescriptionList_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<GetPropertyDescriptionList_Dart>()(
          ptr.ref.lpVtbl, keyType, riid, ppv);

  int GetAttributes(
          int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      Pointer<NativeFunction<GetAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<GetAttributes_Dart>()(
          ptr.ref.lpVtbl, AttribFlags, sfgaoMask, psfgaoAttribs);

  int GetCount(Pointer<Uint32> pdwNumItems) =>
      Pointer<NativeFunction<GetCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<GetCount_Dart>()(ptr.ref.lpVtbl, pdwNumItems);

  int GetItemAt(int dwIndex, Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<GetItemAt_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<GetItemAt_Dart>()(ptr.ref.lpVtbl, dwIndex, ppsi);

  int EnumItems(Pointer<IntPtr> ppenumShellItems) =>
      Pointer<NativeFunction<EnumItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<EnumItems_Dart>()(ptr.ref.lpVtbl, ppenumShellItems);
}
