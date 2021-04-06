/// {@category Enum}
class BrowserNavConstants {
  static const navOpenInNewWindow = 0x00000001;
  static const navNoHistory = 0x00000002;
  static const navNoReadFromCache = 0x00000004;
  static const navNoWriteToCache = 0x00000008;
  static const navAllowAutosearch = 0x00000010;
  static const navBrowserBar = 0x00000020;
  static const navHyperlink = 0x00000040;
  static const navEnforceRestricted = 0x00000080;
  static const navNewWindowsManaged = 0x00000100;
  static const navUntrustedForDownload = 0x00000200;
  static const navTrustedForActiveX = 0x00000400;
  static const navOpenInNewTab = 0x00000800;
  static const navOpenInBackgroundTab = 0x00001000;
  static const navKeepWordWheelText = 0x00002000;
  static const navVirtualTab = 0x00004000;
  static const navBlockRedirectsXDomain = 0x00008000;
  static const navOpenNewForegroundTab = 0x00010000;
  static const navTravelLogScreenshot = 0x00020000;
  static const navDeferUnload = 0x00040000;
  static const navSpeculative = 0x00080000;
  static const navSuggestNewWindow = 0x00100000;
  static const navSuggestNewTab = 0x00200000;
  static const navReserved1 = 0x00400000;
  static const navHomepageNavigate = 0x00800000;
  static const navRefresh = 0x01000000;
  static const navHostNavigation = 0x02000000;
  static const navReserved2 = 0x04000000;
  static const navReserved3 = 0x08000000;
  static const navReserved4 = 0x10000000;
  static const navReserved5 = 0x20000000;
  static const navReserved6 = 0x40000000;
  static const navReserved7 = 0x80000000;
}

/// {@category Enum}
class COMPUTER_NAME_FORMAT {
  static const ComputerNameNetBIOS = 0x00000000;
  static const ComputerNameDnsHostname = 0x00000001;
  static const ComputerNameDnsDomain = 0x00000002;
  static const ComputerNameDnsFullyQualified = 0x00000003;
  static const ComputerNamePhysicalNetBIOS = 0x00000004;
  static const ComputerNamePhysicalDnsHostname = 0x00000005;
  static const ComputerNamePhysicalDnsDomain = 0x00000006;
  static const ComputerNamePhysicalDnsFullyQualified = 0x00000007;
  static const ComputerNameMax = 0x00000008;
}

/// {@category Enum}
class CameraUIControlCaptureMode {
  static const PhotoOrVideo = 0x00000000;
  static const Photo = 0x00000001;
  static const Video = 0x00000002;
}

/// {@category Enum}
class CameraUIControlLinearSelectionMode {
  static const Single = 0x00000000;
  static const Multiple = 0x00000001;
}

/// {@category Enum}
class CameraUIControlMode {
  static const Browse = 0x00000000;
  static const Linear = 0x00000001;
}

/// {@category Enum}
class CameraUIControlPhotoFormat {
  static const Jpeg = 0x00000000;
  static const Png = 0x00000001;
  static const JpegXR = 0x00000002;
}

/// {@category Enum}
class CameraUIControlVideoFormat {
  static const Mp4 = 0x00000000;
  static const Wmv = 0x00000001;
}

/// {@category Enum}
class CameraUIControlViewType {
  static const SingleItem = 0x00000000;
  static const ItemList = 0x00000001;
}

/// {@category Enum}
class CommandStateChangeConstants {
  static const CSC_UPDATECOMMANDS = 0xffffffff;
  static const CSC_NAVIGATEFORWARD = 0x00000001;
  static const CSC_NAVIGATEBACK = 0x00000002;
}

/// {@category Enum}
class DECISION_LOCATION {
  static const DECISION_LOCATION_REFRESH_GLOBAL_DATA = 0x00000000;
  static const DECISION_LOCATION_PARAMETER_VALIDATION = 0x00000001;
  static const DECISION_LOCATION_AUDIT = 0x00000002;
  static const DECISION_LOCATION_FAILED_CONVERT_GUID = 0x00000003;
  static const DECISION_LOCATION_ENTERPRISE_DEFINED_CLASS_ID = 0x00000004;
  static const DECISION_LOCATION_GLOBAL_BUILT_IN_LIST = 0x00000005;
  static const DECISION_LOCATION_PROVIDER_BUILT_IN_LIST = 0x00000006;
  static const DECISION_LOCATION_ENFORCE_STATE_LIST = 0x00000007;
  static const DECISION_LOCATION_NOT_FOUND = 0x00000008;
  static const DECISION_LOCATION_UNKNOWN = 0x00000009;
}

/// {@category Enum}
class DEP_SYSTEM_POLICY_TYPE {
  static const DEPPolicyAlwaysOff = 0x00000000;
  static const DEPPolicyAlwaysOn = 0x00000001;
  static const DEPPolicyOptIn = 0x00000002;
  static const DEPPolicyOptOut = 0x00000003;
  static const DEPTotalPolicyCount = 0x00000004;
}

/// {@category Enum}
class DEVPROP_OPERATOR {
  static const DEVPROP_OPERATOR_MODIFIER_NOT = 0x00010000;
  static const DEVPROP_OPERATOR_MODIFIER_IGNORE_CASE = 0x00020000;
  static const DEVPROP_OPERATOR_NONE = 0x00000000;
  static const DEVPROP_OPERATOR_EXISTS = 0x00000001;
  static const DEVPROP_OPERATOR_NOT_EXISTS = 0x00010001;
  static const DEVPROP_OPERATOR_EQUALS = 0x00000002;
  static const DEVPROP_OPERATOR_NOT_EQUALS = 0x00010002;
  static const DEVPROP_OPERATOR_GREATER_THAN = 0x00000003;
  static const DEVPROP_OPERATOR_LESS_THAN = 0x00000004;
  static const DEVPROP_OPERATOR_GREATER_THAN_EQUALS = 0x00000005;
  static const DEVPROP_OPERATOR_LESS_THAN_EQUALS = 0x00000006;
  static const DEVPROP_OPERATOR_EQUALS_IGNORE_CASE = 0x00020002;
  static const DEVPROP_OPERATOR_NOT_EQUALS_IGNORE_CASE = 0x00030002;
  static const DEVPROP_OPERATOR_BITWISE_AND = 0x00000007;
  static const DEVPROP_OPERATOR_BITWISE_OR = 0x00000008;
  static const DEVPROP_OPERATOR_BEGINS_WITH = 0x00000009;
  static const DEVPROP_OPERATOR_ENDS_WITH = 0x0000000a;
  static const DEVPROP_OPERATOR_CONTAINS = 0x0000000b;
  static const DEVPROP_OPERATOR_BEGINS_WITH_IGNORE_CASE = 0x00020009;
  static const DEVPROP_OPERATOR_ENDS_WITH_IGNORE_CASE = 0x0002000a;
  static const DEVPROP_OPERATOR_CONTAINS_IGNORE_CASE = 0x0002000b;
  static const DEVPROP_OPERATOR_LIST_CONTAINS = 0x00001000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_BEGINS_WITH = 0x00002000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_ENDS_WITH = 0x00003000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_CONTAINS = 0x00004000;
  static const DEVPROP_OPERATOR_LIST_CONTAINS_IGNORE_CASE = 0x00021000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_BEGINS_WITH_IGNORE_CASE = 0x00022000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_ENDS_WITH_IGNORE_CASE = 0x00023000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_CONTAINS_IGNORE_CASE = 0x00024000;
  static const DEVPROP_OPERATOR_AND_OPEN = 0x00100000;
  static const DEVPROP_OPERATOR_AND_CLOSE = 0x00200000;
  static const DEVPROP_OPERATOR_OR_OPEN = 0x00300000;
  static const DEVPROP_OPERATOR_OR_CLOSE = 0x00400000;
  static const DEVPROP_OPERATOR_NOT_OPEN = 0x00500000;
  static const DEVPROP_OPERATOR_NOT_CLOSE = 0x00600000;
  static const DEVPROP_OPERATOR_ARRAY_CONTAINS = 0x10000000;
  static const DEVPROP_OPERATOR_MASK_EVAL = 0x00000fff;
  static const DEVPROP_OPERATOR_MASK_LIST = 0x0000f000;
  static const DEVPROP_OPERATOR_MASK_MODIFIER = 0x000f0000;
  static const DEVPROP_OPERATOR_MASK_NOT_LOGICAL = 0xf00fffff;
  static const DEVPROP_OPERATOR_MASK_LOGICAL = 0x0ff00000;
  static const DEVPROP_OPERATOR_MASK_ARRAY = 0xf0000000;
}

