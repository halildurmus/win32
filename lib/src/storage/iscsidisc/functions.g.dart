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
import '../../storage/iscsidisc/structs.g.dart'; // -----------------------------------------------------------------------

// iscsidsc.dll
// -----------------------------------------------------------------------
final _iscsidsc = DynamicLibrary.open('iscsidsc.dll');

int AddISNSServer(
  Pointer<Utf16> Address,
) =>
    _AddISNSServer(
      Address,
    );

late final _AddISNSServer = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Address,
),
    int Function(
  Pointer<Utf16> Address,
)>('AddISNSServerW');

int AddIScsiConnection(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer Reserved,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  int SecurityFlags,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int KeySize,
  Pointer<Utf8> Key,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
) =>
    _AddIScsiConnection(
      UniqueSessionId,
      Reserved,
      InitiatorPortNumber,
      TargetPortal,
      SecurityFlags,
      LoginOptions,
      KeySize,
      Key,
      ConnectionId,
    );

late final _AddIScsiConnection = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer Reserved,
  Uint32 InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  Uint64 SecurityFlags,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Uint32 KeySize,
  Pointer<Utf8> Key,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer Reserved,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  int SecurityFlags,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int KeySize,
  Pointer<Utf8> Key,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
)>('AddIScsiConnectionW');

int AddIScsiSendTargetPortal(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int SecurityFlags,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
) =>
    _AddIScsiSendTargetPortal(
      InitiatorInstance,
      InitiatorPortNumber,
      LoginOptions,
      SecurityFlags,
      Portal,
    );

late final _AddIScsiSendTargetPortal = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorInstance,
  Uint32 InitiatorPortNumber,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Uint64 SecurityFlags,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
),
    int Function(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int SecurityFlags,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
)>('AddIScsiSendTargetPortalW');

int AddIScsiStaticTarget(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> TargetAlias,
  int TargetFlags,
  int Persist,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Pointer<ISCSI_TARGET_PORTAL_GROUP> PortalGroup,
) =>
    _AddIScsiStaticTarget(
      TargetName,
      TargetAlias,
      TargetFlags,
      Persist,
      Mappings,
      LoginOptions,
      PortalGroup,
    );

late final _AddIScsiStaticTarget = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> TargetAlias,
  Uint32 TargetFlags,
  Uint8 Persist,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Pointer<ISCSI_TARGET_PORTAL_GROUP> PortalGroup,
),
    int Function(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> TargetAlias,
  int TargetFlags,
  int Persist,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Pointer<ISCSI_TARGET_PORTAL_GROUP> PortalGroup,
)>('AddIScsiStaticTargetW');

int AddPersistentIScsiDevice(
  Pointer<Utf16> DevicePath,
) =>
    _AddPersistentIScsiDevice(
      DevicePath,
    );

late final _AddPersistentIScsiDevice = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DevicePath,
),
    int Function(
  Pointer<Utf16> DevicePath,
)>('AddPersistentIScsiDeviceW');

int AddRadiusServer(
  Pointer<Utf16> Address,
) =>
    _AddRadiusServer(
      Address,
    );

late final _AddRadiusServer = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Address,
),
    int Function(
  Pointer<Utf16> Address,
)>('AddRadiusServerW');

int ClearPersistentIScsiDevices() => _ClearPersistentIScsiDevices();

late final _ClearPersistentIScsiDevices =
    _iscsidsc.lookupFunction<Uint32 Function(), int Function()>(
        'ClearPersistentIScsiDevices');

int GetDevicesForIScsiSession(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint32> DeviceCount,
  Pointer<ISCSI_DEVICE_ON_SESSION> Devices,
) =>
    _GetDevicesForIScsiSession(
      UniqueSessionId,
      DeviceCount,
      Devices,
    );

