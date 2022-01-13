// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../security/cryptography/catalog/structs.g.dart';
import '../../../security/cryptography/catalog/callbacks.g.dart'; // -----------------------------------------------------------------------

// wintrust.dll
// -----------------------------------------------------------------------
final _wintrust = DynamicLibrary.open('wintrust.dll');

int CryptCATAdminAcquireContext(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  int dwFlags,
) =>
    _CryptCATAdminAcquireContext(
      phCatAdmin,
      pgSubsystem,
      dwFlags,
    );

late final _CryptCATAdminAcquireContext = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  int dwFlags,
)>('CryptCATAdminAcquireContext');

int CryptCATAdminAcquireContext2(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  Pointer<Utf16> pwszHashAlgorithm,
  Pointer<CERT_STRONG_SIGN_PARA> pStrongHashPolicy,
  int dwFlags,
) =>
    _CryptCATAdminAcquireContext2(
      phCatAdmin,
      pgSubsystem,
      pwszHashAlgorithm,
      pStrongHashPolicy,
      dwFlags,
    );

late final _CryptCATAdminAcquireContext2 = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  Pointer<Utf16> pwszHashAlgorithm,
  Pointer<CERT_STRONG_SIGN_PARA> pStrongHashPolicy,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phCatAdmin,
  Pointer<GUID> pgSubsystem,
  Pointer<Utf16> pwszHashAlgorithm,
  Pointer<CERT_STRONG_SIGN_PARA> pStrongHashPolicy,
  int dwFlags,
)>('CryptCATAdminAcquireContext2');

int CryptCATAdminAddCatalog(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<Utf16> pwszSelectBaseName,
  int dwFlags,
) =>
    _CryptCATAdminAddCatalog(
      hCatAdmin,
      pwszCatalogFile,
      pwszSelectBaseName,
      dwFlags,
    );

late final _CryptCATAdminAddCatalog = _wintrust.lookupFunction<
    IntPtr Function(
  IntPtr hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<Utf16> pwszSelectBaseName,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<Utf16> pwszSelectBaseName,
  int dwFlags,
)>('CryptCATAdminAddCatalog');

int CryptCATAdminCalcHashFromFileHandle(
  int hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  int dwFlags,
) =>
    _CryptCATAdminCalcHashFromFileHandle(
      hFile,
      pcbHash,
      pbHash,
      dwFlags,
    );

late final _CryptCATAdminCalcHashFromFileHandle = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  Uint32 dwFlags,
),
    int Function(
  int hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  int dwFlags,
)>('CryptCATAdminCalcHashFromFileHandle');

int CryptCATAdminCalcHashFromFileHandle2(
  int hCatAdmin,
  int hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  int dwFlags,
) =>
    _CryptCATAdminCalcHashFromFileHandle2(
      hCatAdmin,
      hFile,
      pcbHash,
      pbHash,
      dwFlags,
    );

late final _CryptCATAdminCalcHashFromFileHandle2 = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatAdmin,
  IntPtr hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  int hFile,
  Pointer<Uint32> pcbHash,
  Pointer<Uint8> pbHash,
  int dwFlags,
)>('CryptCATAdminCalcHashFromFileHandle2');

int CryptCATAdminEnumCatalogFromHash(
  int hCatAdmin,
  Pointer<Uint8> pbHash,
  int cbHash,
  int dwFlags,
  Pointer<IntPtr> phPrevCatInfo,
) =>
    _CryptCATAdminEnumCatalogFromHash(
      hCatAdmin,
      pbHash,
      cbHash,
      dwFlags,
      phPrevCatInfo,
    );

late final _CryptCATAdminEnumCatalogFromHash = _wintrust.lookupFunction<
    IntPtr Function(
  IntPtr hCatAdmin,
  Pointer<Uint8> pbHash,
  Uint32 cbHash,
  Uint32 dwFlags,
  Pointer<IntPtr> phPrevCatInfo,
),
    int Function(
  int hCatAdmin,
  Pointer<Uint8> pbHash,
  int cbHash,
  int dwFlags,
  Pointer<IntPtr> phPrevCatInfo,
)>('CryptCATAdminEnumCatalogFromHash');

int CryptCATAdminPauseServiceForBackup(
  int dwFlags,
  int fResume,
) =>
    _CryptCATAdminPauseServiceForBackup(
      dwFlags,
      fResume,
    );

late final _CryptCATAdminPauseServiceForBackup = _wintrust.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Int32 fResume,
),
    int Function(
  int dwFlags,
  int fResume,
)>('CryptCATAdminPauseServiceForBackup');

