// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../system/applicationinstallationandservicing/callbacks.g.dart'; // -----------------------------------------------------------------------

// msi.dll
// -----------------------------------------------------------------------
final _msi = DynamicLibrary.open('msi.dll');

int MsiAdvertiseProductEx(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  int lgidLanguage,
  int dwPlatform,
  int dwOptions,
) =>
    _MsiAdvertiseProductEx(
      szPackagePath,
      szScriptfilePath,
      szTransforms,
      lgidLanguage,
      dwPlatform,
      dwOptions,
    );

late final _MsiAdvertiseProductEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  Uint16 lgidLanguage,
  Uint32 dwPlatform,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  int lgidLanguage,
  int dwPlatform,
  int dwOptions,
)>('MsiAdvertiseProductExW');

int MsiAdvertiseProduct(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  int lgidLanguage,
) =>
    _MsiAdvertiseProduct(
      szPackagePath,
      szScriptfilePath,
      szTransforms,
      lgidLanguage,
    );

late final _MsiAdvertiseProduct = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  Uint16 lgidLanguage,
),
    int Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szScriptfilePath,
  Pointer<Utf16> szTransforms,
  int lgidLanguage,
)>('MsiAdvertiseProductW');

int MsiAdvertiseScript(
  Pointer<Utf16> szScriptFile,
  int dwFlags,
  Pointer<IntPtr> phRegData,
  int fRemoveItems,
) =>
    _MsiAdvertiseScript(
      szScriptFile,
      dwFlags,
      phRegData,
      fRemoveItems,
    );

late final _MsiAdvertiseScript = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szScriptFile,
  Uint32 dwFlags,
  Pointer<IntPtr> phRegData,
  Int32 fRemoveItems,
),
    int Function(
  Pointer<Utf16> szScriptFile,
  int dwFlags,
  Pointer<IntPtr> phRegData,
  int fRemoveItems,
)>('MsiAdvertiseScriptW');

int MsiApplyMultiplePatches(
  Pointer<Utf16> szPatchPackages,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPropertiesList,
) =>
    _MsiApplyMultiplePatches(
      szPatchPackages,
      szProductCode,
      szPropertiesList,
    );

late final _MsiApplyMultiplePatches = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatchPackages,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPropertiesList,
),
    int Function(
  Pointer<Utf16> szPatchPackages,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPropertiesList,
)>('MsiApplyMultiplePatchesW');

int MsiApplyPatch(
  Pointer<Utf16> szPatchPackage,
  Pointer<Utf16> szInstallPackage,
  int eInstallType,
  Pointer<Utf16> szCommandLine,
) =>
    _MsiApplyPatch(
      szPatchPackage,
      szInstallPackage,
      eInstallType,
      szCommandLine,
    );

late final _MsiApplyPatch = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatchPackage,
  Pointer<Utf16> szInstallPackage,
  Int32 eInstallType,
  Pointer<Utf16> szCommandLine,
),
    int Function(
  Pointer<Utf16> szPatchPackage,
  Pointer<Utf16> szInstallPackage,
  int eInstallType,
  Pointer<Utf16> szCommandLine,
)>('MsiApplyPatchW');

int MsiBeginTransaction(
  Pointer<Utf16> szName,
  int dwTransactionAttributes,
  Pointer<Uint32> phTransactionHandle,
  Pointer<IntPtr> phChangeOfOwnerEvent,
) =>
    _MsiBeginTransaction(
      szName,
      dwTransactionAttributes,
      phTransactionHandle,
      phChangeOfOwnerEvent,
    );

late final _MsiBeginTransaction = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szName,
  Uint32 dwTransactionAttributes,
  Pointer<Uint32> phTransactionHandle,
  Pointer<IntPtr> phChangeOfOwnerEvent,
),
    int Function(
  Pointer<Utf16> szName,
  int dwTransactionAttributes,
  Pointer<Uint32> phTransactionHandle,
  Pointer<IntPtr> phChangeOfOwnerEvent,
)>('MsiBeginTransactionW');

int MsiCloseAllHandles() => _MsiCloseAllHandles();

late final _MsiCloseAllHandles = _msi
    .lookupFunction<Uint32 Function(), int Function()>('MsiCloseAllHandles');

int MsiCloseHandle(
  int hAny,
) =>
    _MsiCloseHandle(
      hAny,
    );

late final _MsiCloseHandle = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hAny,
),
    int Function(
  int hAny,
)>('MsiCloseHandle');

int MsiCollectUserInfo(
  Pointer<Utf16> szProduct,
) =>
    _MsiCollectUserInfo(
      szProduct,
    );

late final _MsiCollectUserInfo = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
),
    int Function(
  Pointer<Utf16> szProduct,
)>('MsiCollectUserInfoW');

int MsiConfigureFeature(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int eInstallState,
) =>
    _MsiConfigureFeature(
      szProduct,
      szFeature,
      eInstallState,
    );

late final _MsiConfigureFeature = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Int32 eInstallState,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int eInstallState,
)>('MsiConfigureFeatureW');

int MsiConfigureProductEx(
  Pointer<Utf16> szProduct,
  int iInstallLevel,
  int eInstallState,
  Pointer<Utf16> szCommandLine,
) =>
    _MsiConfigureProductEx(
      szProduct,
      iInstallLevel,
      eInstallState,
      szCommandLine,
    );

late final _MsiConfigureProductEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Int32 iInstallLevel,
  Int32 eInstallState,
  Pointer<Utf16> szCommandLine,
),
    int Function(
  Pointer<Utf16> szProduct,
  int iInstallLevel,
  int eInstallState,
  Pointer<Utf16> szCommandLine,
)>('MsiConfigureProductExW');

int MsiConfigureProduct(
  Pointer<Utf16> szProduct,
  int iInstallLevel,
  int eInstallState,
) =>
    _MsiConfigureProduct(
      szProduct,
      iInstallLevel,
      eInstallState,
    );

late final _MsiConfigureProduct = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Int32 iInstallLevel,
  Int32 eInstallState,
),
    int Function(
  Pointer<Utf16> szProduct,
  int iInstallLevel,
  int eInstallState,
)>('MsiConfigureProductW');

int MsiCreateRecord(
  int cParams,
) =>
    _MsiCreateRecord(
      cParams,
    );

late final _MsiCreateRecord = _msi.lookupFunction<
    Uint32 Function(
  Uint32 cParams,
),
    int Function(
  int cParams,
)>('MsiCreateRecord');

int MsiCreateTransformSummaryInfo(
  int hDatabase,
  int hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  int iErrorConditions,
  int iValidation,
) =>
    _MsiCreateTransformSummaryInfo(
      hDatabase,
      hDatabaseReference,
      szTransformFile,
      iErrorConditions,
      iValidation,
    );

late final _MsiCreateTransformSummaryInfo = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Uint32 hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  Int32 iErrorConditions,
  Int32 iValidation,
),
    int Function(
  int hDatabase,
  int hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  int iErrorConditions,
  int iValidation,
)>('MsiCreateTransformSummaryInfoW');

int MsiDatabaseApplyTransform(
  int hDatabase,
  Pointer<Utf16> szTransformFile,
  int iErrorConditions,
) =>
    _MsiDatabaseApplyTransform(
      hDatabase,
      szTransformFile,
      iErrorConditions,
    );

late final _MsiDatabaseApplyTransform = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szTransformFile,
  Int32 iErrorConditions,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szTransformFile,
  int iErrorConditions,
)>('MsiDatabaseApplyTransformW');

int MsiDatabaseCommit(
  int hDatabase,
) =>
    _MsiDatabaseCommit(
      hDatabase,
    );

late final _MsiDatabaseCommit = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
),
    int Function(
  int hDatabase,
)>('MsiDatabaseCommit');

int MsiDatabaseExport(
  int hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
) =>
    _MsiDatabaseExport(
      hDatabase,
      szTableName,
      szFolderPath,
      szFileName,
    );

late final _MsiDatabaseExport = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
)>('MsiDatabaseExportW');

int MsiDatabaseGenerateTransform(
  int hDatabase,
  int hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  int iReserved1,
  int iReserved2,
) =>
    _MsiDatabaseGenerateTransform(
      hDatabase,
      hDatabaseReference,
      szTransformFile,
      iReserved1,
      iReserved2,
    );

late final _MsiDatabaseGenerateTransform = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Uint32 hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  Int32 iReserved1,
  Int32 iReserved2,
),
    int Function(
  int hDatabase,
  int hDatabaseReference,
  Pointer<Utf16> szTransformFile,
  int iReserved1,
  int iReserved2,
)>('MsiDatabaseGenerateTransformW');

int MsiDatabaseGetPrimaryKeys(
  int hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Uint32> phRecord,
) =>
    _MsiDatabaseGetPrimaryKeys(
      hDatabase,
      szTableName,
      phRecord,
    );

late final _MsiDatabaseGetPrimaryKeys = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Uint32> phRecord,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szTableName,
  Pointer<Uint32> phRecord,
)>('MsiDatabaseGetPrimaryKeysW');

int MsiDatabaseImport(
  int hDatabase,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
) =>
    _MsiDatabaseImport(
      hDatabase,
      szFolderPath,
      szFileName,
    );

late final _MsiDatabaseImport = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szFolderPath,
  Pointer<Utf16> szFileName,
)>('MsiDatabaseImportW');

int MsiDatabaseIsTablePersistent(
  int hDatabase,
  Pointer<Utf16> szTableName,
) =>
    _MsiDatabaseIsTablePersistent(
      hDatabase,
      szTableName,
    );

late final _MsiDatabaseIsTablePersistent = _msi.lookupFunction<
    Int32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szTableName,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szTableName,
)>('MsiDatabaseIsTablePersistentW');

int MsiDatabaseMerge(
  int hDatabase,
  int hDatabaseMerge,
  Pointer<Utf16> szTableName,
) =>
    _MsiDatabaseMerge(
      hDatabase,
      hDatabaseMerge,
      szTableName,
    );

late final _MsiDatabaseMerge = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Uint32 hDatabaseMerge,
  Pointer<Utf16> szTableName,
),
    int Function(
  int hDatabase,
  int hDatabaseMerge,
  Pointer<Utf16> szTableName,
)>('MsiDatabaseMergeW');

int MsiDatabaseOpenView(
  int hDatabase,
  Pointer<Utf16> szQuery,
  Pointer<Uint32> phView,
) =>
    _MsiDatabaseOpenView(
      hDatabase,
      szQuery,
      phView,
    );

late final _MsiDatabaseOpenView = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szQuery,
  Pointer<Uint32> phView,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szQuery,
  Pointer<Uint32> phView,
)>('MsiDatabaseOpenViewW');

int MsiDetermineApplicablePatches(
  Pointer<Utf16> szProductPackagePath,
  int cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
) =>
    _MsiDetermineApplicablePatches(
      szProductPackagePath,
      cPatchInfo,
      pPatchInfo,
    );

late final _MsiDetermineApplicablePatches = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductPackagePath,
  Uint32 cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
),
    int Function(
  Pointer<Utf16> szProductPackagePath,
  int cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
)>('MsiDetermineApplicablePatchesW');

int MsiDeterminePatchSequence(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
) =>
    _MsiDeterminePatchSequence(
      szProductCode,
      szUserSid,
      dwContext,
      cPatchInfo,
      pPatchInfo,
    );

late final _MsiDeterminePatchSequence = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int cPatchInfo,
  Pointer<MSIPATCHSEQUENCEINFO> pPatchInfo,
)>('MsiDeterminePatchSequenceW');

int MsiDoAction(
  int hInstall,
  Pointer<Utf16> szAction,
) =>
    _MsiDoAction(
      hInstall,
      szAction,
    );

late final _MsiDoAction = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szAction,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szAction,
)>('MsiDoActionW');

int MsiEnableLog(
  int dwLogMode,
  Pointer<Utf16> szLogFile,
  int dwLogAttributes,
) =>
    _MsiEnableLog(
      dwLogMode,
      szLogFile,
      dwLogAttributes,
    );

late final _MsiEnableLog = _msi.lookupFunction<
    Uint32 Function(
  Int32 dwLogMode,
  Pointer<Utf16> szLogFile,
  Uint32 dwLogAttributes,
),
    int Function(
  int dwLogMode,
  Pointer<Utf16> szLogFile,
  int dwLogAttributes,
)>('MsiEnableLogW');

int MsiEnableUIPreview(
  int hDatabase,
  Pointer<Uint32> phPreview,
) =>
    _MsiEnableUIPreview(
      hDatabase,
      phPreview,
    );

late final _MsiEnableUIPreview = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Uint32> phPreview,
),
    int Function(
  int hDatabase,
  Pointer<Uint32> phPreview,
)>('MsiEnableUIPreview');

