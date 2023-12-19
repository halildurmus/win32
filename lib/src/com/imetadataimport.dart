// imetadataimport.dart

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
const IID_IMetaDataImport = '{7dac8207-d3ae-4c75-9b67-92801a497d44}';

/// Provides methods for importing and manipulating existing metadata from a
/// portable executable (PE) file or other source, such as a type library or
/// a stand-alone, run-time metadata binary.
///
/// {@category com}
class IMetaDataImport extends IUnknown {
  // vtable begins at 3, is 62 entries long.
  IMetaDataImport(super.ptr);

  factory IMetaDataImport.from(IUnknown interface) =>
      IMetaDataImport(interface.toInterface(IID_IMetaDataImport));

  void closeEnum(Pointer hEnum) => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Void Function(Pointer, Pointer hEnum)>>>()
      .value
      .asFunction<
          void Function(Pointer, Pointer hEnum)>()(ptr.ref.lpVtbl, hEnum);

  int countEnum(Pointer hEnum, Pointer<Uint32> pulCount) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer hEnum, Pointer<Uint32> pulCount)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer hEnum, Pointer<Uint32> pulCount)>()(
      ptr.ref.lpVtbl, hEnum, pulCount);

  int resetEnum(Pointer hEnum, int ulPos) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer hEnum, Uint32 ulPos)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer hEnum, int ulPos)>()(
      ptr.ref.lpVtbl, hEnum, ulPos);

  int enumTypeDefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeDefs, int cMax,
          Pointer<Uint32> pcTypeDefs) =>
      ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rTypeDefs,
                              Uint32 cMax,
                              Pointer<Uint32> pcTypeDefs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rTypeDefs,
                      int cMax,
                      Pointer<Uint32> pcTypeDefs)>()(
          ptr.ref.lpVtbl, phEnum, rTypeDefs, cMax, pcTypeDefs);

  int enumInterfaceImpls(Pointer<Pointer> phEnum, int td,
          Pointer<Uint32> rImpls, int cMax, Pointer<Uint32> pcImpls) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 td,
                              Pointer<Uint32> rImpls,
                              Uint32 cMax,
                              Pointer<Uint32> pcImpls)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int td,
                      Pointer<Uint32> rImpls,
                      int cMax,
                      Pointer<Uint32> pcImpls)>()(
          ptr.ref.lpVtbl, phEnum, td, rImpls, cMax, pcImpls);

  int enumTypeRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeRefs, int cMax,
          Pointer<Uint32> pcTypeRefs) =>
      ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rTypeRefs,
                              Uint32 cMax,
                              Pointer<Uint32> pcTypeRefs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rTypeRefs,
                      int cMax,
                      Pointer<Uint32> pcTypeRefs)>()(
          ptr.ref.lpVtbl, phEnum, rTypeRefs, cMax, pcTypeRefs);

  int findTypeDefByName(Pointer<Utf16> szTypeDef, int tkEnclosingClass,
          Pointer<Uint32> ptd) =>
      ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> szTypeDef,
                              Uint32 tkEnclosingClass, Pointer<Uint32> ptd)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> szTypeDef,
                      int tkEnclosingClass, Pointer<Uint32> ptd)>()(
          ptr.ref.lpVtbl, szTypeDef, tkEnclosingClass, ptd);

  int getScopeProps(Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName,
          Pointer<GUID> pmvid) =>
      ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<GUID> pmvid)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> szName, int cchName,
                      Pointer<Uint32> pchName, Pointer<GUID> pmvid)>()(
          ptr.ref.lpVtbl, szName, cchName, pchName, pmvid);

  int getModuleFromScope(Pointer<Uint32> pmd) => ptr.ref.vtable
      .elementAt(11)
      .cast<
          Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pmd)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<Uint32> pmd)>()(ptr.ref.lpVtbl, pmd);

  int getTypeDefProps(
          int td,
          Pointer<Utf16> szTypeDef,
          int cchTypeDef,
          Pointer<Uint32> pchTypeDef,
          Pointer<Uint32> pdwTypeDefFlags,
          Pointer<Uint32> ptkExtends) =>
      ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Utf16> szTypeDef,
                              Uint32 cchTypeDef,
                              Pointer<Uint32> pchTypeDef,
                              Pointer<Uint32> pdwTypeDefFlags,
                              Pointer<Uint32> ptkExtends)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Utf16> szTypeDef,
                      int cchTypeDef,
                      Pointer<Uint32> pchTypeDef,
                      Pointer<Uint32> pdwTypeDefFlags,
                      Pointer<Uint32> ptkExtends)>()(ptr.ref.lpVtbl, td,
          szTypeDef, cchTypeDef, pchTypeDef, pdwTypeDefFlags, ptkExtends);

  int getInterfaceImplProps(
          int iiImpl, Pointer<Uint32> pClass, Pointer<Uint32> ptkIface) =>
      ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 iiImpl,
                          Pointer<Uint32> pClass, Pointer<Uint32> ptkIface)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  int iiImpl,
                  Pointer<Uint32> pClass,
                  Pointer<Uint32>
                      ptkIface)>()(ptr.ref.lpVtbl, iiImpl, pClass, ptkIface);

  int getTypeRefProps(int tr, Pointer<Uint32> ptkResolutionScope,
          Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName) =>
      ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tr,
                              Pointer<Uint32> ptkResolutionScope,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int tr,
                      Pointer<Uint32> ptkResolutionScope,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName)>()(
          ptr.ref.lpVtbl, tr, ptkResolutionScope, szName, cchName, pchName);

  int resolveTypeRef(int tr, Pointer<GUID> riid,
          Pointer<Pointer<COMObject>> ppIScope, Pointer<Uint32> ptd) =>
      ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tr,
                              Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppIScope,
                              Pointer<Uint32> ptd)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int tr,
                      Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppIScope,
                      Pointer<Uint32> ptd)>()(
          ptr.ref.lpVtbl, tr, riid, ppIScope, ptd);

  int enumMembers(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMembers,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Uint32> rMembers,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Uint32> rMembers,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, rMembers, cMax, pcTokens);

  int enumMembersWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMembers,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Utf16> szName,
                              Pointer<Uint32> rMembers,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Utf16> szName,
                      Pointer<Uint32> rMembers,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, szName, rMembers, cMax, pcTokens);

  int enumMethods(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(18)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Uint32> rMethods,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Uint32> rMethods,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, rMethods, cMax, pcTokens);

  int enumMethodsWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMethods,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Utf16> szName,
                              Pointer<Uint32> rMethods,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Utf16> szName,
                      Pointer<Uint32> rMethods,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, szName, rMethods, cMax, pcTokens);

  int enumFields(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rFields,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Uint32> rFields,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Uint32> rFields,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, rFields, cMax, pcTokens);

  int enumFieldsWithName(Pointer<Pointer> phEnum, int cl, Pointer<Utf16> szName,
          Pointer<Uint32> rFields, int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(21)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 cl,
                              Pointer<Utf16> szName,
                              Pointer<Uint32> rFields,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int cl,
                      Pointer<Utf16> szName,
                      Pointer<Uint32> rFields,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, cl, szName, rFields, cMax, pcTokens);

  int enumParams(Pointer<Pointer> phEnum, int mb, Pointer<Uint32> rParams,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 mb,
                              Pointer<Uint32> rParams,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int mb,
                      Pointer<Uint32> rParams,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, mb, rParams, cMax, pcTokens);

  int enumMemberRefs(Pointer<Pointer> phEnum, int tkParent,
          Pointer<Uint32> rMemberRefs, int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(23)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tkParent,
                              Pointer<Uint32> rMemberRefs,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tkParent,
                      Pointer<Uint32> rMemberRefs,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, tkParent, rMemberRefs, cMax, pcTokens);

  int enumMethodImpls(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rMethodBody,
          Pointer<Uint32> rMethodDecl,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(24)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 td,
                              Pointer<Uint32> rMethodBody,
                              Pointer<Uint32> rMethodDecl,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int td,
                      Pointer<Uint32> rMethodBody,
                      Pointer<Uint32> rMethodDecl,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, td, rMethodBody, rMethodDecl, cMax, pcTokens);

  int enumPermissionSets(Pointer<Pointer> phEnum, int tk, int dwActions,
          Pointer<Uint32> rPermission, int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(25)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tk,
                              Uint32 dwActions,
                              Pointer<Uint32> rPermission,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tk,
                      int dwActions,
                      Pointer<Uint32> rPermission,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, tk, dwActions, rPermission, cMax, pcTokens);

  int findMember(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      ptr.ref.vtable
              .elementAt(26)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Utf16> szName,
                              Pointer<Uint8> pvSigBlob,
                              Uint32 cbSigBlob,
                              Pointer<Uint32> pmb)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Utf16> szName,
                      Pointer<Uint8> pvSigBlob,
                      int cbSigBlob,
                      Pointer<Uint32> pmb)>()(
          ptr.ref.lpVtbl, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findMethod(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      ptr.ref.vtable
              .elementAt(27)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Utf16> szName,
                              Pointer<Uint8> pvSigBlob,
                              Uint32 cbSigBlob,
                              Pointer<Uint32> pmb)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Utf16> szName,
                      Pointer<Uint8> pvSigBlob,
                      int cbSigBlob,
                      Pointer<Uint32> pmb)>()(
          ptr.ref.lpVtbl, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findField(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      ptr.ref.vtable
              .elementAt(28)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Utf16> szName,
                              Pointer<Uint8> pvSigBlob,
                              Uint32 cbSigBlob,
                              Pointer<Uint32> pmb)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Utf16> szName,
                      Pointer<Uint8> pvSigBlob,
                      int cbSigBlob,
                      Pointer<Uint32> pmb)>()(
          ptr.ref.lpVtbl, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findMemberRef(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmr) =>
      ptr.ref.vtable
              .elementAt(29)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Utf16> szName,
                              Pointer<Uint8> pvSigBlob,
                              Uint32 cbSigBlob,
                              Pointer<Uint32> pmr)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Utf16> szName,
                      Pointer<Uint8> pvSigBlob,
                      int cbSigBlob,
                      Pointer<Uint32> pmr)>()(
          ptr.ref.lpVtbl, td, szName, pvSigBlob, cbSigBlob, pmr);

  int getMethodProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szMethod,
          int cchMethod,
          Pointer<Uint32> pchMethod,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags) =>
      ptr.ref.vtable
              .elementAt(30)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mb,
                              Pointer<Uint32> pClass,
                              Pointer<Utf16> szMethod,
                              Uint32 cchMethod,
                              Pointer<Uint32> pchMethod,
                              Pointer<Uint32> pdwAttr,
                              Pointer<Pointer<Uint8>> ppvSigBlob,
                              Pointer<Uint32> pcbSigBlob,
                              Pointer<Uint32> pulCodeRVA,
                              Pointer<Uint32> pdwImplFlags)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mb,
                      Pointer<Uint32> pClass,
                      Pointer<Utf16> szMethod,
                      int cchMethod,
                      Pointer<Uint32> pchMethod,
                      Pointer<Uint32> pdwAttr,
                      Pointer<Pointer<Uint8>> ppvSigBlob,
                      Pointer<Uint32> pcbSigBlob,
                      Pointer<Uint32> pulCodeRVA,
                      Pointer<Uint32> pdwImplFlags)>()(
          ptr.ref.lpVtbl,
          mb,
          pClass,
          szMethod,
          cchMethod,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

  int getMemberRefProps(
          int mr,
          Pointer<Uint32> ptk,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pbSig) =>
      ptr.ref.vtable
              .elementAt(31)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mr,
                              Pointer<Uint32> ptk,
                              Pointer<Utf16> szMember,
                              Uint32 cchMember,
                              Pointer<Uint32> pchMember,
                              Pointer<Pointer<Uint8>> ppvSigBlob,
                              Pointer<Uint32> pbSig)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mr,
                      Pointer<Uint32> ptk,
                      Pointer<Utf16> szMember,
                      int cchMember,
                      Pointer<Uint32> pchMember,
                      Pointer<Pointer<Uint8>> ppvSigBlob,
                      Pointer<Uint32> pbSig)>()(ptr.ref.lpVtbl, mr, ptk,
          szMember, cchMember, pchMember, ppvSigBlob, pbSig);

  int enumProperties(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rProperties,
          int cMax,
          Pointer<Uint32> pcProperties) =>
      ptr.ref.vtable
              .elementAt(32)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 td,
                              Pointer<Uint32> rProperties,
                              Uint32 cMax,
                              Pointer<Uint32> pcProperties)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int td,
                      Pointer<Uint32> rProperties,
                      int cMax,
                      Pointer<Uint32> pcProperties)>()(
          ptr.ref.lpVtbl, phEnum, td, rProperties, cMax, pcProperties);

  int enumEvents(Pointer<Pointer> phEnum, int td, Pointer<Uint32> rEvents,
          int cMax, Pointer<Uint32> pcEvents) =>
      ptr.ref.vtable
              .elementAt(33)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 td,
                              Pointer<Uint32> rEvents,
                              Uint32 cMax,
                              Pointer<Uint32> pcEvents)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int td,
                      Pointer<Uint32> rEvents,
                      int cMax,
                      Pointer<Uint32> pcEvents)>()(
          ptr.ref.lpVtbl, phEnum, td, rEvents, cMax, pcEvents);

  int getEventProps(
          int ev,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szEvent,
          int cchEvent,
          Pointer<Uint32> pchEvent,
          Pointer<Uint32> pdwEventFlags,
          Pointer<Uint32> ptkEventType,
          Pointer<Uint32> pmdAddOn,
          Pointer<Uint32> pmdRemoveOn,
          Pointer<Uint32> pmdFire,
          Pointer<Uint32> rmdOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      ptr.ref.vtable
              .elementAt(34)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 ev,
                              Pointer<Uint32> pClass,
                              Pointer<Utf16> szEvent,
                              Uint32 cchEvent,
                              Pointer<Uint32> pchEvent,
                              Pointer<Uint32> pdwEventFlags,
                              Pointer<Uint32> ptkEventType,
                              Pointer<Uint32> pmdAddOn,
                              Pointer<Uint32> pmdRemoveOn,
                              Pointer<Uint32> pmdFire,
                              Pointer<Uint32> rmdOtherMethod,
                              Uint32 cMax,
                              Pointer<Uint32> pcOtherMethod)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int ev,
                      Pointer<Uint32> pClass,
                      Pointer<Utf16> szEvent,
                      int cchEvent,
                      Pointer<Uint32> pchEvent,
                      Pointer<Uint32> pdwEventFlags,
                      Pointer<Uint32> ptkEventType,
                      Pointer<Uint32> pmdAddOn,
                      Pointer<Uint32> pmdRemoveOn,
                      Pointer<Uint32> pmdFire,
                      Pointer<Uint32> rmdOtherMethod,
                      int cMax,
                      Pointer<Uint32> pcOtherMethod)>()(
          ptr.ref.lpVtbl,
          ev,
          pClass,
          szEvent,
          cchEvent,
          pchEvent,
          pdwEventFlags,
          ptkEventType,
          pmdAddOn,
          pmdRemoveOn,
          pmdFire,
          rmdOtherMethod,
          cMax,
          pcOtherMethod);

  int enumMethodSemantics(Pointer<Pointer> phEnum, int mb,
          Pointer<Uint32> rEventProp, int cMax, Pointer<Uint32> pcEventProp) =>
      ptr.ref.vtable
              .elementAt(35)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 mb,
                              Pointer<Uint32> rEventProp,
                              Uint32 cMax,
                              Pointer<Uint32> pcEventProp)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int mb,
                      Pointer<Uint32> rEventProp,
                      int cMax,
                      Pointer<Uint32> pcEventProp)>()(
          ptr.ref.lpVtbl, phEnum, mb, rEventProp, cMax, pcEventProp);

  int getMethodSemantics(
          int mb, int tkEventProp, Pointer<Uint32> pdwSemanticsFlags) =>
      ptr.ref.vtable
              .elementAt(36)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 mb, Uint32 tkEventProp,
                              Pointer<Uint32> pdwSemanticsFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int mb, int tkEventProp,
                      Pointer<Uint32> pdwSemanticsFlags)>()(
          ptr.ref.lpVtbl, mb, tkEventProp, pdwSemanticsFlags);

  int getClassLayout(
          int td,
          Pointer<Uint32> pdwPackSize,
          Pointer<COR_FIELD_OFFSET> rFieldOffset,
          int cMax,
          Pointer<Uint32> pcFieldOffset,
          Pointer<Uint32> pulClassSize) =>
      ptr.ref.vtable
              .elementAt(37)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 td,
                              Pointer<Uint32> pdwPackSize,
                              Pointer<COR_FIELD_OFFSET> rFieldOffset,
                              Uint32 cMax,
                              Pointer<Uint32> pcFieldOffset,
                              Pointer<Uint32> pulClassSize)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int td,
                      Pointer<Uint32> pdwPackSize,
                      Pointer<COR_FIELD_OFFSET> rFieldOffset,
                      int cMax,
                      Pointer<Uint32> pcFieldOffset,
                      Pointer<Uint32> pulClassSize)>()(ptr.ref.lpVtbl, td,
          pdwPackSize, rFieldOffset, cMax, pcFieldOffset, pulClassSize);

  int getFieldMarshal(int tk, Pointer<Pointer<Uint8>> ppvNativeType,
          Pointer<Uint32> pcbNativeType) =>
      ptr.ref.vtable
              .elementAt(38)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tk,
                              Pointer<Pointer<Uint8>> ppvNativeType,
                              Pointer<Uint32> pcbNativeType)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int tk,
                      Pointer<Pointer<Uint8>> ppvNativeType,
                      Pointer<Uint32> pcbNativeType)>()(
          ptr.ref.lpVtbl, tk, ppvNativeType, pcbNativeType);

  int getRVA(
          int tk, Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags) =>
      ptr.ref.vtable
              .elementAt(39)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tk,
                              Pointer<Uint32> pulCodeRVA,
                              Pointer<Uint32> pdwImplFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int tk, Pointer<Uint32> pulCodeRVA,
                      Pointer<Uint32> pdwImplFlags)>()(
          ptr.ref.lpVtbl, tk, pulCodeRVA, pdwImplFlags);

  int getPermissionSetProps(int pm, Pointer<Uint32> pdwAction,
          Pointer<Pointer> ppvPermission, Pointer<Uint32> pcbPermission) =>
      ptr.ref.vtable
              .elementAt(40)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 pm,
                              Pointer<Uint32> pdwAction,
                              Pointer<Pointer> ppvPermission,
                              Pointer<Uint32> pcbPermission)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int pm,
                      Pointer<Uint32> pdwAction,
                      Pointer<Pointer> ppvPermission,
                      Pointer<Uint32> pcbPermission)>()(
          ptr.ref.lpVtbl, pm, pdwAction, ppvPermission, pcbPermission);

  int getSigFromToken(
          int mdSig, Pointer<Pointer<Uint8>> ppvSig, Pointer<Uint32> pcbSig) =>
      ptr.ref.vtable
              .elementAt(41)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mdSig,
                              Pointer<Pointer<Uint8>> ppvSig,
                              Pointer<Uint32> pcbSig)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mdSig,
                      Pointer<Pointer<Uint8>> ppvSig,
                      Pointer<Uint32> pcbSig)>()(
          ptr.ref.lpVtbl, mdSig, ppvSig, pcbSig);

  int
      getModuleRefProps(int mur, Pointer<Utf16> szName, int cchName,
              Pointer<Uint32> pchName) =>
          ptr.ref.vtable
                  .elementAt(42)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Uint32 mur,
                                  Pointer<Utf16> szName,
                                  Uint32 cchName,
                                  Pointer<Uint32> pchName)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int mur, Pointer<Utf16> szName,
                          int cchName, Pointer<Uint32> pchName)>()(
              ptr.ref.lpVtbl, mur, szName, cchName, pchName);

  int enumModuleRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rModuleRefs,
          int cmax, Pointer<Uint32> pcModuleRefs) =>
      ptr.ref.vtable
              .elementAt(43)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rModuleRefs,
                              Uint32 cmax,
                              Pointer<Uint32> pcModuleRefs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rModuleRefs,
                      int cmax,
                      Pointer<Uint32> pcModuleRefs)>()(
          ptr.ref.lpVtbl, phEnum, rModuleRefs, cmax, pcModuleRefs);

  int getTypeSpecFromToken(int typespec, Pointer<Pointer<Uint8>> ppvSig,
          Pointer<Uint32> pcbSig) =>
      ptr.ref.vtable
              .elementAt(44)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 typespec,
                              Pointer<Pointer<Uint8>> ppvSig,
                              Pointer<Uint32> pcbSig)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int typespec,
                      Pointer<Pointer<Uint8>> ppvSig,
                      Pointer<Uint32> pcbSig)>()(
          ptr.ref.lpVtbl, typespec, ppvSig, pcbSig);

  int getNameFromToken(int tk, Pointer<Pointer<Int8>> pszUtf8NamePtr) => ptr
          .ref.vtable
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 tk,
                          Pointer<Pointer<Int8>> pszUtf8NamePtr)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, int tk, Pointer<Pointer<Int8>> pszUtf8NamePtr)>()(
      ptr.ref.lpVtbl, tk, pszUtf8NamePtr);

  int enumUnresolvedMethods(Pointer<Pointer> phEnum, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      ptr.ref.vtable
              .elementAt(46)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rMethods,
                              Uint32 cMax,
                              Pointer<Uint32> pcTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rMethods,
                      int cMax,
                      Pointer<Uint32> pcTokens)>()(
          ptr.ref.lpVtbl, phEnum, rMethods, cMax, pcTokens);

  int getUserString(int stk, Pointer<Utf16> szString, int cchString,
          Pointer<Uint32> pchString) =>
      ptr.ref.vtable
              .elementAt(47)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 stk,
                              Pointer<Utf16> szString,
                              Uint32 cchString,
                              Pointer<Uint32> pchString)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int stk, Pointer<Utf16> szString,
                      int cchString, Pointer<Uint32> pchString)>()(
          ptr.ref.lpVtbl, stk, szString, cchString, pchString);

  int getPinvokeMap(
          int tk,
          Pointer<Uint32> pdwMappingFlags,
          Pointer<Utf16> szImportName,
          int cchImportName,
          Pointer<Uint32> pchImportName,
          Pointer<Uint32> pmrImportDLL) =>
      ptr.ref.vtable
              .elementAt(48)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tk,
                              Pointer<Uint32> pdwMappingFlags,
                              Pointer<Utf16> szImportName,
                              Uint32 cchImportName,
                              Pointer<Uint32> pchImportName,
                              Pointer<Uint32> pmrImportDLL)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int tk,
                      Pointer<Uint32> pdwMappingFlags,
                      Pointer<Utf16> szImportName,
                      int cchImportName,
                      Pointer<Uint32> pchImportName,
                      Pointer<Uint32> pmrImportDLL)>()(
          ptr.ref.lpVtbl,
          tk,
          pdwMappingFlags,
          szImportName,
          cchImportName,
          pchImportName,
          pmrImportDLL);

  int enumSignatures(Pointer<Pointer> phEnum, Pointer<Uint32> rSignatures,
          int cmax, Pointer<Uint32> pcSignatures) =>
      ptr.ref.vtable
              .elementAt(49)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rSignatures,
                              Uint32 cmax,
                              Pointer<Uint32> pcSignatures)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rSignatures,
                      int cmax,
                      Pointer<Uint32> pcSignatures)>()(
          ptr.ref.lpVtbl, phEnum, rSignatures, cmax, pcSignatures);

  int enumTypeSpecs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeSpecs,
          int cmax, Pointer<Uint32> pcTypeSpecs) =>
      ptr.ref.vtable
              .elementAt(50)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rTypeSpecs,
                              Uint32 cmax,
                              Pointer<Uint32> pcTypeSpecs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rTypeSpecs,
                      int cmax,
                      Pointer<Uint32> pcTypeSpecs)>()(
          ptr.ref.lpVtbl, phEnum, rTypeSpecs, cmax, pcTypeSpecs);

  int enumUserStrings(Pointer<Pointer> phEnum, Pointer<Uint32> rStrings,
          int cmax, Pointer<Uint32> pcStrings) =>
      ptr.ref.vtable
              .elementAt(51)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Pointer<Uint32> rStrings,
                              Uint32 cmax,
                              Pointer<Uint32> pcStrings)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      Pointer<Uint32> rStrings,
                      int cmax,
                      Pointer<Uint32> pcStrings)>()(
          ptr.ref.lpVtbl, phEnum, rStrings, cmax, pcStrings);

  int getParamForMethodIndex(int md, int ulParamSeq, Pointer<Uint32> ppd) =>
      ptr.ref.vtable
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 md, Uint32 ulParamSeq,
                          Pointer<Uint32> ppd)>>>()
          .value
          .asFunction<
              int Function(Pointer, int md, int ulParamSeq,
                  Pointer<Uint32> ppd)>()(ptr.ref.lpVtbl, md, ulParamSeq, ppd);

  int enumCustomAttributes(
          Pointer<Pointer> phEnum,
          int tk,
          int tkType,
          Pointer<Uint32> rCustomAttributes,
          int cMax,
          Pointer<Uint32> pcCustomAttributes) =>
      ptr.ref.vtable
              .elementAt(53)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tk,
                              Uint32 tkType,
                              Pointer<Uint32> rCustomAttributes,
                              Uint32 cMax,
                              Pointer<Uint32> pcCustomAttributes)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tk,
                      int tkType,
                      Pointer<Uint32> rCustomAttributes,
                      int cMax,
                      Pointer<Uint32> pcCustomAttributes)>()(ptr.ref.lpVtbl,
          phEnum, tk, tkType, rCustomAttributes, cMax, pcCustomAttributes);

  int getCustomAttributeProps(
          int cv,
          Pointer<Uint32> ptkObj,
          Pointer<Uint32> ptkType,
          Pointer<Pointer> ppBlob,
          Pointer<Uint32> pcbSize) =>
      ptr.ref.vtable
              .elementAt(54)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 cv,
                              Pointer<Uint32> ptkObj,
                              Pointer<Uint32> ptkType,
                              Pointer<Pointer> ppBlob,
                              Pointer<Uint32> pcbSize)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int cv,
                      Pointer<Uint32> ptkObj,
                      Pointer<Uint32> ptkType,
                      Pointer<Pointer> ppBlob,
                      Pointer<Uint32> pcbSize)>()(
          ptr.ref.lpVtbl, cv, ptkObj, ptkType, ppBlob, pcbSize);

  int findTypeRef(
          int tkResolutionScope, Pointer<Utf16> szName, Pointer<Uint32> ptr_) =>
      ptr.ref.vtable
              .elementAt(55)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 tkResolutionScope,
                              Pointer<Utf16> szName, Pointer<Uint32> ptr_)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int tkResolutionScope,
                      Pointer<Utf16> szName, Pointer<Uint32> ptr_)>()(
          ptr.ref.lpVtbl, tkResolutionScope, szName, ptr_);

  int getMemberProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      ptr.ref.vtable
              .elementAt(56)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mb,
                              Pointer<Uint32> pClass,
                              Pointer<Utf16> szMember,
                              Uint32 cchMember,
                              Pointer<Uint32> pchMember,
                              Pointer<Uint32> pdwAttr,
                              Pointer<Pointer<Uint8>> ppvSigBlob,
                              Pointer<Uint32> pcbSigBlob,
                              Pointer<Uint32> pulCodeRVA,
                              Pointer<Uint32> pdwImplFlags,
                              Pointer<Uint32> pdwCPlusTypeFlag,
                              Pointer<Pointer> ppValue,
                              Pointer<Uint32> pcchValue)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mb,
                      Pointer<Uint32> pClass,
                      Pointer<Utf16> szMember,
                      int cchMember,
                      Pointer<Uint32> pchMember,
                      Pointer<Uint32> pdwAttr,
                      Pointer<Pointer<Uint8>> ppvSigBlob,
                      Pointer<Uint32> pcbSigBlob,
                      Pointer<Uint32> pulCodeRVA,
                      Pointer<Uint32> pdwImplFlags,
                      Pointer<Uint32> pdwCPlusTypeFlag,
                      Pointer<Pointer> ppValue,
                      Pointer<Uint32> pcchValue)>()(
          ptr.ref.lpVtbl,
          mb,
          pClass,
          szMember,
          cchMember,
          pchMember,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getFieldProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szField,
          int cchField,
          Pointer<Uint32> pchField,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      ptr.ref.vtable
              .elementAt(57)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mb,
                              Pointer<Uint32> pClass,
                              Pointer<Utf16> szField,
                              Uint32 cchField,
                              Pointer<Uint32> pchField,
                              Pointer<Uint32> pdwAttr,
                              Pointer<Pointer<Uint8>> ppvSigBlob,
                              Pointer<Uint32> pcbSigBlob,
                              Pointer<Uint32> pdwCPlusTypeFlag,
                              Pointer<Pointer> ppValue,
                              Pointer<Uint32> pcchValue)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mb,
                      Pointer<Uint32> pClass,
                      Pointer<Utf16> szField,
                      int cchField,
                      Pointer<Uint32> pchField,
                      Pointer<Uint32> pdwAttr,
                      Pointer<Pointer<Uint8>> ppvSigBlob,
                      Pointer<Uint32> pcbSigBlob,
                      Pointer<Uint32> pdwCPlusTypeFlag,
                      Pointer<Pointer> ppValue,
                      Pointer<Uint32> pcchValue)>()(
          ptr.ref.lpVtbl,
          mb,
          pClass,
          szField,
          cchField,
          pchField,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getPropertyProps(
          int prop,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szProperty,
          int cchProperty,
          Pointer<Uint32> pchProperty,
          Pointer<Uint32> pdwPropFlags,
          Pointer<Pointer<Uint8>> ppvSig,
          Pointer<Uint32> pbSig,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppDefaultValue,
          Pointer<Uint32> pcchDefaultValue,
          Pointer<Uint32> pmdSetter,
          Pointer<Uint32> pmdGetter,
          Pointer<Uint32> rmdOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      ptr.ref.vtable
              .elementAt(58)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 prop,
                              Pointer<Uint32> pClass,
                              Pointer<Utf16> szProperty,
                              Uint32 cchProperty,
                              Pointer<Uint32> pchProperty,
                              Pointer<Uint32> pdwPropFlags,
                              Pointer<Pointer<Uint8>> ppvSig,
                              Pointer<Uint32> pbSig,
                              Pointer<Uint32> pdwCPlusTypeFlag,
                              Pointer<Pointer> ppDefaultValue,
                              Pointer<Uint32> pcchDefaultValue,
                              Pointer<Uint32> pmdSetter,
                              Pointer<Uint32> pmdGetter,
                              Pointer<Uint32> rmdOtherMethod,
                              Uint32 cMax,
                              Pointer<Uint32> pcOtherMethod)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int prop,
                      Pointer<Uint32> pClass,
                      Pointer<Utf16> szProperty,
                      int cchProperty,
                      Pointer<Uint32> pchProperty,
                      Pointer<Uint32> pdwPropFlags,
                      Pointer<Pointer<Uint8>> ppvSig,
                      Pointer<Uint32> pbSig,
                      Pointer<Uint32> pdwCPlusTypeFlag,
                      Pointer<Pointer> ppDefaultValue,
                      Pointer<Uint32> pcchDefaultValue,
                      Pointer<Uint32> pmdSetter,
                      Pointer<Uint32> pmdGetter,
                      Pointer<Uint32> rmdOtherMethod,
                      int cMax,
                      Pointer<Uint32> pcOtherMethod)>()(
          ptr.ref.lpVtbl, prop, pClass, szProperty, cchProperty, pchProperty, pdwPropFlags, ppvSig, pbSig, pdwCPlusTypeFlag, ppDefaultValue, pcchDefaultValue, pmdSetter, pmdGetter, rmdOtherMethod, cMax, pcOtherMethod);

  int getParamProps(
          int tk,
          Pointer<Uint32> pmd,
          Pointer<Uint32> pulSequence,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      ptr.ref.vtable
              .elementAt(59)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tk,
                              Pointer<Uint32> pmd,
                              Pointer<Uint32> pulSequence,
                              Pointer<Utf16> szName,
                              Uint32 cchName,
                              Pointer<Uint32> pchName,
                              Pointer<Uint32> pdwAttr,
                              Pointer<Uint32> pdwCPlusTypeFlag,
                              Pointer<Pointer> ppValue,
                              Pointer<Uint32> pcchValue)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int tk,
                      Pointer<Uint32> pmd,
                      Pointer<Uint32> pulSequence,
                      Pointer<Utf16> szName,
                      int cchName,
                      Pointer<Uint32> pchName,
                      Pointer<Uint32> pdwAttr,
                      Pointer<Uint32> pdwCPlusTypeFlag,
                      Pointer<Pointer> ppValue,
                      Pointer<Uint32> pcchValue)>()(
          ptr.ref.lpVtbl,
          tk,
          pmd,
          pulSequence,
          szName,
          cchName,
          pchName,
          pdwAttr,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getCustomAttributeByName(int tkObj, Pointer<Utf16> szName,
          Pointer<Pointer> ppData, Pointer<Uint32> pcbData) =>
      ptr.ref.vtable
              .elementAt(60)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 tkObj,
                              Pointer<Utf16> szName,
                              Pointer<Pointer> ppData,
                              Pointer<Uint32> pcbData)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int tkObj, Pointer<Utf16> szName,
                      Pointer<Pointer> ppData, Pointer<Uint32> pcbData)>()(
          ptr.ref.lpVtbl, tkObj, szName, ppData, pcbData);

  int isValidToken(int tk) => ptr.ref.vtable
      .elementAt(61)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 tk)>>>()
      .value
      .asFunction<int Function(Pointer, int tk)>()(ptr.ref.lpVtbl, tk);

  int getNestedClassProps(
          int tdNestedClass, Pointer<Uint32> ptdEnclosingClass) =>
      ptr.ref.vtable
              .elementAt(62)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 tdNestedClass,
                              Pointer<Uint32> ptdEnclosingClass)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int tdNestedClass,
                      Pointer<Uint32> ptdEnclosingClass)>()(
          ptr.ref.lpVtbl, tdNestedClass, ptdEnclosingClass);

  int getNativeCallConvFromSig(
          Pointer pvSig, int cbSig, Pointer<Uint32> pCallConv) =>
      ptr.ref.vtable
              .elementAt(63)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer pvSig, Uint32 cbSig,
                              Pointer<Uint32> pCallConv)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer pvSig, int cbSig,
                      Pointer<Uint32> pCallConv)>()(
          ptr.ref.lpVtbl, pvSig, cbSig, pCallConv);

  int isGlobal(int pd, Pointer<Int32> pbGlobal) => ptr.ref.vtable
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 pd, Pointer<Int32> pbGlobal)>>>()
          .value
          .asFunction<int Function(Pointer, int pd, Pointer<Int32> pbGlobal)>()(
      ptr.ref.lpVtbl, pd, pbGlobal);
}