/// {@category Enum}
class DEV_OBJECT_TYPE {
  static const DevObjectTypeUnknown = 0x00000000;
  static const DevObjectTypeDeviceInterface = 0x00000001;
  static const DevObjectTypeDeviceContainer = 0x00000002;
  static const DevObjectTypeDevice = 0x00000003;
  static const DevObjectTypeDeviceInterfaceClass = 0x00000004;
  static const DevObjectTypeAEP = 0x00000005;
  static const DevObjectTypeAEPContainer = 0x00000006;
  static const DevObjectTypeDeviceInstallerClass = 0x00000007;
  static const DevObjectTypeDeviceInterfaceDisplay = 0x00000008;
  static const DevObjectTypeDeviceContainerDisplay = 0x00000009;
  static const DevObjectTypeAEPService = 0x0000000a;
  static const DevObjectTypeDevicePanel = 0x0000000b;
}

/// {@category Enum}
class DEV_QUERY_FLAGS {
  static const DevQueryFlagNone = 0x00000000;
  static const DevQueryFlagUpdateResults = 0x00000001;
  static const DevQueryFlagAllProperties = 0x00000002;
  static const DevQueryFlagLocalize = 0x00000004;
  static const DevQueryFlagAsyncClose = 0x00000008;
}

/// {@category Enum}
class DEV_QUERY_RESULT_ACTION {
  static const DevQueryResultStateChange = 0x00000000;
  static const DevQueryResultAdd = 0x00000001;
  static const DevQueryResultUpdate = 0x00000002;
  static const DevQueryResultRemove = 0x00000003;
}

/// {@category Enum}
class DEV_QUERY_STATE {
  static const DevQueryStateInitialized = 0x00000000;
  static const DevQueryStateEnumCompleted = 0x00000001;
  static const DevQueryStateAborted = 0x00000002;
  static const DevQueryStateClosed = 0x00000003;
}

/// {@category Enum}
class DOMNodeType {
  static const NODE_INVALID = 0x00000000;
  static const NODE_ELEMENT = 0x00000001;
  static const NODE_ATTRIBUTE = 0x00000002;
  static const NODE_TEXT = 0x00000003;
  static const NODE_CDATA_SECTION = 0x00000004;
  static const NODE_ENTITY_REFERENCE = 0x00000005;
  static const NODE_ENTITY = 0x00000006;
  static const NODE_PROCESSING_INSTRUCTION = 0x00000007;
  static const NODE_COMMENT = 0x00000008;
  static const NODE_DOCUMENT = 0x00000009;
  static const NODE_DOCUMENT_TYPE = 0x0000000a;
  static const NODE_DOCUMENT_FRAGMENT = 0x0000000b;
  static const NODE_NOTATION = 0x0000000c;
}

/// {@category Enum}
class DUPLICATE_HANDLE_OPTIONS {
  static const DUPLICATE_CLOSE_SOURCE = 0x00000001;
  static const DUPLICATE_SAME_ACCESS = 0x00000002;
}

/// {@category Enum}
class DtdProcessing {
  static const DtdProcessing_Prohibit = 0x00000000;
  static const DtdProcessing_Parse = 0x00000001;
  static const _DtdProcessing_Last = 0x00000001;
}

/// {@category Enum}
class EXTENDED_NAME_FORMAT {
  static const NameUnknown = 0x00000000;
  static const NameFullyQualifiedDN = 0x00000001;
  static const NameSamCompatible = 0x00000002;
  static const NameDisplay = 0x00000003;
  static const NameUniqueId = 0x00000006;
  static const NameCanonical = 0x00000007;
  static const NameUserPrincipal = 0x00000008;
  static const NameCanonicalEx = 0x00000009;
  static const NameServicePrincipal = 0x0000000a;
  static const NameDnsDomain = 0x0000000c;
  static const NameGivenName = 0x0000000d;
  static const NameSurname = 0x0000000e;
}

/// {@category Enum}
class FCIERROR {
  static const FCIERR_NONE = 0x00000000;
  static const FCIERR_OPEN_SRC = 0x00000001;
  static const FCIERR_READ_SRC = 0x00000002;
  static const FCIERR_ALLOC_FAIL = 0x00000003;
  static const FCIERR_TEMP_FILE = 0x00000004;
  static const FCIERR_BAD_COMPR_TYPE = 0x00000005;
  static const FCIERR_CAB_FILE = 0x00000006;
  static const FCIERR_USER_ABORT = 0x00000007;
  static const FCIERR_MCI_FAIL = 0x00000008;
  static const FCIERR_CAB_FORMAT_LIMIT = 0x00000009;
}

/// {@category Enum}
class FDICreate_cpuTypeFlags {
  static const cpu80286 = 0x00000000;
  static const cpu80386 = 0x00000001;
}

/// {@category Enum}
class FDIDECRYPTTYPE {
  static const fdidtNEW_CABINET = 0x00000000;
  static const fdidtNEW_FOLDER = 0x00000001;
  static const fdidtDECRYPT = 0x00000002;
}

/// {@category Enum}
class FDIERROR {
  static const FDIERROR_NONE = 0x00000000;
  static const FDIERROR_CABINET_NOT_FOUND = 0x00000001;
  static const FDIERROR_NOT_A_CABINET = 0x00000002;
  static const FDIERROR_UNKNOWN_CABINET_VERSION = 0x00000003;
  static const FDIERROR_CORRUPT_CABINET = 0x00000004;
  static const FDIERROR_ALLOC_FAIL = 0x00000005;
  static const FDIERROR_BAD_COMPR_TYPE = 0x00000006;
  static const FDIERROR_MDI_FAIL = 0x00000007;
  static const FDIERROR_TARGET_FILE = 0x00000008;
  static const FDIERROR_RESERVE_MISMATCH = 0x00000009;
  static const FDIERROR_WRONG_CABINET = 0x0000000a;
  static const FDIERROR_USER_ABORT = 0x0000000b;
  static const FDIERROR_EOF = 0x0000000c;
}

/// {@category Enum}
class FDINOTIFICATIONTYPE {
  static const fdintCABINET_INFO = 0x00000000;
  static const fdintPARTIAL_FILE = 0x00000001;
  static const fdintCOPY_FILE = 0x00000002;
  static const fdintCLOSE_FILE_INFO = 0x00000003;
  static const fdintNEXT_CABINET = 0x00000004;
  static const fdintENUMERATE = 0x00000005;
}

/// {@category Enum}
class FEATURE_CHANGE_TIME {
  static const FEATURE_CHANGE_TIME_READ = 0x00000000;
  static const FEATURE_CHANGE_TIME_MODULE_RELOAD = 0x00000001;
  static const FEATURE_CHANGE_TIME_SESSION = 0x00000002;
  static const FEATURE_CHANGE_TIME_REBOOT = 0x00000003;
}