int MsiEndTransaction(
  int dwTransactionState,
) =>
    _MsiEndTransaction(
      dwTransactionState,
    );

late final _MsiEndTransaction = _msi.lookupFunction<
    Uint32 Function(
  Uint32 dwTransactionState,
),
    int Function(
  int dwTransactionState,
)>('MsiEndTransaction');

int MsiEnumClientsEx(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwProductIndex,
  Pointer<Utf16> szProductBuf,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
) =>
    _MsiEnumClientsEx(
      szComponent,
      szUserSid,
      dwContext,
      dwProductIndex,
      szProductBuf,
      pdwInstalledContext,
      szSid,
      pcchSid,
    );

late final _MsiEnumClientsEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwProductIndex,
  Pointer<Utf16> szProductBuf,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
),
    int Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwProductIndex,
  Pointer<Utf16> szProductBuf,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
)>('MsiEnumClientsExW');

int MsiEnumClients(
  Pointer<Utf16> szComponent,
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
) =>
    _MsiEnumClients(
      szComponent,
      iProductIndex,
      lpProductBuf,
    );

late final _MsiEnumClients = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szComponent,
  Uint32 iProductIndex,
  Pointer<Utf16> lpProductBuf,
),
    int Function(
  Pointer<Utf16> szComponent,
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
)>('MsiEnumClientsW');

int MsiEnumComponentCosts(
  int hInstall,
  Pointer<Utf16> szComponent,
  int dwIndex,
  int iState,
  Pointer<Utf16> szDriveBuf,
  Pointer<Uint32> pcchDriveBuf,
  Pointer<Int32> piCost,
  Pointer<Int32> piTempCost,
) =>
    _MsiEnumComponentCosts(
      hInstall,
      szComponent,
      dwIndex,
      iState,
      szDriveBuf,
      pcchDriveBuf,
      piCost,
      piTempCost,
    );

late final _MsiEnumComponentCosts = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szComponent,
  Uint32 dwIndex,
  Int32 iState,
  Pointer<Utf16> szDriveBuf,
  Pointer<Uint32> pcchDriveBuf,
  Pointer<Int32> piCost,
  Pointer<Int32> piTempCost,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szComponent,
  int dwIndex,
  int iState,
  Pointer<Utf16> szDriveBuf,
  Pointer<Uint32> pcchDriveBuf,
  Pointer<Int32> piCost,
  Pointer<Int32> piTempCost,
)>('MsiEnumComponentCostsW');

int MsiEnumComponentQualifiers(
  Pointer<Utf16> szComponent,
  int iIndex,
  Pointer<Utf16> lpQualifierBuf,
  Pointer<Uint32> pcchQualifierBuf,
  Pointer<Utf16> lpApplicationDataBuf,
  Pointer<Uint32> pcchApplicationDataBuf,
) =>
    _MsiEnumComponentQualifiers(
      szComponent,
      iIndex,
      lpQualifierBuf,
      pcchQualifierBuf,
      lpApplicationDataBuf,
      pcchApplicationDataBuf,
    );

late final _MsiEnumComponentQualifiers = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szComponent,
  Uint32 iIndex,
  Pointer<Utf16> lpQualifierBuf,
  Pointer<Uint32> pcchQualifierBuf,
  Pointer<Utf16> lpApplicationDataBuf,
  Pointer<Uint32> pcchApplicationDataBuf,
),
    int Function(
  Pointer<Utf16> szComponent,
  int iIndex,
  Pointer<Utf16> lpQualifierBuf,
  Pointer<Uint32> pcchQualifierBuf,
  Pointer<Utf16> lpApplicationDataBuf,
  Pointer<Uint32> pcchApplicationDataBuf,
)>('MsiEnumComponentQualifiersW');

int MsiEnumComponentsEx(
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwIndex,
  Pointer<Utf16> szInstalledComponentCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
) =>
    _MsiEnumComponentsEx(
      szUserSid,
      dwContext,
      dwIndex,
      szInstalledComponentCode,
      pdwInstalledContext,
      szSid,
      pcchSid,
    );

late final _MsiEnumComponentsEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szUserSid,
  Uint32 dwContext,
  Uint32 dwIndex,
  Pointer<Utf16> szInstalledComponentCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
),
    int Function(
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwIndex,
  Pointer<Utf16> szInstalledComponentCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
)>('MsiEnumComponentsExW');

int MsiEnumComponents(
  int iComponentIndex,
  Pointer<Utf16> lpComponentBuf,
) =>
    _MsiEnumComponents(
      iComponentIndex,
      lpComponentBuf,
    );

late final _MsiEnumComponents = _msi.lookupFunction<
    Uint32 Function(
  Uint32 iComponentIndex,
  Pointer<Utf16> lpComponentBuf,
),
    int Function(
  int iComponentIndex,
  Pointer<Utf16> lpComponentBuf,
)>('MsiEnumComponentsW');

int MsiEnumFeatures(
  Pointer<Utf16> szProduct,
  int iFeatureIndex,
  Pointer<Utf16> lpFeatureBuf,
  Pointer<Utf16> lpParentBuf,
) =>
    _MsiEnumFeatures(
      szProduct,
      iFeatureIndex,
      lpFeatureBuf,
      lpParentBuf,
    );

late final _MsiEnumFeatures = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Uint32 iFeatureIndex,
  Pointer<Utf16> lpFeatureBuf,
  Pointer<Utf16> lpParentBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  int iFeatureIndex,
  Pointer<Utf16> lpFeatureBuf,
  Pointer<Utf16> lpParentBuf,
)>('MsiEnumFeaturesW');

int MsiEnumPatchesEx(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwFilter,
  int dwIndex,
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szTargetProductCode,
  Pointer<Int32> pdwTargetProductContext,
  Pointer<Utf16> szTargetUserSid,
  Pointer<Uint32> pcchTargetUserSid,
) =>
    _MsiEnumPatchesEx(
      szProductCode,
      szUserSid,
      dwContext,
      dwFilter,
      dwIndex,
      szPatchCode,
      szTargetProductCode,
      pdwTargetProductContext,
      szTargetUserSid,
      pcchTargetUserSid,
    );

late final _MsiEnumPatchesEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Uint32 dwContext,
  Uint32 dwFilter,
  Uint32 dwIndex,
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szTargetProductCode,
  Pointer<Int32> pdwTargetProductContext,
  Pointer<Utf16> szTargetUserSid,
  Pointer<Uint32> pcchTargetUserSid,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwFilter,
  int dwIndex,
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szTargetProductCode,
  Pointer<Int32> pdwTargetProductContext,
  Pointer<Utf16> szTargetUserSid,
  Pointer<Uint32> pcchTargetUserSid,
)>('MsiEnumPatchesExW');

int MsiEnumPatches(
  Pointer<Utf16> szProduct,
  int iPatchIndex,
  Pointer<Utf16> lpPatchBuf,
  Pointer<Utf16> lpTransformsBuf,
  Pointer<Uint32> pcchTransformsBuf,
) =>
    _MsiEnumPatches(
      szProduct,
      iPatchIndex,
      lpPatchBuf,
      lpTransformsBuf,
      pcchTransformsBuf,
    );

late final _MsiEnumPatches = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Uint32 iPatchIndex,
  Pointer<Utf16> lpPatchBuf,
  Pointer<Utf16> lpTransformsBuf,
  Pointer<Uint32> pcchTransformsBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  int iPatchIndex,
  Pointer<Utf16> lpPatchBuf,
  Pointer<Utf16> lpTransformsBuf,
  Pointer<Uint32> pcchTransformsBuf,
)>('MsiEnumPatchesW');

int MsiEnumProductsEx(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwIndex,
  Pointer<Utf16> szInstalledProductCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
) =>
    _MsiEnumProductsEx(
      szProductCode,
      szUserSid,
      dwContext,
      dwIndex,
      szInstalledProductCode,
      pdwInstalledContext,
      szSid,
      pcchSid,
    );

late final _MsiEnumProductsEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Uint32 dwContext,
  Uint32 dwIndex,
  Pointer<Utf16> szInstalledProductCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwIndex,
  Pointer<Utf16> szInstalledProductCode,
  Pointer<Int32> pdwInstalledContext,
  Pointer<Utf16> szSid,
  Pointer<Uint32> pcchSid,
)>('MsiEnumProductsExW');

int MsiEnumProducts(
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
) =>
    _MsiEnumProducts(
      iProductIndex,
      lpProductBuf,
    );

late final _MsiEnumProducts = _msi.lookupFunction<
    Uint32 Function(
  Uint32 iProductIndex,
  Pointer<Utf16> lpProductBuf,
),
    int Function(
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
)>('MsiEnumProductsW');

int MsiEnumRelatedProducts(
  Pointer<Utf16> lpUpgradeCode,
  int dwReserved,
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
) =>
    _MsiEnumRelatedProducts(
      lpUpgradeCode,
      dwReserved,
      iProductIndex,
      lpProductBuf,
    );

late final _MsiEnumRelatedProducts = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpUpgradeCode,
  Uint32 dwReserved,
  Uint32 iProductIndex,
  Pointer<Utf16> lpProductBuf,
),
    int Function(
  Pointer<Utf16> lpUpgradeCode,
  int dwReserved,
  int iProductIndex,
  Pointer<Utf16> lpProductBuf,
)>('MsiEnumRelatedProductsW');

int MsiEvaluateCondition(
  int hInstall,
  Pointer<Utf16> szCondition,
) =>
    _MsiEvaluateCondition(
      hInstall,
      szCondition,
    );

late final _MsiEvaluateCondition = _msi.lookupFunction<
    Int32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szCondition,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szCondition,
)>('MsiEvaluateConditionW');

int MsiExtractPatchXMLData(
  Pointer<Utf16> szPatchPath,
  int dwReserved,
  Pointer<Utf16> szXMLData,
  Pointer<Uint32> pcchXMLData,
) =>
    _MsiExtractPatchXMLData(
      szPatchPath,
      dwReserved,
      szXMLData,
      pcchXMLData,
    );

late final _MsiExtractPatchXMLData = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatchPath,
  Uint32 dwReserved,
  Pointer<Utf16> szXMLData,
  Pointer<Uint32> pcchXMLData,
),
    int Function(
  Pointer<Utf16> szPatchPath,
  int dwReserved,
  Pointer<Utf16> szXMLData,
  Pointer<Uint32> pcchXMLData,
)>('MsiExtractPatchXMLDataW');

int MsiFormatRecord(
  int hInstall,
  int hRecord,
  Pointer<Utf16> szResultBuf,
  Pointer<Uint32> pcchResultBuf,
) =>
    _MsiFormatRecord(
      hInstall,
      hRecord,
      szResultBuf,
      pcchResultBuf,
    );

late final _MsiFormatRecord = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Uint32 hRecord,
  Pointer<Utf16> szResultBuf,
  Pointer<Uint32> pcchResultBuf,
),
    int Function(
  int hInstall,
  int hRecord,
  Pointer<Utf16> szResultBuf,
  Pointer<Uint32> pcchResultBuf,
)>('MsiFormatRecordW');

int MsiGetActiveDatabase(
  int hInstall,
) =>
    _MsiGetActiveDatabase(
      hInstall,
    );

late final _MsiGetActiveDatabase = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
),
    int Function(
  int hInstall,
)>('MsiGetActiveDatabase');

int MsiGetComponentPathEx(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szComponentCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> lpOutPathBuffer,
  Pointer<Uint32> pcchOutPathBuffer,
) =>
    _MsiGetComponentPathEx(
      szProductCode,
      szComponentCode,
      szUserSid,
      dwContext,
      lpOutPathBuffer,
      pcchOutPathBuffer,
    );

late final _MsiGetComponentPathEx = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szComponentCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Pointer<Utf16> lpOutPathBuffer,
  Pointer<Uint32> pcchOutPathBuffer,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szComponentCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> lpOutPathBuffer,
  Pointer<Uint32> pcchOutPathBuffer,
)>('MsiGetComponentPathExW');

int MsiGetComponentPath(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
) =>
    _MsiGetComponentPath(
      szProduct,
      szComponent,
      lpPathBuf,
      pcchBuf,
    );

late final _MsiGetComponentPath = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
)>('MsiGetComponentPathW');

int MsiGetComponentState(
  int hInstall,
  Pointer<Utf16> szComponent,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
) =>
    _MsiGetComponentState(
      hInstall,
      szComponent,
      piInstalled,
      piAction,
    );

late final _MsiGetComponentState = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szComponent,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szComponent,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
)>('MsiGetComponentStateW');

int MsiGetDatabaseState(
  int hDatabase,
) =>
    _MsiGetDatabaseState(
      hDatabase,
    );