late final _GetDevicesForIScsiSession = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint32> DeviceCount,
  Pointer<ISCSI_DEVICE_ON_SESSION> Devices,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint32> DeviceCount,
  Pointer<ISCSI_DEVICE_ON_SESSION> Devices,
)>('GetDevicesForIScsiSessionW');

int GetIScsiIKEInfo(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<Uint32> Reserved,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
) =>
    _GetIScsiIKEInfo(
      InitiatorName,
      InitiatorPortNumber,
      Reserved,
      AuthInfo,
    );

late final _GetIScsiIKEInfo = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorName,
  Uint32 InitiatorPortNumber,
  Pointer<Uint32> Reserved,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
),
    int Function(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<Uint32> Reserved,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
)>('GetIScsiIKEInfoW');

int GetIScsiInitiatorNodeName(
  Pointer<Utf16> InitiatorNodeName,
) =>
    _GetIScsiInitiatorNodeName(
      InitiatorNodeName,
    );

late final _GetIScsiInitiatorNodeName = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorNodeName,
),
    int Function(
  Pointer<Utf16> InitiatorNodeName,
)>('GetIScsiInitiatorNodeNameW');

int GetIScsiSessionListEx(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCountPtr,
  Pointer<ISCSI_SESSION_INFO_EX> SessionInfo,
) =>
    _GetIScsiSessionListEx(
      BufferSize,
      SessionCountPtr,
      SessionInfo,
    );

late final _GetIScsiSessionListEx = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCountPtr,
  Pointer<ISCSI_SESSION_INFO_EX> SessionInfo,
),
    int Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCountPtr,
  Pointer<ISCSI_SESSION_INFO_EX> SessionInfo,
)>('GetIScsiSessionListEx');

int GetIScsiSessionList(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCount,
  Pointer<ISCSI_SESSION_INFO> SessionInfo,
) =>
    _GetIScsiSessionList(
      BufferSize,
      SessionCount,
      SessionInfo,
    );

late final _GetIScsiSessionList = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCount,
  Pointer<ISCSI_SESSION_INFO> SessionInfo,
),
    int Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> SessionCount,
  Pointer<ISCSI_SESSION_INFO> SessionInfo,
)>('GetIScsiSessionListW');

int GetIScsiTargetInformation(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> DiscoveryMechanism,
  int InfoClass,
  Pointer<Uint32> BufferSize,
  Pointer Buffer,
) =>
    _GetIScsiTargetInformation(
      TargetName,
      DiscoveryMechanism,
      InfoClass,
      BufferSize,
      Buffer,
    );

late final _GetIScsiTargetInformation = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> DiscoveryMechanism,
  Int32 InfoClass,
  Pointer<Uint32> BufferSize,
  Pointer Buffer,
),
    int Function(
  Pointer<Utf16> TargetName,
  Pointer<Utf16> DiscoveryMechanism,
  int InfoClass,
  Pointer<Uint32> BufferSize,
  Pointer Buffer,
)>('GetIScsiTargetInformationW');

int GetIScsiVersionInformation(
  Pointer<ISCSI_VERSION_INFO> VersionInfo,
) =>
    _GetIScsiVersionInformation(
      VersionInfo,
    );

late final _GetIScsiVersionInformation = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_VERSION_INFO> VersionInfo,
),
    int Function(
  Pointer<ISCSI_VERSION_INFO> VersionInfo,
)>('GetIScsiVersionInformation');

int LoginIScsiTarget(
  Pointer<Utf16> TargetName,
  int IsInformationalSession,
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  int SecurityFlags,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int KeySize,
  Pointer<Utf8> Key,
  int IsPersistent,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueConnectionId,
) =>
    _LoginIScsiTarget(
      TargetName,
      IsInformationalSession,
      InitiatorInstance,
      InitiatorPortNumber,
      TargetPortal,
      SecurityFlags,
      Mappings,
      LoginOptions,
      KeySize,
      Key,
      IsPersistent,
      UniqueSessionId,
      UniqueConnectionId,
    );

