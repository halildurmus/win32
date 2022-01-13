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
class FILE_INFORMATION_CLASS {
  static const FileDirectoryInformation = 0x00000001;
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
class OBJECT_INFORMATION_CLASS {
  static const ObjectBasicInformation = 0x00000000;
  static const ObjectTypeInformation = 0x00000002;
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
  static const ProcThreadAttributeMitigationAuditPolicy = 0x00000018;
  static const ProcThreadAttributeMachineType = 0x00000019;
  static const ProcThreadAttributeComponentFilter = 0x0000001a;
  static const ProcThreadAttributeEnableOptionalXStateFeatures = 0x0000001b;
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
class TDIENTITY_ENTITY_TYPE {
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
class VALUENAME {
  static const VALUENAME_UNKNOWN = 0x00000000;
  static const VALUENAME_ENTERPRISE_DEFINED_CLASS_ID = 0x00000001;
  static const VALUENAME_BUILT_IN_LIST = 0x00000002;
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
class WLDP_POLICY_SETTING {
  static const WLDP_POLICY_SETTING_AV_PERF_MODE = 0x000003e8;
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
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_NOUNLOCK_PERMANENT =
      0x00000002;
  static const WLDP_WINDOWS_LOCKDOWN_RESTRICTION_MAX = 0x00000003;
}
