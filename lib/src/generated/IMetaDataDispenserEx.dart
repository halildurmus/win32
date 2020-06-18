// IMetaDataDispenserEx.dart

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

import 'IMetaDataDispenser.dart';

const IID_IMetaDataDispenserEx = '{31BCFCE2-DAFB-11D2-9F81-00C04F79A0A3}';

typedef SetOption_Native = Int32 Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue);
typedef SetOption_Dart = int Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue);

typedef GetOption_Native = Int32 Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue);
typedef GetOption_Dart = int Function(
    Pointer obj, Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue);

typedef OpenScopeOnITypeInfo_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pITI,
    Uint32 dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);
typedef OpenScopeOnITypeInfo_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pITI,
    int dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);

typedef GetCORSystemDirectory_Native = Int32 Function(Pointer obj,
    Pointer<Utf16> szBuffer, Uint32 cchBuffer, Pointer<Uint32> pchBuffer);
typedef GetCORSystemDirectory_Dart = int Function(Pointer obj,
    Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer);

typedef FindAssembly_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName);
typedef FindAssembly_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName);

typedef FindAssemblyModule_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szModuleName,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pcName);
typedef FindAssemblyModule_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szGlobalBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Utf16> szModuleName,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pcName);

class IMetaDataDispenserEx extends IMetaDataDispenser {
  // vtable begins at 6, ends at 11

  @override
  Pointer<COMObject> ptr;

  IMetaDataDispenserEx(this.ptr) : super(ptr);

  int SetOption(Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue) =>
      Pointer<NativeFunction<SetOption_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<SetOption_Dart>()(ptr.ref.lpVtbl, optionId, pValue);

  int GetOption(Pointer<GUID> optionId, Pointer<VARIANT_POINTER> pValue) =>
      Pointer<NativeFunction<GetOption_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<GetOption_Dart>()(ptr.ref.lpVtbl, optionId, pValue);

  int OpenScopeOnITypeInfo(Pointer<COMObject> pITI, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<OpenScopeOnITypeInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<OpenScopeOnITypeInfo_Dart>()(
          ptr.ref.lpVtbl, pITI, dwOpenFlags, riid, ppIUnk);

  int GetCORSystemDirectory(
          Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer) =>
      Pointer<NativeFunction<GetCORSystemDirectory_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<GetCORSystemDirectory_Dart>()(
          ptr.ref.lpVtbl, szBuffer, cchBuffer, pchBuffer);

  int FindAssembly(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName) =>
      Pointer<NativeFunction<FindAssembly_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<FindAssembly_Dart>()(ptr.ref.lpVtbl, szAppBase,
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
      Pointer<NativeFunction<FindAssemblyModule_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<FindAssemblyModule_Dart>()(
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
