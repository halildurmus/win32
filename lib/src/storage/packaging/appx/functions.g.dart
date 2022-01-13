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
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int ActivatePackageVirtualizationContext(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
  Pointer<IntPtr> cookie,
) =>
    _ActivatePackageVirtualizationContext(
      context,
      cookie,
    );

late final _ActivatePackageVirtualizationContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
  Pointer<IntPtr> cookie,
),
    int Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
  Pointer<IntPtr> cookie,
)>('ActivatePackageVirtualizationContext');

int AddPackageDependency(
  Pointer<Utf16> packageDependencyId,
  int rank,
  int options,
  Pointer<Pointer<PACKAGEDEPENDENCY_CONTEXT__>> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageFullName,
) =>
    _AddPackageDependency(
      packageDependencyId,
      rank,
      options,
      packageDependencyContext,
      packageFullName,
    );

late final _AddPackageDependency = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageDependencyId,
  Int32 rank,
  Int32 options,
  Pointer<Pointer<PACKAGEDEPENDENCY_CONTEXT__>> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageFullName,
),
    int Function(
  Pointer<Utf16> packageDependencyId,
  int rank,
  int options,
  Pointer<Pointer<PACKAGEDEPENDENCY_CONTEXT__>> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageFullName,
)>('AddPackageDependency');

int AppPolicyGetClrCompat(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetClrCompat(
      processToken,
      policy,
    );

late final _AppPolicyGetClrCompat = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetClrCompat');

int AppPolicyGetCreateFileAccess(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetCreateFileAccess(
      processToken,
      policy,
    );

late final _AppPolicyGetCreateFileAccess = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetCreateFileAccess');

int AppPolicyGetLifecycleManagement(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetLifecycleManagement(
      processToken,
      policy,
    );

late final _AppPolicyGetLifecycleManagement = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetLifecycleManagement');

int AppPolicyGetMediaFoundationCodecLoading(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetMediaFoundationCodecLoading(
      processToken,
      policy,
    );

late final _AppPolicyGetMediaFoundationCodecLoading = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetMediaFoundationCodecLoading');

int AppPolicyGetProcessTerminationMethod(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetProcessTerminationMethod(
      processToken,
      policy,
    );

late final _AppPolicyGetProcessTerminationMethod = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetProcessTerminationMethod');

int AppPolicyGetShowDeveloperDiagnostic(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetShowDeveloperDiagnostic(
      processToken,
      policy,
    );

late final _AppPolicyGetShowDeveloperDiagnostic = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetShowDeveloperDiagnostic');

int AppPolicyGetThreadInitializationType(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetThreadInitializationType(
      processToken,
      policy,
    );

late final _AppPolicyGetThreadInitializationType = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetThreadInitializationType');

int AppPolicyGetWindowingModel(
  int processToken,
  Pointer<Int32> policy,
) =>
    _AppPolicyGetWindowingModel(
      processToken,
      policy,
    );

late final _AppPolicyGetWindowingModel = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr processToken,
  Pointer<Int32> policy,
),
    int Function(
  int processToken,
  Pointer<Int32> policy,
)>('AppPolicyGetWindowingModel');

int CheckIsMSIXPackage(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> isMSIXPackage,
) =>
    _CheckIsMSIXPackage(
      packageFullName,
      isMSIXPackage,
    );

late final _CheckIsMSIXPackage = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> isMSIXPackage,
),
    int Function(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> isMSIXPackage,
)>('CheckIsMSIXPackage');

int ClosePackageInfo(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
) =>
    _ClosePackageInfo(
      packageInfoReference,
    );

late final _ClosePackageInfo = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
),
    int Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
)>('ClosePackageInfo');

int CreatePackageVirtualizationContext(
  Pointer<Utf16> packageFamilyName,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> context,
) =>
    _CreatePackageVirtualizationContext(
      packageFamilyName,
      context,
    );

late final _CreatePackageVirtualizationContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> context,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> context,
)>('CreatePackageVirtualizationContext');

void DeactivatePackageVirtualizationContext(
  int cookie,
) =>
    _DeactivatePackageVirtualizationContext(
      cookie,
    );

late final _DeactivatePackageVirtualizationContext = _kernel32.lookupFunction<
    Void Function(
  IntPtr cookie,
),
    void Function(
  int cookie,
)>('DeactivatePackageVirtualizationContext');

int DeletePackageDependency(
  Pointer<Utf16> packageDependencyId,
) =>
    _DeletePackageDependency(
      packageDependencyId,
    );

late final _DeletePackageDependency = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageDependencyId,
),
    int Function(
  Pointer<Utf16> packageDependencyId,
)>('DeletePackageDependency');

int DuplicatePackageVirtualizationContext(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> sourceContext,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> destContext,
) =>
    _DuplicatePackageVirtualizationContext(
      sourceContext,
      destContext,
    );

late final _DuplicatePackageVirtualizationContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> sourceContext,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> destContext,
),
    int Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> sourceContext,
  Pointer<Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>> destContext,
)>('DuplicatePackageVirtualizationContext');