late final _MsiGetDatabaseState = _msi.lookupFunction<
    Int32 Function(
  Uint32 hDatabase,
),
    int Function(
  int hDatabase,
)>('MsiGetDatabaseState');

int MsiGetFeatureCost(
  int hInstall,
  Pointer<Utf16> szFeature,
  int iCostTree,
  int iState,
  Pointer<Int32> piCost,
) =>
    _MsiGetFeatureCost(
      hInstall,
      szFeature,
      iCostTree,
      iState,
      piCost,
    );

late final _MsiGetFeatureCost = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFeature,
  Int32 iCostTree,
  Int32 iState,
  Pointer<Int32> piCost,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFeature,
  int iCostTree,
  int iState,
  Pointer<Int32> piCost,
)>('MsiGetFeatureCostW');

int MsiGetFeatureInfo(
  int hProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpAttributes,
  Pointer<Utf16> lpTitleBuf,
  Pointer<Uint32> pcchTitleBuf,
  Pointer<Utf16> lpHelpBuf,
  Pointer<Uint32> pcchHelpBuf,
) =>
    _MsiGetFeatureInfo(
      hProduct,
      szFeature,
      lpAttributes,
      lpTitleBuf,
      pcchTitleBuf,
      lpHelpBuf,
      pcchHelpBuf,
    );

late final _MsiGetFeatureInfo = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpAttributes,
  Pointer<Utf16> lpTitleBuf,
  Pointer<Uint32> pcchTitleBuf,
  Pointer<Utf16> lpHelpBuf,
  Pointer<Uint32> pcchHelpBuf,
),
    int Function(
  int hProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpAttributes,
  Pointer<Utf16> lpTitleBuf,
  Pointer<Uint32> pcchTitleBuf,
  Pointer<Utf16> lpHelpBuf,
  Pointer<Uint32> pcchHelpBuf,
)>('MsiGetFeatureInfoW');

int MsiGetFeatureState(
  int hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
) =>
    _MsiGetFeatureState(
      hInstall,
      szFeature,
      piInstalled,
      piAction,
    );

late final _MsiGetFeatureState = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Int32> piInstalled,
  Pointer<Int32> piAction,
)>('MsiGetFeatureStateW');

int MsiGetFeatureUsage(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> pdwUseCount,
  Pointer<Uint16> pwDateUsed,
) =>
    _MsiGetFeatureUsage(
      szProduct,
      szFeature,
      pdwUseCount,
      pwDateUsed,
    );

late final _MsiGetFeatureUsage = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> pdwUseCount,
  Pointer<Uint16> pwDateUsed,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> pdwUseCount,
  Pointer<Uint16> pwDateUsed,
)>('MsiGetFeatureUsageW');

int MsiGetFeatureValidStates(
  int hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpInstallStates,
) =>
    _MsiGetFeatureValidStates(
      hInstall,
      szFeature,
      lpInstallStates,
    );

late final _MsiGetFeatureValidStates = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpInstallStates,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFeature,
  Pointer<Uint32> lpInstallStates,
)>('MsiGetFeatureValidStatesW');

int MsiGetFileHash(
  Pointer<Utf16> szFilePath,
  int dwOptions,
  Pointer<MSIFILEHASHINFO> pHash,
) =>
    _MsiGetFileHash(
      szFilePath,
      dwOptions,
      pHash,
    );

late final _MsiGetFileHash = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szFilePath,
  Uint32 dwOptions,
  Pointer<MSIFILEHASHINFO> pHash,
),
    int Function(
  Pointer<Utf16> szFilePath,
  int dwOptions,
  Pointer<MSIFILEHASHINFO> pHash,
)>('MsiGetFileHashW');

int MsiGetFileSignatureInformation(
  Pointer<Utf16> szSignedObjectPath,
  int dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppcCertContext,
  Pointer<Uint8> pbHashData,
  Pointer<Uint32> pcbHashData,
) =>
    _MsiGetFileSignatureInformation(
      szSignedObjectPath,
      dwFlags,
      ppcCertContext,
      pbHashData,
      pcbHashData,
    );

late final _MsiGetFileSignatureInformation = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szSignedObjectPath,
  Uint32 dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppcCertContext,
  Pointer<Uint8> pbHashData,
  Pointer<Uint32> pcbHashData,
),
    int Function(
  Pointer<Utf16> szSignedObjectPath,
  int dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppcCertContext,
  Pointer<Uint8> pbHashData,
  Pointer<Uint32> pcbHashData,
)>('MsiGetFileSignatureInformationW');

int MsiGetFileVersion(
  Pointer<Utf16> szFilePath,
  Pointer<Utf16> lpVersionBuf,
  Pointer<Uint32> pcchVersionBuf,
  Pointer<Utf16> lpLangBuf,
  Pointer<Uint32> pcchLangBuf,
) =>
    _MsiGetFileVersion(
      szFilePath,
      lpVersionBuf,
      pcchVersionBuf,
      lpLangBuf,
      pcchLangBuf,
    );

late final _MsiGetFileVersion = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szFilePath,
  Pointer<Utf16> lpVersionBuf,
  Pointer<Uint32> pcchVersionBuf,
  Pointer<Utf16> lpLangBuf,
  Pointer<Uint32> pcchLangBuf,
),
    int Function(
  Pointer<Utf16> szFilePath,
  Pointer<Utf16> lpVersionBuf,
  Pointer<Uint32> pcchVersionBuf,
  Pointer<Utf16> lpLangBuf,
  Pointer<Uint32> pcchLangBuf,
)>('MsiGetFileVersionW');

int MsiGetLanguage(
  int hInstall,
) =>
    _MsiGetLanguage(
      hInstall,
    );

late final _MsiGetLanguage = _msi.lookupFunction<
    Uint16 Function(
  Uint32 hInstall,
),
    int Function(
  int hInstall,
)>('MsiGetLanguage');

int MsiGetLastErrorRecord() => _MsiGetLastErrorRecord();

late final _MsiGetLastErrorRecord = _msi
    .lookupFunction<Uint32 Function(), int Function()>('MsiGetLastErrorRecord');

int MsiGetMode(
  int hInstall,
  int eRunMode,
) =>
    _MsiGetMode(
      hInstall,
      eRunMode,
    );

late final _MsiGetMode = _msi.lookupFunction<
    Int32 Function(
  Uint32 hInstall,
  Int32 eRunMode,
),
    int Function(
  int hInstall,
  int eRunMode,
)>('MsiGetMode');

int MsiGetPatchFileList(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPatchPackages,
  Pointer<Uint32> pcFiles,
  Pointer<Pointer<Uint32>> pphFileRecords,
) =>
    _MsiGetPatchFileList(
      szProductCode,
      szPatchPackages,
      pcFiles,
      pphFileRecords,
    );

late final _MsiGetPatchFileList = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPatchPackages,
  Pointer<Uint32> pcFiles,
  Pointer<Pointer<Uint32>> pphFileRecords,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szPatchPackages,
  Pointer<Uint32> pcFiles,
  Pointer<Pointer<Uint32>> pphFileRecords,
)>('MsiGetPatchFileListW');

int MsiGetPatchInfoEx(
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValue,
  Pointer<Uint32> pcchValue,
) =>
    _MsiGetPatchInfoEx(
      szPatchCode,
      szProductCode,
      szUserSid,
      dwContext,
      szProperty,
      lpValue,
      pcchValue,
    );

late final _MsiGetPatchInfoEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValue,
  Pointer<Uint32> pcchValue,
),
    int Function(
  Pointer<Utf16> szPatchCode,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValue,
  Pointer<Uint32> pcchValue,
)>('MsiGetPatchInfoExW');

int MsiGetPatchInfo(
  Pointer<Utf16> szPatch,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiGetPatchInfo(
      szPatch,
      szAttribute,
      lpValueBuf,
      pcchValueBuf,
    );

late final _MsiGetPatchInfo = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatch,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  Pointer<Utf16> szPatch,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiGetPatchInfoW');

int MsiGetProductCode(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpBuf39,
) =>
    _MsiGetProductCode(
      szComponent,
      lpBuf39,
    );

late final _MsiGetProductCode = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpBuf39,
),
    int Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpBuf39,
)>('MsiGetProductCodeW');

int MsiGetProductInfoEx(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
) =>
    _MsiGetProductInfoEx(
      szProductCode,
      szUserSid,
      dwContext,
      szProperty,
      szValue,
      pcchValue,
    );

late final _MsiGetProductInfoEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
)>('MsiGetProductInfoExW');

int MsiGetProductInfoFromScript(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> lpProductBuf39,
  Pointer<Uint16> plgidLanguage,
  Pointer<Uint32> pdwVersion,
  Pointer<Utf16> lpNameBuf,
  Pointer<Uint32> pcchNameBuf,
  Pointer<Utf16> lpPackageBuf,
  Pointer<Uint32> pcchPackageBuf,
) =>
    _MsiGetProductInfoFromScript(
      szScriptFile,
      lpProductBuf39,
      plgidLanguage,
      pdwVersion,
      lpNameBuf,
      pcchNameBuf,
      lpPackageBuf,
      pcchPackageBuf,
    );

late final _MsiGetProductInfoFromScript = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> lpProductBuf39,
  Pointer<Uint16> plgidLanguage,
  Pointer<Uint32> pdwVersion,
  Pointer<Utf16> lpNameBuf,
  Pointer<Uint32> pcchNameBuf,
  Pointer<Utf16> lpPackageBuf,
  Pointer<Uint32> pcchPackageBuf,
),
    int Function(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> lpProductBuf39,
  Pointer<Uint16> plgidLanguage,
  Pointer<Uint32> pdwVersion,
  Pointer<Utf16> lpNameBuf,
  Pointer<Uint32> pcchNameBuf,
  Pointer<Utf16> lpPackageBuf,
  Pointer<Uint32> pcchPackageBuf,
)>('MsiGetProductInfoFromScriptW');

int MsiGetProductInfo(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiGetProductInfo(
      szProduct,
      szAttribute,
      lpValueBuf,
      pcchValueBuf,
    );

late final _MsiGetProductInfo = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szAttribute,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiGetProductInfoW');

int MsiGetProductProperty(
  int hProduct,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiGetProductProperty(
      hProduct,
      szProperty,
      lpValueBuf,
      pcchValueBuf,
    );

late final _MsiGetProductProperty = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hProduct,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  int hProduct,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiGetProductPropertyW');

int MsiGetProperty(
  int hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiGetProperty(
      hInstall,
      szName,
      szValueBuf,
      pcchValueBuf,
    );

late final _MsiGetProperty = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiGetPropertyW');

int MsiGetShortcutTarget(
  Pointer<Utf16> szShortcutPath,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szFeatureId,
  Pointer<Utf16> szComponentCode,
) =>
    _MsiGetShortcutTarget(
      szShortcutPath,
      szProductCode,
      szFeatureId,
      szComponentCode,
    );

late final _MsiGetShortcutTarget = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szShortcutPath,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szFeatureId,
  Pointer<Utf16> szComponentCode,
),
    int Function(
  Pointer<Utf16> szShortcutPath,
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szFeatureId,
  Pointer<Utf16> szComponentCode,
)>('MsiGetShortcutTargetW');

int MsiGetSourcePath(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiGetSourcePath(
      hInstall,
      szFolder,
      szPathBuf,
      pcchPathBuf,
    );

late final _MsiGetSourcePath = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiGetSourcePathW');

int MsiGetSummaryInformation(
  int hDatabase,
  Pointer<Utf16> szDatabasePath,
  int uiUpdateCount,
  Pointer<Uint32> phSummaryInfo,
) =>
    _MsiGetSummaryInformation(
      hDatabase,
      szDatabasePath,
      uiUpdateCount,
      phSummaryInfo,
    );

late final _MsiGetSummaryInformation = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hDatabase,
  Pointer<Utf16> szDatabasePath,
  Uint32 uiUpdateCount,
  Pointer<Uint32> phSummaryInfo,
),
    int Function(
  int hDatabase,
  Pointer<Utf16> szDatabasePath,
  int uiUpdateCount,
  Pointer<Uint32> phSummaryInfo,
)>('MsiGetSummaryInformationW');

int MsiGetTargetPath(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiGetTargetPath(
      hInstall,
      szFolder,
      szPathBuf,
      pcchPathBuf,
    );

late final _MsiGetTargetPath = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiGetTargetPathW');

int MsiGetUserInfo(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> lpUserNameBuf,
  Pointer<Uint32> pcchUserNameBuf,
  Pointer<Utf16> lpOrgNameBuf,
  Pointer<Uint32> pcchOrgNameBuf,
  Pointer<Utf16> lpSerialBuf,
  Pointer<Uint32> pcchSerialBuf,
) =>
    _MsiGetUserInfo(
      szProduct,
      lpUserNameBuf,
      pcchUserNameBuf,
      lpOrgNameBuf,
      pcchOrgNameBuf,
      lpSerialBuf,
      pcchSerialBuf,
    );

late final _MsiGetUserInfo = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> lpUserNameBuf,
  Pointer<Uint32> pcchUserNameBuf,
  Pointer<Utf16> lpOrgNameBuf,
  Pointer<Uint32> pcchOrgNameBuf,
  Pointer<Utf16> lpSerialBuf,
  Pointer<Uint32> pcchSerialBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> lpUserNameBuf,
  Pointer<Uint32> pcchUserNameBuf,
  Pointer<Utf16> lpOrgNameBuf,
  Pointer<Uint32> pcchOrgNameBuf,
  Pointer<Utf16> lpSerialBuf,
  Pointer<Uint32> pcchSerialBuf,
)>('MsiGetUserInfoW');

int MsiInstallMissingComponent(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  int eInstallState,
) =>
    _MsiInstallMissingComponent(
      szProduct,
      szComponent,
      eInstallState,
    );

late final _MsiInstallMissingComponent = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  Int32 eInstallState,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szComponent,
  int eInstallState,
)>('MsiInstallMissingComponentW');

int MsiInstallMissingFile(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFile,
) =>
    _MsiInstallMissingFile(
      szProduct,
      szFile,
    );

late final _MsiInstallMissingFile = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFile,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFile,
)>('MsiInstallMissingFileW');