/// {@category Enum}
class FEATURE_ENABLED_STATE {
  static const FEATURE_ENABLED_STATE_DEFAULT = 0x00000000;
  static const FEATURE_ENABLED_STATE_DISABLED = 0x00000001;
  static const FEATURE_ENABLED_STATE_ENABLED = 0x00000002;
}

/// {@category Enum}
class FH_BACKUP_STATUS {
  static const FH_STATUS_DISABLED = 0x00000000;
  static const FH_STATUS_DISABLED_BY_GP = 0x00000001;
  static const FH_STATUS_ENABLED = 0x00000002;
  static const FH_STATUS_REHYDRATING = 0x00000003;
  static const MAX_BACKUP_STATUS = 0x00000004;
}

/// {@category Enum}
class FH_DEVICE_VALIDATION_RESULT {
  static const FH_ACCESS_DENIED = 0x00000000;
  static const FH_INVALID_DRIVE_TYPE = 0x00000001;
  static const FH_READ_ONLY_PERMISSION = 0x00000002;
  static const FH_CURRENT_DEFAULT = 0x00000003;
  static const FH_NAMESPACE_EXISTS = 0x00000004;
  static const FH_TARGET_PART_OF_LIBRARY = 0x00000005;
  static const FH_VALID_TARGET = 0x00000006;
  static const MAX_VALIDATION_RESULT = 0x00000007;
}

/// {@category Enum}
class FH_LOCAL_POLICY_TYPE {
  static const FH_FREQUENCY = 0x00000000;
  static const FH_RETENTION_TYPE = 0x00000001;
  static const FH_RETENTION_AGE = 0x00000002;
  static const MAX_LOCAL_POLICY = 0x00000003;
}

/// {@category Enum}
class FH_PROTECTED_ITEM_CATEGORY {
  static const FH_FOLDER = 0x00000000;
  static const FH_LIBRARY = 0x00000001;
  static const MAX_PROTECTED_ITEM_CATEGORY = 0x00000002;
}

/// {@category Enum}
class FH_RETENTION_TYPES {
  static const FH_RETENTION_DISABLED = 0x00000000;
  static const FH_RETENTION_UNLIMITED = 0x00000001;
  static const FH_RETENTION_AGE_BASED = 0x00000002;
  static const MAX_RETENTION_TYPE = 0x00000003;
}

/// {@category Enum}
class FH_TARGET_DRIVE_TYPES {
  static const FH_DRIVE_UNKNOWN = 0x00000000;
  static const FH_DRIVE_REMOVABLE = 0x00000002;
  static const FH_DRIVE_FIXED = 0x00000003;
  static const FH_DRIVE_REMOTE = 0x00000004;
}

/// {@category Enum}
class FH_TARGET_PROPERTY_TYPE {
  static const FH_TARGET_NAME = 0x00000000;
  static const FH_TARGET_URL = 0x00000001;
  static const FH_TARGET_DRIVE_TYPE = 0x00000002;
  static const MAX_TARGET_PROPERTY = 0x00000003;
}

/// {@category Enum}
class FILE_INFORMATION_CLASS {
  static const FileDirectoryInformation = 0x00000001;
}

/// {@category Enum}
class FIRMWARE_TYPE {
  static const FirmwareTypeUnknown = 0x00000000;
  static const FirmwareTypeBios = 0x00000001;
  static const FirmwareTypeUefi = 0x00000002;
  static const FirmwareTypeMax = 0x00000003;
}

/// {@category Enum}
class FhBackupStopReason {
  static const BackupInvalidStopReason = 0x00000000;
  static const BackupLimitUserBusyMachineOnAC = 0x00000001;
  static const BackupLimitUserIdleMachineOnDC = 0x00000002;
  static const BackupLimitUserBusyMachineOnDC = 0x00000003;
  static const BackupCancelled = 0x00000004;
}

/// {@category Enum}
class GLOBAL_FILTER {
  static const GF_FRAGMENTS = 0x00000002;
  static const GF_STRONGHOST = 0x00000008;
  static const GF_FRAGCACHE = 0x00000009;
}

/// {@category Enum}
class GetProductInfo_pdwReturnedProductTypeFlags {
  static const PRODUCT_BUSINESS = 0x00000006;
  static const PRODUCT_BUSINESS_N = 0x00000010;
  static const PRODUCT_CLUSTER_SERVER = 0x00000012;
  static const PRODUCT_CLUSTER_SERVER_V = 0x00000040;
  static const PRODUCT_CORE = 0x00000065;
  static const PRODUCT_CORE_COUNTRYSPECIFIC = 0x00000063;
  static const PRODUCT_CORE_N = 0x00000062;
  static const PRODUCT_CORE_SINGLELANGUAGE = 0x00000064;
  static const PRODUCT_DATACENTER_EVALUATION_SERVER = 0x00000050;
  static const PRODUCT_DATACENTER_A_SERVER_CORE = 0x00000091;
  static const PRODUCT_STANDARD_A_SERVER_CORE = 0x00000092;
  static const PRODUCT_DATACENTER_SERVER = 0x00000008;
  static const PRODUCT_DATACENTER_SERVER_CORE = 0x0000000c;
  static const PRODUCT_DATACENTER_SERVER_CORE_V = 0x00000027;
  static const PRODUCT_DATACENTER_SERVER_V = 0x00000025;
  static const PRODUCT_EDUCATION = 0x00000079;
  static const PRODUCT_EDUCATION_N = 0x0000007a;
  static const PRODUCT_ENTERPRISE = 0x00000004;
  static const PRODUCT_ENTERPRISE_E = 0x00000046;
  static const PRODUCT_ENTERPRISE_EVALUATION = 0x00000048;
  static const PRODUCT_ENTERPRISE_N = 0x0000001b;
  static const PRODUCT_ENTERPRISE_N_EVALUATION = 0x00000054;
  static const PRODUCT_ENTERPRISE_S = 0x0000007d;
  static const PRODUCT_ENTERPRISE_S_EVALUATION = 0x00000081;
  static const PRODUCT_ENTERPRISE_S_N = 0x0000007e;
  static const PRODUCT_ENTERPRISE_S_N_EVALUATION = 0x00000082;
  static const PRODUCT_ENTERPRISE_SERVER = 0x0000000a;
  static const PRODUCT_ENTERPRISE_SERVER_CORE = 0x0000000e;
  static const PRODUCT_ENTERPRISE_SERVER_CORE_V = 0x00000029;
  static const PRODUCT_ENTERPRISE_SERVER_IA64 = 0x0000000f;
  static const PRODUCT_ENTERPRISE_SERVER_V = 0x00000026;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = 0x0000003c;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = 0x0000003e;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = 0x0000003b;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = 0x0000003d;
  static const PRODUCT_HOME_BASIC = 0x00000002;
  static const PRODUCT_HOME_BASIC_E = 0x00000043;
  static const PRODUCT_HOME_BASIC_N = 0x00000005;
  static const PRODUCT_HOME_PREMIUM = 0x00000003;
  static const PRODUCT_HOME_PREMIUM_E = 0x00000044;
  static const PRODUCT_HOME_PREMIUM_N = 0x0000001a;
  static const PRODUCT_HOME_PREMIUM_SERVER = 0x00000022;
  static const PRODUCT_HOME_SERVER = 0x00000013;
  static const PRODUCT_HYPERV = 0x0000002a;
  static const PRODUCT_IOTUAP = 0x0000007b;
  static const PRODUCT_IOTUAPCOMMERCIAL = 0x00000083;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT = 0x0000001e;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING = 0x00000020;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY = 0x0000001f;
  static const PRODUCT_MOBILE_CORE = 0x00000068;
  static const PRODUCT_MOBILE_ENTERPRISE = 0x00000085;
  static const PRODUCT_MULTIPOINT_PREMIUM_SERVER = 0x0000004d;
  static const PRODUCT_MULTIPOINT_STANDARD_SERVER = 0x0000004c;
  static const PRODUCT_PRO_WORKSTATION = 0x000000a1;
  static const PRODUCT_PRO_WORKSTATION_N = 0x000000a2;
  static const PRODUCT_PROFESSIONAL = 0x00000030;
  static const PRODUCT_PROFESSIONAL_E = 0x00000045;
  static const PRODUCT_PROFESSIONAL_N = 0x00000031;
  static const PRODUCT_PROFESSIONAL_WMC = 0x00000067;
  static const PRODUCT_SB_SOLUTION_SERVER = 0x00000032;
  static const PRODUCT_SB_SOLUTION_SERVER_EM = 0x00000036;
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS = 0x00000033;
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = 0x00000037;
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS = 0x00000018;
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = 0x00000023;
  static const PRODUCT_SERVER_FOUNDATION = 0x00000021;
  static const PRODUCT_SMALLBUSINESS_SERVER = 0x00000009;
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM = 0x00000019;
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = 0x0000003f;
  static const PRODUCT_SOLUTION_EMBEDDEDSERVER = 0x00000038;
  static const PRODUCT_STANDARD_EVALUATION_SERVER = 0x0000004f;
  static const PRODUCT_STANDARD_SERVER = 0x00000007;
  static const PRODUCT_STANDARD_SERVER_CORE_ = 0x0000000d;
  static const PRODUCT_STANDARD_SERVER_CORE_V = 0x00000028;
  static const PRODUCT_STANDARD_SERVER_V = 0x00000024;
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS = 0x00000034;
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE = 0x00000035;
  static const PRODUCT_STARTER = 0x0000000b;
  static const PRODUCT_STARTER_E = 0x00000042;
  static const PRODUCT_STARTER_N = 0x0000002f;
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER = 0x00000017;
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE = 0x0000002e;
  static const PRODUCT_STORAGE_EXPRESS_SERVER = 0x00000014;
  static const PRODUCT_STORAGE_EXPRESS_SERVER_CORE = 0x0000002b;
  static const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = 0x00000060;
  static const PRODUCT_STORAGE_STANDARD_SERVER = 0x00000015;
  static const PRODUCT_STORAGE_STANDARD_SERVER_CORE = 0x0000002c;
  static const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER = 0x0000005f;
  static const PRODUCT_STORAGE_WORKGROUP_SERVER = 0x00000016;
  static const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE = 0x0000002d;
  static const PRODUCT_ULTIMATE = 0x00000001;
  static const PRODUCT_ULTIMATE_E = 0x00000047;
  static const PRODUCT_ULTIMATE_N = 0x0000001c;
  static const PRODUCT_UNDEFINED = 0x00000000;
  static const PRODUCT_WEB_SERVER = 0x00000011;
  static const PRODUCT_WEB_SERVER_CORE = 0x0000001d;
}