late final _LoginIScsiTarget = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> TargetName,
  Uint8 IsInformationalSession,
  Pointer<Utf16> InitiatorInstance,
  Uint32 InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  Uint64 SecurityFlags,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  Uint32 KeySize,
  Pointer<Utf8> Key,
  Uint8 IsPersistent,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueConnectionId,
),
    int Function(
  Pointer<Utf16> TargetName,
  int IsInformationalSession,
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> TargetPortal,
  int SecurityFlags,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
  Pointer<ISCSI_LOGIN_OPTIONS> LoginOptions,
  int KeySize,
  Pointer<Utf8> Key,
  int IsPersistent,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueConnectionId,
)>('LoginIScsiTargetW');

int LogoutIScsiTarget(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
) =>
    _LogoutIScsiTarget(
      UniqueSessionId,
    );

late final _LogoutIScsiTarget = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
)>('LogoutIScsiTarget');

int RefreshISNSServer(
  Pointer<Utf16> Address,
) =>
    _RefreshISNSServer(
      Address,
    );

late final _RefreshISNSServer = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Address,
),
    int Function(
  Pointer<Utf16> Address,
)>('RefreshISNSServerW');

int RefreshIScsiSendTargetPortal(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
) =>
    _RefreshIScsiSendTargetPortal(
      InitiatorInstance,
      InitiatorPortNumber,
      Portal,
    );

late final _RefreshIScsiSendTargetPortal = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorInstance,
  Uint32 InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
),
    int Function(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
)>('RefreshIScsiSendTargetPortalW');

int RemoveISNSServer(
  Pointer<Utf16> Address,
) =>
    _RemoveISNSServer(
      Address,
    );

late final _RemoveISNSServer = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Address,
),
    int Function(
  Pointer<Utf16> Address,
)>('RemoveISNSServerW');

int RemoveIScsiConnection(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
) =>
    _RemoveIScsiConnection(
      UniqueSessionId,
      ConnectionId,
    );

late final _RemoveIScsiConnection = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<ISCSI_UNIQUE_SESSION_ID> ConnectionId,
)>('RemoveIScsiConnection');

int RemoveIScsiPersistentTarget(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<Utf16> TargetName,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
) =>
    _RemoveIScsiPersistentTarget(
      InitiatorInstance,
      InitiatorPortNumber,
      TargetName,
      Portal,
    );

late final _RemoveIScsiPersistentTarget = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorInstance,
  Uint32 InitiatorPortNumber,
  Pointer<Utf16> TargetName,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
),
    int Function(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<Utf16> TargetName,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
)>('RemoveIScsiPersistentTargetW');

int RemoveIScsiSendTargetPortal(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
) =>
    _RemoveIScsiSendTargetPortal(
      InitiatorInstance,
      InitiatorPortNumber,
      Portal,
    );

late final _RemoveIScsiSendTargetPortal = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorInstance,
  Uint32 InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
),
    int Function(
  Pointer<Utf16> InitiatorInstance,
  int InitiatorPortNumber,
  Pointer<ISCSI_TARGET_PORTAL> Portal,
)>('RemoveIScsiSendTargetPortalW');

int RemoveIScsiStaticTarget(
  Pointer<Utf16> TargetName,
) =>
    _RemoveIScsiStaticTarget(
      TargetName,
    );

late final _RemoveIScsiStaticTarget = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> TargetName,
),
    int Function(
  Pointer<Utf16> TargetName,
)>('RemoveIScsiStaticTargetW');

int RemovePersistentIScsiDevice(
  Pointer<Utf16> DevicePath,
) =>
    _RemovePersistentIScsiDevice(
      DevicePath,
    );

late final _RemovePersistentIScsiDevice = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DevicePath,
),
    int Function(
  Pointer<Utf16> DevicePath,
)>('RemovePersistentIScsiDeviceW');