int MsiInstallProduct(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szCommandLine,
) =>
    _MsiInstallProduct(
      szPackagePath,
      szCommandLine,
    );

late final _MsiInstallProduct = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szCommandLine,
),
    int Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Utf16> szCommandLine,
)>('MsiInstallProductW');

int MsiIsProductElevated(
  Pointer<Utf16> szProduct,
  Pointer<Int32> pfElevated,
) =>
    _MsiIsProductElevated(
      szProduct,
      pfElevated,
    );

late final _MsiIsProductElevated = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Int32> pfElevated,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Int32> pfElevated,
)>('MsiIsProductElevatedW');

int MsiJoinTransaction(
  int hTransactionHandle,
  int dwTransactionAttributes,
  Pointer<IntPtr> phChangeOfOwnerEvent,
) =>
    _MsiJoinTransaction(
      hTransactionHandle,
      dwTransactionAttributes,
      phChangeOfOwnerEvent,
    );

late final _MsiJoinTransaction = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hTransactionHandle,
  Uint32 dwTransactionAttributes,
  Pointer<IntPtr> phChangeOfOwnerEvent,
),
    int Function(
  int hTransactionHandle,
  int dwTransactionAttributes,
  Pointer<IntPtr> phChangeOfOwnerEvent,
)>('MsiJoinTransaction');

int MsiLocateComponent(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
) =>
    _MsiLocateComponent(
      szComponent,
      lpPathBuf,
      pcchBuf,
    );

late final _MsiLocateComponent = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
),
    int Function(
  Pointer<Utf16> szComponent,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchBuf,
)>('MsiLocateComponentW');

int MsiNotifySidChange(
  Pointer<Utf16> pOldSid,
  Pointer<Utf16> pNewSid,
) =>
    _MsiNotifySidChange(
      pOldSid,
      pNewSid,
    );

late final _MsiNotifySidChange = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pOldSid,
  Pointer<Utf16> pNewSid,
),
    int Function(
  Pointer<Utf16> pOldSid,
  Pointer<Utf16> pNewSid,
)>('MsiNotifySidChangeW');

int MsiOpenDatabase(
  Pointer<Utf16> szDatabasePath,
  Pointer<Utf16> szPersist,
  Pointer<Uint32> phDatabase,
) =>
    _MsiOpenDatabase(
      szDatabasePath,
      szPersist,
      phDatabase,
    );

late final _MsiOpenDatabase = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szDatabasePath,
  Pointer<Utf16> szPersist,
  Pointer<Uint32> phDatabase,
),
    int Function(
  Pointer<Utf16> szDatabasePath,
  Pointer<Utf16> szPersist,
  Pointer<Uint32> phDatabase,
)>('MsiOpenDatabaseW');

int MsiOpenPackageEx(
  Pointer<Utf16> szPackagePath,
  int dwOptions,
  Pointer<Uint32> hProduct,
) =>
    _MsiOpenPackageEx(
      szPackagePath,
      dwOptions,
      hProduct,
    );

late final _MsiOpenPackageEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
  Uint32 dwOptions,
  Pointer<Uint32> hProduct,
),
    int Function(
  Pointer<Utf16> szPackagePath,
  int dwOptions,
  Pointer<Uint32> hProduct,
)>('MsiOpenPackageExW');

int MsiOpenPackage(
  Pointer<Utf16> szPackagePath,
  Pointer<Uint32> hProduct,
) =>
    _MsiOpenPackage(
      szPackagePath,
      hProduct,
    );

late final _MsiOpenPackage = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Uint32> hProduct,
),
    int Function(
  Pointer<Utf16> szPackagePath,
  Pointer<Uint32> hProduct,
)>('MsiOpenPackageW');

int MsiOpenProduct(
  Pointer<Utf16> szProduct,
  Pointer<Uint32> hProduct,
) =>
    _MsiOpenProduct(
      szProduct,
      hProduct,
    );

late final _MsiOpenProduct = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Uint32> hProduct,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Uint32> hProduct,
)>('MsiOpenProductW');

int MsiPreviewBillboard(
  int hPreview,
  Pointer<Utf16> szControlName,
  Pointer<Utf16> szBillboard,
) =>
    _MsiPreviewBillboard(
      hPreview,
      szControlName,
      szBillboard,
    );

late final _MsiPreviewBillboard = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hPreview,
  Pointer<Utf16> szControlName,
  Pointer<Utf16> szBillboard,
),
    int Function(
  int hPreview,
  Pointer<Utf16> szControlName,
  Pointer<Utf16> szBillboard,
)>('MsiPreviewBillboardW');

int MsiPreviewDialog(
  int hPreview,
  Pointer<Utf16> szDialogName,
) =>
    _MsiPreviewDialog(
      hPreview,
      szDialogName,
    );

late final _MsiPreviewDialog = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hPreview,
  Pointer<Utf16> szDialogName,
),
    int Function(
  int hPreview,
  Pointer<Utf16> szDialogName,
)>('MsiPreviewDialogW');

int MsiProcessAdvertiseScript(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> szIconFolder,
  int hRegData,
  int fShortcuts,
  int fRemoveItems,
) =>
    _MsiProcessAdvertiseScript(
      szScriptFile,
      szIconFolder,
      hRegData,
      fShortcuts,
      fRemoveItems,
    );

late final _MsiProcessAdvertiseScript = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> szIconFolder,
  IntPtr hRegData,
  Int32 fShortcuts,
  Int32 fRemoveItems,
),
    int Function(
  Pointer<Utf16> szScriptFile,
  Pointer<Utf16> szIconFolder,
  int hRegData,
  int fShortcuts,
  int fRemoveItems,
)>('MsiProcessAdvertiseScriptW');

int MsiProcessMessage(
  int hInstall,
  int eMessageType,
  int hRecord,
) =>
    _MsiProcessMessage(
      hInstall,
      eMessageType,
      hRecord,
    );

late final _MsiProcessMessage = _msi.lookupFunction<
    Int32 Function(
  Uint32 hInstall,
  Int32 eMessageType,
  Uint32 hRecord,
),
    int Function(
  int hInstall,
  int eMessageType,
  int hRecord,
)>('MsiProcessMessage');

int MsiProvideAssembly(
  Pointer<Utf16> szAssemblyName,
  Pointer<Utf16> szAppContext,
  int dwInstallMode,
  int dwAssemblyInfo,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiProvideAssembly(
      szAssemblyName,
      szAppContext,
      dwInstallMode,
      dwAssemblyInfo,
      lpPathBuf,
      pcchPathBuf,
    );

late final _MsiProvideAssembly = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szAssemblyName,
  Pointer<Utf16> szAppContext,
  Int32 dwInstallMode,
  Uint32 dwAssemblyInfo,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  Pointer<Utf16> szAssemblyName,
  Pointer<Utf16> szAppContext,
  int dwInstallMode,
  int dwAssemblyInfo,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiProvideAssemblyW');

int MsiProvideComponent(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Utf16> szComponent,
  int dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiProvideComponent(
      szProduct,
      szFeature,
      szComponent,
      dwInstallMode,
      lpPathBuf,
      pcchPathBuf,
    );

late final _MsiProvideComponent = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Utf16> szComponent,
  Int32 dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Pointer<Utf16> szComponent,
  int dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiProvideComponentW');

int MsiProvideQualifiedComponentEx(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  int dwInstallMode,
  Pointer<Utf16> szProduct,
  int dwUnused1,
  int dwUnused2,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiProvideQualifiedComponentEx(
      szCategory,
      szQualifier,
      dwInstallMode,
      szProduct,
      dwUnused1,
      dwUnused2,
      lpPathBuf,
      pcchPathBuf,
    );

late final _MsiProvideQualifiedComponentEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  Int32 dwInstallMode,
  Pointer<Utf16> szProduct,
  Uint32 dwUnused1,
  Uint32 dwUnused2,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  int dwInstallMode,
  Pointer<Utf16> szProduct,
  int dwUnused1,
  int dwUnused2,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiProvideQualifiedComponentExW');

int MsiProvideQualifiedComponent(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  int dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
) =>
    _MsiProvideQualifiedComponent(
      szCategory,
      szQualifier,
      dwInstallMode,
      lpPathBuf,
      pcchPathBuf,
    );

late final _MsiProvideQualifiedComponent = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  Int32 dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
),
    int Function(
  Pointer<Utf16> szCategory,
  Pointer<Utf16> szQualifier,
  int dwInstallMode,
  Pointer<Utf16> lpPathBuf,
  Pointer<Uint32> pcchPathBuf,
)>('MsiProvideQualifiedComponentW');

int MsiQueryComponentState(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szComponentCode,
  Pointer<Int32> pdwState,
) =>
    _MsiQueryComponentState(
      szProductCode,
      szUserSid,
      dwContext,
      szComponentCode,
      pdwState,
    );

late final _MsiQueryComponentState = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Pointer<Utf16> szComponentCode,
  Pointer<Int32> pdwState,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szComponentCode,
  Pointer<Int32> pdwState,
)>('MsiQueryComponentStateW');

int MsiQueryFeatureStateEx(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szFeature,
  Pointer<Int32> pdwState,
) =>
    _MsiQueryFeatureStateEx(
      szProductCode,
      szUserSid,
      dwContext,
      szFeature,
      pdwState,
    );

late final _MsiQueryFeatureStateEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Pointer<Utf16> szFeature,
  Pointer<Int32> pdwState,
),
    int Function(
  Pointer<Utf16> szProductCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  Pointer<Utf16> szFeature,
  Pointer<Int32> pdwState,
)>('MsiQueryFeatureStateExW');

int MsiQueryFeatureState(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
) =>
    _MsiQueryFeatureState(
      szProduct,
      szFeature,
    );

late final _MsiQueryFeatureState = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
)>('MsiQueryFeatureStateW');

int MsiQueryProductState(
  Pointer<Utf16> szProduct,
) =>
    _MsiQueryProductState(
      szProduct,
    );

late final _MsiQueryProductState = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
),
    int Function(
  Pointer<Utf16> szProduct,
)>('MsiQueryProductStateW');

int MsiRecordClearData(
  int hRecord,
) =>
    _MsiRecordClearData(
      hRecord,
    );

late final _MsiRecordClearData = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
),
    int Function(
  int hRecord,
)>('MsiRecordClearData');

int MsiRecordDataSize(
  int hRecord,
  int iField,
) =>
    _MsiRecordDataSize(
      hRecord,
      iField,
    );

late final _MsiRecordDataSize = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
),
    int Function(
  int hRecord,
  int iField,
)>('MsiRecordDataSize');

int MsiRecordGetFieldCount(
  int hRecord,
) =>
    _MsiRecordGetFieldCount(
      hRecord,
    );

late final _MsiRecordGetFieldCount = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
),
    int Function(
  int hRecord,
)>('MsiRecordGetFieldCount');

int MsiRecordGetInteger(
  int hRecord,
  int iField,
) =>
    _MsiRecordGetInteger(
      hRecord,
      iField,
    );

late final _MsiRecordGetInteger = _msi.lookupFunction<
    Int32 Function(
  Uint32 hRecord,
  Uint32 iField,
),
    int Function(
  int hRecord,
  int iField,
)>('MsiRecordGetInteger');