/// {@category Enum}
class HANDLE_FLAG_OPTIONS {
  static const HANDLE_FLAG_INHERIT = 0x00000001;
  static const HANDLE_FLAG_PROTECT_FROM_CLOSE = 0x00000002;
}

/// {@category Enum}
class IsProcessorFeaturePresent_ProcessorFeatureFlags {
  static const PF_ARM_64BIT_LOADSTORE_ATOMIC = 0x00000019;
  static const PF_ARM_DIVIDE_INSTRUCTION_AVAILABLE = 0x00000018;
  static const PF_ARM_EXTERNAL_CACHE_AVAILABLE = 0x0000001a;
  static const PF_ARM_FMAC_INSTRUCTIONS_AVAILABLE = 0x0000001b;
  static const PF_ARM_VFP_32_REGISTERS_AVAILABLE = 0x00000012;
  static const PF_3DNOW_INSTRUCTIONS_AVAILABLE = 0x00000007;
  static const PF_CHANNELS_ENABLED = 0x00000010;
  static const PF_COMPARE_EXCHANGE_DOUBLE = 0x00000002;
  static const PF_COMPARE_EXCHANGE128 = 0x0000000e;
  static const PF_COMPARE64_EXCHANGE128 = 0x0000000f;
  static const PF_FASTFAIL_AVAILABLE = 0x00000017;
  static const PF_FLOATING_POINT_EMULATED = 0x00000001;
  static const PF_FLOATING_POINT_PRECISION_ERRATA = 0x00000000;
  static const PF_MMX_INSTRUCTIONS_AVAILABLE = 0x00000003;
  static const PF_NX_ENABLED = 0x0000000c;
  static const PF_PAE_ENABLED = 0x00000009;
  static const PF_RDTSC_INSTRUCTION_AVAILABLE = 0x00000008;
  static const PF_RDWRFSGSBASE_AVAILABLE = 0x00000016;
  static const PF_SECOND_LEVEL_ADDRESS_TRANSLATION = 0x00000014;
  static const PF_SSE3_INSTRUCTIONS_AVAILABLE = 0x0000000d;
  static const PF_VIRT_FIRMWARE_ENABLED = 0x00000015;
  static const PF_XMMI_INSTRUCTIONS_AVAILABLE = 0x00000006;
  static const PF_XMMI64_INSTRUCTIONS_AVAILABLE = 0x0000000a;
  static const PF_XSAVE_ENABLED = 0x00000011;
  static const PF_ARM_V8_INSTRUCTIONS_AVAILABLE = 0x0000001d;
  static const PF_ARM_V8_CRYPTO_INSTRUCTIONS_AVAILABLE = 0x0000001e;
  static const PF_ARM_V8_CRC32_INSTRUCTIONS_AVAILABLE = 0x0000001f;
  static const PF_ARM_V81_ATOMIC_INSTRUCTIONS_AVAILABLE = 0x00000022;
}

/// {@category Enum}
class IsUserCetAvailableInEnvironment_UserCetEnvironmentFlags {
  static const USER_CET_ENVIRONMENT_WIN32_PROCESS = 0x00000000;
  static const USER_CET_ENVIRONMENT_SGX2_ENCLAVE = 0x00000002;
  static const USER_CET_ENVIRONMENT_VBS_BASIC_ENCLAVE = 0x00000011;
}

/// {@category Enum}
class KEY_SET_INFORMATION_CLASS {
  static const KeyWriteTimeInformation = 0x00000000;
  static const KeyWow64FlagsInformation = 0x00000001;
  static const KeyControlFlagsInformation = 0x00000002;
  static const KeySetVirtualizationInformation = 0x00000003;
  static const KeySetDebugInformation = 0x00000004;
  static const KeySetHandleTagsInformation = 0x00000005;
  static const MaxKeySetInfoClass = 0x00000006;
}

/// {@category Enum}
class NewProcessCauseConstants {
  static const ProtectedModeRedirect = 0x00000001;
}

/// {@category Enum}
class NtCreateFile_CreateDispositionFlags {
  static const FILE_SUPERSEDE = 0x00000000;
  static const FILE_CREATE = 0x00000002;
  static const FILE_OPEN = 0x00000001;
  static const FILE_OPEN_IF = 0x00000003;
  static const FILE_OVERWRITE = 0x00000004;
  static const FILE_OVERWRITE_IF = 0x00000005;
}

