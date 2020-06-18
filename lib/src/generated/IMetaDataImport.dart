// IMetaDataImport.dart

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

const IID_IMetaDataImport = '{7DAC8207-D3AE-4C75-9B67-92801A497D44}';

typedef CloseEnum_Native = Int32 Function(Pointer obj, IntPtr hEnum);
typedef CloseEnum_Dart = int Function(Pointer obj, int hEnum);

typedef CountEnum_Native = Int32 Function(
    Pointer obj, IntPtr hEnum, Pointer<Uint32> pulCount);
typedef CountEnum_Dart = int Function(
    Pointer obj, int hEnum, Pointer<Uint32> pulCount);

typedef ResetEnum_Native = Int32 Function(
    Pointer obj, IntPtr hEnum, Uint32 ulPos);
typedef ResetEnum_Dart = int Function(Pointer obj, int hEnum, int ulPos);

typedef EnumTypeDefs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeDefs,
    Uint32 cMax,
    Pointer<Uint32> pcTypeDefs);
typedef EnumTypeDefs_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeDefs, int cMax, Pointer<Uint32> pcTypeDefs);

typedef EnumInterfaceImpls_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 td,
    Pointer<Uint32> rImpls,
    Uint32 cMax,
    Pointer<Uint32> pcImpls);
typedef EnumInterfaceImpls_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int td,
    Pointer<Uint32> rImpls,
    int cMax,
    Pointer<Uint32> pcImpls);

typedef EnumTypeRefs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeRefs,
    Uint32 cMax,
    Pointer<Uint32> pcTypeRefs);
typedef EnumTypeRefs_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeRefs, int cMax, Pointer<Uint32> pcTypeRefs);

typedef FindTypeDefByName_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szTypeDef,
    Uint32 tkEnclosingClass,
    Pointer<Uint32> ptkTypeDef);
typedef FindTypeDefByName_Dart = int Function(Pointer obj,
    Pointer<Utf16> szTypeDef, int tkEnclosingClass, Pointer<Uint32> ptkTypeDef);

typedef GetScopeProps_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<GUID> pmvid);
typedef GetScopeProps_Dart = int Function(Pointer obj, Pointer<Utf16> szName,
    int cchName, Pointer<Uint32> pchName, Pointer<GUID> pmvid);

typedef GetModuleFromScope_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> ptkModule);
typedef GetModuleFromScope_Dart = int Function(
    Pointer obj, Pointer<Uint32> ptkModule);

typedef GetTypeDefProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeDef,
    Pointer<Utf16> szTypeDef,
    Uint32 cchTypeDef,
    Pointer<Uint32> pchTypeDef,
    Pointer<Uint32> pdwTypeDefFlags,
    Pointer<Uint32> ptkExtends);
typedef GetTypeDefProps_Dart = int Function(
    Pointer obj,
    int tkTypeDef,
    Pointer<Utf16> szTypeDef,
    int cchTypeDef,
    Pointer<Uint32> pchTypeDef,
    Pointer<Uint32> pdwTypeDefFlags,
    Pointer<Uint32> ptkExtends);

typedef GetInterfaceImplProps_Native = Int32 Function(Pointer obj,
    Uint32 tkInterfaceImpl, Pointer<Uint32> ptkClass, Pointer<Uint32> ptkIface);
typedef GetInterfaceImplProps_Dart = int Function(Pointer obj,
    int tkInterfaceImpl, Pointer<Uint32> ptkClass, Pointer<Uint32> ptkIface);

typedef GetTypeRefProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeRef,
    Pointer<Uint32> ptkResolutionScope,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName);
typedef GetTypeRefProps_Dart = int Function(
    Pointer obj,
    int tkTypeRef,
    Pointer<Uint32> ptkResolutionScope,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName);

typedef ResolveTypeRef_Native = Int32 Function(Pointer obj, Uint32 tkTypeRef,
    Pointer<GUID> riid, Pointer<IntPtr> ppIScope, Pointer<Uint32> ptkTypeDef);
typedef ResolveTypeRef_Dart = int Function(Pointer obj, int tkTypeRef,
    Pointer<GUID> riid, Pointer<IntPtr> ppIScope, Pointer<Uint32> ptkTypeDef);

typedef EnumMembers_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Uint32> rgMembers,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMembers_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Uint32> rgMembers,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumMembersWithName_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rgMembers,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMembersWithName_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rgMembers,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumMethods_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Uint32> rgMethods,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMethods_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Uint32> rgMethods,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumMethodsWithName_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rgMethods,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMethodsWithName_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rgMethods,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumFields_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Uint32> rgFields,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumFields_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Uint32> rgFields,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumFieldsWithName_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rFields,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumFieldsWithName_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint32> rFields,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumParams_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkMethodDef,
    Pointer<Uint32> rParams,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumParams_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkMethodDef,
    Pointer<Uint32> rParams,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumMemberRefs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkParent,
    Pointer<Uint32> rgMemberRefs,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMemberRefs_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkParent,
    Pointer<Uint32> rgMemberRefs,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumMethodImpls_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypeDef,
    Pointer<Uint32> rMethodBody,
    Pointer<Uint32> rMethodDecl,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumMethodImpls_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypeDef,
    Pointer<Uint32> rMethodBody,
    Pointer<Uint32> rMethodDecl,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef EnumPermissionSets_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tk,
    Uint32 dwActions,
    Pointer<Uint32> rPermission,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumPermissionSets_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tk,
    int dwActions,
    Pointer<Uint32> rPermission,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef FindMember_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    Uint32 cbSigBlob,
    Pointer<Uint32> pmb);
