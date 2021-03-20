// IShellItem.dart

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
const CLSID_ShellItem = '{9AC9FBE1-E0A2-4AD6-B4EE-E212013EA917}';

/// @nodoc
const IID_IShellItem = '{43826D1E-E718-42EE-BC55-A1E261C37BFE}';

typedef _BindToHandler_Native = Int32 Function(Pointer obj, Pointer pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _BindToHandler_Dart = int Function(Pointer obj, Pointer pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetParent_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppsi);
typedef _GetParent_Dart = int Function(Pointer obj, Pointer<Pointer> ppsi);

typedef _GetDisplayName_Native = Int32 Function(
    Pointer obj, Uint32 sigdnName, Pointer<Pointer<Utf16>> ppszName);
typedef _GetDisplayName_Dart = int Function(
    Pointer obj, int sigdnName, Pointer<Pointer<Utf16>> ppszName);

typedef _GetAttributes_Native = Int32 Function(
    Pointer obj, Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs);
typedef _GetAttributes_Dart = int Function(
    Pointer obj, int sfgaoMask, Pointer<Uint32> psfgaoAttribs);

typedef _Compare_Native = Int32 Function(
    Pointer obj, Pointer psi, Uint32 hint, Pointer<Int32> piOrder);
typedef _Compare_Dart = int Function(
    Pointer obj, Pointer psi, int hint, Pointer<Int32> piOrder);

/// {@category Interface}
/// {@category com}
class IShellItem extends IUnknown {
  // vtable begins at 3, ends at 7

  IShellItem(Pointer<COMObject> ptr) : super(ptr);

  int BindToHandler(Pointer pbc, Pointer<GUID> bhid, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_BindToHandler_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_BindToHandler_Dart>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppv);

  int GetParent(Pointer<Pointer> ppsi) =>
      Pointer<NativeFunction<_GetParent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetParent_Dart>()(ptr.ref.lpVtbl, ppsi);

  int GetDisplayName(int sigdnName, Pointer<Pointer<Utf16>> ppszName) =>
      Pointer<NativeFunction<_GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, sigdnName, ppszName);

  int GetAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      Pointer<NativeFunction<_GetAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetAttributes_Dart>()(
          ptr.ref.lpVtbl, sfgaoMask, psfgaoAttribs);

  int Compare(Pointer psi, int hint, Pointer<Int32> piOrder) =>
      Pointer<NativeFunction<_Compare_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_Compare_Dart>()(ptr.ref.lpVtbl, psi, hint, piOrder);
}

/// {@category com}
class ShellItem extends IShellItem {
  ShellItem(Pointer<COMObject> ptr) : super(ptr);

  factory ShellItem.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellItem);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellItem);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellItem(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
