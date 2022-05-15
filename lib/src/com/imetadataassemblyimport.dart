// IMetaDataAssemblyImport.dart

// coverage:ignore-file

// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'structs.dart';

typedef _GetAssemblyProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mda,
    Pointer<Pointer> ppbPublicKey,
    Pointer<Uint32> pcbPublicKey,
    Pointer<Uint32> pulHashAlgId,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYDATA> pMetaData,
    Pointer<Uint32> pdwAssemblyFlags);
typedef _GetAssemblyProps_Dart = int Function(
    Pointer obj,
    int mda,
    Pointer<Pointer> ppbPublicKey,
    Pointer<Uint32> pcbPublicKey,
    Pointer<Uint32> pulHashAlgId,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYDATA> pMetaData,
    Pointer<Uint32> pdwAssemblyFlags);

typedef _GetAssemblyRefProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mdar,
    Pointer<Pointer> ppbPublicKeyOrToken,
    Pointer<Uint32> pcbPublicKeyOrToken,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYDATA> pMetaData,
    Pointer<Pointer> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwAssemblyRefFlags);
typedef _GetAssemblyRefProps_Dart = int Function(
    Pointer obj,
    int mdar,
    Pointer<Pointer> ppbPublicKeyOrToken,
    Pointer<Uint32> pcbPublicKeyOrToken,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYDATA> pMetaData,
    Pointer<Pointer> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwAssemblyRefFlags);

typedef _GetFileProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mdf,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<IntPtr> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwFileFlags);
typedef _GetFileProps_Dart = int Function(
    Pointer obj,
    int mdf,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<IntPtr> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwFileFlags);

typedef _GetExportedTypeProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mdct,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Uint32> pdwExportedTypeFlags);
typedef _GetExportedTypeProps_Dart = int Function(
    Pointer obj,
    int mdct,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Uint32> pdwExportedTypeFlags);

typedef _GetManifestResourceProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mdmr,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> pdwOffset,
    Pointer<Uint32> pdwResourceFlags);
typedef _GetManifestResourceProps_Dart = int Function(
    Pointer obj,
    int mdmr,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> pdwOffset,
    Pointer<Uint32> pdwResourceFlags);

typedef _EnumAssemblyRefs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rAssemblyRefs, // rAssemblyRefs[]
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef _EnumAssemblyRefs_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rAssemblyRefs, // rAssemblyRefs[]
    int cMax,
    Pointer<Uint32> pcTokens);

typedef _EnumFiles_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rFiles, // rFiles[]
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef _EnumFiles_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rFiles, // rFiles[]
    int cMax,
    Pointer<Uint32> pcTokens);

typedef _EnumExportedTypes_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rExportedTypes, // rExportedTypes[]
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef _EnumExportedTypes_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rExportedTypes, // rExportedTypes[]
    int cMax,
    Pointer<Uint32> pcTokens);

typedef _EnumManifestResources_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rManifestResources, // rManifestResources[]
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef _EnumManifestResources_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rManifestResources, // rManifestResources[]
    int cMax,
    Pointer<Uint32> pcTokens);

typedef _GetAssemblyFromScope_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> ptkAssembly);
typedef _GetAssemblyFromScope_Dart = int Function(
    Pointer obj, Pointer<Uint32> ptkAssembly);

typedef _FindExportedTypeByName_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szName,
    Uint32 mdtExportedType,
    Pointer<Uint32> ptkExportedType);
typedef _FindExportedTypeByName_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szName,
    int mdtExportedType,
    Pointer<Uint32> ptkExportedType);

typedef _FindManifestResourceByName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> szName, Pointer<Uint32> ptkManifestResource);
typedef _FindManifestResourceByName_Dart = int Function(
    Pointer obj, Pointer<Utf16> szName, Pointer<Uint32> ptkManifestResource);

typedef _CloseEnum_Native = Int32 Function(Pointer obj, IntPtr hEnum);
typedef _CloseEnum_Dart = int Function(Pointer obj, int hEnum);

typedef _FindAssembliesByName_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Pointer<COMObject>> ppIUnk, // ppIUnk[]
    Uint32 cMax,
    Pointer<Uint32> pcAssemblies);
typedef _FindAssembliesByName_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> szAppBase,
    Pointer<Utf16> szPrivateBin,
    Pointer<Utf16> szAssemblyName,
    Pointer<Pointer<COMObject>> ppIUnk, // ppIUnk[]
    int cMax,
    Pointer<Uint32> pcAssemblies);

/// {@category Interface}
/// {@category com}
class IMetaDataAssemblyImport extends IUnknown {
  // vtable begins at 3, ends at 16

  static const IID = '{EE62470B-E94B-424E-9B7C-2F00C9249F93}';

  IMetaDataAssemblyImport(super.ptr);