int MsiRecordGetString(
  int hRecord,
  int iField,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiRecordGetString(
      hRecord,
      iField,
      szValueBuf,
      pcchValueBuf,
    );

late final _MsiRecordGetString = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  int hRecord,
  int iField,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiRecordGetStringW');

int MsiRecordIsNull(
  int hRecord,
  int iField,
) =>
    _MsiRecordIsNull(
      hRecord,
      iField,
    );

late final _MsiRecordIsNull = _msi.lookupFunction<
    Int32 Function(
  Uint32 hRecord,
  Uint32 iField,
),
    int Function(
  int hRecord,
  int iField,
)>('MsiRecordIsNull');

int MsiRecordReadStream(
  int hRecord,
  int iField,
  Pointer<Utf8> szDataBuf,
  Pointer<Uint32> pcbDataBuf,
) =>
    _MsiRecordReadStream(
      hRecord,
      iField,
      szDataBuf,
      pcbDataBuf,
    );

late final _MsiRecordReadStream = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
  Pointer<Utf8> szDataBuf,
  Pointer<Uint32> pcbDataBuf,
),
    int Function(
  int hRecord,
  int iField,
  Pointer<Utf8> szDataBuf,
  Pointer<Uint32> pcbDataBuf,
)>('MsiRecordReadStream');

int MsiRecordSetInteger(
  int hRecord,
  int iField,
  int iValue,
) =>
    _MsiRecordSetInteger(
      hRecord,
      iField,
      iValue,
    );

late final _MsiRecordSetInteger = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
  Int32 iValue,
),
    int Function(
  int hRecord,
  int iField,
  int iValue,
)>('MsiRecordSetInteger');

int MsiRecordSetStream(
  int hRecord,
  int iField,
  Pointer<Utf16> szFilePath,
) =>
    _MsiRecordSetStream(
      hRecord,
      iField,
      szFilePath,
    );

late final _MsiRecordSetStream = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
  Pointer<Utf16> szFilePath,
),
    int Function(
  int hRecord,
  int iField,
  Pointer<Utf16> szFilePath,
)>('MsiRecordSetStreamW');

int MsiRecordSetString(
  int hRecord,
  int iField,
  Pointer<Utf16> szValue,
) =>
    _MsiRecordSetString(
      hRecord,
      iField,
      szValue,
    );

late final _MsiRecordSetString = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hRecord,
  Uint32 iField,
  Pointer<Utf16> szValue,
),
    int Function(
  int hRecord,
  int iField,
  Pointer<Utf16> szValue,
)>('MsiRecordSetStringW');

int MsiReinstallFeature(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int dwReinstallMode,
) =>
    _MsiReinstallFeature(
      szProduct,
      szFeature,
      dwReinstallMode,
    );

late final _MsiReinstallFeature = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Int32 dwReinstallMode,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int dwReinstallMode,
)>('MsiReinstallFeatureW');

int MsiReinstallProduct(
  Pointer<Utf16> szProduct,
  int szReinstallMode,
) =>
    _MsiReinstallProduct(
      szProduct,
      szReinstallMode,
    );

late final _MsiReinstallProduct = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Int32 szReinstallMode,
),
    int Function(
  Pointer<Utf16> szProduct,
  int szReinstallMode,
)>('MsiReinstallProductW');

int MsiRemovePatches(
  Pointer<Utf16> szPatchList,
  Pointer<Utf16> szProductCode,
  int eUninstallType,
  Pointer<Utf16> szPropertyList,
) =>
    _MsiRemovePatches(
      szPatchList,
      szProductCode,
      eUninstallType,
      szPropertyList,
    );

late final _MsiRemovePatches = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPatchList,
  Pointer<Utf16> szProductCode,
  Int32 eUninstallType,
  Pointer<Utf16> szPropertyList,
),
    int Function(
  Pointer<Utf16> szPatchList,
  Pointer<Utf16> szProductCode,
  int eUninstallType,
  Pointer<Utf16> szPropertyList,
)>('MsiRemovePatchesW');

int MsiSequence(
  int hInstall,
  Pointer<Utf16> szTable,
  int iSequenceMode,
) =>
    _MsiSequence(
      hInstall,
      szTable,
      iSequenceMode,
    );

late final _MsiSequence = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szTable,
  Int32 iSequenceMode,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szTable,
  int iSequenceMode,
)>('MsiSequenceW');

int MsiSetComponentState(
  int hInstall,
  Pointer<Utf16> szComponent,
  int iState,
) =>
    _MsiSetComponentState(
      hInstall,
      szComponent,
      iState,
    );

late final _MsiSetComponentState = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szComponent,
  Int32 iState,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szComponent,
  int iState,
)>('MsiSetComponentStateW');

int MsiSetExternalUIRecord(
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> puiHandler,
  int dwMessageFilter,
  Pointer pvContext,
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> ppuiPrevHandler,
) =>
    _MsiSetExternalUIRecord(
      puiHandler,
      dwMessageFilter,
      pvContext,
      ppuiPrevHandler,
    );

late final _MsiSetExternalUIRecord = _msi.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> puiHandler,
  Uint32 dwMessageFilter,
  Pointer pvContext,
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> ppuiPrevHandler,
),
    int Function(
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> puiHandler,
  int dwMessageFilter,
  Pointer pvContext,
  Pointer<NativeFunction<PINSTALLUI_HANDLER_RECORD>> ppuiPrevHandler,
)>('MsiSetExternalUIRecord');

Pointer<NativeFunction<INSTALLUI_HANDLERW>> MsiSetExternalUI(
  Pointer<NativeFunction<INSTALLUI_HANDLERW>> puiHandler,
  int dwMessageFilter,
  Pointer pvContext,
) =>
    _MsiSetExternalUI(
      puiHandler,
      dwMessageFilter,
      pvContext,
    );

late final _MsiSetExternalUI = _msi.lookupFunction<
    Pointer<NativeFunction<INSTALLUI_HANDLERW>> Function(
  Pointer<NativeFunction<INSTALLUI_HANDLERW>> puiHandler,
  Uint32 dwMessageFilter,
  Pointer pvContext,
),
    Pointer<NativeFunction<INSTALLUI_HANDLERW>> Function(
  Pointer<NativeFunction<INSTALLUI_HANDLERW>> puiHandler,
  int dwMessageFilter,
  Pointer pvContext,
)>('MsiSetExternalUIW');

int MsiSetFeatureAttributes(
  int hInstall,
  Pointer<Utf16> szFeature,
  int dwAttributes,
) =>
    _MsiSetFeatureAttributes(
      hInstall,
      szFeature,
      dwAttributes,
    );

late final _MsiSetFeatureAttributes = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFeature,
  Uint32 dwAttributes,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFeature,
  int dwAttributes,
)>('MsiSetFeatureAttributesW');

int MsiSetFeatureState(
  int hInstall,
  Pointer<Utf16> szFeature,
  int iState,
) =>
    _MsiSetFeatureState(
      hInstall,
      szFeature,
      iState,
    );

late final _MsiSetFeatureState = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFeature,
  Int32 iState,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFeature,
  int iState,
)>('MsiSetFeatureStateW');

int MsiSetInstallLevel(
  int hInstall,
  int iInstallLevel,
) =>
    _MsiSetInstallLevel(
      hInstall,
      iInstallLevel,
    );

late final _MsiSetInstallLevel = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Int32 iInstallLevel,
),
    int Function(
  int hInstall,
  int iInstallLevel,
)>('MsiSetInstallLevel');

int MsiSetInternalUI(
  int dwUILevel,
  Pointer<IntPtr> phWnd,
) =>
    _MsiSetInternalUI(
      dwUILevel,
      phWnd,
    );

late final _MsiSetInternalUI = _msi.lookupFunction<
    Int32 Function(
  Int32 dwUILevel,
  Pointer<IntPtr> phWnd,
),
    int Function(
  int dwUILevel,
  Pointer<IntPtr> phWnd,
)>('MsiSetInternalUI');

int MsiSetMode(
  int hInstall,
  int eRunMode,
  int fState,
) =>
    _MsiSetMode(
      hInstall,
      eRunMode,
      fState,
    );

late final _MsiSetMode = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Int32 eRunMode,
  Int32 fState,
),
    int Function(
  int hInstall,
  int eRunMode,
  int fState,
)>('MsiSetMode');

int MsiSetProperty(
  int hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValue,
) =>
    _MsiSetProperty(
      hInstall,
      szName,
      szValue,
    );

late final _MsiSetProperty = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValue,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szName,
  Pointer<Utf16> szValue,
)>('MsiSetPropertyW');

int MsiSetTargetPath(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szFolderPath,
) =>
    _MsiSetTargetPath(
      hInstall,
      szFolder,
      szFolderPath,
    );

late final _MsiSetTargetPath = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szFolderPath,
),
    int Function(
  int hInstall,
  Pointer<Utf16> szFolder,
  Pointer<Utf16> szFolderPath,
)>('MsiSetTargetPathW');

int MsiSourceListAddMediaDisk(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
) =>
    _MsiSourceListAddMediaDisk(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      dwDiskId,
      szVolumeLabel,
      szDiskPrompt,
    );

late final _MsiSourceListAddMediaDisk = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Uint32 dwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
)>('MsiSourceListAddMediaDiskW');

int MsiSourceListAddSourceEx(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szSource,
  int dwIndex,
) =>
    _MsiSourceListAddSourceEx(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      szSource,
      dwIndex,
    );

late final _MsiSourceListAddSourceEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Pointer<Utf16> szSource,
  Uint32 dwIndex,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szSource,
  int dwIndex,
)>('MsiSourceListAddSourceExW');

int MsiSourceListAddSource(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
  Pointer<Utf16> szSource,
) =>
    _MsiSourceListAddSource(
      szProduct,
      szUserName,
      dwReserved,
      szSource,
    );

late final _MsiSourceListAddSource = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  Uint32 dwReserved,
  Pointer<Utf16> szSource,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
  Pointer<Utf16> szSource,
)>('MsiSourceListAddSourceW');

int MsiSourceListClearAllEx(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
) =>
    _MsiSourceListClearAllEx(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
    );

late final _MsiSourceListClearAllEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
)>('MsiSourceListClearAllExW');

int MsiSourceListClearAll(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
) =>
    _MsiSourceListClearAll(
      szProduct,
      szUserName,
      dwReserved,
    );

late final _MsiSourceListClearAll = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
)>('MsiSourceListClearAllW');

int MsiSourceListClearMediaDisk(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwDiskId,
) =>
    _MsiSourceListClearMediaDisk(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      dwDiskId,
    );

late final _MsiSourceListClearMediaDisk = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Uint32 dwDiskId,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwDiskId,
)>('MsiSourceListClearMediaDiskW');

int MsiSourceListClearSource(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szSource,
) =>
    _MsiSourceListClearSource(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      szSource,
    );

late final _MsiSourceListClearSource = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Pointer<Utf16> szSource,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szSource,
)>('MsiSourceListClearSourceW');

int MsiSourceListEnumMediaDisks(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwIndex,
  Pointer<Uint32> pdwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Uint32> pcchVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
  Pointer<Uint32> pcchDiskPrompt,
) =>
    _MsiSourceListEnumMediaDisks(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      dwIndex,
      pdwDiskId,
      szVolumeLabel,
      pcchVolumeLabel,
      szDiskPrompt,
      pcchDiskPrompt,
    );

late final _MsiSourceListEnumMediaDisks = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Uint32 dwIndex,
  Pointer<Uint32> pdwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Uint32> pcchVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
  Pointer<Uint32> pcchDiskPrompt,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwIndex,
  Pointer<Uint32> pdwDiskId,
  Pointer<Utf16> szVolumeLabel,
  Pointer<Uint32> pcchVolumeLabel,
  Pointer<Utf16> szDiskPrompt,
  Pointer<Uint32> pcchDiskPrompt,
)>('MsiSourceListEnumMediaDisksW');

int MsiSourceListEnumSources(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwIndex,
  Pointer<Utf16> szSource,
  Pointer<Uint32> pcchSource,
) =>
    _MsiSourceListEnumSources(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      dwIndex,
      szSource,
      pcchSource,
    );

late final _MsiSourceListEnumSources = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Uint32 dwIndex,
  Pointer<Utf16> szSource,
  Pointer<Uint32> pcchSource,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  int dwIndex,
  Pointer<Utf16> szSource,
  Pointer<Uint32> pcchSource,
)>('MsiSourceListEnumSourcesW');

int MsiSourceListForceResolutionEx(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
) =>
    _MsiSourceListForceResolutionEx(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
    );

late final _MsiSourceListForceResolutionEx = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
)>('MsiSourceListForceResolutionExW');

