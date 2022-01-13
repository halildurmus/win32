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
import '../../management/mobiledevicemanagementregistration/structs.g.dart'; // -----------------------------------------------------------------------

// mdmregistration.dll
// -----------------------------------------------------------------------
final _mdmregistration = DynamicLibrary.open('mdmregistration.dll');

int DiscoverManagementService(
  Pointer<Utf16> pszUPN,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
) =>
    _DiscoverManagementService(
      pszUPN,
      ppMgmtInfo,
    );

late final _DiscoverManagementService = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUPN,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
),
    int Function(
  Pointer<Utf16> pszUPN,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
)>('DiscoverManagementService');

int DiscoverManagementServiceEx(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> pszDiscoveryServiceCandidate,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
) =>
    _DiscoverManagementServiceEx(
      pszUPN,
      pszDiscoveryServiceCandidate,
      ppMgmtInfo,
    );

late final _DiscoverManagementServiceEx = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> pszDiscoveryServiceCandidate,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
),
    int Function(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> pszDiscoveryServiceCandidate,
  Pointer<Pointer<MANAGEMENT_SERVICE_INFO>> ppMgmtInfo,
)>('DiscoverManagementServiceEx');

int GetDeviceManagementConfigInfo(
  Pointer<Utf16> providerID,
  Pointer<Uint32> configStringBufferLength,
  Pointer<Utf16> configString,
) =>
    _GetDeviceManagementConfigInfo(
      providerID,
      configStringBufferLength,
      configString,
    );

late final _GetDeviceManagementConfigInfo = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> providerID,
  Pointer<Uint32> configStringBufferLength,
  Pointer<Utf16> configString,
),
    int Function(
  Pointer<Utf16> providerID,
  Pointer<Uint32> configStringBufferLength,
  Pointer<Utf16> configString,
)>('GetDeviceManagementConfigInfo');

int GetDeviceRegistrationInfo(
  int DeviceInformationClass,
  Pointer<Pointer> ppDeviceRegistrationInfo,
) =>
    _GetDeviceRegistrationInfo(
      DeviceInformationClass,
      ppDeviceRegistrationInfo,
    );

late final _GetDeviceRegistrationInfo = _mdmregistration.lookupFunction<
    Int32 Function(
  Int32 DeviceInformationClass,
  Pointer<Pointer> ppDeviceRegistrationInfo,
),
    int Function(
  int DeviceInformationClass,
  Pointer<Pointer> ppDeviceRegistrationInfo,
)>('GetDeviceRegistrationInfo');

int GetManagementAppHyperlink(
  int cchHyperlink,
  Pointer<Utf16> pszHyperlink,
) =>
    _GetManagementAppHyperlink(
      cchHyperlink,
      pszHyperlink,
    );

late final _GetManagementAppHyperlink = _mdmregistration.lookupFunction<
    Int32 Function(
  Uint32 cchHyperlink,
  Pointer<Utf16> pszHyperlink,
),
    int Function(
  int cchHyperlink,
  Pointer<Utf16> pszHyperlink,
)>('GetManagementAppHyperlink');

int IsDeviceRegisteredWithManagement(
  Pointer<Int32> pfIsDeviceRegisteredWithManagement,
  int cchUPN,
  Pointer<Utf16> pszUPN,
) =>
    _IsDeviceRegisteredWithManagement(
      pfIsDeviceRegisteredWithManagement,
      cchUPN,
      pszUPN,
    );

late final _IsDeviceRegisteredWithManagement = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Int32> pfIsDeviceRegisteredWithManagement,
  Uint32 cchUPN,
  Pointer<Utf16> pszUPN,
),
    int Function(
  Pointer<Int32> pfIsDeviceRegisteredWithManagement,
  int cchUPN,
  Pointer<Utf16> pszUPN,
)>('IsDeviceRegisteredWithManagement');

int IsManagementRegistrationAllowed(
  Pointer<Int32> pfIsManagementRegistrationAllowed,
) =>
    _IsManagementRegistrationAllowed(
      pfIsManagementRegistrationAllowed,
    );

late final _IsManagementRegistrationAllowed = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Int32> pfIsManagementRegistrationAllowed,
),
    int Function(
  Pointer<Int32> pfIsManagementRegistrationAllowed,
)>('IsManagementRegistrationAllowed');

int IsMdmUxWithoutAadAllowed(
  Pointer<Int32> isEnrollmentAllowed,
) =>
    _IsMdmUxWithoutAadAllowed(
      isEnrollmentAllowed,
    );

late final _IsMdmUxWithoutAadAllowed = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Int32> isEnrollmentAllowed,
),
    int Function(
  Pointer<Int32> isEnrollmentAllowed,
)>('IsMdmUxWithoutAadAllowed');

int RegisterDeviceWithManagement(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> ppszMDMServiceUri,
  Pointer<Utf16> ppzsAccessToken,
) =>
    _RegisterDeviceWithManagement(
      pszUPN,
      ppszMDMServiceUri,
      ppzsAccessToken,
    );