typedef FindMember_Dart = int Function(
    Pointer obj,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    int cbSigBlob,
    Pointer<Uint32> pmb);

typedef FindMethod_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    Uint32 cbSigBlob,
    Pointer<Uint32> ptkMethodDef);
typedef FindMethod_Dart = int Function(
    Pointer obj,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    int cbSigBlob,
    Pointer<Uint32> ptkMethodDef);

typedef FindField_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    Uint32 cbSigBlob,
    Pointer<Uint32> ptkFieldDef);
typedef FindField_Dart = int Function(
    Pointer obj,
    int tkTypeDef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    int cbSigBlob,
    Pointer<Uint32> ptkFieldDef);

typedef FindMemberRef_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeRef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    Uint32 cbSigBlob,
    Pointer<Uint32> pMemberRef);
typedef FindMemberRef_Dart = int Function(
    Pointer obj,
    int tkTypeRef,
    Pointer<Utf16> szName,
    Pointer<Uint8> pvSigBlob,
    int cbSigBlob,
    Pointer<Uint32> pMemberRef);

typedef GetMethodProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkMethodDef,
    Pointer<Uint32> ptkClass,
    Pointer<Utf16> szMethod,
    Uint32 cchMethod,
    Pointer<Uint32> pchMethod,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pulCodeRVA,
    Pointer<Uint32> pdwImplFlags);
typedef GetMethodProps_Dart = int Function(
    Pointer obj,
    int tkMethodDef,
    Pointer<Uint32> ptkClass,
    Pointer<Utf16> szMethod,
    int cchMethod,
    Pointer<Uint32> pchMethod,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pulCodeRVA,
    Pointer<Uint32> pdwImplFlags);

typedef GetMemberRefProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkMemberRef,
    Pointer<Uint32> ptk,
    Pointer<Utf16> szMember,
    Uint32 cchMember,
    Pointer<Uint32> pchMember,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob);
typedef GetMemberRefProps_Dart = int Function(
    Pointer obj,
    int tkMemberRef,
    Pointer<Uint32> ptk,
    Pointer<Utf16> szMember,
    int cchMember,
    Pointer<Uint32> pchMember,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob);

typedef EnumProperties_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypDef,
    Pointer<Uint32> rgProperties,
    Uint32 cMax,
    Pointer<Uint32> pcProperties);
typedef EnumProperties_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkTypDef,
    Pointer<Uint32> rgProperties,
    int cMax,
    Pointer<Uint32> pcProperties);

typedef EnumEvents_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkTypDef,
    Pointer<Uint32> rgEvents,
    Uint32 cMax,
    Pointer<Uint32> pcEvents);
typedef EnumEvents_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    int tkTypDef, Pointer<Uint32> rgEvents, int cMax, Pointer<Uint32> pcEvents);

typedef GetEventProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkEvent,
    Pointer<Uint32> ptkClass,
    Pointer<Utf16> szEvent,
    Uint32 cchEvent,
    Pointer<Uint32> pchEvent,
    Pointer<Uint32> pdwEventFlags,
    Pointer<Uint32> ptkEventType,
    Pointer<Uint32> ptkAddOn,
    Pointer<Uint32> ptkRemoveOn,
    Pointer<Uint32> tkkFire,
    Pointer<Uint32> rgOtherMethod,
    Uint32 cMax,
    Pointer<Uint32> pcOtherMethod);
typedef GetEventProps_Dart = int Function(
    Pointer obj,
    int tkEvent,
    Pointer<Uint32> ptkClass,
    Pointer<Utf16> szEvent,
    int cchEvent,
    Pointer<Uint32> pchEvent,
    Pointer<Uint32> pdwEventFlags,
    Pointer<Uint32> ptkEventType,
    Pointer<Uint32> ptkAddOn,
    Pointer<Uint32> ptkRemoveOn,
    Pointer<Uint32> tkkFire,
    Pointer<Uint32> rgOtherMethod,
    int cMax,
    Pointer<Uint32> pcOtherMethod);

typedef EnumMethodSemantics_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tkMethodDef,
    Pointer<Uint32> rgEventProp,
    Uint32 cMax,
    Pointer<Uint32> pcEventProp);
typedef EnumMethodSemantics_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tkMethodDef,
    Pointer<Uint32> rgEventProp,
    int cMax,
    Pointer<Uint32> pcEventProp);

typedef GetMethodSemantics_Native = Int32 Function(Pointer obj,
    Uint32 tkMethodDef, Uint32 tkEventProp, Pointer<Uint32> pdwSemanticsFlags);
typedef GetMethodSemantics_Dart = int Function(Pointer obj, int tkMethodDef,
    int tkEventProp, Pointer<Uint32> pdwSemanticsFlags);

typedef GetClassLayout_Native = Int32 Function(
    Pointer obj,
    Uint32 tkTypeDef,
    Pointer<Uint32> pdwPackSize,
    Pointer<COR_FIELD_OFFSET> rgFieldOffset,
    Uint32 cMax,
    Pointer<Uint32> pcFieldOffset,
    Pointer<Uint32> pulClassSize);
typedef GetClassLayout_Dart = int Function(
    Pointer obj,
    int tkTypeDef,
    Pointer<Uint32> pdwPackSize,
    Pointer<COR_FIELD_OFFSET> rgFieldOffset,
    int cMax,
    Pointer<Uint32> pcFieldOffset,
    Pointer<Uint32> pulClassSize);