int CryptCATAdminReleaseCatalogContext(
  int hCatAdmin,
  int hCatInfo,
  int dwFlags,
) =>
    _CryptCATAdminReleaseCatalogContext(
      hCatAdmin,
      hCatInfo,
      dwFlags,
    );

late final _CryptCATAdminReleaseCatalogContext = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatAdmin,
  IntPtr hCatInfo,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  int hCatInfo,
  int dwFlags,
)>('CryptCATAdminReleaseCatalogContext');

int CryptCATAdminReleaseContext(
  int hCatAdmin,
  int dwFlags,
) =>
    _CryptCATAdminReleaseContext(
      hCatAdmin,
      dwFlags,
    );

late final _CryptCATAdminReleaseContext = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatAdmin,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  int dwFlags,
)>('CryptCATAdminReleaseContext');

int CryptCATAdminRemoveCatalog(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  int dwFlags,
) =>
    _CryptCATAdminRemoveCatalog(
      hCatAdmin,
      pwszCatalogFile,
      dwFlags,
    );

late final _CryptCATAdminRemoveCatalog = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  int dwFlags,
)>('CryptCATAdminRemoveCatalog');

int CryptCATAdminResolveCatalogPath(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<CATALOG_INFO> psCatInfo,
  int dwFlags,
) =>
    _CryptCATAdminResolveCatalogPath(
      hCatAdmin,
      pwszCatalogFile,
      psCatInfo,
      dwFlags,
    );

late final _CryptCATAdminResolveCatalogPath = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<CATALOG_INFO> psCatInfo,
  Uint32 dwFlags,
),
    int Function(
  int hCatAdmin,
  Pointer<Utf16> pwszCatalogFile,
  Pointer<CATALOG_INFO> psCatInfo,
  int dwFlags,
)>('CryptCATAdminResolveCatalogPath');

Pointer<CRYPTCATMEMBER> CryptCATAllocSortedMemberInfo(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
) =>
    _CryptCATAllocSortedMemberInfo(
      hCatalog,
      pwszReferenceTag,
    );

late final _CryptCATAllocSortedMemberInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATMEMBER> Function(
  IntPtr hCatalog,
  Pointer<Utf16> pwszReferenceTag,
),
    Pointer<CRYPTCATMEMBER> Function(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
)>('CryptCATAllocSortedMemberInfo');

int CryptCATCDFClose(
  Pointer<CRYPTCATCDF> pCDF,
) =>
    _CryptCATCDFClose(
      pCDF,
    );

late final _CryptCATCDFClose = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<CRYPTCATCDF> pCDF,
),
    int Function(
  Pointer<CRYPTCATCDF> pCDF,
)>('CryptCATCDFClose');

Pointer<CRYPTCATATTRIBUTE> CryptCATCDFEnumAttributes(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
) =>
    _CryptCATCDFEnumAttributes(
      pCDF,
      pMember,
      pPrevAttr,
      pfnParseError,
    );

late final _CryptCATCDFEnumAttributes = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
)>('CryptCATCDFEnumAttributes');

Pointer<CRYPTCATATTRIBUTE> CryptCATCDFEnumCatAttributes(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
) =>
    _CryptCATCDFEnumCatAttributes(
      pCDF,
      pPrevAttr,
      pfnParseError,
    );

late final _CryptCATCDFEnumCatAttributes = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
)>('CryptCATCDFEnumCatAttributes');

Pointer<CRYPTCATMEMBER> CryptCATCDFEnumMembers(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pPrevMember,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
) =>
    _CryptCATCDFEnumMembers(
      pCDF,
      pPrevMember,
      pfnParseError,
    );

late final _CryptCATCDFEnumMembers = _wintrust.lookupFunction<
    Pointer<CRYPTCATMEMBER> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pPrevMember,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
),
    Pointer<CRYPTCATMEMBER> Function(
  Pointer<CRYPTCATCDF> pCDF,
  Pointer<CRYPTCATMEMBER> pPrevMember,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
)>('CryptCATCDFEnumMembers');

Pointer<CRYPTCATCDF> CryptCATCDFOpen(
  Pointer<Utf16> pwszFilePath,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
) =>
    _CryptCATCDFOpen(
      pwszFilePath,
      pfnParseError,
    );

late final _CryptCATCDFOpen = _wintrust.lookupFunction<
    Pointer<CRYPTCATCDF> Function(
  Pointer<Utf16> pwszFilePath,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
),
    Pointer<CRYPTCATCDF> Function(
  Pointer<Utf16> pwszFilePath,
  Pointer<NativeFunction<PFN_CDF_PARSE_ERROR_CALLBACK>> pfnParseError,
)>('CryptCATCDFOpen');