/// {@category Enum}
class OBJECT_INFORMATION_CLASS {
  static const ObjectBasicInformation = 0x00000000;
  static const ObjectTypeInformation = 0x00000002;
}

/// {@category Enum}
class PFADDRESSTYPE {
  static const PF_IPV4 = 0x00000000;
  static const PF_IPV6 = 0x00000001;
}

/// {@category Enum}
class PFFORWARD_ACTION {
  static const PF_ACTION_FORWARD = 0x00000000;
  static const PF_ACTION_DROP = 0x00000001;
}

/// {@category Enum}
class PFFRAMETYPE {
  static const PFFT_FILTER = 0x00000001;
  static const PFFT_FRAG = 0x00000002;
  static const PFFT_SPOOF = 0x00000003;
}

/// {@category Enum}
class PROCESSINFOCLASS {
  static const ProcessBasicInformation = 0x00000000;
  static const ProcessDebugPort = 0x00000007;
  static const ProcessWow64Information = 0x0000001a;
  static const ProcessImageFileName = 0x0000001b;
  static const ProcessBreakOnTermination = 0x0000001d;
}

/// {@category Enum}
class PROCESS_CREATION_FLAGS {
  static const DEBUG_PROCESS = 0x00000001;
  static const DEBUG_ONLY_THIS_PROCESS = 0x00000002;
  static const CREATE_SUSPENDED = 0x00000004;
  static const DETACHED_PROCESS = 0x00000008;
  static const CREATE_NEW_CONSOLE = 0x00000010;
  static const NORMAL_PRIORITY_CLASS = 0x00000020;
  static const IDLE_PRIORITY_CLASS = 0x00000040;
  static const HIGH_PRIORITY_CLASS = 0x00000080;
  static const REALTIME_PRIORITY_CLASS = 0x00000100;
  static const CREATE_NEW_PROCESS_GROUP = 0x00000200;
  static const CREATE_UNICODE_ENVIRONMENT = 0x00000400;
  static const CREATE_SEPARATE_WOW_VDM = 0x00000800;
  static const CREATE_SHARED_WOW_VDM = 0x00001000;
  static const CREATE_FORCEDOS = 0x00002000;
  static const BELOW_NORMAL_PRIORITY_CLASS = 0x00004000;
  static const ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000;
  static const INHERIT_PARENT_AFFINITY = 0x00010000;
  static const INHERIT_CALLER_PRIORITY = 0x00020000;
  static const CREATE_PROTECTED_PROCESS = 0x00040000;
  static const EXTENDED_STARTUPINFO_PRESENT = 0x00080000;
  static const PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000;
  static const PROCESS_MODE_BACKGROUND_END = 0x00200000;
  static const CREATE_SECURE_PROCESS = 0x00400000;
  static const CREATE_BREAKAWAY_FROM_JOB = 0x01000000;
  static const CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 0x02000000;
  static const CREATE_DEFAULT_ERROR_MODE = 0x04000000;
  static const CREATE_NO_WINDOW = 0x08000000;
  static const PROFILE_USER = 0x10000000;
  static const PROFILE_KERNEL = 0x20000000;
  static const PROFILE_SERVER = 0x40000000;
  static const CREATE_IGNORE_SYSTEM_DEFAULT = 0x80000000;
}

/// {@category Enum}
class PROC_THREAD_ATTRIBUTE_NUM {
  static const ProcThreadAttributeParentProcess = 0x00000000;
  static const ProcThreadAttributeHandleList = 0x00000002;
  static const ProcThreadAttributeGroupAffinity = 0x00000003;
  static const ProcThreadAttributePreferredNode = 0x00000004;
  static const ProcThreadAttributeIdealProcessor = 0x00000005;
  static const ProcThreadAttributeUmsThread = 0x00000006;
  static const ProcThreadAttributeMitigationPolicy = 0x00000007;
  static const ProcThreadAttributeSecurityCapabilities = 0x00000009;
  static const ProcThreadAttributeProtectionLevel = 0x0000000b;
  static const ProcThreadAttributeJobList = 0x0000000d;
  static const ProcThreadAttributeChildProcessPolicy = 0x0000000e;
  static const ProcThreadAttributeAllApplicationPackagesPolicy = 0x0000000f;
  static const ProcThreadAttributeWin32kFilter = 0x00000010;
  static const ProcThreadAttributeSafeOpenPromptOriginClaim = 0x00000011;
  static const ProcThreadAttributeDesktopAppPolicy = 0x00000012;
  static const ProcThreadAttributePseudoConsole = 0x00000016;
}

/// {@category Enum}
class REG_CREATE_KEY_DISPOSITION {
  static const REG_CREATED_NEW_KEY = 0x00000001;
  static const REG_OPENED_EXISTING_KEY = 0x00000002;
}

/// {@category Enum}
class REG_OPEN_CREATE_OPTIONS {
  static const REG_OPTION_RESERVED = 0x00000000;
  static const REG_OPTION_NON_VOLATILE = 0x00000000;
  static const REG_OPTION_VOLATILE = 0x00000001;
  static const REG_OPTION_CREATE_LINK = 0x00000002;
  static const REG_OPTION_BACKUP_RESTORE = 0x00000004;
  static const REG_OPTION_OPEN_LINK = 0x00000008;
  static const REG_OPTION_DONT_VIRTUALIZE = 0x00000010;
}

/// {@category Enum}
class REG_SAM_FLAGS {
  static const KEY_QUERY_VALUE = 0x00000001;
  static const KEY_SET_VALUE = 0x00000002;
  static const KEY_CREATE_SUB_KEY = 0x00000004;
  static const KEY_ENUMERATE_SUB_KEYS = 0x00000008;
  static const KEY_NOTIFY = 0x00000010;
  static const KEY_CREATE_LINK = 0x00000020;
  static const KEY_WOW64_32KEY = 0x00000200;
  static const KEY_WOW64_64KEY = 0x00000100;
  static const KEY_WOW64_RES = 0x00000300;
  static const KEY_READ = 0x00020019;
  static const KEY_WRITE = 0x00020006;
  static const KEY_EXECUTE = 0x00020019;
  static const KEY_ALL_ACCESS = 0x000f003f;
}

/// {@category Enum}
class REG_VALUE_TYPE {
  static const REG_NONE = 0x00000000;
  static const REG_SZ = 0x00000001;
  static const REG_EXPAND_SZ = 0x00000002;
  static const REG_BINARY = 0x00000003;
  static const REG_DWORD = 0x00000004;
  static const REG_DWORD_LITTLE_ENDIAN = 0x00000004;
  static const REG_DWORD_BIG_ENDIAN = 0x00000005;
  static const REG_LINK = 0x00000006;
  static const REG_MULTI_SZ = 0x00000007;
  static const REG_RESOURCE_LIST = 0x00000008;
  static const REG_FULL_RESOURCE_DESCRIPTOR = 0x00000009;
  static const REG_RESOURCE_REQUIREMENTS_LIST = 0x0000000a;
  static const REG_QWORD = 0x0000000b;
  static const REG_QWORD_LITTLE_ENDIAN = 0x0000000b;
}

/// {@category Enum}
class RRF_RT {
  static const RRF_RT_ANY = 0x0000ffff;
  static const RRF_RT_DWORD = 0x00000018;
  static const RRF_RT_QWORD = 0x00000048;
  static const RRF_RT_REG_BINARY = 0x00000008;
  static const RRF_RT_REG_DWORD = 0x00000010;
  static const RRF_RT_REG_EXPAND_SZ = 0x00000004;
  static const RRF_RT_REG_MULTI_SZ = 0x00000020;
  static const RRF_RT_REG_NONE = 0x00000001;
  static const RRF_RT_REG_QWORD = 0x00000040;
  static const RRF_RT_REG_SZ = 0x00000002;
}

