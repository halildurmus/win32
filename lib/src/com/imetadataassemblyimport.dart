// imetadataassemblyimport.dart

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
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataAssemblyImport = '{ee62470b-e94b-424e-9b7c-2f00c9249f93}';

/// Provides methods to access and examine the contents of an assembly
/// manifest.
///
/// {@category com}
class IMetaDataAssemblyImport extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IMetaDataAssemblyImport(super.ptr);

  factory IMetaDataAssemblyImport.from(IUnknown interface) =>
      IMetaDataAssemblyImport(
          interface.toInterface(IID_IMetaDataAssemblyImport));

  int getAssemblyProps(
          int mda,
          Pointer<Pointer> ppbPublicKey,
          Pointer<Uint32> pcbPublicKey,
          Pointer<Uint32> pulHashAlgId,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYMETADATA> pMetaData,
          Pointer<Uint32> pdwAssemblyFlags) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mda,
                              Pointer<Pointer> ppbPublicKey,
                              Pointer<Uint32> pcbPublicKey,
                              Pointer<Uint32> pulHashAlgId,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<ASSEMBLYMETADATA> pMetaData,
                              Pointer<Uint32> pdwAssemblyFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mda,
                      Pointer<Pointer> ppbPublicKey,
                      Pointer<Uint32> pcbPublicKey,
                      Pointer<Uint32> pulHashAlgId,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<ASSEMBLYMETADATA> pMetaData,
                      Pointer<Uint32> pdwAssemblyFlags)>()(
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

  int getAssemblyRefProps(
          int mdar,
          Pointer<Pointer> ppbPublicKeyOrToken,
          Pointer<Uint32> pcbPublicKeyOrToken,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYMETADATA> pMetaData,
          Pointer<Pointer> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwAssemblyRefFlags) =>
      ptr.ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mdar,
                              Pointer<Pointer> ppbPublicKeyOrToken,
                              Pointer<Uint32> pcbPublicKeyOrToken,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<ASSEMBLYMETADATA> pMetaData,
                              Pointer<Pointer> ppbHashValue,
                              Pointer<Uint32> pcbHashValue,
                              Pointer<Uint32> pdwAssemblyRefFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mdar,
                      Pointer<Pointer> ppbPublicKeyOrToken,
                      Pointer<Uint32> pcbPublicKeyOrToken,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<ASSEMBLYMETADATA> pMetaData,
                      Pointer<Pointer> ppbHashValue,
                      Pointer<Uint32> pcbHashValue,
                      Pointer<Uint32> pdwAssemblyRefFlags)>()(
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

  int getFileProps(
          int mdf,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Pointer> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwFileFlags) =>
      ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mdf,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<Pointer> ppbHashValue,
                              Pointer<Uint32> pcbHashValue,
                              Pointer<Uint32> pdwFileFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mdf,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<Pointer> ppbHashValue,
                      Pointer<Uint32> pcbHashValue,
                      Pointer<Uint32> pdwFileFlags)>()(ptr.ref.lpVtbl, mdf,
          szName, cchName, pchName, ppbHashValue, pcbHashValue, pdwFileFlags);

  int getExportedTypeProps(
          int mdct,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Uint32> pdwExportedTypeFlags) =>
      ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mdct,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<Uint32> ptkImplementation,
                              Pointer<Uint32> ptkTypeDef,
                              Pointer<Uint32> pdwExportedTypeFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mdct,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<Uint32> ptkImplementation,
                      Pointer<Uint32> ptkTypeDef,
                      Pointer<Uint32> pdwExportedTypeFlags)>()(
          ptr.ref.lpVtbl,
          mdct,
          szName,
          cchName,
          pchName,
          ptkImplementation,
          ptkTypeDef,
          pdwExportedTypeFlags);

  int getManifestResourceProps(
          int mdmr,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> pdwOffset,
          Pointer<Uint32> pdwResourceFlags) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mdmr,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<Uint32> ptkImplementation,
                              Pointer<Uint32> pdwOffset,
                              Pointer<Uint32> pdwResourceFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mdmr,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<Uint32> ptkImplementation,
                      Pointer<Uint32> pdwOffset,
                      Pointer<Uint32> pdwResourceFlags)>()(
          ptr.ref.lpVtbl,
          mdmr,
          szName,
          cchName,
          pchName,
          ptkImplementation,
          pdwOffset,
          pdwResourceFlags);

  int enumAssemblyRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rAssemblyRefs,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rAssemblyRefs,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rAssemblyRefs,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, rAssemblyRefs, cMax, pcTokens);

  int enumFiles(Pointer<Pointer> phEnum, Pointer<Uint32> rFiles, int cMax,
          Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rFiles,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rFiles,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, rFiles, cMax, pcTokens);

  int enumExportedTypes(Pointer<Pointer> phEnum, Pointer<Uint32> rExportedTypes,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rExportedTypes,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rExportedTypes,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, rExportedTypes, cMax, pcTokens);

  int enumManifestResources(
          Pointer<Pointer> phEnum,
          Pointer<Uint32> rManifestResources,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rManifestResources,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rManifestResources,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, rManifestResources, cMax, pcTokens);

  int getAssemblyFromScope(Pointer<Uint32> ptkAssembly) => ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> ptkAssembly)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> ptkAssembly)>()(
      ptr.ref.lpVtbl, ptkAssembly);

  int findExportedTypeByName(Pointer<Utf16> szName, int mdtExportedType,
          Pointer<Uint32> ptkExportedType) =>
      ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szName,
                              Uint32 mdtExportedType,
                              Pointer<Uint32> ptkExportedType)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> szName,
                      int mdtExportedType, Pointer<Uint32> ptkExportedType)>()(
          ptr.ref.lpVtbl, szName, mdtExportedType, ptkExportedType);

  int findManifestResourceByName(
          Pointer<Utf16> szName, Pointer<Uint32> ptkManifestResource) =>
      ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> szName,
                              Pointer<Uint32> ptkManifestResource)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> szName,
                      Pointer<Uint32> ptkManifestResource)>()(
          ptr.ref.lpVtbl, szName, ptkManifestResource);

  void closeEnum(Pointer hEnum) => ptr.ref.vtable
      .elementAt(15)
      .cast<Pointer<NativeFunction<Void Function(Pointer, Pointer hEnum)>>>()
      .value
      .asFunction<
          void Function(Pointer, Pointer hEnum)>()(ptr.ref.lpVtbl, hEnum);

  int findAssembliesByName(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Pointer<COMObject>> ppIUnk,
          int cMax,
          Pointer<Uint32> pcAssemblies) =>
      ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szAppBase,
                              Pointer<Utf16> szPrivateBin,
                              Pointer<Utf16> szAssemblyName,
                              Pointer<Pointer<COMObject>> ppIUnk,
                              Uint32 cMax,
                              Pointer<Uint32> pcAssemblies)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> szAppBase,
                      Pointer<Utf16> szPrivateBin,
                      Pointer<Utf16> szAssemblyName,
                      Pointer<Pointer<COMObject>> ppIUnk,
                      int cMax,
                      Pointer<Uint32> pcAssemblies)>()(ptr.ref.lpVtbl,
          szAppBase, szPrivateBin, szAssemblyName, ppIUnk, cMax, pcAssemblies);
}