int FindPackagesByPackageFamily(
  Pointer<Utf16> packageFamilyName,
  int packageFilters,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
  Pointer<Uint32> packageProperties,
) =>
    _FindPackagesByPackageFamily(
      packageFamilyName,
      packageFilters,
      count,
      packageFullNames,
      bufferLength,
      buffer,
      packageProperties,
    );

late final _FindPackagesByPackageFamily = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Uint32 packageFilters,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
  Pointer<Uint32> packageProperties,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  int packageFilters,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
  Pointer<Uint32> packageProperties,
)>('FindPackagesByPackageFamily');

int FormatApplicationUserModelId(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> packageRelativeApplicationId,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
) =>
    _FormatApplicationUserModelId(
      packageFamilyName,
      packageRelativeApplicationId,
      applicationUserModelIdLength,
      applicationUserModelId,
    );

late final _FormatApplicationUserModelId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> packageRelativeApplicationId,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> packageRelativeApplicationId,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
)>('FormatApplicationUserModelId');

int GetApplicationUserModelId(
  int hProcess,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
) =>
    _GetApplicationUserModelId(
      hProcess,
      applicationUserModelIdLength,
      applicationUserModelId,
    );

late final _GetApplicationUserModelId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
),
    int Function(
  int hProcess,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
)>('GetApplicationUserModelId');

int GetCurrentApplicationUserModelId(
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
) =>
    _GetCurrentApplicationUserModelId(
      applicationUserModelIdLength,
      applicationUserModelId,
    );

late final _GetCurrentApplicationUserModelId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
),
    int Function(
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
)>('GetCurrentApplicationUserModelId');

int GetCurrentPackageFamilyName(
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
) =>
    _GetCurrentPackageFamilyName(
      packageFamilyNameLength,
      packageFamilyName,
    );

late final _GetCurrentPackageFamilyName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
),
    int Function(
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
)>('GetCurrentPackageFamilyName');

int GetCurrentPackageFullName(
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
) =>
    _GetCurrentPackageFullName(
      packageFullNameLength,
      packageFullName,
    );

late final _GetCurrentPackageFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
),
    int Function(
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
)>('GetCurrentPackageFullName');

int GetCurrentPackageId(
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
) =>
    _GetCurrentPackageId(
      bufferLength,
      buffer,
    );

late final _GetCurrentPackageId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
),
    int Function(
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
)>('GetCurrentPackageId');

int GetCurrentPackageInfo(
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
) =>
    _GetCurrentPackageInfo(
      flags,
      bufferLength,
      buffer,
      count,
    );

late final _GetCurrentPackageInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
),
    int Function(
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
)>('GetCurrentPackageInfo');