int MsiSourceListForceResolution(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
) =>
    _MsiSourceListForceResolution(
      szProduct,
      szUserName,
      dwReserved,
    );

late final _MsiSourceListForceResolution = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szUserName,
  int dwReserved,
)>('MsiSourceListForceResolutionW');

int MsiSourceListGetInfo(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
) =>
    _MsiSourceListGetInfo(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      szProperty,
      szValue,
      pcchValue,
    );

late final _MsiSourceListGetInfo = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
  Pointer<Uint32> pcchValue,
)>('MsiSourceListGetInfoW');

int MsiSourceListSetInfo(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
) =>
    _MsiSourceListSetInfo(
      szProductCodeOrPatchCode,
      szUserSid,
      dwContext,
      dwOptions,
      szProperty,
      szValue,
    );

late final _MsiSourceListSetInfo = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  Int32 dwContext,
  Uint32 dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
),
    int Function(
  Pointer<Utf16> szProductCodeOrPatchCode,
  Pointer<Utf16> szUserSid,
  int dwContext,
  int dwOptions,
  Pointer<Utf16> szProperty,
  Pointer<Utf16> szValue,
)>('MsiSourceListSetInfoW');

int MsiSummaryInfoGetPropertyCount(
  int hSummaryInfo,
  Pointer<Uint32> puiPropertyCount,
) =>
    _MsiSummaryInfoGetPropertyCount(
      hSummaryInfo,
      puiPropertyCount,
    );

late final _MsiSummaryInfoGetPropertyCount = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hSummaryInfo,
  Pointer<Uint32> puiPropertyCount,
),
    int Function(
  int hSummaryInfo,
  Pointer<Uint32> puiPropertyCount,
)>('MsiSummaryInfoGetPropertyCount');

int MsiSummaryInfoGetProperty(
  int hSummaryInfo,
  int uiProperty,
  Pointer<Uint32> puiDataType,
  Pointer<Int32> piValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
) =>
    _MsiSummaryInfoGetProperty(
      hSummaryInfo,
      uiProperty,
      puiDataType,
      piValue,
      pftValue,
      szValueBuf,
      pcchValueBuf,
    );

late final _MsiSummaryInfoGetProperty = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hSummaryInfo,
  Uint32 uiProperty,
  Pointer<Uint32> puiDataType,
  Pointer<Int32> piValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
),
    int Function(
  int hSummaryInfo,
  int uiProperty,
  Pointer<Uint32> puiDataType,
  Pointer<Int32> piValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValueBuf,
  Pointer<Uint32> pcchValueBuf,
)>('MsiSummaryInfoGetPropertyW');

int MsiSummaryInfoPersist(
  int hSummaryInfo,
) =>
    _MsiSummaryInfoPersist(
      hSummaryInfo,
    );

late final _MsiSummaryInfoPersist = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hSummaryInfo,
),
    int Function(
  int hSummaryInfo,
)>('MsiSummaryInfoPersist');

int MsiSummaryInfoSetProperty(
  int hSummaryInfo,
  int uiProperty,
  int uiDataType,
  int iValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValue,
) =>
    _MsiSummaryInfoSetProperty(
      hSummaryInfo,
      uiProperty,
      uiDataType,
      iValue,
      pftValue,
      szValue,
    );

late final _MsiSummaryInfoSetProperty = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hSummaryInfo,
  Uint32 uiProperty,
  Uint32 uiDataType,
  Int32 iValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValue,
),
    int Function(
  int hSummaryInfo,
  int uiProperty,
  int uiDataType,
  int iValue,
  Pointer<FILETIME> pftValue,
  Pointer<Utf16> szValue,
)>('MsiSummaryInfoSetPropertyW');

int MsiUseFeatureEx(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int dwInstallMode,
  int dwReserved,
) =>
    _MsiUseFeatureEx(
      szProduct,
      szFeature,
      dwInstallMode,
      dwReserved,
    );

late final _MsiUseFeatureEx = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  Uint32 dwInstallMode,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
  int dwInstallMode,
  int dwReserved,
)>('MsiUseFeatureExW');

int MsiUseFeature(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
) =>
    _MsiUseFeature(
      szProduct,
      szFeature,
    );

late final _MsiUseFeature = _msi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
),
    int Function(
  Pointer<Utf16> szProduct,
  Pointer<Utf16> szFeature,
)>('MsiUseFeatureW');

int MsiVerifyDiskSpace(
  int hInstall,
) =>
    _MsiVerifyDiskSpace(
      hInstall,
    );

late final _MsiVerifyDiskSpace = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hInstall,
),
    int Function(
  int hInstall,
)>('MsiVerifyDiskSpace');

int MsiVerifyPackage(
  Pointer<Utf16> szPackagePath,
) =>
    _MsiVerifyPackage(
      szPackagePath,
    );

late final _MsiVerifyPackage = _msi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szPackagePath,
),
    int Function(
  Pointer<Utf16> szPackagePath,
)>('MsiVerifyPackageW');

int MsiViewClose(
  int hView,
) =>
    _MsiViewClose(
      hView,
    );

late final _MsiViewClose = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hView,
),
    int Function(
  int hView,
)>('MsiViewClose');

int MsiViewExecute(
  int hView,
  int hRecord,
) =>
    _MsiViewExecute(
      hView,
      hRecord,
    );

late final _MsiViewExecute = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hView,
  Uint32 hRecord,
),
    int Function(
  int hView,
  int hRecord,
)>('MsiViewExecute');

int MsiViewFetch(
  int hView,
  Pointer<Uint32> phRecord,
) =>
    _MsiViewFetch(
      hView,
      phRecord,
    );

late final _MsiViewFetch = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hView,
  Pointer<Uint32> phRecord,
),
    int Function(
  int hView,
  Pointer<Uint32> phRecord,
)>('MsiViewFetch');

int MsiViewGetColumnInfo(
  int hView,
  int eColumnInfo,
  Pointer<Uint32> phRecord,
) =>
    _MsiViewGetColumnInfo(
      hView,
      eColumnInfo,
      phRecord,
    );

late final _MsiViewGetColumnInfo = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hView,
  Int32 eColumnInfo,
  Pointer<Uint32> phRecord,
),
    int Function(
  int hView,
  int eColumnInfo,
  Pointer<Uint32> phRecord,
)>('MsiViewGetColumnInfo');

int MsiViewGetError(
  int hView,
  Pointer<Utf16> szColumnNameBuffer,
  Pointer<Uint32> pcchBuf,
) =>
    _MsiViewGetError(
      hView,
      szColumnNameBuffer,
      pcchBuf,
    );

late final _MsiViewGetError = _msi.lookupFunction<
    Int32 Function(
  Uint32 hView,
  Pointer<Utf16> szColumnNameBuffer,
  Pointer<Uint32> pcchBuf,
),
    int Function(
  int hView,
  Pointer<Utf16> szColumnNameBuffer,
  Pointer<Uint32> pcchBuf,
)>('MsiViewGetErrorW');

int MsiViewModify(
  int hView,
  int eModifyMode,
  int hRecord,
) =>
    _MsiViewModify(
      hView,
      eModifyMode,
      hRecord,
    );

late final _MsiViewModify = _msi.lookupFunction<
    Uint32 Function(
  Uint32 hView,
  Int32 eModifyMode,
  Uint32 hRecord,
),
    int Function(
  int hView,
  int eModifyMode,
  int hRecord,
)>('MsiViewModify');

// -----------------------------------------------------------------------
// sfc.dll
// -----------------------------------------------------------------------
final _sfc = DynamicLibrary.open('sfc.dll');

int SfcGetNextProtectedFile(
  int RpcHandle,
  Pointer<PROTECTED_FILE_DATA> ProtFileData,
) =>
    _SfcGetNextProtectedFile(
      RpcHandle,
      ProtFileData,
    );

late final _SfcGetNextProtectedFile = _sfc.lookupFunction<
    Int32 Function(
  IntPtr RpcHandle,
  Pointer<PROTECTED_FILE_DATA> ProtFileData,
),
    int Function(
  int RpcHandle,
  Pointer<PROTECTED_FILE_DATA> ProtFileData,
)>('SfcGetNextProtectedFile');

int SfcIsFileProtected(
  int RpcHandle,
  Pointer<Utf16> ProtFileName,
) =>
    _SfcIsFileProtected(
      RpcHandle,
      ProtFileName,
    );

late final _SfcIsFileProtected = _sfc.lookupFunction<
    Int32 Function(
  IntPtr RpcHandle,
  Pointer<Utf16> ProtFileName,
),
    int Function(
  int RpcHandle,
  Pointer<Utf16> ProtFileName,
)>('SfcIsFileProtected');

int SfcIsKeyProtected(
  int KeyHandle,
  Pointer<Utf16> SubKeyName,
  int KeySam,
) =>
    _SfcIsKeyProtected(
      KeyHandle,
      SubKeyName,
      KeySam,
    );

late final _SfcIsKeyProtected = _sfc.lookupFunction<
    Int32 Function(
  IntPtr KeyHandle,
  Pointer<Utf16> SubKeyName,
  Uint32 KeySam,
),
    int Function(
  int KeyHandle,
  Pointer<Utf16> SubKeyName,
  int KeySam,
)>('SfcIsKeyProtected');

int SfpVerifyFile(
  Pointer<Utf8> pszFileName,
  Pointer<Utf8> pszError,
  int dwErrSize,
) =>
    _SfpVerifyFile(
      pszFileName,
      pszError,
      dwErrSize,
    );

late final _SfpVerifyFile = _sfc.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszFileName,
  Pointer<Utf8> pszError,
  Uint32 dwErrSize,
),
    int Function(
  Pointer<Utf8> pszFileName,
  Pointer<Utf8> pszError,
  int dwErrSize,
)>('SfpVerifyFile');

// -----------------------------------------------------------------------
// mspatchc.dll
// -----------------------------------------------------------------------
final _mspatchc = DynamicLibrary.open('mspatchc.dll');

int CreatePatchFileByHandles(
  int OldFileHandle,
  int NewFileHandle,
  int PatchFileHandle,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
) =>
    _CreatePatchFileByHandles(
      OldFileHandle,
      NewFileHandle,
      PatchFileHandle,
      OptionFlags,
      OptionData,
    );

late final _CreatePatchFileByHandles = _mspatchc.lookupFunction<
    Int32 Function(
  IntPtr OldFileHandle,
  IntPtr NewFileHandle,
  IntPtr PatchFileHandle,
  Uint32 OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
),
    int Function(
  int OldFileHandle,
  int NewFileHandle,
  int PatchFileHandle,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
)>('CreatePatchFileByHandles');

int CreatePatchFileByHandlesEx(
  int OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_H> OldFileInfoArray,
  int NewFileHandle,
  int PatchFileHandle,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
) =>
    _CreatePatchFileByHandlesEx(
      OldFileCount,
      OldFileInfoArray,
      NewFileHandle,
      PatchFileHandle,
      OptionFlags,
      OptionData,
      ProgressCallback,
      CallbackContext,
    );

late final _CreatePatchFileByHandlesEx = _mspatchc.lookupFunction<
    Int32 Function(
  Uint32 OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_H> OldFileInfoArray,
  IntPtr NewFileHandle,
  IntPtr PatchFileHandle,
  Uint32 OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
),
    int Function(
  int OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_H> OldFileInfoArray,
  int NewFileHandle,
  int PatchFileHandle,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
)>('CreatePatchFileByHandlesEx');

int CreatePatchFileEx(
  int OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_> OldFileInfoArray,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
) =>
    _CreatePatchFileEx(
      OldFileCount,
      OldFileInfoArray,
      NewFileName,
      PatchFileName,
      OptionFlags,
      OptionData,
      ProgressCallback,
      CallbackContext,
    );

late final _CreatePatchFileEx = _mspatchc.lookupFunction<
    Int32 Function(
  Uint32 OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_> OldFileInfoArray,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  Uint32 OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
),
    int Function(
  int OldFileCount,
  Pointer<PATCH_OLD_FILE_INFO_> OldFileInfoArray,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
)>('CreatePatchFileExW');

int CreatePatchFile(
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
) =>
    _CreatePatchFile(
      OldFileName,
      NewFileName,
      PatchFileName,
      OptionFlags,
      OptionData,
    );

late final _CreatePatchFile = _mspatchc.lookupFunction<
    Int32 Function(
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  Uint32 OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
),
    int Function(
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  Pointer<Utf16> PatchFileName,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
)>('CreatePatchFileW');

int ExtractPatchHeaderToFileByHandles(
  int PatchFileHandle,
  int PatchHeaderFileHandle,
) =>
    _ExtractPatchHeaderToFileByHandles(
      PatchFileHandle,
      PatchHeaderFileHandle,
    );