typedef GetFieldMarshal_Native = Int32 Function(Pointer obj, Uint32 tk,
    Pointer<Uint8> ppvNativeType, Pointer<Uint32> pcbNativeType);
typedef GetFieldMarshal_Dart = int Function(Pointer obj, int tk,
    Pointer<Uint8> ppvNativeType, Pointer<Uint32> pcbNativeType);

typedef GetRVA_Native = Int32 Function(Pointer obj, Uint32 tk,
    Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags);
typedef GetRVA_Dart = int Function(Pointer obj, int tk,
    Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags);

typedef GetPermissionSetProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tk,
    Pointer<Uint32> pdwAction,
    Pointer<IntPtr> ppvPermission,
    Pointer<Uint32> pcbPermission);
typedef GetPermissionSetProps_Dart = int Function(
    Pointer obj,
    int tk,
    Pointer<Uint32> pdwAction,
    Pointer<IntPtr> ppvPermission,
    Pointer<Uint32> pcbPermission);

typedef GetSigFromToken_Native = Int32 Function(Pointer obj, Uint32 tkSignature,
    Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig);
typedef GetSigFromToken_Dart = int Function(Pointer obj, int tkSignature,
    Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig);

typedef GetModuleRefProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkModuleRef,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName);
typedef GetModuleRefProps_Dart = int Function(Pointer obj, int tkModuleRef,
    Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName);

typedef EnumModuleRefs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgModuleRefs,
    Uint32 cMax,
    Pointer<Uint32> pcModuleRefs);
typedef EnumModuleRefs_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgModuleRefs, int cMax, Pointer<Uint32> pcModuleRefs);

typedef GetTypeSpecFromToken_Native = Int32 Function(Pointer obj,
    Uint32 tkTypeSpec, Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig);
typedef GetTypeSpecFromToken_Dart = int Function(
    Pointer obj, int tkTypeSpec, Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig);

typedef GetNameFromToken_Native = Int32 Function(
    Pointer obj, Uint32 tk, Pointer<Uint8> pszUtf8NamePtr);
typedef GetNameFromToken_Dart = int Function(
    Pointer obj, int tk, Pointer<Uint8> pszUtf8NamePtr);

typedef EnumUnresolvedMethods_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgMethods,
    Uint32 cMax,
    Pointer<Uint32> pcTokens);
typedef EnumUnresolvedMethods_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgMethods,
    int cMax,
    Pointer<Uint32> pcTokens);

typedef GetUserString_Native = Int32 Function(Pointer obj, Uint32 tkString,
    Pointer<Utf16> szString, Uint32 cchString, Pointer<Uint32> pchString);
typedef GetUserString_Dart = int Function(Pointer obj, int tkString,
    Pointer<Utf16> szString, int cchString, Pointer<Uint32> pchString);

typedef GetPinvokeMap_Native = Int32 Function(
    Pointer obj,
    Uint32 tk,
    Pointer<Uint32> pdwMappingFlags,
    Pointer<Utf16> szImportName,
    Uint32 cchImportName,
    Pointer<Uint32> pchImportName,
    Pointer<Uint32> ptkImportDLL);
typedef GetPinvokeMap_Dart = int Function(
    Pointer obj,
    int tk,
    Pointer<Uint32> pdwMappingFlags,
    Pointer<Utf16> szImportName,
    int cchImportName,
    Pointer<Uint32> pchImportName,
    Pointer<Uint32> ptkImportDLL);

typedef EnumSignatures_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgSignatures,
    Uint32 cMax,
    Pointer<Uint32> pcSignatures);
typedef EnumSignatures_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgSignatures, int cMax, Pointer<Uint32> pcSignatures);

typedef EnumTypeSpecs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeSpecs,
    Uint32 cMax,
    Pointer<Uint32> pcTypeSpecs);
typedef EnumTypeSpecs_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgTypeSpecs, int cMax, Pointer<Uint32> pcTypeSpecs);

typedef EnumUserStrings_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgStrings,
    Uint32 cMax,
    Pointer<Uint32> pcStrings);
typedef EnumUserStrings_Dart = int Function(Pointer obj, Pointer<IntPtr> phEnum,
    Pointer<Uint32> rgStrings, int cMax, Pointer<Uint32> pcStrings);

typedef GetParamForMethodIndex_Native = Int32 Function(Pointer obj,
    Uint32 tkMethodDef, Uint32 ulParamSeq, Pointer<Uint32> ptkParamDef);
typedef GetParamForMethodIndex_Dart = int Function(
    Pointer obj, int tkMethodDef, int ulParamSeq, Pointer<Uint32> ptkParamDef);

typedef EnumCustomAttributes_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tk,
    Uint32 tkType,
    Pointer<Uint32> rgCustomAttributes,
    Uint32 cMax,
    Pointer<Uint32> pcCustomAttributes);
typedef EnumCustomAttributes_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tk,
    int tkType,
    Pointer<Uint32> rgCustomAttributes,
    int cMax,
    Pointer<Uint32> pcCustomAttributes);

typedef GetCustomAttributeProps_Native = Int32 Function(
    Pointer obj,
    Uint32 cv,
    Pointer<Uint32> ptkObj,
    Pointer<Uint32> ptkType,
    Pointer<IntPtr> ppBlob,
    Pointer<Uint32> pcbBlob);
typedef GetCustomAttributeProps_Dart = int Function(
    Pointer obj,
    int cv,
    Pointer<Uint32> ptkObj,
    Pointer<Uint32> ptkType,
    Pointer<IntPtr> ppBlob,
    Pointer<Uint32> pcbBlob);