int GetCurrentPackagePath(
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetCurrentPackagePath(
      pathLength,
      path,
    );

late final _GetCurrentPackagePath = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
    int Function(
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetCurrentPackagePath');

Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>
    GetCurrentPackageVirtualizationContext() =>
        _GetCurrentPackageVirtualizationContext();

late final _GetCurrentPackageVirtualizationContext = _kernel32.lookupFunction<
    Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> Function(),
    Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__>
        Function()>('GetCurrentPackageVirtualizationContext');

int GetIdForPackageDependencyContext(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageDependencyId,
) =>
    _GetIdForPackageDependencyContext(
      packageDependencyContext,
      packageDependencyId,
    );

late final _GetIdForPackageDependencyContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageDependencyId,
),
    int Function(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
  Pointer<Pointer<Utf16>> packageDependencyId,
)>('GetIdForPackageDependencyContext');

int GetPackageApplicationIds(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
) =>
    _GetPackageApplicationIds(
      packageInfoReference,
      bufferLength,
      buffer,
      count,
    );

late final _GetPackageApplicationIds = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
),
    int Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
)>('GetPackageApplicationIds');

int GetPackageFamilyName(
  int hProcess,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
) =>
    _GetPackageFamilyName(
      hProcess,
      packageFamilyNameLength,
      packageFamilyName,
    );

late final _GetPackageFamilyName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
),
    int Function(
  int hProcess,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
)>('GetPackageFamilyName');

int GetPackageFullName(
  int hProcess,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
) =>
    _GetPackageFullName(
      hProcess,
      packageFullNameLength,
      packageFullName,
    );

late final _GetPackageFullName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
),
    int Function(
  int hProcess,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
)>('GetPackageFullName');

int GetPackageId(
  int hProcess,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
) =>
    _GetPackageId(
      hProcess,
      bufferLength,
      buffer,
    );

late final _GetPackageId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
),
    int Function(
  int hProcess,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
)>('GetPackageId');

int GetPackageInfo(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
) =>
    _GetPackageInfo(
      packageInfoReference,
      flags,
      bufferLength,
      buffer,
      count,
    );

late final _GetPackageInfo = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  Uint32 flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
),
    int Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
)>('GetPackageInfo');

int GetPackagePath(
  Pointer<PACKAGE_ID> packageId,
  int reserved,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetPackagePath(
      packageId,
      reserved,
      pathLength,
      path,
    );

late final _GetPackagePath = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_ID> packageId,
  Uint32 reserved,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
    int Function(
  Pointer<PACKAGE_ID> packageId,
  int reserved,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetPackagePath');

int GetPackagePathByFullName(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetPackagePathByFullName(
      packageFullName,
      pathLength,
      path,
    );

late final _GetPackagePathByFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
    int Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetPackagePathByFullName');

int GetPackagesByPackageFamily(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
) =>
    _GetPackagesByPackageFamily(
      packageFamilyName,
      count,
      packageFullNames,
      bufferLength,
      buffer,
    );

late final _GetPackagesByPackageFamily = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
)>('GetPackagesByPackageFamily');

int GetProcessesInVirtualizationContext(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<IntPtr>> processes,
) =>
    _GetProcessesInVirtualizationContext(
      packageFamilyName,
      count,
      processes,
    );

late final _GetProcessesInVirtualizationContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<IntPtr>> processes,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> count,
  Pointer<Pointer<IntPtr>> processes,
)>('GetProcessesInVirtualizationContext');

int GetResolvedPackageFullNameForPackageDependency(
  Pointer<Utf16> packageDependencyId,
  Pointer<Pointer<Utf16>> packageFullName,
) =>
    _GetResolvedPackageFullNameForPackageDependency(
      packageDependencyId,
      packageFullName,
    );

late final _GetResolvedPackageFullNameForPackageDependency =
    _kernel32.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageDependencyId,
  Pointer<Pointer<Utf16>> packageFullName,
),
        int Function(
  Pointer<Utf16> packageDependencyId,
  Pointer<Pointer<Utf16>> packageFullName,
)>('GetResolvedPackageFullNameForPackageDependency');

int GetStagedPackagePathByFullName(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetStagedPackagePathByFullName(
      packageFullName,
      pathLength,
      path,
    );

late final _GetStagedPackagePathByFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
    int Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetStagedPackagePathByFullName');

int OpenPackageInfoByFullName(
  Pointer<Utf16> packageFullName,
  int reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
) =>
    _OpenPackageInfoByFullName(
      packageFullName,
      reserved,
      packageInfoReference,
    );

late final _OpenPackageInfoByFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Uint32 reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
),
    int Function(
  Pointer<Utf16> packageFullName,
  int reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
)>('OpenPackageInfoByFullName');

