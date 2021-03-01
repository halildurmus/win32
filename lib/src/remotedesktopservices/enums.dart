/// {@category Enum}
class APO_BUFFER_FLAGS {
  static const BUFFER_INVALID = 0x00000000;
  static const BUFFER_VALID = 0x00000001;
  static const BUFFER_SILENT = 0x00000002;
}

/// {@category Enum}
class AE_POSITION_FLAGS {
  static const POSITION_INVALID = 0x00000000;
  static const POSITION_DISCONTINUOUS = 0x00000001;
  static const POSITION_CONTINUOUS = 0x00000002;
  static const POSITION_QPC_ERROR = 0x00000004;
}

/// {@category Enum}
class AAAuthSchemes {
  static const AA_AUTH_MIN = 0x00000000;
  static const AA_AUTH_BASIC = 0x00000001;
  static const AA_AUTH_NTLM = 0x00000002;
  static const AA_AUTH_SC = 0x00000003;
  static const AA_AUTH_LOGGEDONCREDENTIALS = 0x00000004;
  static const AA_AUTH_NEGOTIATE = 0x00000005;
  static const AA_AUTH_ANY = 0x00000006;
  static const AA_AUTH_COOKIE = 0x00000007;
  static const AA_AUTH_DIGEST = 0x00000008;
  static const AA_AUTH_ORGID = 0x00000009;
  static const AA_AUTH_CONID = 0x0000000a;
  static const AA_AUTH_SSPI_NTLM = 0x0000000b;
  static const AA_AUTH_MAX = 0x0000000c;
}

/// {@category Enum}
class AAAccountingDataType {
  static const AA_MAIN_SESSION_CREATION = 0x00000000;
  static const AA_SUB_SESSION_CREATION = 0x00000001;
  static const AA_SUB_SESSION_CLOSED = 0x00000002;
  static const AA_MAIN_SESSION_CLOSED = 0x00000003;
}

/// {@category Enum}
class PolicyAttributeType {
  static const EnableAllRedirections = 0x00000000;
  static const DisableAllRedirections = 0x00000001;
  static const DriveRedirectionDisabled = 0x00000002;
  static const PrinterRedirectionDisabled = 0x00000003;
  static const PortRedirectionDisabled = 0x00000004;
  static const ClipboardRedirectionDisabled = 0x00000005;
  static const PnpRedirectionDisabled = 0x00000006;
  static const AllowOnlySDRServers = 0x00000007;
}

/// {@category Enum}
class WTS_CONNECTSTATE_CLASS {
  static const WTSActive = 0x00000000;
  static const WTSConnected = 0x00000001;
  static const WTSConnectQuery = 0x00000002;
  static const WTSShadow = 0x00000003;
  static const WTSDisconnected = 0x00000004;
  static const WTSIdle = 0x00000005;
  static const WTSListen = 0x00000006;
  static const WTSReset = 0x00000007;
  static const WTSDown = 0x00000008;
  static const WTSInit = 0x00000009;
}

/// {@category Enum}
class WTS_INFO_CLASS {
  static const WTSInitialProgram = 0x00000000;
  static const WTSApplicationName = 0x00000001;
  static const WTSWorkingDirectory = 0x00000002;
  static const WTSOEMId = 0x00000003;
  static const WTSSessionId = 0x00000004;
  static const WTSUserName = 0x00000005;
  static const WTSWinStationName = 0x00000006;
  static const WTSDomainName = 0x00000007;
  static const WTSConnectState = 0x00000008;
  static const WTSClientBuildNumber = 0x00000009;
  static const WTSClientName = 0x0000000a;
  static const WTSClientDirectory = 0x0000000b;
  static const WTSClientProductId = 0x0000000c;
  static const WTSClientHardwareId = 0x0000000d;
  static const WTSClientAddress = 0x0000000e;
  static const WTSClientDisplay = 0x0000000f;
  static const WTSClientProtocolType = 0x00000010;
  static const WTSIdleTime = 0x00000011;
  static const WTSLogonTime = 0x00000012;
  static const WTSIncomingBytes = 0x00000013;
  static const WTSOutgoingBytes = 0x00000014;
  static const WTSIncomingFrames = 0x00000015;
  static const WTSOutgoingFrames = 0x00000016;
  static const WTSClientInfo = 0x00000017;
  static const WTSSessionInfo = 0x00000018;
  static const WTSSessionInfoEx = 0x00000019;
  static const WTSConfigInfo = 0x0000001a;
  static const WTSValidationInfo = 0x0000001b;
  static const WTSSessionAddressV4 = 0x0000001c;
  static const WTSIsRemoteSession = 0x0000001d;
}