typedef FindTypeRef_Native = Int32 Function(Pointer obj,
    Uint32 tkResolutionScope, Pointer<Utf16> szName, Pointer<Uint32> tkTypeRef);
typedef FindTypeRef_Dart = int Function(Pointer obj, int tkResolutionScope,
    Pointer<Utf16> szName, Pointer<Uint32> tkTypeRef);

typedef GetMemberProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkMember,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szMember,
    Uint32 cchMember,
    Pointer<Uint32> pchMember,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pulCodeRVA,
    Pointer<Uint32> pdwImplFlags,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);
typedef GetMemberProps_Dart = int Function(
    Pointer obj,
    int tkMember,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szMember,
    int cchMember,
    Pointer<Uint32> pchMember,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pulCodeRVA,
    Pointer<Uint32> pdwImplFlags,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);

typedef GetFieldProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkFieldDef,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szField,
    Uint32 cchField,
    Pointer<Uint32> pchField,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);
typedef GetFieldProps_Dart = int Function(
    Pointer obj,
    int tkFieldDef,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szField,
    int cchField,
    Pointer<Uint32> pchField,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);

typedef GetPropertyProps_Native = Int32 Function(
    Pointer obj,
    Uint32 prop,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szProperty,
    Uint32 cchProperty,
    Pointer<Uint32> pchProperty,
    Pointer<Uint32> pdwPropFlags,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppDefaultValue,
    Pointer<Uint32> pcchDefaultValue,
    Pointer<Uint32> ptkSetter,
    Pointer<Uint32> ptkGetter,
    Pointer<Uint32> rgOtherMethod,
    Uint32 cMax,
    Pointer<Uint32> pcOtherMethod);
typedef GetPropertyProps_Dart = int Function(
    Pointer obj,
    int prop,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Utf16> szProperty,
    int cchProperty,
    Pointer<Uint32> pchProperty,
    Pointer<Uint32> pdwPropFlags,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppDefaultValue,
    Pointer<Uint32> pcchDefaultValue,
    Pointer<Uint32> ptkSetter,
    Pointer<Uint32> ptkGetter,
    Pointer<Uint32> rgOtherMethod,
    int cMax,
    Pointer<Uint32> pcOtherMethod);

typedef GetParamProps_Native = Int32 Function(
    Pointer obj,
    Uint32 tkParamDef,
    Pointer<Uint32> ptkMethodDef,
    Pointer<Uint32> pulSequence,
    Pointer<Utf16> szName,
    Uint32 cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);
typedef GetParamProps_Dart = int Function(
    Pointer obj,
    int tkParamDef,
    Pointer<Uint32> ptkMethodDef,
    Pointer<Uint32> pulSequence,
    Pointer<Utf16> szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> pdwAttr,
    Pointer<Uint32> pdwCPlusTypeFlag,
    Pointer<Uint8> ppValue,
    Pointer<Uint32> pcchValue);

typedef GetCustomAttributeByName_Native = Int32 Function(
    Pointer obj,
    Uint32 tkObj,
    Pointer<Utf16> szName,
    Pointer<IntPtr> ppData,
    Pointer<Uint32> pcbData);
typedef GetCustomAttributeByName_Dart = int Function(Pointer obj, int tkObj,
    Pointer<Utf16> szName, Pointer<IntPtr> ppData, Pointer<Uint32> pcbData);

typedef IsValidToken_Native = Int32 Function(Pointer obj, Uint32 tk);
typedef IsValidToken_Dart = int Function(Pointer obj, int tk);

typedef GetNestedClassProps_Native = Int32 Function(
    Pointer obj, Uint32 tdNestedClass, Pointer<Uint32> ptdEnclosingClass);
typedef GetNestedClassProps_Dart = int Function(
    Pointer obj, int tdNestedClass, Pointer<Uint32> ptdEnclosingClass);

typedef GetNativeCallConvFromSig_Native = Int32 Function(
    Pointer obj, Pointer<Uint8> pvSig, Uint32 cbSig, Pointer<Uint32> pCallConv);
typedef GetNativeCallConvFromSig_Dart = int Function(
    Pointer obj, Pointer<Uint8> pvSig, int cbSig, Pointer<Uint32> pCallConv);

typedef IsGlobal_Native = Int32 Function(
    Pointer obj, Uint32 tk, Pointer<Int32> pbIsGlobal);
typedef IsGlobal_Dart = int Function(
    Pointer obj, int tk, Pointer<Int32> pbIsGlobal);

class IMetaDataImport extends IUnknown {
  // vtable begins at 3, ends at 64

  @override
  Pointer<COMObject> ptr;

  IMetaDataImport(this.ptr) : super(ptr);

  int CloseEnum(int hEnum) =>
      Pointer<NativeFunction<CloseEnum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<CloseEnum_Dart>()(ptr.ref.lpVtbl, hEnum);

  int CountEnum(int hEnum, Pointer<Uint32> pulCount) =>
      Pointer<NativeFunction<CountEnum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<CountEnum_Dart>()(ptr.ref.lpVtbl, hEnum, pulCount);

  int ResetEnum(int hEnum, int ulPos) =>
      Pointer<NativeFunction<ResetEnum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<ResetEnum_Dart>()(ptr.ref.lpVtbl, hEnum, ulPos);