int RemoveRadiusServer(
  Pointer<Utf16> Address,
) =>
    _RemoveRadiusServer(
      Address,
    );

late final _RemoveRadiusServer = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Address,
),
    int Function(
  Pointer<Utf16> Address,
)>('RemoveRadiusServerW');

int ReportActiveIScsiTargetMappings(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> MappingCount,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
) =>
    _ReportActiveIScsiTargetMappings(
      BufferSize,
      MappingCount,
      Mappings,
    );

late final _ReportActiveIScsiTargetMappings = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> MappingCount,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
),
    int Function(
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> MappingCount,
  Pointer<ISCSI_TARGET_MAPPING> Mappings,
)>('ReportActiveIScsiTargetMappingsW');

int ReportISNSServerList(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
) =>
    _ReportISNSServerList(
      BufferSizeInChar,
      Buffer,
    );

late final _ReportISNSServerList = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
),
    int Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
)>('ReportISNSServerListW');

int ReportIScsiInitiatorList(
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
) =>
    _ReportIScsiInitiatorList(
      BufferSize,
      Buffer,
    );

late final _ReportIScsiInitiatorList = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
),
    int Function(
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
)>('ReportIScsiInitiatorListW');

int ReportIScsiPersistentLogins(
  Pointer<Uint32> Count,
  Pointer<PERSISTENT_ISCSI_LOGIN_INFO> PersistentLoginInfo,
  Pointer<Uint32> BufferSizeInBytes,
) =>
    _ReportIScsiPersistentLogins(
      Count,
      PersistentLoginInfo,
      BufferSizeInBytes,
    );

late final _ReportIScsiPersistentLogins = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> Count,
  Pointer<PERSISTENT_ISCSI_LOGIN_INFO> PersistentLoginInfo,
  Pointer<Uint32> BufferSizeInBytes,
),
    int Function(
  Pointer<Uint32> Count,
  Pointer<PERSISTENT_ISCSI_LOGIN_INFO> PersistentLoginInfo,
  Pointer<Uint32> BufferSizeInBytes,
)>('ReportIScsiPersistentLoginsW');

int ReportIScsiSendTargetPortalsEx(
  Pointer<Uint32> PortalCount,
  Pointer<Uint32> PortalInfoSize,
  Pointer<ISCSI_TARGET_PORTAL_INFO_EX> PortalInfo,
) =>
    _ReportIScsiSendTargetPortalsEx(
      PortalCount,
      PortalInfoSize,
      PortalInfo,
    );

late final _ReportIScsiSendTargetPortalsEx = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> PortalCount,
  Pointer<Uint32> PortalInfoSize,
  Pointer<ISCSI_TARGET_PORTAL_INFO_EX> PortalInfo,
),
    int Function(
  Pointer<Uint32> PortalCount,
  Pointer<Uint32> PortalInfoSize,
  Pointer<ISCSI_TARGET_PORTAL_INFO_EX> PortalInfo,
)>('ReportIScsiSendTargetPortalsExW');

int ReportIScsiSendTargetPortals(
  Pointer<Uint32> PortalCount,
  Pointer<ISCSI_TARGET_PORTAL_INFO> PortalInfo,
) =>
    _ReportIScsiSendTargetPortals(
      PortalCount,
      PortalInfo,
    );

late final _ReportIScsiSendTargetPortals = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> PortalCount,
  Pointer<ISCSI_TARGET_PORTAL_INFO> PortalInfo,
),
    int Function(
  Pointer<Uint32> PortalCount,
  Pointer<ISCSI_TARGET_PORTAL_INFO> PortalInfo,
)>('ReportIScsiSendTargetPortalsW');

int ReportIScsiTargetPortals(
  Pointer<Utf16> InitiatorName,
  Pointer<Utf16> TargetName,
  Pointer<Uint16> TargetPortalTag,
  Pointer<Uint32> ElementCount,
  Pointer<ISCSI_TARGET_PORTAL> Portals,
) =>
    _ReportIScsiTargetPortals(
      InitiatorName,
      TargetName,
      TargetPortalTag,
      ElementCount,
      Portals,
    );