int PackageFamilyNameFromFullName(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
) =>
    _PackageFamilyNameFromFullName(
      packageFullName,
      packageFamilyNameLength,
      packageFamilyName,
    );

late final _PackageFamilyNameFromFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
),
    int Function(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
)>('PackageFamilyNameFromFullName');

int PackageFamilyNameFromId(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
) =>
    _PackageFamilyNameFromId(
      packageId,
      packageFamilyNameLength,
      packageFamilyName,
    );

late final _PackageFamilyNameFromId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
),
    int Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
)>('PackageFamilyNameFromId');

int PackageFullNameFromId(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
) =>
    _PackageFullNameFromId(
      packageId,
      packageFullNameLength,
      packageFullName,
    );

late final _PackageFullNameFromId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
),
    int Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
)>('PackageFullNameFromId');

int PackageIdFromFullName(
  Pointer<Utf16> packageFullName,
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
) =>
    _PackageIdFromFullName(
      packageFullName,
      flags,
      bufferLength,
      buffer,
    );

late final _PackageIdFromFullName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFullName,
  Uint32 flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
),
    int Function(
  Pointer<Utf16> packageFullName,
  int flags,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
)>('PackageIdFromFullName');

int PackageNameAndPublisherIdFromFamilyName(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageNameLength,
  Pointer<Utf16> packageName,
  Pointer<Uint32> packagePublisherIdLength,
  Pointer<Utf16> packagePublisherId,
) =>
    _PackageNameAndPublisherIdFromFamilyName(
      packageFamilyName,
      packageNameLength,
      packageName,
      packagePublisherIdLength,
      packagePublisherId,
    );

late final _PackageNameAndPublisherIdFromFamilyName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageNameLength,
  Pointer<Utf16> packageName,
  Pointer<Uint32> packagePublisherIdLength,
  Pointer<Utf16> packagePublisherId,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageNameLength,
  Pointer<Utf16> packageName,
  Pointer<Uint32> packagePublisherIdLength,
  Pointer<Utf16> packagePublisherId,
)>('PackageNameAndPublisherIdFromFamilyName');

int ParseApplicationUserModelId(
  Pointer<Utf16> applicationUserModelId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageRelativeApplicationIdLength,
  Pointer<Utf16> packageRelativeApplicationId,
) =>
    _ParseApplicationUserModelId(
      applicationUserModelId,
      packageFamilyNameLength,
      packageFamilyName,
      packageRelativeApplicationIdLength,
      packageRelativeApplicationId,
    );

late final _ParseApplicationUserModelId = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> applicationUserModelId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageRelativeApplicationIdLength,
  Pointer<Utf16> packageRelativeApplicationId,
),
    int Function(
  Pointer<Utf16> applicationUserModelId,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
  Pointer<Uint32> packageRelativeApplicationIdLength,
  Pointer<Utf16> packageRelativeApplicationId,
)>('ParseApplicationUserModelId');

void ReleasePackageVirtualizationContext(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
) =>
    _ReleasePackageVirtualizationContext(
      context,
    );

late final _ReleasePackageVirtualizationContext = _kernel32.lookupFunction<
    Void Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
),
    void Function(
  Pointer<PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__> context,
)>('ReleasePackageVirtualizationContext');

int RemovePackageDependency(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
) =>
    _RemovePackageDependency(
      packageDependencyContext,
    );

late final _RemovePackageDependency = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
),
    int Function(
  Pointer<PACKAGEDEPENDENCY_CONTEXT__> packageDependencyContext,
)>('RemovePackageDependency');

int TryCreatePackageDependency(
  int user,
  Pointer<Utf16> packageFamilyName,
  PACKAGE_VERSION minVersion,
  int packageDependencyProcessorArchitectures,
  int lifetimeKind,
  Pointer<Utf16> lifetimeArtifact,
  int options,
  Pointer<Pointer<Utf16>> packageDependencyId,
) =>
    _TryCreatePackageDependency(
      user,
      packageFamilyName,
      minVersion,
      packageDependencyProcessorArchitectures,
      lifetimeKind,
      lifetimeArtifact,
      options,
      packageDependencyId,
    );