/// {@category Enum}
class WTS_CONFIG_CLASS {
  static const WTSUserConfigInitialProgram = 0x00000000;
  static const WTSUserConfigWorkingDirectory = 0x00000001;
  static const WTSUserConfigfInheritInitialProgram = 0x00000002;
  static const WTSUserConfigfAllowLogonTerminalServer = 0x00000003;
  static const WTSUserConfigTimeoutSettingsConnections = 0x00000004;
  static const WTSUserConfigTimeoutSettingsDisconnections = 0x00000005;
  static const WTSUserConfigTimeoutSettingsIdle = 0x00000006;
  static const WTSUserConfigfDeviceClientDrives = 0x00000007;
  static const WTSUserConfigfDeviceClientPrinters = 0x00000008;
  static const WTSUserConfigfDeviceClientDefaultPrinter = 0x00000009;
  static const WTSUserConfigBrokenTimeoutSettings = 0x0000000a;
  static const WTSUserConfigReconnectSettings = 0x0000000b;
  static const WTSUserConfigModemCallbackSettings = 0x0000000c;
  static const WTSUserConfigModemCallbackPhoneNumber = 0x0000000d;
  static const WTSUserConfigShadowingSettings = 0x0000000e;
  static const WTSUserConfigTerminalServerProfilePath = 0x0000000f;
  static const WTSUserConfigTerminalServerHomeDir = 0x00000010;
  static const WTSUserConfigTerminalServerHomeDirDrive = 0x00000011;
  static const WTSUserConfigfTerminalServerRemoteHomeDir = 0x00000012;
  static const WTSUserConfigUser = 0x00000013;
}

/// {@category Enum}
class WTS_CONFIG_SOURCE {
  static const WTSUserConfigSourceSAM = 0x00000000;
}

/// {@category Enum}
class WTS_VIRTUAL_CLASS {
  static const WTSVirtualClientData = 0x00000000;
  static const WTSVirtualFileHandle = 0x00000001;
}

/// {@category Enum}
class WTS_TYPE_CLASS {
  static const WTSTypeProcessInfoLevel0 = 0x00000000;
  static const WTSTypeProcessInfoLevel1 = 0x00000001;
  static const WTSTypeSessionInfoLevel1 = 0x00000002;
}

/// {@category Enum}
class WTSSBX_MACHINE_DRAIN {
  static const WTSSBX_MACHINE_DRAIN_UNSPEC = 0x00000000;
  static const WTSSBX_MACHINE_DRAIN_OFF = 0x00000001;
  static const WTSSBX_MACHINE_DRAIN_ON = 0x00000002;
}

/// {@category Enum}
class WTSSBX_MACHINE_SESSION_MODE {
  static const WTSSBX_MACHINE_SESSION_MODE_UNSPEC = 0x00000000;
  static const WTSSBX_MACHINE_SESSION_MODE_SINGLE = 0x00000001;
  static const WTSSBX_MACHINE_SESSION_MODE_MULTIPLE = 0x00000002;
}

/// {@category Enum}
class WTSSBX_ADDRESS_FAMILY {
  static const WTSSBX_ADDRESS_FAMILY_AF_UNSPEC = 0x00000000;
  static const WTSSBX_ADDRESS_FAMILY_AF_INET = 0x00000001;
  static const WTSSBX_ADDRESS_FAMILY_AF_INET6 = 0x00000002;
  static const WTSSBX_ADDRESS_FAMILY_AF_IPX = 0x00000003;
  static const WTSSBX_ADDRESS_FAMILY_AF_NETBIOS = 0x00000004;
}

/// {@category Enum}
class WTSSBX_MACHINE_STATE {
  static const WTSSBX_MACHINE_STATE_UNSPEC = 0x00000000;
  static const WTSSBX_MACHINE_STATE_READY = 0x00000001;
  static const WTSSBX_MACHINE_STATE_SYNCHRONIZING = 0x00000002;
}

/// {@category Enum}
class WTSSBX_SESSION_STATE {
  static const WTSSBX_SESSION_STATE_UNSPEC = 0x00000000;
  static const WTSSBX_SESSION_STATE_ACTIVE = 0x00000001;
  static const WTSSBX_SESSION_STATE_DISCONNECTED = 0x00000002;
}

