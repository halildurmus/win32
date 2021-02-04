// IMetaDataDispenserEx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IMetaDataDispenser.dart';

/// @nodoc
const IID_IMetaDataDispenserEx = '{31BCFCE2-DAFB-11D2-9F81-00C04F79A0A3}';

typedef _SetOption_Native = Int32 Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT> pValue);
typedef _SetOption_Dart = int Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT> pValue);

typedef _GetOption_Native = Int32 Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT> pValue);
typedef _GetOption_Dart = int Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT> pValue);

typedef _OpenScopeOnITypeInfo_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pITI,
    Uint32 dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);
typedef _OpenScopeOnITypeInfo_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pITI,
    int dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);

typedef _GetCORSystemDirectory_Native = Int32 Function(Pointer obj,
    Pointer<Utf16> szBuffer, Uint32 cchBuffer, Pointer<Uint32> pchBuffer);
typedef _GetCORSystemDirectory_Dart = int Function(Pointer obj,
    Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer);

typedef _FindAssembly_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName);
typedef _FindAssembly_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName);

typedef _FindAssemblyModule_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szModuleName,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pcName);
typedef _FindAssemblyModule_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szModuleName,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pcName);

/// {@category Interface}
/// {@category com}
class IMetaDataDispenserEx extends IMetaDataDispenser {
  // vtable begins at 6, ends at 11

  IMetaDataDispenserEx(Pointer<COMObject> ptr) : super(ptr);

  int SetOption(Pointer<GUID> optionId, Pointer<VARIANT> pValue) =>
      Pointer<NativeFunction<_SetOption_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_SetOption_Dart>()(ptr.ref.lpVtbl, optionId, pValue);

  int GetOption(Pointer<GUID> optionId, Pointer<VARIANT> pValue) =>
      Pointer<NativeFunction<_GetOption_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetOption_Dart>()(ptr.ref.lpVtbl, optionId, pValue);

  int OpenScopeOnITypeInfo(Pointer<COMObject> pITI, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<_OpenScopeOnITypeInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_OpenScopeOnITypeInfo_Dart>()(
          ptr.ref.lpVtbl, pITI, dwOpenFlags, riid, ppIUnk);

  int GetCORSystemDirectory(
          Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer) =>
      Pointer<NativeFunction<_GetCORSystemDirectory_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetCORSystemDirectory_Dart>()(
          ptr.ref.lpVtbl, szBuffer, cchBuffer, pchBuffer);

  int FindAssembly(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName) =>
      Pointer<NativeFunction<_FindAssembly_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_FindAssembly_Dart>()(ptr.ref.lpVtbl, szAppBase,
          szPrivateBin, szGlobalBin, szAssemblyName, szName, cchName, pchName);

  int FindAssemblyModule(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szModuleName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pcName) =>
      Pointer<NativeFunction<_FindAssemblyModule_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_FindAssemblyModule_Dart>()(
          ptr.ref.lpVtbl,
          szAppBase,
          szPrivateBin,
          szGlobalBin,
          szAssemblyName,
          szModuleName,
          szName,
          cchName,
          pcName);
}