late final _ExtractPatchHeaderToFileByHandles = _mspatchc.lookupFunction<
    Int32 Function(
  IntPtr PatchFileHandle,
  IntPtr PatchHeaderFileHandle,
),
    int Function(
  int PatchFileHandle,
  int PatchHeaderFileHandle,
)>('ExtractPatchHeaderToFileByHandles');

int ExtractPatchHeaderToFile(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> PatchHeaderFileName,
) =>
    _ExtractPatchHeaderToFile(
      PatchFileName,
      PatchHeaderFileName,
    );

late final _ExtractPatchHeaderToFile = _mspatchc.lookupFunction<
    Int32 Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> PatchHeaderFileName,
),
    int Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> PatchHeaderFileName,
)>('ExtractPatchHeaderToFileW');

// -----------------------------------------------------------------------
// mspatcha.dll
// -----------------------------------------------------------------------
final _mspatcha = DynamicLibrary.open('mspatcha.dll');

int ApplyPatchToFileByBuffers(
  Pointer<Uint8> PatchFileMapped,
  int PatchFileSize,
  Pointer<Uint8> OldFileMapped,
  int OldFileSize,
  Pointer<Pointer<Uint8>> NewFileBuffer,
  int NewFileBufferSize,
  Pointer<Uint32> NewFileActualSize,
  Pointer<FILETIME> NewFileTime,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
) =>
    _ApplyPatchToFileByBuffers(
      PatchFileMapped,
      PatchFileSize,
      OldFileMapped,
      OldFileSize,
      NewFileBuffer,
      NewFileBufferSize,
      NewFileActualSize,
      NewFileTime,
      ApplyOptionFlags,
      ProgressCallback,
      CallbackContext,
    );

late final _ApplyPatchToFileByBuffers = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Uint8> PatchFileMapped,
  Uint32 PatchFileSize,
  Pointer<Uint8> OldFileMapped,
  Uint32 OldFileSize,
  Pointer<Pointer<Uint8>> NewFileBuffer,
  Uint32 NewFileBufferSize,
  Pointer<Uint32> NewFileActualSize,
  Pointer<FILETIME> NewFileTime,
  Uint32 ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
),
    int Function(
  Pointer<Uint8> PatchFileMapped,
  int PatchFileSize,
  Pointer<Uint8> OldFileMapped,
  int OldFileSize,
  Pointer<Pointer<Uint8>> NewFileBuffer,
  int NewFileBufferSize,
  Pointer<Uint32> NewFileActualSize,
  Pointer<FILETIME> NewFileTime,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
)>('ApplyPatchToFileByBuffers');

int ApplyPatchToFileByHandles(
  int PatchFileHandle,
  int OldFileHandle,
  int NewFileHandle,
  int ApplyOptionFlags,
) =>
    _ApplyPatchToFileByHandles(
      PatchFileHandle,
      OldFileHandle,
      NewFileHandle,
      ApplyOptionFlags,
    );

late final _ApplyPatchToFileByHandles = _mspatcha.lookupFunction<
    Int32 Function(
  IntPtr PatchFileHandle,
  IntPtr OldFileHandle,
  IntPtr NewFileHandle,
  Uint32 ApplyOptionFlags,
),
    int Function(
  int PatchFileHandle,
  int OldFileHandle,
  int NewFileHandle,
  int ApplyOptionFlags,
)>('ApplyPatchToFileByHandles');

int ApplyPatchToFileByHandlesEx(
  int PatchFileHandle,
  int OldFileHandle,
  int NewFileHandle,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
) =>
    _ApplyPatchToFileByHandlesEx(
      PatchFileHandle,
      OldFileHandle,
      NewFileHandle,
      ApplyOptionFlags,
      ProgressCallback,
      CallbackContext,
    );

late final _ApplyPatchToFileByHandlesEx = _mspatcha.lookupFunction<
    Int32 Function(
  IntPtr PatchFileHandle,
  IntPtr OldFileHandle,
  IntPtr NewFileHandle,
  Uint32 ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
),
    int Function(
  int PatchFileHandle,
  int OldFileHandle,
  int NewFileHandle,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
)>('ApplyPatchToFileByHandlesEx');

int ApplyPatchToFileEx(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
) =>
    _ApplyPatchToFileEx(
      PatchFileName,
      OldFileName,
      NewFileName,
      ApplyOptionFlags,
      ProgressCallback,
      CallbackContext,
    );

late final _ApplyPatchToFileEx = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  Uint32 ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
),
    int Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  int ApplyOptionFlags,
  Pointer<NativeFunction<PPATCH_PROGRESS_CALLBACK>> ProgressCallback,
  Pointer CallbackContext,
)>('ApplyPatchToFileExW');

int ApplyPatchToFile(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  int ApplyOptionFlags,
) =>
    _ApplyPatchToFile(
      PatchFileName,
      OldFileName,
      NewFileName,
      ApplyOptionFlags,
    );

late final _ApplyPatchToFile = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  Uint32 ApplyOptionFlags,
),
    int Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Pointer<Utf16> NewFileName,
  int ApplyOptionFlags,
)>('ApplyPatchToFileW');

int GetFilePatchSignatureByBuffer(
  Pointer<Uint8> FileBufferWritable,
  int FileSize,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
) =>
    _GetFilePatchSignatureByBuffer(
      FileBufferWritable,
      FileSize,
      OptionFlags,
      OptionData,
      IgnoreRangeCount,
      IgnoreRangeArray,
      RetainRangeCount,
      RetainRangeArray,
      SignatureBufferSize,
      SignatureBuffer,
    );

late final _GetFilePatchSignatureByBuffer = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Uint8> FileBufferWritable,
  Uint32 FileSize,
  Uint32 OptionFlags,
  Pointer OptionData,
  Uint32 IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  Uint32 RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  Uint32 SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
),
    int Function(
  Pointer<Uint8> FileBufferWritable,
  int FileSize,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
)>('GetFilePatchSignatureByBuffer');

int GetFilePatchSignatureByHandle(
  int FileHandle,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
) =>
    _GetFilePatchSignatureByHandle(
      FileHandle,
      OptionFlags,
      OptionData,
      IgnoreRangeCount,
      IgnoreRangeArray,
      RetainRangeCount,
      RetainRangeArray,
      SignatureBufferSize,
      SignatureBuffer,
    );

late final _GetFilePatchSignatureByHandle = _mspatcha.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 OptionFlags,
  Pointer OptionData,
  Uint32 IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  Uint32 RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  Uint32 SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
),
    int Function(
  int FileHandle,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf8> SignatureBuffer,
)>('GetFilePatchSignatureByHandle');

int GetFilePatchSignature(
  Pointer<Utf16> FileName,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf16> SignatureBuffer,
) =>
    _GetFilePatchSignature(
      FileName,
      OptionFlags,
      OptionData,
      IgnoreRangeCount,
      IgnoreRangeArray,
      RetainRangeCount,
      RetainRangeArray,
      SignatureBufferSize,
      SignatureBuffer,
    );

late final _GetFilePatchSignature = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  Uint32 OptionFlags,
  Pointer OptionData,
  Uint32 IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  Uint32 RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  Uint32 SignatureBufferSize,
  Pointer<Utf16> SignatureBuffer,
),
    int Function(
  Pointer<Utf16> FileName,
  int OptionFlags,
  Pointer OptionData,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
  int SignatureBufferSize,
  Pointer<Utf16> SignatureBuffer,
)>('GetFilePatchSignatureW');

int NormalizeFileForPatchSignature(
  Pointer FileBuffer,
  int FileSize,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  int NewFileCoffBase,
  int NewFileCoffTime,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
) =>
    _NormalizeFileForPatchSignature(
      FileBuffer,
      FileSize,
      OptionFlags,
      OptionData,
      NewFileCoffBase,
      NewFileCoffTime,
      IgnoreRangeCount,
      IgnoreRangeArray,
      RetainRangeCount,
      RetainRangeArray,
    );

late final _NormalizeFileForPatchSignature = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer FileBuffer,
  Uint32 FileSize,
  Uint32 OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  Uint32 NewFileCoffBase,
  Uint32 NewFileCoffTime,
  Uint32 IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  Uint32 RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
),
    int Function(
  Pointer FileBuffer,
  int FileSize,
  int OptionFlags,
  Pointer<PATCH_OPTION_DATA> OptionData,
  int NewFileCoffBase,
  int NewFileCoffTime,
  int IgnoreRangeCount,
  Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray,
  int RetainRangeCount,
  Pointer<PATCH_RETAIN_RANGE> RetainRangeArray,
)>('NormalizeFileForPatchSignature');

int TestApplyPatchToFileByBuffers(
  Pointer<Uint8> PatchFileBuffer,
  int PatchFileSize,
  Pointer<Uint8> OldFileBuffer,
  int OldFileSize,
  Pointer<Uint32> NewFileSize,
  int ApplyOptionFlags,
) =>
    _TestApplyPatchToFileByBuffers(
      PatchFileBuffer,
      PatchFileSize,
      OldFileBuffer,
      OldFileSize,
      NewFileSize,
      ApplyOptionFlags,
    );

late final _TestApplyPatchToFileByBuffers = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Uint8> PatchFileBuffer,
  Uint32 PatchFileSize,
  Pointer<Uint8> OldFileBuffer,
  Uint32 OldFileSize,
  Pointer<Uint32> NewFileSize,
  Uint32 ApplyOptionFlags,
),
    int Function(
  Pointer<Uint8> PatchFileBuffer,
  int PatchFileSize,
  Pointer<Uint8> OldFileBuffer,
  int OldFileSize,
  Pointer<Uint32> NewFileSize,
  int ApplyOptionFlags,
)>('TestApplyPatchToFileByBuffers');

int TestApplyPatchToFileByHandles(
  int PatchFileHandle,
  int OldFileHandle,
  int ApplyOptionFlags,
) =>
    _TestApplyPatchToFileByHandles(
      PatchFileHandle,
      OldFileHandle,
      ApplyOptionFlags,
    );

late final _TestApplyPatchToFileByHandles = _mspatcha.lookupFunction<
    Int32 Function(
  IntPtr PatchFileHandle,
  IntPtr OldFileHandle,
  Uint32 ApplyOptionFlags,
),
    int Function(
  int PatchFileHandle,
  int OldFileHandle,
  int ApplyOptionFlags,
)>('TestApplyPatchToFileByHandles');

int TestApplyPatchToFile(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  int ApplyOptionFlags,
) =>
    _TestApplyPatchToFile(
      PatchFileName,
      OldFileName,
      ApplyOptionFlags,
    );

late final _TestApplyPatchToFile = _mspatcha.lookupFunction<
    Int32 Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  Uint32 ApplyOptionFlags,
),
    int Function(
  Pointer<Utf16> PatchFileName,
  Pointer<Utf16> OldFileName,
  int ApplyOptionFlags,
)>('TestApplyPatchToFileW');

// -----------------------------------------------------------------------
// msdelta.dll
// -----------------------------------------------------------------------
final _msdelta = DynamicLibrary.open('msdelta.dll');

int ApplyDeltaB(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<DELTA_OUTPUT> lpTarget,
) =>
    _ApplyDeltaB(
      ApplyFlags,
      Source,
      Delta,
      lpTarget,
    );

late final _ApplyDeltaB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<DELTA_OUTPUT> lpTarget,
),
    int Function(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<DELTA_OUTPUT> lpTarget,
)>('ApplyDeltaB');

int ApplyDeltaGetReverseB(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<FILETIME> lpReverseFileTime,
  Pointer<DELTA_OUTPUT> lpTarget,
  Pointer<DELTA_OUTPUT> lpTargetReverse,
) =>
    _ApplyDeltaGetReverseB(
      ApplyFlags,
      Source,
      Delta,
      lpReverseFileTime,
      lpTarget,
      lpTargetReverse,
    );

late final _ApplyDeltaGetReverseB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<FILETIME> lpReverseFileTime,
  Pointer<DELTA_OUTPUT> lpTarget,
  Pointer<DELTA_OUTPUT> lpTargetReverse,
),
    int Function(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer<FILETIME> lpReverseFileTime,
  Pointer<DELTA_OUTPUT> lpTarget,
  Pointer<DELTA_OUTPUT> lpTargetReverse,
)>('ApplyDeltaGetReverseB');

int ApplyDeltaProvidedB(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer lpTarget,
  int uTargetSize,
) =>
    _ApplyDeltaProvidedB(
      ApplyFlags,
      Source,
      Delta,
      lpTarget,
      uTargetSize,
    );