/// {@category Enum}
class WTSSBX_NOTIFICATION_TYPE {
  static const WTSSBX_NOTIFICATION_REMOVED = 0x00000001;
  static const WTSSBX_NOTIFICATION_CHANGED = 0x00000002;
  static const WTSSBX_NOTIFICATION_ADDED = 0x00000004;
  static const WTSSBX_NOTIFICATION_RESYNC = 0x00000008;
}

/// {@category Enum}
class TSSD_AddrV46Type {
  static const TSSD_ADDR_UNDEFINED = 0x00000000;
  static const TSSD_ADDR_IPv4 = 0x00000004;
  static const TSSD_ADDR_IPv6 = 0x00000006;
}

/// {@category Enum}
class TSSB_NOTIFICATION_TYPE {
  static const TSSB_NOTIFY_INVALID = 0x00000000;
  static const TSSB_NOTIFY_TARGET_CHANGE = 0x00000001;
  static const TSSB_NOTIFY_SESSION_CHANGE = 0x00000002;
  static const TSSB_NOTIFY_CONNECTION_REQUEST_CHANGE = 0x00000004;
}

/// {@category Enum}
class TARGET_STATE {
  static const TARGET_UNKNOWN = 0x00000001;
  static const TARGET_INITIALIZING = 0x00000002;
  static const TARGET_RUNNING = 0x00000003;
  static const TARGET_DOWN = 0x00000004;
  static const TARGET_HIBERNATED = 0x00000005;
  static const TARGET_CHECKED_OUT = 0x00000006;
  static const TARGET_STOPPED = 0x00000007;
  static const TARGET_INVALID = 0x00000008;
  static const TARGET_STARTING = 0x00000009;
  static const TARGET_STOPPING = 0x0000000a;
  static const TARGET_MAXSTATE = 0x0000000b;
}

/// {@category Enum}
class TARGET_CHANGE_TYPE {
  static const TARGET_CHANGE_UNSPEC = 0x00000001;
  static const TARGET_EXTERNALIP_CHANGED = 0x00000002;
  static const TARGET_INTERNALIP_CHANGED = 0x00000004;
  static const TARGET_JOINED = 0x00000008;
  static const TARGET_REMOVED = 0x00000010;
  static const TARGET_STATE_CHANGED = 0x00000020;
  static const TARGET_IDLE = 0x00000040;
  static const TARGET_PENDING = 0x00000080;
  static const TARGET_INUSE = 0x00000100;
  static const TARGET_PATCH_STATE_CHANGED = 0x00000200;
  static const TARGET_FARM_MEMBERSHIP_CHANGED = 0x00000400;
}

/// {@category Enum}
class TARGET_TYPE {
  static const UNKNOWN = 0x00000000;
  static const FARM = 0x00000001;
  static const NONFARM = 0x00000002;
}

/// {@category Enum}
class TARGET_PATCH_STATE {
  static const TARGET_PATCH_UNKNOWN = 0x00000000;
  static const TARGET_PATCH_NOT_STARTED = 0x00000001;
  static const TARGET_PATCH_IN_PROGRESS = 0x00000002;
  static const TARGET_PATCH_COMPLETED = 0x00000003;
  static const TARGET_PATCH_FAILED = 0x00000004;
}

/// {@category Enum}
class CLIENT_MESSAGE_TYPE {
  static const CLIENT_MESSAGE_CONNECTION_INVALID = 0x00000000;
  static const CLIENT_MESSAGE_CONNECTION_STATUS = 0x00000001;
  static const CLIENT_MESSAGE_CONNECTION_ERROR = 0x00000002;
}

/// {@category Enum}
class CONNECTION_CHANGE_NOTIFICATION {
  static const CONNECTION_REQUEST_INVALID = 0x00000000;
  static const CONNECTION_REQUEST_PENDING = 0x00000001;
  static const CONNECTION_REQUEST_FAILED = 0x00000002;
  static const CONNECTION_REQUEST_TIMEDOUT = 0x00000003;
  static const CONNECTION_REQUEST_SUCCEEDED = 0x00000004;
  static const CONNECTION_REQUEST_CANCELLED = 0x00000005;
  static const CONNECTION_REQUEST_LB_COMPLETED = 0x00000006;
  static const CONNECTION_REQUEST_QUERY_PL_COMPLETED = 0x00000007;
  static const CONNECTION_REQUEST_ORCH_COMPLETED = 0x00000008;
}