int CryptCATCatalogInfoFromContext(
  int hCatInfo,
  Pointer<CATALOG_INFO> psCatInfo,
  int dwFlags,
) =>
    _CryptCATCatalogInfoFromContext(
      hCatInfo,
      psCatInfo,
      dwFlags,
    );

late final _CryptCATCatalogInfoFromContext = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatInfo,
  Pointer<CATALOG_INFO> psCatInfo,
  Uint32 dwFlags,
),
    int Function(
  int hCatInfo,
  Pointer<CATALOG_INFO> psCatInfo,
  int dwFlags,
)>('CryptCATCatalogInfoFromContext');

int CryptCATClose(
  int hCatalog,
) =>
    _CryptCATClose(
      hCatalog,
    );

late final _CryptCATClose = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatalog,
),
    int Function(
  int hCatalog,
)>('CryptCATClose');

Pointer<CRYPTCATATTRIBUTE> CryptCATEnumerateAttr(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
) =>
    _CryptCATEnumerateAttr(
      hCatalog,
      pCatMember,
      pPrevAttr,
    );

late final _CryptCATEnumerateAttr = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
)>('CryptCATEnumerateAttr');

Pointer<CRYPTCATATTRIBUTE> CryptCATEnumerateCatAttr(
  int hCatalog,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
) =>
    _CryptCATEnumerateCatAttr(
      hCatalog,
      pPrevAttr,
    );

late final _CryptCATEnumerateCatAttr = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<CRYPTCATATTRIBUTE> pPrevAttr,
)>('CryptCATEnumerateCatAttr');

Pointer<CRYPTCATMEMBER> CryptCATEnumerateMember(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pPrevMember,
) =>
    _CryptCATEnumerateMember(
      hCatalog,
      pPrevMember,
    );

late final _CryptCATEnumerateMember = _wintrust.lookupFunction<
    Pointer<CRYPTCATMEMBER> Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATMEMBER> pPrevMember,
),
    Pointer<CRYPTCATMEMBER> Function(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pPrevMember,
)>('CryptCATEnumerateMember');

void CryptCATFreeSortedMemberInfo(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
) =>
    _CryptCATFreeSortedMemberInfo(
      hCatalog,
      pCatMember,
    );

late final _CryptCATFreeSortedMemberInfo = _wintrust.lookupFunction<
    Void Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
),
    void Function(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
)>('CryptCATFreeSortedMemberInfo');

Pointer<CRYPTCATATTRIBUTE> CryptCATGetAttrInfo(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
) =>
    _CryptCATGetAttrInfo(
      hCatalog,
      pCatMember,
      pwszReferenceTag,
    );

late final _CryptCATGetAttrInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
)>('CryptCATGetAttrInfo');

Pointer<CRYPTCATATTRIBUTE> CryptCATGetCatAttrInfo(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
) =>
    _CryptCATGetCatAttrInfo(
      hCatalog,
      pwszReferenceTag,
    );

late final _CryptCATGetCatAttrInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<Utf16> pwszReferenceTag,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
)>('CryptCATGetCatAttrInfo');

Pointer<CRYPTCATMEMBER> CryptCATGetMemberInfo(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
) =>
    _CryptCATGetMemberInfo(
      hCatalog,
      pwszReferenceTag,
    );

late final _CryptCATGetMemberInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATMEMBER> Function(
  IntPtr hCatalog,
  Pointer<Utf16> pwszReferenceTag,
),
    Pointer<CRYPTCATMEMBER> Function(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
)>('CryptCATGetMemberInfo');

int CryptCATHandleFromStore(
  Pointer<CRYPTCATSTORE> pCatStore,
) =>
    _CryptCATHandleFromStore(
      pCatStore,
    );

late final _CryptCATHandleFromStore = _wintrust.lookupFunction<
    IntPtr Function(
  Pointer<CRYPTCATSTORE> pCatStore,
),
    int Function(
  Pointer<CRYPTCATSTORE> pCatStore,
)>('CryptCATHandleFromStore');

int CryptCATOpen(
  Pointer<Utf16> pwszFileName,
  int fdwOpenFlags,
  int hProv,
  int dwPublicVersion,
  int dwEncodingType,
) =>
    _CryptCATOpen(
      pwszFileName,
      fdwOpenFlags,
      hProv,
      dwPublicVersion,
      dwEncodingType,
    );