late final _ApplyDeltaProvidedB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer lpTarget,
  IntPtr uTargetSize,
),
    int Function(
  int ApplyFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Delta,
  Pointer lpTarget,
  int uTargetSize,
)>('ApplyDeltaProvidedB');

int ApplyDelta(
  int ApplyFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpDeltaName,
  Pointer<Utf16> lpTargetName,
) =>
    _ApplyDelta(
      ApplyFlags,
      lpSourceName,
      lpDeltaName,
      lpTargetName,
    );

late final _ApplyDelta = _msdelta.lookupFunction<
    Int32 Function(
  Int64 ApplyFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpDeltaName,
  Pointer<Utf16> lpTargetName,
),
    int Function(
  int ApplyFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpDeltaName,
  Pointer<Utf16> lpTargetName,
)>('ApplyDeltaW');

int CreateDeltaB(
  int FileTypeSet,
  int SetFlags,
  int ResetFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Target,
  DELTA_INPUT SourceOptions,
  DELTA_INPUT TargetOptions,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  int HashAlgId,
  Pointer<DELTA_OUTPUT> lpDelta,
) =>
    _CreateDeltaB(
      FileTypeSet,
      SetFlags,
      ResetFlags,
      Source,
      Target,
      SourceOptions,
      TargetOptions,
      GlobalOptions,
      lpTargetFileTime,
      HashAlgId,
      lpDelta,
    );

late final _CreateDeltaB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 FileTypeSet,
  Int64 SetFlags,
  Int64 ResetFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Target,
  DELTA_INPUT SourceOptions,
  DELTA_INPUT TargetOptions,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  Uint32 HashAlgId,
  Pointer<DELTA_OUTPUT> lpDelta,
),
    int Function(
  int FileTypeSet,
  int SetFlags,
  int ResetFlags,
  DELTA_INPUT Source,
  DELTA_INPUT Target,
  DELTA_INPUT SourceOptions,
  DELTA_INPUT TargetOptions,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  int HashAlgId,
  Pointer<DELTA_OUTPUT> lpDelta,
)>('CreateDeltaB');

int CreateDelta(
  int FileTypeSet,
  int SetFlags,
  int ResetFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpTargetName,
  Pointer<Utf16> lpSourceOptionsName,
  Pointer<Utf16> lpTargetOptionsName,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  int HashAlgId,
  Pointer<Utf16> lpDeltaName,
) =>
    _CreateDelta(
      FileTypeSet,
      SetFlags,
      ResetFlags,
      lpSourceName,
      lpTargetName,
      lpSourceOptionsName,
      lpTargetOptionsName,
      GlobalOptions,
      lpTargetFileTime,
      HashAlgId,
      lpDeltaName,
    );

late final _CreateDelta = _msdelta.lookupFunction<
    Int32 Function(
  Int64 FileTypeSet,
  Int64 SetFlags,
  Int64 ResetFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpTargetName,
  Pointer<Utf16> lpSourceOptionsName,
  Pointer<Utf16> lpTargetOptionsName,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  Uint32 HashAlgId,
  Pointer<Utf16> lpDeltaName,
),
    int Function(
  int FileTypeSet,
  int SetFlags,
  int ResetFlags,
  Pointer<Utf16> lpSourceName,
  Pointer<Utf16> lpTargetName,
  Pointer<Utf16> lpSourceOptionsName,
  Pointer<Utf16> lpTargetOptionsName,
  DELTA_INPUT GlobalOptions,
  Pointer<FILETIME> lpTargetFileTime,
  int HashAlgId,
  Pointer<Utf16> lpDeltaName,
)>('CreateDeltaW');

int DeltaFree(
  Pointer lpMemory,
) =>
    _DeltaFree(
      lpMemory,
    );

late final _DeltaFree = _msdelta.lookupFunction<
    Int32 Function(
  Pointer lpMemory,
),
    int Function(
  Pointer lpMemory,
)>('DeltaFree');

int DeltaNormalizeProvidedB(
  int FileTypeSet,
  int NormalizeFlags,
  DELTA_INPUT NormalizeOptions,
  Pointer lpSource,
  int uSourceSize,
) =>
    _DeltaNormalizeProvidedB(
      FileTypeSet,
      NormalizeFlags,
      NormalizeOptions,
      lpSource,
      uSourceSize,
    );

late final _DeltaNormalizeProvidedB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 FileTypeSet,
  Int64 NormalizeFlags,
  DELTA_INPUT NormalizeOptions,
  Pointer lpSource,
  IntPtr uSourceSize,
),
    int Function(
  int FileTypeSet,
  int NormalizeFlags,
  DELTA_INPUT NormalizeOptions,
  Pointer lpSource,
  int uSourceSize,
)>('DeltaNormalizeProvidedB');

int GetDeltaInfoB(
  DELTA_INPUT Delta,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
) =>
    _GetDeltaInfoB(
      Delta,
      lpHeaderInfo,
    );

late final _GetDeltaInfoB = _msdelta.lookupFunction<
    Int32 Function(
  DELTA_INPUT Delta,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
),
    int Function(
  DELTA_INPUT Delta,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
)>('GetDeltaInfoB');

int GetDeltaInfo(
  Pointer<Utf16> lpDeltaName,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
) =>
    _GetDeltaInfo(
      lpDeltaName,
      lpHeaderInfo,
    );

late final _GetDeltaInfo = _msdelta.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpDeltaName,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
),
    int Function(
  Pointer<Utf16> lpDeltaName,
  Pointer<DELTA_HEADER_INFO> lpHeaderInfo,
)>('GetDeltaInfoW');

int GetDeltaSignatureB(
  int FileTypeSet,
  int HashAlgId,
  DELTA_INPUT Source,
  Pointer<DELTA_HASH> lpHash,
) =>
    _GetDeltaSignatureB(
      FileTypeSet,
      HashAlgId,
      Source,
      lpHash,
    );

late final _GetDeltaSignatureB = _msdelta.lookupFunction<
    Int32 Function(
  Int64 FileTypeSet,
  Uint32 HashAlgId,
  DELTA_INPUT Source,
  Pointer<DELTA_HASH> lpHash,
),
    int Function(
  int FileTypeSet,
  int HashAlgId,
  DELTA_INPUT Source,
  Pointer<DELTA_HASH> lpHash,
)>('GetDeltaSignatureB');

int GetDeltaSignature(
  int FileTypeSet,
  int HashAlgId,
  Pointer<Utf16> lpSourceName,
  Pointer<DELTA_HASH> lpHash,
) =>
    _GetDeltaSignature(
      FileTypeSet,
      HashAlgId,
      lpSourceName,
      lpHash,
    );

late final _GetDeltaSignature = _msdelta.lookupFunction<
    Int32 Function(
  Int64 FileTypeSet,
  Uint32 HashAlgId,
  Pointer<Utf16> lpSourceName,
  Pointer<DELTA_HASH> lpHash,
),
    int Function(
  int FileTypeSet,
  int HashAlgId,
  Pointer<Utf16> lpSourceName,
  Pointer<DELTA_HASH> lpHash,
)>('GetDeltaSignatureW');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int ActivateActCtx(
  int hActCtx,
  Pointer<IntPtr> lpCookie,
) =>
    _ActivateActCtx(
      hActCtx,
      lpCookie,
    );

late final _ActivateActCtx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hActCtx,
  Pointer<IntPtr> lpCookie,
),
    int Function(
  int hActCtx,
  Pointer<IntPtr> lpCookie,
)>('ActivateActCtx');

void AddRefActCtx(
  int hActCtx,
) =>
    _AddRefActCtx(
      hActCtx,
    );

late final _AddRefActCtx = _kernel32.lookupFunction<
    Void Function(
  IntPtr hActCtx,
),
    void Function(
  int hActCtx,
)>('AddRefActCtx');

int CreateActCtx(
  Pointer<ACTCTX> pActCtx,
) =>
    _CreateActCtx(
      pActCtx,
    );

late final _CreateActCtx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<ACTCTX> pActCtx,
),
    int Function(
  Pointer<ACTCTX> pActCtx,
)>('CreateActCtxW');

int DeactivateActCtx(
  int dwFlags,
  int ulCookie,
) =>
    _DeactivateActCtx(
      dwFlags,
      ulCookie,
    );

late final _DeactivateActCtx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr ulCookie,
),
    int Function(
  int dwFlags,
  int ulCookie,
)>('DeactivateActCtx');

int FindActCtxSectionGuid(
  int dwFlags,
  Pointer<GUID> lpExtensionGuid,
  int ulSectionId,
  Pointer<GUID> lpGuidToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
) =>
    _FindActCtxSectionGuid(
      dwFlags,
      lpExtensionGuid,
      ulSectionId,
      lpGuidToFind,
      ReturnedData,
    );

late final _FindActCtxSectionGuid = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<GUID> lpExtensionGuid,
  Uint32 ulSectionId,
  Pointer<GUID> lpGuidToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
),
    int Function(
  int dwFlags,
  Pointer<GUID> lpExtensionGuid,
  int ulSectionId,
  Pointer<GUID> lpGuidToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
)>('FindActCtxSectionGuid');

int FindActCtxSectionString(
  int dwFlags,
  Pointer<GUID> lpExtensionGuid,
  int ulSectionId,
  Pointer<Utf16> lpStringToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
) =>
    _FindActCtxSectionString(
      dwFlags,
      lpExtensionGuid,
      ulSectionId,
      lpStringToFind,
      ReturnedData,
    );

late final _FindActCtxSectionString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<GUID> lpExtensionGuid,
  Uint32 ulSectionId,
  Pointer<Utf16> lpStringToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
),
    int Function(
  int dwFlags,
  Pointer<GUID> lpExtensionGuid,
  int ulSectionId,
  Pointer<Utf16> lpStringToFind,
  Pointer<ACTCTX_SECTION_KEYED_DATA> ReturnedData,
)>('FindActCtxSectionStringW');

int GetCurrentActCtx(
  Pointer<IntPtr> lphActCtx,
) =>
    _GetCurrentActCtx(
      lphActCtx,
    );

late final _GetCurrentActCtx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> lphActCtx,
),
    int Function(
  Pointer<IntPtr> lphActCtx,
)>('GetCurrentActCtx');

int QueryActCtxSettings(
  int dwFlags,
  int hActCtx,
  Pointer<Utf16> settingsNameSpace,
  Pointer<Utf16> settingName,
  Pointer<Utf16> pvBuffer,
  int dwBuffer,
  Pointer<IntPtr> pdwWrittenOrRequired,
) =>
    _QueryActCtxSettings(
      dwFlags,
      hActCtx,
      settingsNameSpace,
      settingName,
      pvBuffer,
      dwBuffer,
      pdwWrittenOrRequired,
    );

late final _QueryActCtxSettings = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hActCtx,
  Pointer<Utf16> settingsNameSpace,
  Pointer<Utf16> settingName,
  Pointer<Utf16> pvBuffer,
  IntPtr dwBuffer,
  Pointer<IntPtr> pdwWrittenOrRequired,
),
    int Function(
  int dwFlags,
  int hActCtx,
  Pointer<Utf16> settingsNameSpace,
  Pointer<Utf16> settingName,
  Pointer<Utf16> pvBuffer,
  int dwBuffer,
  Pointer<IntPtr> pdwWrittenOrRequired,
)>('QueryActCtxSettingsW');

int QueryActCtx(
  int dwFlags,
  int hActCtx,
  Pointer pvSubInstance,
  int ulInfoClass,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<IntPtr> pcbWrittenOrRequired,
) =>
    _QueryActCtx(
      dwFlags,
      hActCtx,
      pvSubInstance,
      ulInfoClass,
      pvBuffer,
      cbBuffer,
      pcbWrittenOrRequired,
    );

late final _QueryActCtx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hActCtx,
  Pointer pvSubInstance,
  Uint32 ulInfoClass,
  Pointer pvBuffer,
  IntPtr cbBuffer,
  Pointer<IntPtr> pcbWrittenOrRequired,
),
    int Function(
  int dwFlags,
  int hActCtx,
  Pointer pvSubInstance,
  int ulInfoClass,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<IntPtr> pcbWrittenOrRequired,
)>('QueryActCtxW');

void ReleaseActCtx(
  int hActCtx,
) =>
    _ReleaseActCtx(
      hActCtx,
    );

late final _ReleaseActCtx = _kernel32.lookupFunction<
    Void Function(
  IntPtr hActCtx,
),
    void Function(
  int hActCtx,
)>('ReleaseActCtx');

int ZombifyActCtx(
  int hActCtx,
) =>
    _ZombifyActCtx(
      hActCtx,
    );

late final _ZombifyActCtx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hActCtx,
),
    int Function(
  int hActCtx,
)>('ZombifyActCtx');