/// {@category Enum}
class RefreshConstants {
  static const REFRESH_NORMAL = 0x00000000;
  static const REFRESH_IFEXPIRED = 0x00000001;
  static const REFRESH_COMPLETELY = 0x00000003;
}

/// {@category Enum}
class RegNotifyChangeKeyValue_dwNotifyFilterFlags {
  static const REG_NOTIFY_CHANGE_NAME = 0x00000001;
  static const REG_NOTIFY_CHANGE_ATTRIBUTES = 0x00000002;
  static const REG_NOTIFY_CHANGE_LAST_SET = 0x00000004;
  static const REG_NOTIFY_CHANGE_SECURITY = 0x00000008;
  static const REG_NOTIFY_THREAD_AGNOSTIC = 0x10000000;
}

/// {@category Enum}
class RegRestoreKey_dwFlags {
  static const REG_FORCE_RESTORE = 0x00000008;
  static const REG_WHOLE_HIVE_VOLATILE = 0x00000001;
}

/// {@category Enum}
class RegSaveKeyEx_Flags {
  static const REG_STANDARD_FORMAT = 0x00000001;
  static const REG_LATEST_FORMAT = 0x00000002;
  static const REG_NO_COMPRESSION = 0x00000004;
}

/// {@category Enum}
class SECURITY_PRODUCT_TYPE {
  static const SECURITY_PRODUCT_TYPE_ANTIVIRUS = 0x00000000;
  static const SECURITY_PRODUCT_TYPE_FIREWALL = 0x00000001;
  static const SECURITY_PRODUCT_TYPE_ANTISPYWARE = 0x00000002;
}

/// {@category Enum}
class STD_HANDLE_TYPE {
  static const STD_INPUT_HANDLE = 0xfffffff6;
  static const STD_OUTPUT_HANDLE = 0xfffffff5;
  static const STD_ERROR_HANDLE = 0xfffffff4;
}

/// {@category Enum}
class SYSTEM_INFORMATION_CLASS {
  static const SystemBasicInformation = 0x00000000;
  static const SystemPerformanceInformation = 0x00000002;
  static const SystemTimeOfDayInformation = 0x00000003;
  static const SystemProcessInformation = 0x00000005;
  static const SystemProcessorPerformanceInformation = 0x00000008;
  static const SystemInterruptInformation = 0x00000017;
  static const SystemExceptionInformation = 0x00000021;
  static const SystemRegistryQuotaInformation = 0x00000025;
  static const SystemLookasideInformation = 0x0000002d;
  static const SystemCodeIntegrityInformation = 0x00000067;
  static const SystemPolicyInformation = 0x00000086;
}

/// {@category Enum}
class SecureLockIconConstants {
  static const secureLockIconUnsecure = 0x00000000;
  static const secureLockIconMixed = 0x00000001;
  static const secureLockIconSecureUnknownBits = 0x00000002;
  static const secureLockIconSecure40Bit = 0x00000003;
  static const secureLockIconSecure56Bit = 0x00000004;
  static const secureLockIconSecureFortezza = 0x00000005;
  static const secureLockIconSecure128Bit = 0x00000006;
}

/// {@category Enum}
class TDIEntityID_tei_entityFlags {
  static const GENERIC_ENTITY = 0x00000000;
  static const AT_ENTITY = 0x00000280;
  static const CL_NL_ENTITY = 0x00000301;
  static const CO_NL_ENTITY = 0x00000300;
  static const CL_TL_ENTITY = 0x00000401;
  static const CO_TL_ENTITY = 0x00000400;
  static const ER_ENTITY = 0x00000380;
  static const IF_ENTITY = 0x00000200;
}

/// {@category Enum}
class TDI_TL_IO_CONTROL_TYPE {
  static const EndpointIoControlType = 0x00000000;
  static const SetSockOptIoControlType = 0x00000001;
  static const GetSockOptIoControlType = 0x00000002;
  static const SocketIoControlType = 0x00000003;
}

/// {@category Enum}
class THREADINFOCLASS {
  static const ThreadIsIoPending = 0x00000010;
}

/// {@category Enum}
class THREAD_INFORMATION_CLASS {
  static const ThreadMemoryPriority = 0x00000000;
  static const ThreadAbsoluteCpuPriority = 0x00000001;
  static const ThreadDynamicCodePolicy = 0x00000002;
  static const ThreadPowerThrottling = 0x00000003;
  static const ThreadInformationClassMax = 0x00000004;
}

/// {@category Enum}
class UpdateAssessmentStatus {
  static const UpdateAssessmentStatus_Latest = 0x00000000;
  static const UpdateAssessmentStatus_NotLatestSoftRestriction = 0x00000001;
  static const UpdateAssessmentStatus_NotLatestHardRestriction = 0x00000002;
  static const UpdateAssessmentStatus_NotLatestEndOfSupport = 0x00000003;
  static const UpdateAssessmentStatus_NotLatestServicingTrain = 0x00000004;
  static const UpdateAssessmentStatus_NotLatestDeferredFeature = 0x00000005;
  static const UpdateAssessmentStatus_NotLatestDeferredQuality = 0x00000006;
  static const UpdateAssessmentStatus_NotLatestPausedFeature = 0x00000007;
  static const UpdateAssessmentStatus_NotLatestPausedQuality = 0x00000008;
  static const UpdateAssessmentStatus_NotLatestManaged = 0x00000009;
  static const UpdateAssessmentStatus_NotLatestUnknown = 0x0000000a;
  static const UpdateAssessmentStatus_NotLatestTargetedVersion = 0x0000000b;
}

/// {@category Enum}
class UpdateImpactLevel {
  static const UpdateImpactLevel_None = 0x00000000;
  static const UpdateImpactLevel_Low = 0x00000001;
  static const UpdateImpactLevel_Medium = 0x00000002;
  static const UpdateImpactLevel_High = 0x00000003;
}

/// {@category Enum}
class VALUENAME {
  static const VALUENAME_UNKNOWN = 0x00000000;
  static const VALUENAME_ENTERPRISE_DEFINED_CLASS_ID = 0x00000001;
  static const VALUENAME_BUILT_IN_LIST = 0x00000002;
}

/// {@category Enum}
class VER_FLAGS {
  static const VER_MINORVERSION = 0x00000001;
  static const VER_MAJORVERSION = 0x00000002;
  static const VER_BUILDNUMBER = 0x00000004;
  static const VER_PLATFORMID = 0x00000008;
  static const VER_SERVICEPACKMINOR = 0x00000010;
  static const VER_SERVICEPACKMAJOR = 0x00000020;
  static const VER_SUITENAME = 0x00000040;
  static const VER_PRODUCT_TYPE = 0x00000080;
}

/// {@category Enum}
class VER_MASK {
  static const VER_BUILDNUMBER = 0x00000004;
  static const VER_MAJORVERSION = 0x00000002;
  static const VER_MINORVERSION = 0x00000001;
  static const VER_PLATFORMID = 0x00000008;
  static const VER_PRODUCT_TYPE = 0x00000080;
  static const VER_SERVICEPACKMAJOR = 0x00000020;
  static const VER_SERVICEPACKMINOR = 0x00000010;
  static const VER_SUITENAME = 0x00000040;
}

/// {@category Enum}
class VerifierEnumerateResource_Flags {
  static const AVRF_ENUM_RESOURCES_FLAGS_DONT_RESOLVE_TRACES = 0x00000002;
  static const AVRF_ENUM_RESOURCES_FLAGS_SUSPEND = 0x00000001;
}

/// {@category Enum}
class WINSTATIONINFOCLASS {
  static const WinStationInformation = 0x00000008;
}