late final _RegisterDeviceWithManagement = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> ppszMDMServiceUri,
  Pointer<Utf16> ppzsAccessToken,
),
    int Function(
  Pointer<Utf16> pszUPN,
  Pointer<Utf16> ppszMDMServiceUri,
  Pointer<Utf16> ppzsAccessToken,
)>('RegisterDeviceWithManagement');

int RegisterDeviceWithManagementUsingAADCredentials(
  int UserToken,
) =>
    _RegisterDeviceWithManagementUsingAADCredentials(
      UserToken,
    );

late final _RegisterDeviceWithManagementUsingAADCredentials =
    _mdmregistration.lookupFunction<
        Int32 Function(
  IntPtr UserToken,
),
        int Function(
  int UserToken,
)>('RegisterDeviceWithManagementUsingAADCredentials');

int RegisterDeviceWithManagementUsingAADDeviceCredentials() =>
    _RegisterDeviceWithManagementUsingAADDeviceCredentials();

late final _RegisterDeviceWithManagementUsingAADDeviceCredentials =
    _mdmregistration.lookupFunction<Int32 Function(), int Function()>(
        'RegisterDeviceWithManagementUsingAADDeviceCredentials');

int RegisterDeviceWithManagementUsingAADDeviceCredentials2(
  Pointer<Utf16> MDMApplicationID,
) =>
    _RegisterDeviceWithManagementUsingAADDeviceCredentials2(
      MDMApplicationID,
    );

late final _RegisterDeviceWithManagementUsingAADDeviceCredentials2 =
    _mdmregistration.lookupFunction<
        Int32 Function(
  Pointer<Utf16> MDMApplicationID,
),
        int Function(
  Pointer<Utf16> MDMApplicationID,
)>('RegisterDeviceWithManagementUsingAADDeviceCredentials2');

int SetDeviceManagementConfigInfo(
  Pointer<Utf16> providerID,
  Pointer<Utf16> configString,
) =>
    _SetDeviceManagementConfigInfo(
      providerID,
      configString,
    );

late final _SetDeviceManagementConfigInfo = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> providerID,
  Pointer<Utf16> configString,
),
    int Function(
  Pointer<Utf16> providerID,
  Pointer<Utf16> configString,
)>('SetDeviceManagementConfigInfo');

int SetManagedExternally(
  int IsManagedExternally,
) =>
    _SetManagedExternally(
      IsManagedExternally,
    );

late final _SetManagedExternally = _mdmregistration.lookupFunction<
    Int32 Function(
  Int32 IsManagedExternally,
),
    int Function(
  int IsManagedExternally,
)>('SetManagedExternally');

int UnregisterDeviceWithManagement(
  Pointer<Utf16> enrollmentID,
) =>
    _UnregisterDeviceWithManagement(
      enrollmentID,
    );

late final _UnregisterDeviceWithManagement = _mdmregistration.lookupFunction<
    Int32 Function(
  Pointer<Utf16> enrollmentID,
),
    int Function(
  Pointer<Utf16> enrollmentID,
)>('UnregisterDeviceWithManagement');

// -----------------------------------------------------------------------
// mdmlocalmanagement.dll
// -----------------------------------------------------------------------
final _mdmlocalmanagement = DynamicLibrary.open('mdmlocalmanagement.dll');

int ApplyLocalManagementSyncML(
  Pointer<Utf16> syncMLRequest,
  Pointer<Pointer<Utf16>> syncMLResult,
) =>
    _ApplyLocalManagementSyncML(
      syncMLRequest,
      syncMLResult,
    );

late final _ApplyLocalManagementSyncML = _mdmlocalmanagement.lookupFunction<
    Int32 Function(
  Pointer<Utf16> syncMLRequest,
  Pointer<Pointer<Utf16>> syncMLResult,
),
    int Function(
  Pointer<Utf16> syncMLRequest,
  Pointer<Pointer<Utf16>> syncMLResult,
)>('ApplyLocalManagementSyncML');

int RegisterDeviceWithLocalManagement(
  Pointer<Int32> alreadyRegistered,
) =>
    _RegisterDeviceWithLocalManagement(
      alreadyRegistered,
    );

late final _RegisterDeviceWithLocalManagement =
    _mdmlocalmanagement.lookupFunction<
        Int32 Function(
  Pointer<Int32> alreadyRegistered,
),
        int Function(
  Pointer<Int32> alreadyRegistered,
)>('RegisterDeviceWithLocalManagement');

int UnregisterDeviceWithLocalManagement() =>
    _UnregisterDeviceWithLocalManagement();

late final _UnregisterDeviceWithLocalManagement =
    _mdmlocalmanagement.lookupFunction<Int32 Function(), int Function()>(
        'UnregisterDeviceWithLocalManagement');
