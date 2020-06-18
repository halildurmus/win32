// IShellItem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../prototypes.dart';
import '../com/combase.dart';

import 'IUnknown.dart';

const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

typedef BindToHandler_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<GUID> bhid,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);
typedef BindToHandler_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef GetParent_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppsi);
typedef GetParent_Dart = int Function(Pointer obj, Pointer<IntPtr> ppsi);

typedef GetDisplayName_Native = Int32 Function(
    Pointer obj, Uint32 sigdnName, Pointer<Utf16> ppszName);
typedef GetDisplayName_Dart = int Function(
    Pointer obj, int sigdnName, Pointer<Utf16> ppszName);

typedef GetAttributes_Native = Int32 Function(
    Pointer obj, Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs);
typedef GetAttributes_Dart = int Function(
    Pointer obj, int sfgaoMask, Pointer<Uint32> psfgaoAttribs);

typedef Compare_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi, Uint32 hint, Pointer<Int32> piOrder);
typedef Compare_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder);

class IShellItem extends IUnknown {
  // vtable begins at 3, ends at 7

  @override
  Pointer<COMObject> ptr;

  IShellItem(this.ptr) : super(ptr);

  int BindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<BindToHandler_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<BindToHandler_Dart>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppv);

  int GetParent(Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<GetParent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<GetParent_Dart>()(ptr.ref.lpVtbl, ppsi);

  int GetDisplayName(int sigdnName, Pointer<Utf16> ppszName) =>
      Pointer<NativeFunction<GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, sigdnName, ppszName);

  int GetAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      Pointer<NativeFunction<GetAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<GetAttributes_Dart>()(
          ptr.ref.lpVtbl, sfgaoMask, psfgaoAttribs);

  int Compare(Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder) =>
      Pointer<NativeFunction<Compare_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<Compare_Dart>()(ptr.ref.lpVtbl, psi, hint, piOrder);
}