/// {@category Enum}
class WLDP_HOST {
  static const WLDP_HOST_RUNDLL32 = 0x00000000;
  static const WLDP_HOST_SVCHOST = 0x00000001;
  static const WLDP_HOST_MAX = 0x00000002;
}

/// {@category Enum}
class WLDP_HOST_ID {
  static const WLDP_HOST_ID_UNKNOWN = 0x00000000;
  static const WLDP_HOST_ID_GLOBAL = 0x00000001;
  static const WLDP_HOST_ID_VBA = 0x00000002;
  static const WLDP_HOST_ID_WSH = 0x00000003;
  static const WLDP_HOST_ID_POWERSHELL = 0x00000004;
  static const WLDP_HOST_ID_IE = 0x00000005;
  static const WLDP_HOST_ID_MSI = 0x00000006;
  static const WLDP_HOST_ID_ALL = 0x00000007;
  static const WLDP_HOST_ID_MAX = 0x00000008;
}

/// {@category Enum}
class WLDP_KEY {
  static const KEY_UNKNOWN = 0x00000000;
  static const KEY_OVERRIDE = 0x00000001;
  static const KEY_ALL_KEYS = 0x00000002;
}

/// {@category Enum}
class WLDP_WINDOWS_LOCKDOWN_MODE {
  static const WLDP_WINDOWS_LOCKDOWN_MODE_UNLOCKED = 0x00000000;
  static const WLDP_WINDOWS_LOCKDOWN_MODE_TRIAL = 0x00000001;
  static const WLDP_WINDOWS_LOCKDOWN_MODE_LOCKED = 0x00000002;
  static const WLDP_WINDOWS_LOCKDOWN_MODE_MAX = 0x00000003;
}

/// {@category Enum}
class WLDP_WINDOWS_LOCKDOWN_RESTRICTION {
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_NONE = 0x00000000;
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_NOUNLOCK = 0x00000001;
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_NOUNLOCK_PERMANENT = 0x00000002;
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_MAX = 0x00000003;
}

/// {@category Enum}
class WSC_SECURITY_PRODUCT_STATE {
  static const WSC_SECURITY_PRODUCT_STATE_ON = 0x00000000;
  static const WSC_SECURITY_PRODUCT_STATE_OFF = 0x00000001;
  static const WSC_SECURITY_PRODUCT_STATE_SNOOZED = 0x00000002;
  static const WSC_SECURITY_PRODUCT_STATE_EXPIRED = 0x00000003;
}

/// {@category Enum}
class WSC_SECURITY_PRODUCT_SUBSTATUS {
  static const WSC_SECURITY_PRODUCT_SUBSTATUS_NOT_SET = 0x00000000;
  static const WSC_SECURITY_PRODUCT_SUBSTATUS_NO_ACTION = 0x00000001;
  static const WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_RECOMMENDED = 0x00000002;
  static const WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_NEEDED = 0x00000003;
}

/// {@category Enum}
class WSC_SECURITY_PROVIDER {
  static const WSC_SECURITY_PROVIDER_FIREWALL = 0x00000001;
  static const WSC_SECURITY_PROVIDER_AUTOUPDATE_SETTINGS = 0x00000002;
  static const WSC_SECURITY_PROVIDER_ANTIVIRUS = 0x00000004;
  static const WSC_SECURITY_PROVIDER_ANTISPYWARE = 0x00000008;
  static const WSC_SECURITY_PROVIDER_INTERNET_SETTINGS = 0x00000010;
  static const WSC_SECURITY_PROVIDER_USER_ACCOUNT_CONTROL = 0x00000020;
  static const WSC_SECURITY_PROVIDER_SERVICE = 0x00000040;
  static const WSC_SECURITY_PROVIDER_NONE = 0x00000000;
  static const WSC_SECURITY_PROVIDER_ALL = 0x0000007f;
}

/// {@category Enum}
class WSC_SECURITY_PROVIDER_HEALTH {
  static const WSC_SECURITY_PROVIDER_HEALTH_GOOD = 0x00000000;
  static const WSC_SECURITY_PROVIDER_HEALTH_NOTMONITORED = 0x00000001;
  static const WSC_SECURITY_PROVIDER_HEALTH_POOR = 0x00000002;
  static const WSC_SECURITY_PROVIDER_HEALTH_SNOOZE = 0x00000003;
}

/// {@category Enum}
class WSC_SECURITY_SIGNATURE_STATUS {
  static const WSC_SECURITY_PRODUCT_OUT_OF_DATE = 0x00000000;
  static const WSC_SECURITY_PRODUCT_UP_TO_DATE = 0x00000001;
}

/// {@category Enum}
class XMLEMEM_TYPE {
  static const XMLELEMTYPE_ELEMENT = 0x00000000;
  static const XMLELEMTYPE_TEXT = 0x00000001;
  static const XMLELEMTYPE_COMMENT = 0x00000002;
  static const XMLELEMTYPE_DOCUMENT = 0x00000003;
  static const XMLELEMTYPE_DTD = 0x00000004;
  static const XMLELEMTYPE_PI = 0x00000005;
  static const XMLELEMTYPE_OTHER = 0x00000006;
}

/// {@category Enum}
class XmlConformanceLevel {
  static const XmlConformanceLevel_Auto = 0x00000000;
  static const XmlConformanceLevel_Fragment = 0x00000001;
  static const XmlConformanceLevel_Document = 0x00000002;
  static const _XmlConformanceLevel_Last = 0x00000002;
}