late final _ReportIScsiTargetPortals = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorName,
  Pointer<Utf16> TargetName,
  Pointer<Uint16> TargetPortalTag,
  Pointer<Uint32> ElementCount,
  Pointer<ISCSI_TARGET_PORTAL> Portals,
),
    int Function(
  Pointer<Utf16> InitiatorName,
  Pointer<Utf16> TargetName,
  Pointer<Uint16> TargetPortalTag,
  Pointer<Uint32> ElementCount,
  Pointer<ISCSI_TARGET_PORTAL> Portals,
)>('ReportIScsiTargetPortalsW');

int ReportIScsiTargets(
  int ForceUpdate,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
) =>
    _ReportIScsiTargets(
      ForceUpdate,
      BufferSize,
      Buffer,
    );

late final _ReportIScsiTargets = _iscsidsc.lookupFunction<
    Uint32 Function(
  Uint8 ForceUpdate,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
),
    int Function(
  int ForceUpdate,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
)>('ReportIScsiTargetsW');

int ReportPersistentIScsiDevices(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
) =>
    _ReportPersistentIScsiDevices(
      BufferSizeInChar,
      Buffer,
    );

late final _ReportPersistentIScsiDevices = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
),
    int Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
)>('ReportPersistentIScsiDevicesW');

int ReportRadiusServerList(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
) =>
    _ReportRadiusServerList(
      BufferSizeInChar,
      Buffer,
    );

late final _ReportRadiusServerList = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
),
    int Function(
  Pointer<Uint32> BufferSizeInChar,
  Pointer<Utf16> Buffer,
)>('ReportRadiusServerListW');

int SendScsiInquiry(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  int Lun,
  int EvpdCmddt,
  int PageCode,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
) =>
    _SendScsiInquiry(
      UniqueSessionId,
      Lun,
      EvpdCmddt,
      PageCode,
      ScsiStatus,
      ResponseSize,
      ResponseBuffer,
      SenseSize,
      SenseBuffer,
    );

late final _SendScsiInquiry = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Uint64 Lun,
  Uint8 EvpdCmddt,
  Uint8 PageCode,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  int Lun,
  int EvpdCmddt,
  int PageCode,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
)>('SendScsiInquiry');

int SendScsiReadCapacity(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  int Lun,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
) =>
    _SendScsiReadCapacity(
      UniqueSessionId,
      Lun,
      ScsiStatus,
      ResponseSize,
      ResponseBuffer,
      SenseSize,
      SenseBuffer,
    );

late final _SendScsiReadCapacity = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Uint64 Lun,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  int Lun,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
)>('SendScsiReadCapacity');

int SendScsiReportLuns(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
) =>
    _SendScsiReportLuns(
      UniqueSessionId,
      ScsiStatus,
      ResponseSize,
      ResponseBuffer,
      SenseSize,
      SenseBuffer,
    );

late final _SendScsiReportLuns = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
),
    int Function(
  Pointer<ISCSI_UNIQUE_SESSION_ID> UniqueSessionId,
  Pointer<Uint8> ScsiStatus,
  Pointer<Uint32> ResponseSize,
  Pointer<Uint8> ResponseBuffer,
  Pointer<Uint32> SenseSize,
  Pointer<Uint8> SenseBuffer,
)>('SendScsiReportLuns');

int SetIScsiGroupPresharedKey(
  int KeyLength,
  Pointer<Uint8> Key,
  int Persist,
) =>
    _SetIScsiGroupPresharedKey(
      KeyLength,
      Key,
      Persist,
    );