late final _TryCreatePackageDependency = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr user,
  Pointer<Utf16> packageFamilyName,
  PACKAGE_VERSION minVersion,
  Int32 packageDependencyProcessorArchitectures,
  Int32 lifetimeKind,
  Pointer<Utf16> lifetimeArtifact,
  Int32 options,
  Pointer<Pointer<Utf16>> packageDependencyId,
),
    int Function(
  int user,
  Pointer<Utf16> packageFamilyName,
  PACKAGE_VERSION minVersion,
  int packageDependencyProcessorArchitectures,
  int lifetimeKind,
  Pointer<Utf16> lifetimeArtifact,
  int options,
  Pointer<Pointer<Utf16>> packageDependencyId,
)>('TryCreatePackageDependency');

// -----------------------------------------------------------------------
// api-ms-win-appmodel-runtime-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_appmodel_runtime_l1_1_1 =
    DynamicLibrary.open('api-ms-win-appmodel-runtime-l1-1-1.dll');

int GetApplicationUserModelIdFromToken(
  int token,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
) =>
    _GetApplicationUserModelIdFromToken(
      token,
      applicationUserModelIdLength,
      applicationUserModelId,
    );

late final _GetApplicationUserModelIdFromToken =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr token,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
),
        int Function(
  int token,
  Pointer<Uint32> applicationUserModelIdLength,
  Pointer<Utf16> applicationUserModelId,
)>('GetApplicationUserModelIdFromToken');

int GetPackageFamilyNameFromToken(
  int token,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
) =>
    _GetPackageFamilyNameFromToken(
      token,
      packageFamilyNameLength,
      packageFamilyName,
    );

late final _GetPackageFamilyNameFromToken =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr token,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
),
        int Function(
  int token,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
)>('GetPackageFamilyNameFromToken');

int GetPackageFullNameFromToken(
  int token,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
) =>
    _GetPackageFullNameFromToken(
      token,
      packageFullNameLength,
      packageFullName,
    );

late final _GetPackageFullNameFromToken =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr token,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
),
        int Function(
  int token,
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
)>('GetPackageFullNameFromToken');

int GetStagedPackageOrigin(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> origin,
) =>
    _GetStagedPackageOrigin(
      packageFullName,
      origin,
    );

late final _GetStagedPackageOrigin =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> origin,
),
        int Function(
  Pointer<Utf16> packageFullName,
  Pointer<Int32> origin,
)>('GetStagedPackageOrigin');

int OpenPackageInfoByFullNameForUser(
  int userSid,
  Pointer<Utf16> packageFullName,
  int reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
) =>
    _OpenPackageInfoByFullNameForUser(
      userSid,
      packageFullName,
      reserved,
      packageInfoReference,
    );

late final _OpenPackageInfoByFullNameForUser =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr userSid,
  Pointer<Utf16> packageFullName,
  Uint32 reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
),
        int Function(
  int userSid,
  Pointer<Utf16> packageFullName,
  int reserved,
  Pointer<Pointer<PACKAGE_INFO_REFERENCE>> packageInfoReference,
)>('OpenPackageInfoByFullNameForUser');

int VerifyApplicationUserModelId(
  Pointer<Utf16> applicationUserModelId,
) =>
    _VerifyApplicationUserModelId(
      applicationUserModelId,
    );

late final _VerifyApplicationUserModelId =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<Utf16> applicationUserModelId,
),
        int Function(
  Pointer<Utf16> applicationUserModelId,
)>('VerifyApplicationUserModelId');

int VerifyPackageFamilyName(
  Pointer<Utf16> packageFamilyName,
) =>
    _VerifyPackageFamilyName(
      packageFamilyName,
    );

late final _VerifyPackageFamilyName =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageFamilyName,
),
        int Function(
  Pointer<Utf16> packageFamilyName,
)>('VerifyPackageFamilyName');