/// {@category Enum}
class XmlError {
  static const MX_E_MX = 0xc00cee00;
  static const MX_E_INPUTEND = 0xc00cee01;
  static const MX_E_ENCODING = 0xc00cee02;
  static const MX_E_ENCODINGSWITCH = 0xc00cee03;
  static const MX_E_ENCODINGSIGNATURE = 0xc00cee04;
  static const WC_E_WC = 0xc00cee20;
  static const WC_E_WHITESPACE = 0xc00cee21;
  static const WC_E_SEMICOLON = 0xc00cee22;
  static const WC_E_GREATERTHAN = 0xc00cee23;
  static const WC_E_QUOTE = 0xc00cee24;
  static const WC_E_EQUAL = 0xc00cee25;
  static const WC_E_LESSTHAN = 0xc00cee26;
  static const WC_E_HEXDIGIT = 0xc00cee27;
  static const WC_E_DIGIT = 0xc00cee28;
  static const WC_E_LEFTBRACKET = 0xc00cee29;
  static const WC_E_LEFTPAREN = 0xc00cee2a;
  static const WC_E_XMLCHARACTER = 0xc00cee2b;
  static const WC_E_NAMECHARACTER = 0xc00cee2c;
  static const WC_E_SYNTAX = 0xc00cee2d;
  static const WC_E_CDSECT = 0xc00cee2e;
  static const WC_E_COMMENT = 0xc00cee2f;
  static const WC_E_CONDSECT = 0xc00cee30;
  static const WC_E_DECLATTLIST = 0xc00cee31;
  static const WC_E_DECLDOCTYPE = 0xc00cee32;
  static const WC_E_DECLELEMENT = 0xc00cee33;
  static const WC_E_DECLENTITY = 0xc00cee34;
  static const WC_E_DECLNOTATION = 0xc00cee35;
  static const WC_E_NDATA = 0xc00cee36;
  static const WC_E_PUBLIC = 0xc00cee37;
  static const WC_E_SYSTEM = 0xc00cee38;
  static const WC_E_NAME = 0xc00cee39;
  static const WC_E_ROOTELEMENT = 0xc00cee3a;
  static const WC_E_ELEMENTMATCH = 0xc00cee3b;
  static const WC_E_UNIQUEATTRIBUTE = 0xc00cee3c;
  static const WC_E_TEXTXMLDECL = 0xc00cee3d;
  static const WC_E_LEADINGXML = 0xc00cee3e;
  static const WC_E_TEXTDECL = 0xc00cee3f;
  static const WC_E_XMLDECL = 0xc00cee40;
  static const WC_E_ENCNAME = 0xc00cee41;
  static const WC_E_PUBLICID = 0xc00cee42;
  static const WC_E_PESINTERNALSUBSET = 0xc00cee43;
  static const WC_E_PESBETWEENDECLS = 0xc00cee44;
  static const WC_E_NORECURSION = 0xc00cee45;
  static const WC_E_ENTITYCONTENT = 0xc00cee46;
  static const WC_E_UNDECLAREDENTITY = 0xc00cee47;
  static const WC_E_PARSEDENTITY = 0xc00cee48;
  static const WC_E_NOEXTERNALENTITYREF = 0xc00cee49;
  static const WC_E_PI = 0xc00cee4a;
  static const WC_E_SYSTEMID = 0xc00cee4b;
  static const WC_E_QUESTIONMARK = 0xc00cee4c;
  static const WC_E_CDSECTEND = 0xc00cee4d;
  static const WC_E_MOREDATA = 0xc00cee4e;
  static const WC_E_DTDPROHIBITED = 0xc00cee4f;
  static const WC_E_INVALIDXMLSPACE = 0xc00cee50;
  static const NC_E_NC = 0xc00cee60;
  static const NC_E_QNAMECHARACTER = 0xc00cee61;
  static const NC_E_QNAMECOLON = 0xc00cee62;
  static const NC_E_NAMECOLON = 0xc00cee63;
  static const NC_E_DECLAREDPREFIX = 0xc00cee64;
  static const NC_E_UNDECLAREDPREFIX = 0xc00cee65;
  static const NC_E_EMPTYURI = 0xc00cee66;
  static const NC_E_XMLPREFIXRESERVED = 0xc00cee67;
  static const NC_E_XMLNSPREFIXRESERVED = 0xc00cee68;
  static const NC_E_XMLURIRESERVED = 0xc00cee69;
  static const NC_E_XMLNSURIRESERVED = 0xc00cee6a;
  static const SC_E_SC = 0xc00cee80;
  static const SC_E_MAXELEMENTDEPTH = 0xc00cee81;
  static const SC_E_MAXENTITYEXPANSION = 0xc00cee82;
  static const WR_E_WR = 0xc00cef00;
  static const WR_E_NONWHITESPACE = 0xc00cef01;
  static const WR_E_NSPREFIXDECLARED = 0xc00cef02;
  static const WR_E_NSPREFIXWITHEMPTYNSURI = 0xc00cef03;
  static const WR_E_DUPLICATEATTRIBUTE = 0xc00cef04;
  static const WR_E_XMLNSPREFIXDECLARATION = 0xc00cef05;
  static const WR_E_XMLPREFIXDECLARATION = 0xc00cef06;
  static const WR_E_XMLURIDECLARATION = 0xc00cef07;
  static const WR_E_XMLNSURIDECLARATION = 0xc00cef08;
  static const WR_E_NAMESPACEUNDECLARED = 0xc00cef09;
  static const WR_E_INVALIDXMLSPACE = 0xc00cef0a;
  static const WR_E_INVALIDACTION = 0xc00cef0b;
  static const WR_E_INVALIDSURROGATEPAIR = 0xc00cef0c;
  static const XML_E_INVALID_DECIMAL = 0xc00ce01d;
  static const XML_E_INVALID_HEXIDECIMAL = 0xc00ce01e;
  static const XML_E_INVALID_UNICODE = 0xc00ce01f;
  static const XML_E_INVALIDENCODING = 0xc00ce06e;
}

/// {@category Enum}
class XmlNodeType {
  static const XmlNodeType_None = 0x00000000;
  static const XmlNodeType_Element = 0x00000001;
  static const XmlNodeType_Attribute = 0x00000002;
  static const XmlNodeType_Text = 0x00000003;
  static const XmlNodeType_CDATA = 0x00000004;
  static const XmlNodeType_ProcessingInstruction = 0x00000007;
  static const XmlNodeType_Comment = 0x00000008;
  static const XmlNodeType_DocumentType = 0x0000000a;
  static const XmlNodeType_Whitespace = 0x0000000d;
  static const XmlNodeType_EndElement = 0x0000000f;
  static const XmlNodeType_XmlDeclaration = 0x00000011;
  static const _XmlNodeType_Last = 0x00000011;
}

/// {@category Enum}
class XmlReadState {
  static const XmlReadState_Initial = 0x00000000;
  static const XmlReadState_Interactive = 0x00000001;
  static const XmlReadState_Error = 0x00000002;
  static const XmlReadState_EndOfFile = 0x00000003;
  static const XmlReadState_Closed = 0x00000004;
}

/// {@category Enum}
class XmlReaderProperty {
  static const XmlReaderProperty_MultiLanguage = 0x00000000;
  static const XmlReaderProperty_ConformanceLevel = 0x00000001;
  static const XmlReaderProperty_RandomAccess = 0x00000002;
  static const XmlReaderProperty_XmlResolver = 0x00000003;
  static const XmlReaderProperty_DtdProcessing = 0x00000004;
  static const XmlReaderProperty_ReadState = 0x00000005;
  static const XmlReaderProperty_MaxElementDepth = 0x00000006;
  static const XmlReaderProperty_MaxEntityExpansion = 0x00000007;
  static const _XmlReaderProperty_Last = 0x00000007;
}

/// {@category Enum}
class XmlStandalone {
  static const XmlStandalone_Omit = 0x00000000;
  static const XmlStandalone_Yes = 0x00000001;
  static const XmlStandalone_No = 0x00000002;
  static const _XmlStandalone_Last = 0x00000002;
}

/// {@category Enum}
class XmlWriterProperty {
  static const XmlWriterProperty_MultiLanguage = 0x00000000;
  static const XmlWriterProperty_Indent = 0x00000001;
  static const XmlWriterProperty_ByteOrderMark = 0x00000002;
  static const XmlWriterProperty_OmitXmlDeclaration = 0x00000003;
  static const XmlWriterProperty_ConformanceLevel = 0x00000004;
  static const XmlWriterProperty_CompactEmptyElement = 0x00000005;
  static const _XmlWriterProperty_Last = 0x00000005;
}

/// {@category Enum}
class eAvrfResourceTypes {
  static const AvrfResourceHeapAllocation = 0x00000000;
  static const AvrfResourceHandleTrace = 0x00000001;
  static const AvrfResourceMax = 0x00000002;
}

/// {@category Enum}
class eHANDLE_TRACE_OPERATIONS {
  static const OperationDbUnused = 0x00000000;
  static const OperationDbOPEN = 0x00000001;
  static const OperationDbCLOSE = 0x00000002;
  static const OperationDbBADREF = 0x00000003;
}

/// {@category Enum}
class eHeapAllocationState {
  static const HeapFullPageHeap = 0x40000000;
  static const HeapMetadata = 0x80000000;
  static const HeapStateMask = 0xffff0000;
}

/// {@category Enum}
class eHeapEnumerationLevel {
  static const HeapEnumerationEverything = 0x00000000;
  static const HeapEnumerationStop = 0xffffffff;
}

/// {@category Enum}
class eUserAllocationState {
  static const AllocationStateUnknown = 0x00000000;
  static const AllocationStateBusy = 0x00000001;
  static const AllocationStateFree = 0x00000002;
}