late final _SetIScsiGroupPresharedKey = _iscsidsc.lookupFunction<
    Uint32 Function(
  Uint32 KeyLength,
  Pointer<Uint8> Key,
  Uint8 Persist,
),
    int Function(
  int KeyLength,
  Pointer<Uint8> Key,
  int Persist,
)>('SetIScsiGroupPresharedKey');

int SetIScsiIKEInfo(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
  int Persist,
) =>
    _SetIScsiIKEInfo(
      InitiatorName,
      InitiatorPortNumber,
      AuthInfo,
      Persist,
    );

late final _SetIScsiIKEInfo = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorName,
  Uint32 InitiatorPortNumber,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
  Uint8 Persist,
),
    int Function(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<IKE_AUTHENTICATION_INFORMATION> AuthInfo,
  int Persist,
)>('SetIScsiIKEInfoW');

int SetIScsiInitiatorCHAPSharedSecret(
  int SharedSecretLength,
  Pointer<Uint8> SharedSecret,
) =>
    _SetIScsiInitiatorCHAPSharedSecret(
      SharedSecretLength,
      SharedSecret,
    );

late final _SetIScsiInitiatorCHAPSharedSecret = _iscsidsc.lookupFunction<
    Uint32 Function(
  Uint32 SharedSecretLength,
  Pointer<Uint8> SharedSecret,
),
    int Function(
  int SharedSecretLength,
  Pointer<Uint8> SharedSecret,
)>('SetIScsiInitiatorCHAPSharedSecret');

int SetIScsiInitiatorNodeName(
  Pointer<Utf16> InitiatorNodeName,
) =>
    _SetIScsiInitiatorNodeName(
      InitiatorNodeName,
    );

late final _SetIScsiInitiatorNodeName = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorNodeName,
),
    int Function(
  Pointer<Utf16> InitiatorNodeName,
)>('SetIScsiInitiatorNodeNameW');

int SetIScsiInitiatorRADIUSSharedSecret(
  int SharedSecretLength,
  Pointer<Uint8> SharedSecret,
) =>
    _SetIScsiInitiatorRADIUSSharedSecret(
      SharedSecretLength,
      SharedSecret,
    );

late final _SetIScsiInitiatorRADIUSSharedSecret = _iscsidsc.lookupFunction<
    Uint32 Function(
  Uint32 SharedSecretLength,
  Pointer<Uint8> SharedSecret,
),
    int Function(
  int SharedSecretLength,
  Pointer<Uint8> SharedSecret,
)>('SetIScsiInitiatorRADIUSSharedSecret');

int SetIScsiTunnelModeOuterAddress(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<Utf16> DestinationAddress,
  Pointer<Utf16> OuterModeAddress,
  int Persist,
) =>
    _SetIScsiTunnelModeOuterAddress(
      InitiatorName,
      InitiatorPortNumber,
      DestinationAddress,
      OuterModeAddress,
      Persist,
    );

late final _SetIScsiTunnelModeOuterAddress = _iscsidsc.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> InitiatorName,
  Uint32 InitiatorPortNumber,
  Pointer<Utf16> DestinationAddress,
  Pointer<Utf16> OuterModeAddress,
  Uint8 Persist,
),
    int Function(
  Pointer<Utf16> InitiatorName,
  int InitiatorPortNumber,
  Pointer<Utf16> DestinationAddress,
  Pointer<Utf16> OuterModeAddress,
  int Persist,
)>('SetIScsiTunnelModeOuterAddressW');

int SetupPersistentIScsiDevices() => _SetupPersistentIScsiDevices();

late final _SetupPersistentIScsiDevices =
    _iscsidsc.lookupFunction<Uint32 Function(), int Function()>(
        'SetupPersistentIScsiDevices');

int SetupPersistentIScsiVolumes() => _SetupPersistentIScsiVolumes();

late final _SetupPersistentIScsiVolumes =
    _iscsidsc.lookupFunction<Uint32 Function(), int Function()>(
        'SetupPersistentIScsiVolumes');