late final _CryptCATOpen = _wintrust.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pwszFileName,
  Uint32 fdwOpenFlags,
  IntPtr hProv,
  Uint32 dwPublicVersion,
  Uint32 dwEncodingType,
),
    int Function(
  Pointer<Utf16> pwszFileName,
  int fdwOpenFlags,
  int hProv,
  int dwPublicVersion,
  int dwEncodingType,
)>('CryptCATOpen');

int CryptCATPersistStore(
  int hCatalog,
) =>
    _CryptCATPersistStore(
      hCatalog,
    );

late final _CryptCATPersistStore = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hCatalog,
),
    int Function(
  int hCatalog,
)>('CryptCATPersistStore');

Pointer<CRYPTCATATTRIBUTE> CryptCATPutAttrInfo(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
  int dwAttrTypeAndAction,
  int cbData,
  Pointer<Uint8> pbData,
) =>
    _CryptCATPutAttrInfo(
      hCatalog,
      pCatMember,
      pwszReferenceTag,
      dwAttrTypeAndAction,
      cbData,
      pbData,
    );

late final _CryptCATPutAttrInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
  Uint32 dwAttrTypeAndAction,
  Uint32 cbData,
  Pointer<Uint8> pbData,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<CRYPTCATMEMBER> pCatMember,
  Pointer<Utf16> pwszReferenceTag,
  int dwAttrTypeAndAction,
  int cbData,
  Pointer<Uint8> pbData,
)>('CryptCATPutAttrInfo');

Pointer<CRYPTCATATTRIBUTE> CryptCATPutCatAttrInfo(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
  int dwAttrTypeAndAction,
  int cbData,
  Pointer<Uint8> pbData,
) =>
    _CryptCATPutCatAttrInfo(
      hCatalog,
      pwszReferenceTag,
      dwAttrTypeAndAction,
      cbData,
      pbData,
    );

late final _CryptCATPutCatAttrInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATATTRIBUTE> Function(
  IntPtr hCatalog,
  Pointer<Utf16> pwszReferenceTag,
  Uint32 dwAttrTypeAndAction,
  Uint32 cbData,
  Pointer<Uint8> pbData,
),
    Pointer<CRYPTCATATTRIBUTE> Function(
  int hCatalog,
  Pointer<Utf16> pwszReferenceTag,
  int dwAttrTypeAndAction,
  int cbData,
  Pointer<Uint8> pbData,
)>('CryptCATPutCatAttrInfo');

Pointer<CRYPTCATMEMBER> CryptCATPutMemberInfo(
  int hCatalog,
  Pointer<Utf16> pwszFileName,
  Pointer<Utf16> pwszReferenceTag,
  Pointer<GUID> pgSubjectType,
  int dwCertVersion,
  int cbSIPIndirectData,
  Pointer<Uint8> pbSIPIndirectData,
) =>
    _CryptCATPutMemberInfo(
      hCatalog,
      pwszFileName,
      pwszReferenceTag,
      pgSubjectType,
      dwCertVersion,
      cbSIPIndirectData,
      pbSIPIndirectData,
    );

late final _CryptCATPutMemberInfo = _wintrust.lookupFunction<
    Pointer<CRYPTCATMEMBER> Function(
  IntPtr hCatalog,
  Pointer<Utf16> pwszFileName,
  Pointer<Utf16> pwszReferenceTag,
  Pointer<GUID> pgSubjectType,
  Uint32 dwCertVersion,
  Uint32 cbSIPIndirectData,
  Pointer<Uint8> pbSIPIndirectData,
),
    Pointer<CRYPTCATMEMBER> Function(
  int hCatalog,
  Pointer<Utf16> pwszFileName,
  Pointer<Utf16> pwszReferenceTag,
  Pointer<GUID> pgSubjectType,
  int dwCertVersion,
  int cbSIPIndirectData,
  Pointer<Uint8> pbSIPIndirectData,
)>('CryptCATPutMemberInfo');

Pointer<CRYPTCATSTORE> CryptCATStoreFromHandle(
  int hCatalog,
) =>
    _CryptCATStoreFromHandle(
      hCatalog,
    );

late final _CryptCATStoreFromHandle = _wintrust.lookupFunction<
    Pointer<CRYPTCATSTORE> Function(
  IntPtr hCatalog,
),
    Pointer<CRYPTCATSTORE> Function(
  int hCatalog,
)>('CryptCATStoreFromHandle');

int IsCatalogFile(
  int hFile,
  Pointer<Utf16> pwszFileName,
) =>
    _IsCatalogFile(
      hFile,
      pwszFileName,
    );

late final _IsCatalogFile = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Utf16> pwszFileName,
),
    int Function(
  int hFile,
  Pointer<Utf16> pwszFileName,
)>('IsCatalogFile');