int VerifyPackageFullName(
  Pointer<Utf16> packageFullName,
) =>
    _VerifyPackageFullName(
      packageFullName,
    );

late final _VerifyPackageFullName =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageFullName,
),
        int Function(
  Pointer<Utf16> packageFullName,
)>('VerifyPackageFullName');

int VerifyPackageId(
  Pointer<PACKAGE_ID> packageId,
) =>
    _VerifyPackageId(
      packageId,
    );

late final _VerifyPackageId =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<PACKAGE_ID> packageId,
),
        int Function(
  Pointer<PACKAGE_ID> packageId,
)>('VerifyPackageId');

int VerifyPackageRelativeApplicationId(
  Pointer<Utf16> packageRelativeApplicationId,
) =>
    _VerifyPackageRelativeApplicationId(
      packageRelativeApplicationId,
    );

late final _VerifyPackageRelativeApplicationId =
    _api_ms_win_appmodel_runtime_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageRelativeApplicationId,
),
        int Function(
  Pointer<Utf16> packageRelativeApplicationId,
)>('VerifyPackageRelativeApplicationId');

// -----------------------------------------------------------------------
// api-ms-win-appmodel-runtime-l1-1-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_appmodel_runtime_l1_1_3 =
    DynamicLibrary.open('api-ms-win-appmodel-runtime-l1-1-3.dll');

int GetCurrentPackageInfo2(
  int flags,
  int packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
) =>
    _GetCurrentPackageInfo2(
      flags,
      packagePathType,
      bufferLength,
      buffer,
      count,
    );

late final _GetCurrentPackageInfo2 =
    _api_ms_win_appmodel_runtime_l1_1_3.lookupFunction<
        Int32 Function(
  Uint32 flags,
  Int32 packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
),
        int Function(
  int flags,
  int packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
)>('GetCurrentPackageInfo2');

int GetCurrentPackagePath2(
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetCurrentPackagePath2(
      packagePathType,
      pathLength,
      path,
    );

late final _GetCurrentPackagePath2 =
    _api_ms_win_appmodel_runtime_l1_1_3.lookupFunction<
        Int32 Function(
  Int32 packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
        int Function(
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetCurrentPackagePath2');

int GetPackageInfo2(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  int flags,
  int packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
) =>
    _GetPackageInfo2(
      packageInfoReference,
      flags,
      packagePathType,
      bufferLength,
      buffer,
      count,
    );

late final _GetPackageInfo2 =
    _api_ms_win_appmodel_runtime_l1_1_3.lookupFunction<
        Int32 Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  Uint32 flags,
  Int32 packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
),
        int Function(
  Pointer<PACKAGE_INFO_REFERENCE> packageInfoReference,
  int flags,
  int packagePathType,
  Pointer<Uint32> bufferLength,
  Pointer<Uint8> buffer,
  Pointer<Uint32> count,
)>('GetPackageInfo2');

int GetPackagePathByFullName2(
  Pointer<Utf16> packageFullName,
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetPackagePathByFullName2(
      packageFullName,
      packagePathType,
      pathLength,
      path,
    );

late final _GetPackagePathByFullName2 =
    _api_ms_win_appmodel_runtime_l1_1_3.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageFullName,
  Int32 packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
        int Function(
  Pointer<Utf16> packageFullName,
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetPackagePathByFullName2');

int GetStagedPackagePathByFullName2(
  Pointer<Utf16> packageFullName,
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
) =>
    _GetStagedPackagePathByFullName2(
      packageFullName,
      packagePathType,
      pathLength,
      path,
    );

late final _GetStagedPackagePathByFullName2 =
    _api_ms_win_appmodel_runtime_l1_1_3.lookupFunction<
        Int32 Function(
  Pointer<Utf16> packageFullName,
  Int32 packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
),
        int Function(
  Pointer<Utf16> packageFullName,
  int packagePathType,
  Pointer<Uint32> pathLength,
  Pointer<Utf16> path,
)>('GetStagedPackagePathByFullName2');