  int EnumTypeDefs(Pointer<IntPtr> phEnum, Pointer<Uint32> rgTypeDefs, int cMax,
          Pointer<Uint32> pcTypeDefs) =>
      Pointer<NativeFunction<EnumTypeDefs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<EnumTypeDefs_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgTypeDefs, cMax, pcTypeDefs);

  int EnumInterfaceImpls(Pointer<IntPtr> phEnum, int td, Pointer<Uint32> rImpls,
          int cMax, Pointer<Uint32> pcImpls) =>
      Pointer<NativeFunction<EnumInterfaceImpls_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<EnumInterfaceImpls_Dart>()(
          ptr.ref.lpVtbl, phEnum, td, rImpls, cMax, pcImpls);

  int EnumTypeRefs(Pointer<IntPtr> phEnum, Pointer<Uint32> rgTypeRefs, int cMax,
          Pointer<Uint32> pcTypeRefs) =>
      Pointer<NativeFunction<EnumTypeRefs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<EnumTypeRefs_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgTypeRefs, cMax, pcTypeRefs);

  int FindTypeDefByName(Pointer<Utf16> szTypeDef, int tkEnclosingClass,
          Pointer<Uint32> ptkTypeDef) =>
      Pointer<NativeFunction<FindTypeDefByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<FindTypeDefByName_Dart>()(
          ptr.ref.lpVtbl, szTypeDef, tkEnclosingClass, ptkTypeDef);

  int GetScopeProps(Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName,
          Pointer<GUID> pmvid) =>
      Pointer<NativeFunction<GetScopeProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<GetScopeProps_Dart>()(
          ptr.ref.lpVtbl, szName, cchName, pchName, pmvid);

  int GetModuleFromScope(Pointer<Uint32> ptkModule) =>
      Pointer<NativeFunction<GetModuleFromScope_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<GetModuleFromScope_Dart>()(ptr.ref.lpVtbl, ptkModule);

  int GetTypeDefProps(
          int tkTypeDef,
          Pointer<Utf16> szTypeDef,
          int cchTypeDef,
          Pointer<Uint32> pchTypeDef,
          Pointer<Uint32> pdwTypeDefFlags,
          Pointer<Uint32> ptkExtends) =>
      Pointer<NativeFunction<GetTypeDefProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<GetTypeDefProps_Dart>()(ptr.ref.lpVtbl, tkTypeDef,
          szTypeDef, cchTypeDef, pchTypeDef, pdwTypeDefFlags, ptkExtends);

  int GetInterfaceImplProps(int tkInterfaceImpl, Pointer<Uint32> ptkClass,
          Pointer<Uint32> ptkIface) =>
      Pointer<NativeFunction<GetInterfaceImplProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<GetInterfaceImplProps_Dart>()(
          ptr.ref.lpVtbl, tkInterfaceImpl, ptkClass, ptkIface);

  int GetTypeRefProps(int tkTypeRef, Pointer<Uint32> ptkResolutionScope,
          Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName) =>
      Pointer<NativeFunction<GetTypeRefProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<GetTypeRefProps_Dart>()(ptr.ref.lpVtbl, tkTypeRef,
          ptkResolutionScope, szName, cchName, pchName);

  int ResolveTypeRef(int tkTypeRef, Pointer<GUID> riid,
          Pointer<IntPtr> ppIScope, Pointer<Uint32> ptkTypeDef) =>
      Pointer<NativeFunction<ResolveTypeRef_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<ResolveTypeRef_Dart>()(
          ptr.ref.lpVtbl, tkTypeRef, riid, ppIScope, ptkTypeDef);

  int EnumMembers(Pointer<IntPtr> phEnum, int tkTypeDef,
          Pointer<Uint32> rgMembers, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMembers_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<EnumMembers_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, rgMembers, cMax, pcTokens);

  int EnumMembersWithName(
          Pointer<IntPtr> phEnum,
          int tkTypeDef,
          Pointer<Utf16> szName,
          Pointer<Uint32> rgMembers,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMembersWithName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<EnumMembersWithName_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, szName, rgMembers, cMax, pcTokens);

  int EnumMethods(Pointer<IntPtr> phEnum, int tkTypeDef,
          Pointer<Uint32> rgMethods, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMethods_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<EnumMethods_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, rgMethods, cMax, pcTokens);

  int EnumMethodsWithName(
          Pointer<IntPtr> phEnum,
          int tkTypeDef,
          Pointer<Utf16> szName,
          Pointer<Uint32> rgMethods,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMethodsWithName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<EnumMethodsWithName_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, szName, rgMethods, cMax, pcTokens);

  int EnumFields(Pointer<IntPtr> phEnum, int tkTypeDef,
          Pointer<Uint32> rgFields, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumFields_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<EnumFields_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, rgFields, cMax, pcTokens);

  int EnumFieldsWithName(
          Pointer<IntPtr> phEnum,
          int tkTypeDef,
          Pointer<Utf16> szName,
          Pointer<Uint32> rFields,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumFieldsWithName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<EnumFieldsWithName_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypeDef, szName, rFields, cMax, pcTokens);

  int EnumParams(Pointer<IntPtr> phEnum, int tkMethodDef,
          Pointer<Uint32> rParams, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumParams_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<EnumParams_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkMethodDef, rParams, cMax, pcTokens);

  int EnumMemberRefs(Pointer<IntPtr> phEnum, int tkParent,
          Pointer<Uint32> rgMemberRefs, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMemberRefs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<EnumMemberRefs_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkParent, rgMemberRefs, cMax, pcTokens);

  int EnumMethodImpls(
          Pointer<IntPtr> phEnum,
          int tkTypeDef,
          Pointer<Uint32> rMethodBody,
          Pointer<Uint32> rMethodDecl,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumMethodImpls_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(24).value)
              .asFunction<EnumMethodImpls_Dart>()(ptr.ref.lpVtbl, phEnum,
          tkTypeDef, rMethodBody, rMethodDecl, cMax, pcTokens);

  int EnumPermissionSets(Pointer<IntPtr> phEnum, int tk, int dwActions,
          Pointer<Uint32> rPermission, int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumPermissionSets_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<EnumPermissionSets_Dart>()(
          ptr.ref.lpVtbl, phEnum, tk, dwActions, rPermission, cMax, pcTokens);

  int FindMember(int tkTypeDef, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      Pointer<NativeFunction<FindMember_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<FindMember_Dart>()(
          ptr.ref.lpVtbl, tkTypeDef, szName, pvSigBlob, cbSigBlob, pmb);

  int FindMethod(int tkTypeDef, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> ptkMethodDef) =>
      Pointer<NativeFunction<FindMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(27).value)
              .asFunction<FindMethod_Dart>()(ptr.ref.lpVtbl, tkTypeDef, szName,
          pvSigBlob, cbSigBlob, ptkMethodDef);

  int FindField(int tkTypeDef, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> ptkFieldDef) =>
      Pointer<NativeFunction<FindField_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(28).value)
              .asFunction<FindField_Dart>()(
          ptr.ref.lpVtbl, tkTypeDef, szName, pvSigBlob, cbSigBlob, ptkFieldDef);

  int FindMemberRef(
          int tkTypeRef,
          Pointer<Utf16> szName,
          Pointer<Uint8> pvSigBlob,
          int cbSigBlob,
          Pointer<Uint32> pMemberRef) =>
      Pointer<NativeFunction<FindMemberRef_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<FindMemberRef_Dart>()(
          ptr.ref.lpVtbl, tkTypeRef, szName, pvSigBlob, cbSigBlob, pMemberRef);

  int GetMethodProps(
          int tkMethodDef,
          Pointer<Uint32> ptkClass,
          Pointer<Utf16> szMethod,
          int cchMethod,
          Pointer<Uint32> pchMethod,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint8> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags) =>
      Pointer<NativeFunction<GetMethodProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(30).value)
              .asFunction<GetMethodProps_Dart>()(
          ptr.ref.lpVtbl,
          tkMethodDef,
          ptkClass,
          szMethod,
          cchMethod,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

  int GetMemberRefProps(
          int tkMemberRef,
          Pointer<Uint32> ptk,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Uint8> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob) =>
      Pointer<NativeFunction<GetMemberRefProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(31).value)
              .asFunction<GetMemberRefProps_Dart>()(ptr.ref.lpVtbl, tkMemberRef,
          ptk, szMember, cchMember, pchMember, ppvSigBlob, pcbSigBlob);

  int EnumProperties(
          Pointer<IntPtr> phEnum,
          int tkTypDef,
          Pointer<Uint32> rgProperties,
          int cMax,
          Pointer<Uint32> pcProperties) =>
      Pointer<NativeFunction<EnumProperties_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(32).value)
              .asFunction<EnumProperties_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypDef, rgProperties, cMax, pcProperties);

  int EnumEvents(Pointer<IntPtr> phEnum, int tkTypDef, Pointer<Uint32> rgEvents,
          int cMax, Pointer<Uint32> pcEvents) =>
      Pointer<NativeFunction<EnumEvents_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(33).value)
              .asFunction<EnumEvents_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkTypDef, rgEvents, cMax, pcEvents);

  int GetEventProps(
          int tkEvent,
          Pointer<Uint32> ptkClass,
          Pointer<Utf16> szEvent,
          int cchEvent,
          Pointer<Uint32> pchEvent,
          Pointer<Uint32> pdwEventFlags,
          Pointer<Uint32> ptkEventType,
          Pointer<Uint32> ptkAddOn,
          Pointer<Uint32> ptkRemoveOn,
          Pointer<Uint32> tkkFire,
          Pointer<Uint32> rgOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      Pointer<NativeFunction<GetEventProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(34).value)
              .asFunction<GetEventProps_Dart>()(
          ptr.ref.lpVtbl,
          tkEvent,
          ptkClass,
          szEvent,
          cchEvent,
          pchEvent,
          pdwEventFlags,
          ptkEventType,
          ptkAddOn,
          ptkRemoveOn,
          tkkFire,
          rgOtherMethod,
          cMax,
          pcOtherMethod);

  int EnumMethodSemantics(Pointer<IntPtr> phEnum, int tkMethodDef,
          Pointer<Uint32> rgEventProp, int cMax, Pointer<Uint32> pcEventProp) =>
      Pointer<NativeFunction<EnumMethodSemantics_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(35).value)
              .asFunction<EnumMethodSemantics_Dart>()(
          ptr.ref.lpVtbl, phEnum, tkMethodDef, rgEventProp, cMax, pcEventProp);

  int GetMethodSemantics(int tkMethodDef, int tkEventProp,
          Pointer<Uint32> pdwSemanticsFlags) =>
      Pointer<NativeFunction<GetMethodSemantics_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(36).value)
              .asFunction<GetMethodSemantics_Dart>()(
          ptr.ref.lpVtbl, tkMethodDef, tkEventProp, pdwSemanticsFlags);

  int GetClassLayout(
          int tkTypeDef,
          Pointer<Uint32> pdwPackSize,
          Pointer<COR_FIELD_OFFSET> rgFieldOffset,
          int cMax,
          Pointer<Uint32> pcFieldOffset,
          Pointer<Uint32> pulClassSize) =>
      Pointer<NativeFunction<GetClassLayout_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(37).value)
              .asFunction<GetClassLayout_Dart>()(ptr.ref.lpVtbl, tkTypeDef,
          pdwPackSize, rgFieldOffset, cMax, pcFieldOffset, pulClassSize);

  int GetFieldMarshal(int tk, Pointer<Uint8> ppvNativeType,
          Pointer<Uint32> pcbNativeType) =>
      Pointer<NativeFunction<GetFieldMarshal_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(38).value)
              .asFunction<GetFieldMarshal_Dart>()(
          ptr.ref.lpVtbl, tk, ppvNativeType, pcbNativeType);

  int GetRVA(
          int tk, Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags) =>
      Pointer<NativeFunction<GetRVA_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(39).value)
              .asFunction<GetRVA_Dart>()(
          ptr.ref.lpVtbl, tk, pulCodeRVA, pdwImplFlags);

  int GetPermissionSetProps(int tk, Pointer<Uint32> pdwAction,
          Pointer<IntPtr> ppvPermission, Pointer<Uint32> pcbPermission) =>
      Pointer<NativeFunction<GetPermissionSetProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(40).value)
              .asFunction<GetPermissionSetProps_Dart>()(
          ptr.ref.lpVtbl, tk, pdwAction, ppvPermission, pcbPermission);

  int GetSigFromToken(
          int tkSignature, Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig) =>
      Pointer<NativeFunction<GetSigFromToken_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(41).value)
              .asFunction<GetSigFromToken_Dart>()(
          ptr.ref.lpVtbl, tkSignature, ppvSig, pcbSig);

  int GetModuleRefProps(int tkModuleRef, Pointer<Utf16> szName, int cchName,
          Pointer<Uint32> pchName) =>
      Pointer<NativeFunction<GetModuleRefProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(42).value)
              .asFunction<GetModuleRefProps_Dart>()(
          ptr.ref.lpVtbl, tkModuleRef, szName, cchName, pchName);

  int EnumModuleRefs(Pointer<IntPtr> phEnum, Pointer<Uint32> rgModuleRefs,
          int cMax, Pointer<Uint32> pcModuleRefs) =>
      Pointer<NativeFunction<EnumModuleRefs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(43).value)
              .asFunction<EnumModuleRefs_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgModuleRefs, cMax, pcModuleRefs);

  int GetTypeSpecFromToken(
          int tkTypeSpec, Pointer<Uint8> ppvSig, Pointer<Uint32> pcbSig) =>
      Pointer<NativeFunction<GetTypeSpecFromToken_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(44).value)
              .asFunction<GetTypeSpecFromToken_Dart>()(
          ptr.ref.lpVtbl, tkTypeSpec, ppvSig, pcbSig);

  int GetNameFromToken(int tk, Pointer<Uint8> pszUtf8NamePtr) =>
      Pointer<NativeFunction<GetNameFromToken_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(45).value)
              .asFunction<GetNameFromToken_Dart>()(
          ptr.ref.lpVtbl, tk, pszUtf8NamePtr);

  int EnumUnresolvedMethods(Pointer<IntPtr> phEnum, Pointer<Uint32> rgMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      Pointer<NativeFunction<EnumUnresolvedMethods_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(46).value)
              .asFunction<EnumUnresolvedMethods_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgMethods, cMax, pcTokens);

  int GetUserString(int tkString, Pointer<Utf16> szString, int cchString,
          Pointer<Uint32> pchString) =>
      Pointer<NativeFunction<GetUserString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(47).value)
              .asFunction<GetUserString_Dart>()(
          ptr.ref.lpVtbl, tkString, szString, cchString, pchString);

  int GetPinvokeMap(
          int tk,
          Pointer<Uint32> pdwMappingFlags,
          Pointer<Utf16> szImportName,
          int cchImportName,
          Pointer<Uint32> pchImportName,
          Pointer<Uint32> ptkImportDLL) =>
      Pointer<NativeFunction<GetPinvokeMap_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(48).value)
              .asFunction<GetPinvokeMap_Dart>()(
          ptr.ref.lpVtbl,
          tk,
          pdwMappingFlags,
          szImportName,
          cchImportName,
          pchImportName,
          ptkImportDLL);

  int EnumSignatures(Pointer<IntPtr> phEnum, Pointer<Uint32> rgSignatures,
          int cMax, Pointer<Uint32> pcSignatures) =>
      Pointer<NativeFunction<EnumSignatures_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(49).value)
              .asFunction<EnumSignatures_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgSignatures, cMax, pcSignatures);

  int EnumTypeSpecs(Pointer<IntPtr> phEnum, Pointer<Uint32> rgTypeSpecs,
          int cMax, Pointer<Uint32> pcTypeSpecs) =>
      Pointer<NativeFunction<EnumTypeSpecs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(50).value)
              .asFunction<EnumTypeSpecs_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgTypeSpecs, cMax, pcTypeSpecs);

  int EnumUserStrings(Pointer<IntPtr> phEnum, Pointer<Uint32> rgStrings,
          int cMax, Pointer<Uint32> pcStrings) =>
      Pointer<NativeFunction<EnumUserStrings_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(51).value)
              .asFunction<EnumUserStrings_Dart>()(
          ptr.ref.lpVtbl, phEnum, rgStrings, cMax, pcStrings);

  int GetParamForMethodIndex(
          int tkMethodDef, int ulParamSeq, Pointer<Uint32> ptkParamDef) =>
      Pointer<NativeFunction<GetParamForMethodIndex_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(52).value)
              .asFunction<GetParamForMethodIndex_Dart>()(
          ptr.ref.lpVtbl, tkMethodDef, ulParamSeq, ptkParamDef);

  int EnumCustomAttributes(
          Pointer<IntPtr> phEnum,
          int tk,
          int tkType,
          Pointer<Uint32> rgCustomAttributes,
          int cMax,
          Pointer<Uint32> pcCustomAttributes) =>
      Pointer<NativeFunction<EnumCustomAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(53).value)
              .asFunction<EnumCustomAttributes_Dart>()(ptr.ref.lpVtbl, phEnum,
          tk, tkType, rgCustomAttributes, cMax, pcCustomAttributes);

  int GetCustomAttributeProps(
          int cv,
          Pointer<Uint32> ptkObj,
          Pointer<Uint32> ptkType,
          Pointer<IntPtr> ppBlob,
          Pointer<Uint32> pcbBlob) =>
      Pointer<NativeFunction<GetCustomAttributeProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(54).value)
              .asFunction<GetCustomAttributeProps_Dart>()(
          ptr.ref.lpVtbl, cv, ptkObj, ptkType, ppBlob, pcbBlob);

  int FindTypeRef(int tkResolutionScope, Pointer<Utf16> szName,
          Pointer<Uint32> tkTypeRef) =>
      Pointer<NativeFunction<FindTypeRef_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(55).value)
              .asFunction<FindTypeRef_Dart>()(
          ptr.ref.lpVtbl, tkResolutionScope, szName, tkTypeRef);

  int GetMemberProps(
          int tkMember,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint8> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Uint8> ppValue,
          Pointer<Uint32> pcchValue) =>
      Pointer<NativeFunction<GetMemberProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(56).value)
              .asFunction<GetMemberProps_Dart>()(
          ptr.ref.lpVtbl,
          tkMember,
          ptkTypeDef,
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

  int GetFieldProps(
          int tkFieldDef,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Utf16> szField,
          int cchField,
          Pointer<Uint32> pchField,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint8> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Uint8> ppValue,
          Pointer<Uint32> pcchValue) =>
      Pointer<NativeFunction<GetFieldProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(57).value)
              .asFunction<GetFieldProps_Dart>()(
          ptr.ref.lpVtbl,
          tkFieldDef,
          ptkTypeDef,
          szField,
          cchField,
          pchField,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int GetPropertyProps(
          int prop,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Utf16> szProperty,
          int cchProperty,
          Pointer<Uint32> pchProperty,
          Pointer<Uint32> pdwPropFlags,
          Pointer<Uint8> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Uint8> ppDefaultValue,
          Pointer<Uint32> pcchDefaultValue,
          Pointer<Uint32> ptkSetter,
          Pointer<Uint32> ptkGetter,
          Pointer<Uint32> rgOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      Pointer<NativeFunction<GetPropertyProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(58).value)
              .asFunction<GetPropertyProps_Dart>()(
          ptr.ref.lpVtbl,
          prop,
          ptkTypeDef,
          szProperty,
          cchProperty,
          pchProperty,
          pdwPropFlags,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppDefaultValue,
          pcchDefaultValue,
          ptkSetter,
          ptkGetter,
          rgOtherMethod,
          cMax,
          pcOtherMethod);

  int GetParamProps(
          int tkParamDef,
          Pointer<Uint32> ptkMethodDef,
          Pointer<Uint32> pulSequence,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Uint8> ppValue,
          Pointer<Uint32> pcchValue) =>
      Pointer<NativeFunction<GetParamProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(59).value)
              .asFunction<GetParamProps_Dart>()(
          ptr.ref.lpVtbl,
          tkParamDef,
          ptkMethodDef,
          pulSequence,
          szName,
          cchName,
          pchName,
          pdwAttr,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int GetCustomAttributeByName(int tkObj, Pointer<Utf16> szName,
          Pointer<IntPtr> ppData, Pointer<Uint32> pcbData) =>
      Pointer<NativeFunction<GetCustomAttributeByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(60).value)
              .asFunction<GetCustomAttributeByName_Dart>()(
          ptr.ref.lpVtbl, tkObj, szName, ppData, pcbData);

  int IsValidToken(int tk) =>
      Pointer<NativeFunction<IsValidToken_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(61).value)
          .asFunction<IsValidToken_Dart>()(ptr.ref.lpVtbl, tk);

  int GetNestedClassProps(
          int tdNestedClass, Pointer<Uint32> ptdEnclosingClass) =>
      Pointer<NativeFunction<GetNestedClassProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(62).value)
              .asFunction<GetNestedClassProps_Dart>()(
          ptr.ref.lpVtbl, tdNestedClass, ptdEnclosingClass);

  int GetNativeCallConvFromSig(
          Pointer<Uint8> pvSig, int cbSig, Pointer<Uint32> pCallConv) =>
      Pointer<NativeFunction<GetNativeCallConvFromSig_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(63).value)
              .asFunction<GetNativeCallConvFromSig_Dart>()(
          ptr.ref.lpVtbl, pvSig, cbSig, pCallConv);

  int IsGlobal(int tk, Pointer<Int32> pbIsGlobal) =>
      Pointer<NativeFunction<IsGlobal_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(64).value)
          .asFunction<IsGlobal_Dart>()(ptr.ref.lpVtbl, tk, pbIsGlobal);
}