/// {@category Enum}
class RD_FARM_TYPE {
  static const RD_FARM_RDSH = 0x00000000;
  static const RD_FARM_TEMP_VM = 0x00000001;
  static const RD_FARM_MANUAL_PERSONAL_VM = 0x00000002;
  static const RD_FARM_AUTO_PERSONAL_VM = 0x00000003;
  static const RD_FARM_MANUAL_PERSONAL_RDSH = 0x00000004;
  static const RD_FARM_AUTO_PERSONAL_RDSH = 0x00000005;
  static const RD_FARM_TYPE_UNKNOWN = 0xffffffff;
}

/// {@category Enum}
class PLUGIN_TYPE {
  static const UNKNOWN_PLUGIN = 0x00000000;
  static const POLICY_PLUGIN = 0x00000001;
  static const RESOURCE_PLUGIN = 0x00000002;
  static const LOAD_BALANCING_PLUGIN = 0x00000004;
  static const PLACEMENT_PLUGIN = 0x00000008;
  static const ORCHESTRATION_PLUGIN = 0x00000010;
  static const PROVISIONING_PLUGIN = 0x00000020;
  static const TASK_PLUGIN = 0x00000040;
}

/// {@category Enum}
class TSSESSION_STATE {
  static const STATE_INVALID = 0xffffffff;
  static const STATE_ACTIVE = 0x00000000;
  static const STATE_CONNECTED = 0x00000001;
  static const STATE_CONNECTQUERY = 0x00000002;
  static const STATE_SHADOW = 0x00000003;
  static const STATE_DISCONNECTED = 0x00000004;
  static const STATE_IDLE = 0x00000005;
  static const STATE_LISTEN = 0x00000006;
  static const STATE_RESET = 0x00000007;
  static const STATE_DOWN = 0x00000008;
  static const STATE_INIT = 0x00000009;
  static const STATE_MAX = 0x0000000a;
}

/// {@category Enum}
class TARGET_OWNER {
  static const OWNER_UNKNOWN = 0x00000000;
  static const OWNER_MS_TS_PLUGIN = 0x00000001;
  static const OWNER_MS_VM_PLUGIN = 0x00000002;
}

/// {@category Enum}
class VM_NOTIFY_STATUS {
  static const VM_NOTIFY_STATUS_PENDING = 0x00000000;
  static const VM_NOTIFY_STATUS_IN_PROGRESS = 0x00000001;
  static const VM_NOTIFY_STATUS_COMPLETE = 0x00000002;
  static const VM_NOTIFY_STATUS_FAILED = 0x00000003;
  static const VM_NOTIFY_STATUS_CANCELED = 0x00000004;
}

/// {@category Enum}
class VM_HOST_NOTIFY_STATUS {
  static const VM_HOST_STATUS_INIT_PENDING = 0x00000000;
  static const VM_HOST_STATUS_INIT_IN_PROGRESS = 0x00000001;
  static const VM_HOST_STATUS_INIT_COMPLETE = 0x00000002;
  static const VM_HOST_STATUS_INIT_FAILED = 0x00000003;
}

/// {@category Enum}
class RDV_TASK_STATUS {
  static const RDV_TASK_STATUS_UNKNOWN = 0x00000000;
  static const RDV_TASK_STATUS_SEARCHING = 0x00000001;
  static const RDV_TASK_STATUS_DOWNLOADING = 0x00000002;
  static const RDV_TASK_STATUS_APPLYING = 0x00000003;
  static const RDV_TASK_STATUS_REBOOTING = 0x00000004;
  static const RDV_TASK_STATUS_REBOOTED = 0x00000005;
  static const RDV_TASK_STATUS_SUCCESS = 0x00000006;
  static const RDV_TASK_STATUS_FAILED = 0x00000007;
  static const RDV_TASK_STATUS_TIMEOUT = 0x00000008;
}

/// {@category Enum}
class TS_SB_SORT_BY {
  static const TS_SB_SORT_BY_NONE = 0x00000000;
  static const TS_SB_SORT_BY_NAME = 0x00000001;
  static const TS_SB_SORT_BY_PROP = 0x00000002;
}

/// {@category Enum}
class TSPUB_PLUGIN_PD_RESOLUTION_TYPE {
  static const TSPUB_PLUGIN_PD_QUERY_OR_CREATE = 0x00000000;
  static const TSPUB_PLUGIN_PD_QUERY_EXISTING = 0x00000001;
}

/// {@category Enum}
class TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE {
  static const TSPUB_PLUGIN_PD_ASSIGNMENT_NEW = 0x00000000;
  static const TSPUB_PLUGIN_PD_ASSIGNMENT_EXISTING = 0x00000001;
}

/// {@category Enum}
class WRdsGraphicsChannelType {
  static const WRdsGraphicsChannelType_GuaranteedDelivery = 0x00000000;
  static const WRdsGraphicsChannelType_BestEffortDelivery = 0x00000001;
}

