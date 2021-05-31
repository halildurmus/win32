// IShellItemResources.dart

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
const IID_IShellItemResources = '{FF5693BE-2CE0-4D48-B5C5-40817D1ACDB9}';

typedef _GetAttributes_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwAttributes);
typedef _GetAttributes_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwAttributes);

typedef _GetSize_Native = Int32 Function(Pointer obj, Pointer<Uint64> pullSize);
typedef _GetSize_Dart = int Function(Pointer obj, Pointer<Uint64> pullSize);

typedef _GetTimes_Native = Int32 Function(
    Pointer obj,
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess);
typedef _GetTimes_Dart = int Function(
    Pointer obj,
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess);

typedef _SetTimes_Native = Int32 Function(
    Pointer obj,
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess);
typedef _SetTimes_Dart = int Function(
    Pointer obj,
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess);

typedef _GetResourceDescription_Native = Int32 Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<Pointer<Utf16>> ppszDescription);
typedef _GetResourceDescription_Dart = int Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<Pointer<Utf16>> ppszDescription);

typedef _EnumResources_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppenumr);
typedef _EnumResources_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppenumr);

typedef _SupportsResource_Native = Int32 Function(
    Pointer obj, Pointer<SHELL_ITEM_RESOURCE> pcsir);
typedef _SupportsResource_Dart = int Function(
    Pointer obj, Pointer<SHELL_ITEM_RESOURCE> pcsir);

typedef _OpenResource_Native = Int32 Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _OpenResource_Dart = int Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);

typedef _CreateResource_Native = Int32 Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);
typedef _CreateResource_Dart = int Function(
    Pointer obj,
    Pointer<SHELL_ITEM_RESOURCE> pcsir,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv);

typedef _MarkForDelete_Native = Int32 Function(Pointer obj);
typedef _MarkForDelete_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IShellItemResources extends IUnknown {
  // vtable begins at 3, ends at 12

  IShellItemResources(Pointer<COMObject> ptr) : super(ptr);

  int GetAttributes(Pointer<Uint32> pdwAttributes) =>
      Pointer<NativeFunction<_GetAttributes_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetAttributes_Dart>()(ptr.ref.lpVtbl, pdwAttributes);

  int GetSize(Pointer<Uint64> pullSize) =>
      Pointer<NativeFunction<_GetSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetSize_Dart>()(ptr.ref.lpVtbl, pullSize);

  int GetTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      Pointer<NativeFunction<_GetTimes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetTimes_Dart>()(
          ptr.ref.lpVtbl, pftCreation, pftWrite, pftAccess);

  int SetTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      Pointer<NativeFunction<_SetTimes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_SetTimes_Dart>()(
          ptr.ref.lpVtbl, pftCreation, pftWrite, pftAccess);

  int GetResourceDescription(Pointer<SHELL_ITEM_RESOURCE> pcsir,
          Pointer<Pointer<Utf16>> ppszDescription) =>
      Pointer<NativeFunction<_GetResourceDescription_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetResourceDescription_Dart>()(
          ptr.ref.lpVtbl, pcsir, ppszDescription);

  int EnumResources(Pointer<Pointer> ppenumr) =>
      Pointer<NativeFunction<_EnumResources_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_EnumResources_Dart>()(ptr.ref.lpVtbl, ppenumr);

  int SupportsResource(Pointer<SHELL_ITEM_RESOURCE> pcsir) =>
      Pointer<NativeFunction<_SupportsResource_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_SupportsResource_Dart>()(ptr.ref.lpVtbl, pcsir);

  int OpenResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_OpenResource_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_OpenResource_Dart>()(ptr.ref.lpVtbl, pcsir, riid, ppv);

  int CreateResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_CreateResource_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_CreateResource_Dart>()(ptr.ref.lpVtbl, pcsir, riid, ppv);

  int MarkForDelete() =>
      Pointer<NativeFunction<_MarkForDelete_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_MarkForDelete_Dart>()(ptr.ref.lpVtbl);
}