  int GetAssemblyProps(
          int mda,
          Pointer<Pointer> ppbPublicKey,
          Pointer<Uint32> pcbPublicKey,
          Pointer<Uint32> pulHashAlgId,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYDATA> pMetaData,
          Pointer<Uint32> pdwAssemblyFlags) =>
      Pointer<NativeFunction<_GetAssemblyProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_GetAssemblyProps_Dart>()(
          ptr.ref.lpVtbl,
          mda,
          ppbPublicKey,
          pcbPublicKey,
          pulHashAlgId,
          szName,
          cchName,
          pchName,
          pMetaData,
          pdwAssemblyFlags);

  int GetAssemblyRefProps(
          int mdar,
          Pointer<Pointer> ppbPublicKeyOrToken,
          Pointer<Uint32> pcbPublicKeyOrToken,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYDATA> pMetaData,
          Pointer<Pointer> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwAssemblyRefFlags) =>
      Pointer<NativeFunction<_GetAssemblyRefProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetAssemblyRefProps_Dart>()(
          ptr.ref.lpVtbl,
          mdar,
          ppbPublicKeyOrToken,
          pcbPublicKeyOrToken,
          szName,
          cchName,
          pchName,
          pMetaData,
          ppbHashValue,
          pcbHashValue,
          pdwAssemblyRefFlags);

  int GetFileProps(
          int mdf,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<IntPtr> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwFileFlags) =>
      Pointer<NativeFunction<_GetFileProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetFileProps_Dart>()(ptr.ref.lpVtbl, mdf, szName,
          cchName, pchName, ppbHashValue, pcbHashValue, pdwFileFlags);

  int GetExportedTypeProps(
          int mdct,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Uint32> pdwExportedTypeFlags) =>
      Pointer<NativeFunction<_GetExportedTypeProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetExportedTypeProps_Dart>()(
          ptr.ref.lpVtbl,
          mdct,
          szName,
          cchName,
          pchName,
          ptkImplementation,
          ptkTypeDef,
          pdwExportedTypeFlags);

  int GetManifestResourceProps(
          int mdmr,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> pdwOffset,
          Pointer<Uint32> pdwResourceFlags) =>
      Pointer<NativeFunction<_GetManifestResourceProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetManifestResourceProps_Dart>()(
          ptr.ref.lpVtbl,
          mdmr,
          szName,
          cchName,
          pchName,
          ptkImplementation,
          pdwOffset,
          pdwResourceFlags);

  int EnumAssemblyRefs(Pointer<IntPtr> phEnum, Pointer<Uint32> rAssemblyRefs,
          int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<_EnumAssemblyRefs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_EnumAssemblyRefs_Dart>()(
          ptr.ref.lpVtbl, phEnum, rAssemblyRefs, cMax, pcTokens);

  int EnumFiles(Pointer<IntPtr> phEnum, Pointer<Uint32> rFiles, int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<_EnumFiles_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_EnumFiles_Dart>()(
          ptr.ref.lpVtbl, phEnum, rFiles, cMax, pcTokens);

  int EnumExportedTypes(Pointer<IntPtr> phEnum, Pointer<Uint32> rExportedTypes,
          int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<_EnumExportedTypes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_EnumExportedTypes_Dart>()(
          ptr.ref.lpVtbl, phEnum, rExportedTypes, cMax, pcTokens);

  int EnumManifestResources(
          Pointer<IntPtr> phEnum,
          Pointer<Uint32> rManifestResources,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<_EnumManifestResources_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_EnumManifestResources_Dart>()(
          ptr.ref.lpVtbl, phEnum, rManifestResources, cMax, pcTokens);

  int GetAssemblyFromScope(Pointer<Uint32> ptkAssembly) =>
      Pointer<NativeFunction<_GetAssemblyFromScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_GetAssemblyFromScope_Dart>()(
          ptr.ref.lpVtbl, ptkAssembly);

  int FindExportedTypeByName(Pointer<Utf16> szName, int mdtExportedType,
          Pointer<Uint32> ptkExportedType) =>
      Pointer<NativeFunction<_FindExportedTypeByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_FindExportedTypeByName_Dart>()(
          ptr.ref.lpVtbl, szName, mdtExportedType, ptkExportedType);

  int FindManifestResourceByName(
          Pointer<Utf16> szName, Pointer<Uint32> ptkManifestResource) =>
      Pointer<NativeFunction<_FindManifestResourceByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_FindManifestResourceByName_Dart>()(
          ptr.ref.lpVtbl, szName, ptkManifestResource);

  int CloseEnum(int hEnum) =>
      Pointer<NativeFunction<_CloseEnum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_CloseEnum_Dart>()(ptr.ref.lpVtbl, hEnum);

  int FindAssembliesByName(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Pointer<COMObject>> ppIUnk,
          int cMax,
          Pointer<Uint32> pcAssemblies) =>
      Pointer<NativeFunction<_FindAssembliesByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_FindAssembliesByName_Dart>()(ptr.ref.lpVtbl,
          szAppBase, szPrivateBin, szAssemblyName, ppIUnk, cMax, pcAssemblies);
}