/// {@category Enum}
class WTS_RCM_SERVICE_STATE {
  static const WTS_SERVICE_NONE = 0x00000000;
  static const WTS_SERVICE_START = 0x00000001;
  static const WTS_SERVICE_STOP = 0x00000002;
}

/// {@category Enum}
class WTS_RCM_DRAIN_STATE {
  static const WTS_DRAIN_STATE_NONE = 0x00000000;
  static const WTS_DRAIN_IN_DRAIN = 0x00000001;
  static const WTS_DRAIN_NOT_IN_DRAIN = 0x00000002;
}

/// {@category Enum}
class WTS_LOGON_ERROR_REDIRECTOR_RESPONSE {
  static const WTS_LOGON_ERR_INVALID = 0x00000000;
  static const WTS_LOGON_ERR_NOT_HANDLED = 0x00000001;
  static const WTS_LOGON_ERR_HANDLED_SHOW = 0x00000002;
  static const WTS_LOGON_ERR_HANDLED_DONT_SHOW = 0x00000003;
  static const WTS_LOGON_ERR_HANDLED_DONT_SHOW_START_OVER = 0x00000004;
}

/// {@category Enum}
class WTS_CERT_TYPE {
  static const WTS_CERT_TYPE_INVALID = 0x00000000;
  static const WTS_CERT_TYPE_PROPRIETORY = 0x00000001;
  static const WTS_CERT_TYPE_X509 = 0x00000002;
}

/// {@category Enum}
class WRDS_CONNECTION_SETTING_LEVEL {
  static const WRDS_CONNECTION_SETTING_LEVEL_INVALID = 0x00000000;
  static const WRDS_CONNECTION_SETTING_LEVEL_1 = 0x00000001;
}

/// {@category Enum}
class WRDS_LISTENER_SETTING_LEVEL {
  static const WRDS_LISTENER_SETTING_LEVEL_INVALID = 0x00000000;
  static const WRDS_LISTENER_SETTING_LEVEL_1 = 0x00000001;
}

/// {@category Enum}
class WRDS_SETTING_TYPE {
  static const WRDS_SETTING_TYPE_INVALID = 0x00000000;
  static const WRDS_SETTING_TYPE_MACHINE = 0x00000001;
  static const WRDS_SETTING_TYPE_USER = 0x00000002;
  static const WRDS_SETTING_TYPE_SAM = 0x00000003;
}

/// {@category Enum}
class WRDS_SETTING_STATUS {
  static const WRDS_SETTING_STATUS_NOTAPPLICABLE = 0xffffffff;
  static const WRDS_SETTING_STATUS_DISABLED = 0x00000000;
  static const WRDS_SETTING_STATUS_ENABLED = 0x00000001;
  static const WRDS_SETTING_STATUS_NOTCONFIGURED = 0x00000002;
}

/// {@category Enum}
class WRDS_SETTING_LEVEL {
  static const WRDS_SETTING_LEVEL_INVALID = 0x00000000;
  static const WRDS_SETTING_LEVEL_1 = 0x00000001;
}

/// {@category Enum}
class MIDL_IRemoteDesktopClientSettings_0001 {
  static const PasswordEncodingUTF8 = 0x00000000;
  static const PasswordEncodingUTF16LE = 0x00000001;
  static const PasswordEncodingUTF16BE = 0x00000002;
}

/// {@category Enum}
class RemoteActionType {
  static const RemoteActionCharms = 0x00000000;
  static const RemoteActionAppbar = 0x00000001;
  static const RemoteActionSnap = 0x00000002;
  static const RemoteActionStartScreen = 0x00000003;
  static const RemoteActionAppSwitch = 0x00000004;
}

/// {@category Enum}
class SnapshotEncodingType {
  static const SnapshotEncodingDataUri = 0x00000000;
}

/// {@category Enum}
class SnapshotFormatType {
  static const SnapshotFormatPng = 0x00000000;
  static const SnapshotFormatJpeg = 0x00000001;
  static const SnapshotFormatBmp = 0x00000002;
}

/// {@category Enum}
class MIDL_IRemoteDesktopClient_0001 {
  static const KeyCombinationHome = 0x00000000;
  static const KeyCombinationLeft = 0x00000001;
  static const KeyCombinationUp = 0x00000002;
  static const KeyCombinationRight = 0x00000003;
  static const KeyCombinationDown = 0x00000004;
  static const KeyCombinationScroll = 0x00000005;
}

