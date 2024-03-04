// imetadatadispenserex.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'imetadatadispenser.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataDispenserEx = '{31bcfce2-dafb-11d2-9f81-00c04f79a0a3}';

/// Extends the IMetaDataDispenser Interface interface to provide the
/// capability to control how the metadata APIs operate on the current
/// metadata scope.
///
/// {@category com}
class IMetaDataDispenserEx extends IMetaDataDispenser {
  // vtable begins at 6, is 6 entries long.
  IMetaDataDispenserEx(super.ptr);

  factory IMetaDataDispenserEx.from(IUnknown interface) =>
      IMetaDataDispenserEx(interface.toInterface(IID_IMetaDataDispenserEx));

  int setOption(Pointer<GUID> optionid, Pointer<VARIANT> value) =>
      (ptr.ref.vtable + 6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<GUID> optionid,
                          Pointer<VARIANT> value)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<GUID> optionid,
                  Pointer<VARIANT> value)>()(ptr.ref.lpVtbl, optionid, value);

  int getOption(
          Pointer<GUID> optionid, Pointer<VARIANT> pvalue) =>
      (ptr.ref.vtable + 7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<GUID> optionid,
                          Pointer<VARIANT> pvalue)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<GUID> optionid,
                  Pointer<VARIANT> pvalue)>()(ptr.ref.lpVtbl, optionid, pvalue);

  int openScopeOnITypeInfo(Pointer<COMObject> pITI, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<Pointer<COMObject>> ppIUnk) =>
      (ptr.ref.vtable + 8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> pITI,
                              Uint32 dwOpenFlags,
                              Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppIUnk)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> pITI,
                      int dwOpenFlags,
                      Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppIUnk)>()(
          ptr.ref.lpVtbl, pITI, dwOpenFlags, riid, ppIUnk);

  int getCORSystemDirectory(
          Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer) =>
      (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> szBuffer,
                              Uint32 cchBuffer, Pointer<Uint32> pchBuffer)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> szBuffer, int cchBuffer,
                      Pointer<Uint32> pchBuffer)>()(
          ptr.ref.lpVtbl, szBuffer, cchBuffer, pchBuffer);

  int findAssembly(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pcName) =>
      (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szAppBase,
                              Pointer<Utf16> szPrivateBin,
                              Pointer<Utf16> szGlobalBin,
                              Pointer<Utf16> szAssemblyName,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pcName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> szAppBase,
                      Pointer<Utf16> szPrivateBin,
                      Pointer<Utf16> szGlobalBin,
                      Pointer<Utf16> szAssemblyName,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pcName)>()(ptr.ref.lpVtbl, szAppBase,
          szPrivateBin, szGlobalBin, szAssemblyName, szName, cchName, pcName);

  int findAssemblyModule(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szModuleName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pcName) =>
      (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szAppBase,
                              Pointer<Utf16> szPrivateBin,
                              Pointer<Utf16> szGlobalBin,
                              Pointer<Utf16> szAssemblyName,
                              Pointer<Utf16> szModuleName,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pcName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> szAppBase,
                      Pointer<Utf16> szPrivateBin,
                      Pointer<Utf16> szGlobalBin,
                      Pointer<Utf16> szAssemblyName,
                      Pointer<Utf16> szModuleName,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pcName)>()(
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
