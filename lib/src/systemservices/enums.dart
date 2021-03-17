/// {@category Enum}
class ACCESS_REASON_TYPE {
  static const AccessReasonNone = 0x00000000;
  static const AccessReasonAllowedAce = 0x00010000;
  static const AccessReasonDeniedAce = 0x00020000;
  static const AccessReasonAllowedParentAce = 0x00030000;
  static const AccessReasonDeniedParentAce = 0x00040000;
  static const AccessReasonNotGrantedByCape = 0x00050000;
  static const AccessReasonNotGrantedByParentCape = 0x00060000;
  static const AccessReasonNotGrantedToAppContainer = 0x00070000;
  static const AccessReasonMissingPrivilege = 0x00100000;
  static const AccessReasonFromPrivilege = 0x00200000;
  static const AccessReasonIntegrityLevel = 0x00300000;
  static const AccessReasonOwnership = 0x00400000;
  static const AccessReasonNullDacl = 0x00500000;
  static const AccessReasonEmptyDacl = 0x00600000;
  static const AccessReasonNoSD = 0x00700000;
  static const AccessReasonNoGrant = 0x00800000;
  static const AccessReasonTrustLabel = 0x00900000;
  static const AccessReasonFilterAce = 0x00a00000;
}

/// {@category Enum}
class SE_IMAGE_SIGNATURE_TYPE {
  static const SeImageSignatureNone = 0x00000000;
  static const SeImageSignatureEmbedded = 0x00000001;
  static const SeImageSignatureCache = 0x00000002;
  static const SeImageSignatureCatalogCached = 0x00000003;
  static const SeImageSignatureCatalogNotCached = 0x00000004;
  static const SeImageSignatureCatalogHint = 0x00000005;
  static const SeImageSignaturePackageCatalog = 0x00000006;
}

/// {@category Enum}
class SE_LEARNING_MODE_DATA_TYPE {
  static const SeLearningModeInvalidType = 0x00000000;
  static const SeLearningModeSettings = 0x00000001;
  static const SeLearningModeMax = 0x00000002;
}

/// {@category Enum}
class PROCESS_MITIGATION_POLICY {
  static const ProcessDEPPolicy = 0x00000000;
  static const ProcessASLRPolicy = 0x00000001;
  static const ProcessDynamicCodePolicy = 0x00000002;
  static const ProcessStrictHandleCheckPolicy = 0x00000003;
  static const ProcessSystemCallDisablePolicy = 0x00000004;
  static const ProcessMitigationOptionsMask = 0x00000005;
  static const ProcessExtensionPointDisablePolicy = 0x00000006;
  static const ProcessControlFlowGuardPolicy = 0x00000007;
  static const ProcessSignaturePolicy = 0x00000008;
  static const ProcessFontDisablePolicy = 0x00000009;
  static const ProcessImageLoadPolicy = 0x0000000a;
  static const ProcessSystemCallFilterPolicy = 0x0000000b;
  static const ProcessPayloadRestrictionPolicy = 0x0000000c;
  static const ProcessChildProcessPolicy = 0x0000000d;
  static const ProcessSideChannelIsolationPolicy = 0x0000000e;
  static const ProcessUserShadowStackPolicy = 0x0000000f;
  static const MaxProcessMitigationPolicy = 0x00000010;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE {
  static const ToleranceLow = 0x00000001;
  static const ToleranceMedium = 0x00000002;
  static const ToleranceHigh = 0x00000003;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL {
  static const ToleranceIntervalShort = 0x00000001;
  static const ToleranceIntervalMedium = 0x00000002;
  static const ToleranceIntervalLong = 0x00000003;
}

/// {@category Enum}
class JOB_OBJECT_NET_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_NET_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH = 0x00000002;
  static const JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG = 0x00000004;
  static const JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS = 0x00000007;
}

/// {@category Enum}
class JOB_OBJECT_IO_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME = 0x00000002;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ALL = 0x00000004;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ON_SOFT_CAP = 0x00000008;
  static const JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = 0x0000000f;
}

/// {@category Enum}
class JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS {
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE = 0x00000001;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE = 0x00000002;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS = 0x00000003;
}

/// {@category Enum}
class JOBOBJECTINFOCLASS {
  static const JobObjectBasicAccountingInformation = 0x00000001;
  static const JobObjectBasicLimitInformation = 0x00000002;
  static const JobObjectBasicProcessIdList = 0x00000003;
  static const JobObjectBasicUIRestrictions = 0x00000004;
  static const JobObjectSecurityLimitInformation = 0x00000005;
  static const JobObjectEndOfJobTimeInformation = 0x00000006;
  static const JobObjectAssociateCompletionPortInformation = 0x00000007;
  static const JobObjectBasicAndIoAccountingInformation = 0x00000008;
  static const JobObjectExtendedLimitInformation = 0x00000009;
  static const JobObjectJobSetInformation = 0x0000000a;
  static const JobObjectGroupInformation = 0x0000000b;
  static const JobObjectNotificationLimitInformation = 0x0000000c;
  static const JobObjectLimitViolationInformation = 0x0000000d;
  static const JobObjectGroupInformationEx = 0x0000000e;
  static const JobObjectCpuRateControlInformation = 0x0000000f;
  static const JobObjectCompletionFilter = 0x00000010;
  static const JobObjectCompletionCounter = 0x00000011;
  static const JobObjectReserved1Information = 0x00000012;
  static const JobObjectReserved2Information = 0x00000013;
  static const JobObjectReserved3Information = 0x00000014;
  static const JobObjectReserved4Information = 0x00000015;
  static const JobObjectReserved5Information = 0x00000016;
  static const JobObjectReserved6Information = 0x00000017;
  static const JobObjectReserved7Information = 0x00000018;
  static const JobObjectReserved8Information = 0x00000019;
  static const JobObjectReserved9Information = 0x0000001a;
  static const JobObjectReserved10Information = 0x0000001b;
  static const JobObjectReserved11Information = 0x0000001c;
  static const JobObjectReserved12Information = 0x0000001d;
  static const JobObjectReserved13Information = 0x0000001e;
  static const JobObjectReserved14Information = 0x0000001f;
  static const JobObjectNetRateControlInformation = 0x00000020;
  static const JobObjectNotificationLimitInformation2 = 0x00000021;
  static const JobObjectLimitViolationInformation2 = 0x00000022;
  static const JobObjectCreateSilo = 0x00000023;
  static const JobObjectSiloBasicInformation = 0x00000024;
  static const JobObjectReserved15Information = 0x00000025;
  static const JobObjectReserved16Information = 0x00000026;
  static const JobObjectReserved17Information = 0x00000027;
  static const JobObjectReserved18Information = 0x00000028;
  static const JobObjectReserved19Information = 0x00000029;
  static const JobObjectReserved20Information = 0x0000002a;
  static const JobObjectReserved21Information = 0x0000002b;
  static const JobObjectReserved22Information = 0x0000002c;
  static const JobObjectReserved23Information = 0x0000002d;
  static const JobObjectReserved24Information = 0x0000002e;
  static const JobObjectReserved25Information = 0x0000002f;
  static const MaxJobObjectInfoClass = 0x00000030;
}

/// {@category Enum}
class SERVERSILO_STATE {
  static const SERVERSILO_INITING = 0x00000000;
  static const SERVERSILO_STARTED = 0x00000001;
  static const SERVERSILO_SHUTTING_DOWN = 0x00000002;
  static const SERVERSILO_TERMINATING = 0x00000003;
  static const SERVERSILO_TERMINATED = 0x00000004;
}

/// {@category Enum}
class LOGICAL_PROCESSOR_RELATIONSHIP {
  static const RelationProcessorCore = 0x00000000;
  static const RelationNumaNode = 0x00000001;
  static const RelationCache = 0x00000002;
  static const RelationProcessorPackage = 0x00000003;
  static const RelationGroup = 0x00000004;
  static const RelationAll = 0x0000ffff;
}

/// {@category Enum}
class PROCESSOR_CACHE_TYPE {
  static const CacheUnified = 0x00000000;
  static const CacheInstruction = 0x00000001;
  static const CacheData = 0x00000002;
  static const CacheTrace = 0x00000003;
}

/// {@category Enum}
class CPU_SET_INFORMATION_TYPE {
  static const CpuSetInformation = 0x00000000;
}

/// {@category Enum}
class MEM_EXTENDED_PARAMETER_TYPE {
  static const MemExtendedParameterInvalidType = 0x00000000;
  static const MemExtendedParameterAddressRequirements = 0x00000001;
  static const MemExtendedParameterNumaNode = 0x00000002;
  static const MemExtendedParameterPartitionHandle = 0x00000003;
  static const MemExtendedParameterUserPhysicalHandle = 0x00000004;
  static const MemExtendedParameterAttributeFlags = 0x00000005;
  static const MemExtendedParameterMax = 0x00000006;
}

/// {@category Enum}
class MEM_SECTION_EXTENDED_PARAMETER_TYPE {
  static const MemSectionExtendedParameterInvalidType = 0x00000000;
  static const MemSectionExtendedParameterUserPhysicalFlags = 0x00000001;
  static const MemSectionExtendedParameterNumaNode = 0x00000002;
  static const MemSectionExtendedParameterMax = 0x00000003;
}

/// {@category Enum}
class SharedVirtualDiskSupportType {
  static const SharedVirtualDisksUnsupported = 0x00000000;
  static const SharedVirtualDisksSupported = 0x00000001;
  static const SharedVirtualDiskSnapshotsSupported = 0x00000003;
  static const SharedVirtualDiskCDPSnapshotsSupported = 0x00000007;
}

/// {@category Enum}
class SharedVirtualDiskHandleState {
  static const SharedVirtualDiskHandleStateNone = 0x00000000;
  static const SharedVirtualDiskHandleStateFileShared = 0x00000001;
  static const SharedVirtualDiskHandleStateHandleShared = 0x00000003;
}

/// {@category Enum}
class SYSTEM_POWER_STATE {
  static const PowerSystemUnspecified = 0x00000000;
  static const PowerSystemWorking = 0x00000001;
  static const PowerSystemSleeping1 = 0x00000002;
  static const PowerSystemSleeping2 = 0x00000003;
  static const PowerSystemSleeping3 = 0x00000004;
  static const PowerSystemHibernate = 0x00000005;
  static const PowerSystemShutdown = 0x00000006;
  static const PowerSystemMaximum = 0x00000007;
}

/// {@category Enum}
class POWER_ACTION {
  static const PowerActionNone = 0x00000000;
  static const PowerActionReserved = 0x00000001;
  static const PowerActionSleep = 0x00000002;
  static const PowerActionHibernate = 0x00000003;
  static const PowerActionShutdown = 0x00000004;
  static const PowerActionShutdownReset = 0x00000005;
  static const PowerActionShutdownOff = 0x00000006;
  static const PowerActionWarmEject = 0x00000007;
  static const PowerActionDisplayOff = 0x00000008;
}

/// {@category Enum}
class DEVICE_POWER_STATE {
  static const PowerDeviceUnspecified = 0x00000000;
  static const PowerDeviceD0 = 0x00000001;
  static const PowerDeviceD1 = 0x00000002;
  static const PowerDeviceD2 = 0x00000003;
  static const PowerDeviceD3 = 0x00000004;
  static const PowerDeviceMaximum = 0x00000005;
}

/// {@category Enum}
class MONITOR_DISPLAY_STATE {
  static const PowerMonitorOff = 0x00000000;
  static const PowerMonitorOn = 0x00000001;
  static const PowerMonitorDim = 0x00000002;
}

/// {@category Enum}
class USER_ACTIVITY_PRESENCE {
  static const PowerUserPresent = 0x00000000;
  static const PowerUserNotPresent = 0x00000001;
  static const PowerUserInactive = 0x00000002;
  static const PowerUserMaximum = 0x00000003;
  static const PowerUserInvalid = 0x00000003;
}

/// {@category Enum}
class LATENCY_TIME {
  static const LT_DONT_CARE = 0x00000000;
  static const LT_LOWEST_LATENCY = 0x00000001;
}

/// {@category Enum}
class POWER_REQUEST_TYPE {
  static const PowerRequestDisplayRequired = 0x00000000;
  static const PowerRequestSystemRequired = 0x00000001;
  static const PowerRequestAwayModeRequired = 0x00000002;
  static const PowerRequestExecutionRequired = 0x00000003;
}

/// {@category Enum}
class POWER_INFORMATION_LEVEL {
  static const SystemPowerPolicyAc = 0x00000000;
  static const SystemPowerPolicyDc = 0x00000001;
  static const VerifySystemPolicyAc = 0x00000002;
  static const VerifySystemPolicyDc = 0x00000003;
  static const SystemPowerCapabilities = 0x00000004;
  static const SystemBatteryState = 0x00000005;
  static const SystemPowerStateHandler = 0x00000006;
  static const ProcessorStateHandler = 0x00000007;
  static const SystemPowerPolicyCurrent = 0x00000008;
  static const AdministratorPowerPolicy = 0x00000009;
  static const SystemReserveHiberFile = 0x0000000a;
  static const ProcessorInformation = 0x0000000b;
  static const SystemPowerInformation = 0x0000000c;
  static const ProcessorStateHandler2 = 0x0000000d;
  static const LastWakeTime = 0x0000000e;
  static const LastSleepTime = 0x0000000f;
  static const SystemExecutionState = 0x00000010;
  static const SystemPowerStateNotifyHandler = 0x00000011;
  static const ProcessorPowerPolicyAc = 0x00000012;
  static const ProcessorPowerPolicyDc = 0x00000013;
  static const VerifyProcessorPowerPolicyAc = 0x00000014;
  static const VerifyProcessorPowerPolicyDc = 0x00000015;
  static const ProcessorPowerPolicyCurrent = 0x00000016;
  static const SystemPowerStateLogging = 0x00000017;
  static const SystemPowerLoggingEntry = 0x00000018;
  static const SetPowerSettingValue = 0x00000019;
  static const NotifyUserPowerSetting = 0x0000001a;
  static const PowerInformationLevelUnused0 = 0x0000001b;
  static const SystemMonitorHiberBootPowerOff = 0x0000001c;
  static const SystemVideoState = 0x0000001d;
  static const TraceApplicationPowerMessage = 0x0000001e;
  static const TraceApplicationPowerMessageEnd = 0x0000001f;
  static const ProcessorPerfStates = 0x00000020;
  static const ProcessorIdleStates = 0x00000021;
  static const ProcessorCap = 0x00000022;
  static const SystemWakeSource = 0x00000023;
  static const SystemHiberFileInformation = 0x00000024;
  static const TraceServicePowerMessage = 0x00000025;
  static const ProcessorLoad = 0x00000026;
  static const PowerShutdownNotification = 0x00000027;
  static const MonitorCapabilities = 0x00000028;
  static const SessionPowerInit = 0x00000029;
  static const SessionDisplayState = 0x0000002a;
  static const PowerRequestCreate = 0x0000002b;
  static const PowerRequestAction = 0x0000002c;
  static const GetPowerRequestList = 0x0000002d;
  static const ProcessorInformationEx = 0x0000002e;
  static const NotifyUserModeLegacyPowerEvent = 0x0000002f;
  static const GroupPark = 0x00000030;
  static const ProcessorIdleDomains = 0x00000031;
  static const WakeTimerList = 0x00000032;
  static const SystemHiberFileSize = 0x00000033;
  static const ProcessorIdleStatesHv = 0x00000034;
  static const ProcessorPerfStatesHv = 0x00000035;
  static const ProcessorPerfCapHv = 0x00000036;
  static const ProcessorSetIdle = 0x00000037;
  static const LogicalProcessorIdling = 0x00000038;
  static const UserPresence = 0x00000039;
  static const PowerSettingNotificationName = 0x0000003a;
  static const GetPowerSettingValue = 0x0000003b;
  static const IdleResiliency = 0x0000003c;
  static const SessionRITState = 0x0000003d;
  static const SessionConnectNotification = 0x0000003e;
  static const SessionPowerCleanup = 0x0000003f;
  static const SessionLockState = 0x00000040;
  static const SystemHiberbootState = 0x00000041;
  static const PlatformInformation = 0x00000042;
  static const PdcInvocation = 0x00000043;
  static const MonitorInvocation = 0x00000044;
  static const FirmwareTableInformationRegistered = 0x00000045;
  static const SetShutdownSelectedTime = 0x00000046;
  static const SuspendResumeInvocation = 0x00000047;
  static const PlmPowerRequestCreate = 0x00000048;
  static const ScreenOff = 0x00000049;
  static const CsDeviceNotification = 0x0000004a;
  static const PlatformRole = 0x0000004b;
  static const LastResumePerformance = 0x0000004c;
  static const DisplayBurst = 0x0000004d;
  static const ExitLatencySamplingPercentage = 0x0000004e;
  static const RegisterSpmPowerSettings = 0x0000004f;
  static const PlatformIdleStates = 0x00000050;
  static const ProcessorIdleVeto = 0x00000051;
  static const PlatformIdleVeto = 0x00000052;
  static const SystemBatteryStatePrecise = 0x00000053;
  static const ThermalEvent = 0x00000054;
  static const PowerRequestActionInternal = 0x00000055;
  static const BatteryDeviceState = 0x00000056;
  static const PowerInformationInternal = 0x00000057;
  static const ThermalStandby = 0x00000058;
  static const SystemHiberFileType = 0x00000059;
  static const PhysicalPowerButtonPress = 0x0000005a;
  static const QueryPotentialDripsConstraint = 0x0000005b;
  static const EnergyTrackerCreate = 0x0000005c;
  static const EnergyTrackerQuery = 0x0000005d;
  static const UpdateBlackBoxRecorder = 0x0000005e;
  static const SessionAllowExternalDmaDevices = 0x0000005f;
  static const PowerInformationLevelMaximum = 0x00000060;
}

/// {@category Enum}
class POWER_USER_PRESENCE_TYPE {
  static const UserNotPresent = 0x00000000;
  static const UserPresent = 0x00000001;
  static const UserUnknown = 0x000000ff;
}

/// {@category Enum}
class POWER_MONITOR_REQUEST_REASON {
  static const MonitorRequestReasonUnknown = 0x00000000;
  static const MonitorRequestReasonPowerButton = 0x00000001;
  static const MonitorRequestReasonRemoteConnection = 0x00000002;
  static const MonitorRequestReasonScMonitorpower = 0x00000003;
  static const MonitorRequestReasonUserInput = 0x00000004;
  static const MonitorRequestReasonAcDcDisplayBurst = 0x00000005;
  static const MonitorRequestReasonUserDisplayBurst = 0x00000006;
  static const MonitorRequestReasonPoSetSystemState = 0x00000007;
  static const MonitorRequestReasonSetThreadExecutionState = 0x00000008;
  static const MonitorRequestReasonFullWake = 0x00000009;
  static const MonitorRequestReasonSessionUnlock = 0x0000000a;
  static const MonitorRequestReasonScreenOffRequest = 0x0000000b;
  static const MonitorRequestReasonIdleTimeout = 0x0000000c;
  static const MonitorRequestReasonPolicyChange = 0x0000000d;
  static const MonitorRequestReasonSleepButton = 0x0000000e;
  static const MonitorRequestReasonLid = 0x0000000f;
  static const MonitorRequestReasonBatteryCountChange = 0x00000010;
  static const MonitorRequestReasonGracePeriod = 0x00000011;
  static const MonitorRequestReasonPnP = 0x00000012;
  static const MonitorRequestReasonDP = 0x00000013;
  static const MonitorRequestReasonSxTransition = 0x00000014;
  static const MonitorRequestReasonSystemIdle = 0x00000015;
  static const MonitorRequestReasonNearProximity = 0x00000016;
  static const MonitorRequestReasonThermalStandby = 0x00000017;
  static const MonitorRequestReasonResumePdc = 0x00000018;
  static const MonitorRequestReasonResumeS4 = 0x00000019;
  static const MonitorRequestReasonTerminal = 0x0000001a;
  static const MonitorRequestReasonPdcSignal = 0x0000001b;
  static const MonitorRequestReasonAcDcDisplayBurstSuppressed = 0x0000001c;
  static const MonitorRequestReasonSystemStateEntered = 0x0000001d;
  static const MonitorRequestReasonWinrt = 0x0000001e;
  static const MonitorRequestReasonUserInputKeyboard = 0x0000001f;
  static const MonitorRequestReasonUserInputMouse = 0x00000020;
  static const MonitorRequestReasonUserInputTouch = 0x00000021;
  static const MonitorRequestReasonUserInputPen = 0x00000022;
  static const MonitorRequestReasonUserInputAccelerometer = 0x00000023;
  static const MonitorRequestReasonUserInputHid = 0x00000024;
  static const MonitorRequestReasonUserInputPoUserPresent = 0x00000025;
  static const MonitorRequestReasonUserInputSessionSwitch = 0x00000026;
  static const MonitorRequestReasonUserInputInitialization = 0x00000027;
  static const MonitorRequestReasonPdcSignalWindowsMobilePwrNotif = 0x00000028;
  static const MonitorRequestReasonPdcSignalWindowsMobileShell = 0x00000029;
  static const MonitorRequestReasonPdcSignalHeyCortana = 0x0000002a;
  static const MonitorRequestReasonPdcSignalHolographicShell = 0x0000002b;
  static const MonitorRequestReasonPdcSignalFingerprint = 0x0000002c;
  static const MonitorRequestReasonDirectedDrips = 0x0000002d;
  static const MonitorRequestReasonDim = 0x0000002e;
  static const MonitorRequestReasonBuiltinPanel = 0x0000002f;
  static const MonitorRequestReasonDisplayRequiredUnDim = 0x00000030;
  static const MonitorRequestReasonBatteryCountChangeSuppressed = 0x00000031;
  static const MonitorRequestReasonResumeModernStandby = 0x00000032;
  static const MonitorRequestReasonMax = 0x00000033;
}

/// {@category Enum}
class POWER_MONITOR_REQUEST_TYPE {
  static const MonitorRequestTypeOff = 0x00000000;
  static const MonitorRequestTypeOnAndPresent = 0x00000001;
  static const MonitorRequestTypeToggleOn = 0x00000002;
}

/// {@category Enum}
class SYSTEM_POWER_CONDITION {
  static const PoAc = 0x00000000;
  static const PoDc = 0x00000001;
  static const PoHot = 0x00000002;
  static const PoConditionMaximum = 0x00000003;
}

/// {@category Enum}
class POWER_PLATFORM_ROLE {
  static const PlatformRoleUnspecified = 0x00000000;
  static const PlatformRoleDesktop = 0x00000001;
  static const PlatformRoleMobile = 0x00000002;
  static const PlatformRoleWorkstation = 0x00000003;
  static const PlatformRoleEnterpriseServer = 0x00000004;
  static const PlatformRoleSOHOServer = 0x00000005;
  static const PlatformRoleAppliancePC = 0x00000006;
  static const PlatformRolePerformanceServer = 0x00000007;
  static const PlatformRoleSlate = 0x00000008;
  static const PlatformRoleMaximum = 0x00000009;
}

/// {@category Enum}
class HIBERFILE_BUCKET_SIZE {
  static const HiberFileBucket1GB = 0x00000000;
  static const HiberFileBucket2GB = 0x00000001;
  static const HiberFileBucket4GB = 0x00000002;
  static const HiberFileBucket8GB = 0x00000003;
  static const HiberFileBucket16GB = 0x00000004;
  static const HiberFileBucket32GB = 0x00000005;
  static const HiberFileBucketUnlimited = 0x00000006;
  static const HiberFileBucketMax = 0x00000007;
}

/// {@category Enum}
class IMAGE_AUX_SYMBOL_TYPE {
  static const IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 0x00000001;
}

/// {@category Enum}
class ARM64_FNPDATA_FLAGS {
  static const PdataRefToFullXdata = 0x00000000;
  static const PdataPackedUnwindFunction = 0x00000001;
  static const PdataPackedUnwindFragment = 0x00000002;
}

/// {@category Enum}
class ARM64_FNPDATA_CR {
  static const PdataCrUnchained = 0x00000000;
  static const PdataCrUnchainedSavedLr = 0x00000001;
  static const PdataCrChained = 0x00000003;
}

/// {@category Enum}
class IMPORT_OBJECT_TYPE {
  static const IMPORT_OBJECT_CODE = 0x00000000;
  static const IMPORT_OBJECT_DATA = 0x00000001;
  static const IMPORT_OBJECT_CONST = 0x00000002;
}

/// {@category Enum}
class IMPORT_OBJECT_NAME_TYPE {
  static const IMPORT_OBJECT_ORDINAL = 0x00000000;
  static const IMPORT_OBJECT_NAME = 0x00000001;
  static const IMPORT_OBJECT_NAME_NO_PREFIX = 0x00000002;
  static const IMPORT_OBJECT_NAME_UNDECORATE = 0x00000003;
  static const IMPORT_OBJECT_NAME_EXPORTAS = 0x00000004;
}

/// {@category Enum}
class ReplacesCorHdrNumericDefines {
  static const COMIMAGE_FLAGS_ILONLY = 0x00000001;
  static const COMIMAGE_FLAGS_32BITREQUIRED = 0x00000002;
  static const COMIMAGE_FLAGS_IL_LIBRARY = 0x00000004;
  static const COMIMAGE_FLAGS_STRONGNAMESIGNED = 0x00000008;
  static const COMIMAGE_FLAGS_NATIVE_ENTRYPOINT = 0x00000010;
  static const COMIMAGE_FLAGS_TRACKDEBUGDATA = 0x00010000;
  static const COMIMAGE_FLAGS_32BITPREFERRED = 0x00020000;
  static const COR_VERSION_MAJOR_V2 = 0x00000002;
  static const COR_VERSION_MAJOR = 0x00000002;
  static const COR_VERSION_MINOR = 0x00000005;
  static const COR_DELETED_NAME_LENGTH = 0x00000008;
  static const COR_VTABLEGAP_NAME_LENGTH = 0x00000008;
  static const NATIVE_TYPE_MAX_CB = 0x00000001;
  static const COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE = 0x000000ff;
  static const IMAGE_COR_MIH_METHODRVA = 0x00000001;
  static const IMAGE_COR_MIH_EHRVA = 0x00000002;
  static const IMAGE_COR_MIH_BASICBLOCK = 0x00000008;
  static const COR_VTABLE_32BIT = 0x00000001;
  static const COR_VTABLE_64BIT = 0x00000002;
  static const COR_VTABLE_FROM_UNMANAGED = 0x00000004;
  static const COR_VTABLE_FROM_UNMANAGED_RETAIN_APPDOMAIN = 0x00000008;
  static const COR_VTABLE_CALL_MOST_DERIVED = 0x00000010;
  static const IMAGE_COR_EATJ_THUNK_SIZE = 0x00000020;
  static const MAX_CLASS_NAME = 0x00000400;
  static const MAX_PACKAGE_NAME = 0x00000400;
}

/// {@category Enum}
class RTL_UMS_THREAD_INFO_CLASS {
  static const UmsThreadInvalidInfoClass = 0x00000000;
  static const UmsThreadUserContext = 0x00000001;
  static const UmsThreadPriority = 0x00000002;
  static const UmsThreadAffinity = 0x00000003;
  static const UmsThreadTeb = 0x00000004;
  static const UmsThreadIsSuspended = 0x00000005;
  static const UmsThreadIsTerminated = 0x00000006;
  static const UmsThreadMaxInfoClass = 0x00000007;
}

/// {@category Enum}
class RTL_UMS_SCHEDULER_REASON {
  static const UmsSchedulerStartup = 0x00000000;
  static const UmsSchedulerThreadBlocked = 0x00000001;
  static const UmsSchedulerThreadYield = 0x00000002;
}

/// {@category Enum}
class OS_DEPLOYEMENT_STATE_VALUES {
  static const OS_DEPLOYMENT_STANDARD = 0x00000001;
  static const OS_DEPLOYMENT_COMPACT = 0x00000002;
}

/// {@category Enum}
class IMAGE_POLICY_ENTRY_TYPE {
  static const ImagePolicyEntryTypeNone = 0x00000000;
  static const ImagePolicyEntryTypeBool = 0x00000001;
  static const ImagePolicyEntryTypeInt8 = 0x00000002;
  static const ImagePolicyEntryTypeUInt8 = 0x00000003;
  static const ImagePolicyEntryTypeInt16 = 0x00000004;
  static const ImagePolicyEntryTypeUInt16 = 0x00000005;
  static const ImagePolicyEntryTypeInt32 = 0x00000006;
  static const ImagePolicyEntryTypeUInt32 = 0x00000007;
  static const ImagePolicyEntryTypeInt64 = 0x00000008;
  static const ImagePolicyEntryTypeUInt64 = 0x00000009;
  static const ImagePolicyEntryTypeAnsiString = 0x0000000a;
  static const ImagePolicyEntryTypeUnicodeString = 0x0000000b;
  static const ImagePolicyEntryTypeOverride = 0x0000000c;
  static const ImagePolicyEntryTypeMaximum = 0x0000000d;
}

/// {@category Enum}
class IMAGE_POLICY_ID {
  static const ImagePolicyIdNone = 0x00000000;
  static const ImagePolicyIdEtw = 0x00000001;
  static const ImagePolicyIdDebug = 0x00000002;
  static const ImagePolicyIdCrashDump = 0x00000003;
  static const ImagePolicyIdCrashDumpKey = 0x00000004;
  static const ImagePolicyIdCrashDumpKeyGuid = 0x00000005;
  static const ImagePolicyIdParentSd = 0x00000006;
  static const ImagePolicyIdParentSdRev = 0x00000007;
  static const ImagePolicyIdSvn = 0x00000008;
  static const ImagePolicyIdDeviceId = 0x00000009;
  static const ImagePolicyIdCapability = 0x0000000a;
  static const ImagePolicyIdScenarioId = 0x0000000b;
  static const ImagePolicyIdMaximum = 0x0000000c;
}

/// {@category Enum}
class HEAP_INFORMATION_CLASS {
  static const HeapCompatibilityInformation = 0x00000000;
  static const HeapEnableTerminationOnCorruption = 0x00000001;
  static const HeapOptimizeResources = 0x00000003;
}

/// {@category Enum}
class ACTIVATION_CONTEXT_INFO_CLASS {
  static const ActivationContextBasicInformation = 0x00000001;
  static const ActivationContextDetailedInformation = 0x00000002;
  static const AssemblyDetailedInformationInActivationContext = 0x00000003;
  static const FileInformationInAssemblyOfAssemblyInActivationContext = 0x00000004;
  static const RunlevelInformationInActivationContext = 0x00000005;
  static const CompatibilityInformationInActivationContext = 0x00000006;
  static const ActivationContextManifestResourceName = 0x00000007;
  static const MaxActivationContextInfoClass = 0x00000008;
  static const AssemblyDetailedInformationInActivationContxt = 0x00000003;
  static const FileInformationInAssemblyOfAssemblyInActivationContxt = 0x00000004;
}

/// {@category Enum}
class CM_SERVICE_NODE_TYPE {
  static const DriverType = 0x00000001;
  static const FileSystemType = 0x00000002;
  static const Win32ServiceOwnProcess = 0x00000010;
  static const Win32ServiceShareProcess = 0x00000020;
  static const AdapterType = 0x00000004;
  static const RecognizerType = 0x00000008;
}

/// {@category Enum}
class CM_SERVICE_LOAD_TYPE {
  static const BootLoad = 0x00000000;
  static const SystemLoad = 0x00000001;
  static const AutoLoad = 0x00000002;
  static const DemandLoad = 0x00000003;
  static const DisableLoad = 0x00000004;
}

/// {@category Enum}
class CM_ERROR_CONTROL_TYPE {
  static const IgnoreError = 0x00000000;
  static const NormalError = 0x00000001;
  static const SevereError = 0x00000002;
  static const CriticalError = 0x00000003;
}

/// {@category Enum}
class TAPE_DRIVE_PROBLEM_TYPE {
  static const TapeDriveProblemNone = 0x00000000;
  static const TapeDriveReadWriteWarning = 0x00000001;
  static const TapeDriveReadWriteError = 0x00000002;
  static const TapeDriveReadWarning = 0x00000003;
  static const TapeDriveWriteWarning = 0x00000004;
  static const TapeDriveReadError = 0x00000005;
  static const TapeDriveWriteError = 0x00000006;
  static const TapeDriveHardwareError = 0x00000007;
  static const TapeDriveUnsupportedMedia = 0x00000008;
  static const TapeDriveScsiConnectionError = 0x00000009;
  static const TapeDriveTimetoClean = 0x0000000a;
  static const TapeDriveCleanDriveNow = 0x0000000b;
  static const TapeDriveMediaLifeExpired = 0x0000000c;
  static const TapeDriveSnappedTape = 0x0000000d;
}

/// {@category Enum}
class TRANSACTION_STATE {
  static const TransactionStateNormal = 0x00000001;
  static const TransactionStateIndoubt = 0x00000002;
  static const TransactionStateCommittedNotify = 0x00000003;
}

/// {@category Enum}
class TRANSACTION_INFORMATION_CLASS {
  static const TransactionBasicInformation = 0x00000000;
  static const TransactionPropertiesInformation = 0x00000001;
  static const TransactionEnlistmentInformation = 0x00000002;
  static const TransactionSuperiorEnlistmentInformation = 0x00000003;
  static const TransactionBindInformation = 0x00000004;
  static const TransactionDTCPrivateInformation = 0x00000005;
}

/// {@category Enum}
class TRANSACTIONMANAGER_INFORMATION_CLASS {
  static const TransactionManagerBasicInformation = 0x00000000;
  static const TransactionManagerLogInformation = 0x00000001;
  static const TransactionManagerLogPathInformation = 0x00000002;
  static const TransactionManagerRecoveryInformation = 0x00000004;
  static const TransactionManagerOnlineProbeInformation = 0x00000003;
  static const TransactionManagerOldestTransactionInformation = 0x00000005;
}

/// {@category Enum}
class RESOURCEMANAGER_INFORMATION_CLASS {
  static const ResourceManagerBasicInformation = 0x00000000;
  static const ResourceManagerCompletionInformation = 0x00000001;
}

/// {@category Enum}
class ENLISTMENT_INFORMATION_CLASS {
  static const EnlistmentBasicInformation = 0x00000000;
  static const EnlistmentRecoveryInformation = 0x00000001;
  static const EnlistmentCrmInformation = 0x00000002;
}

/// {@category Enum}
class KTMOBJECT_TYPE {
  static const KTMOBJECT_TRANSACTION = 0x00000000;
  static const KTMOBJECT_TRANSACTION_MANAGER = 0x00000001;
  static const KTMOBJECT_RESOURCE_MANAGER = 0x00000002;
  static const KTMOBJECT_ENLISTMENT = 0x00000003;
  static const KTMOBJECT_INVALID = 0x00000004;
}

/// {@category Enum}
class TP_CALLBACK_PRIORITY {
  static const TP_CALLBACK_PRIORITY_HIGH = 0x00000000;
  static const TP_CALLBACK_PRIORITY_NORMAL = 0x00000001;
  static const TP_CALLBACK_PRIORITY_LOW = 0x00000002;
  static const TP_CALLBACK_PRIORITY_INVALID = 0x00000003;
  static const TP_CALLBACK_PRIORITY_COUNT = 0x00000003;
}

/// {@category Enum}
class CONSOLE_MODE {
  static const ENABLE_ECHO_INPUT = 0x00000004;
  static const ENABLE_INSERT_MODE = 0x00000020;
  static const ENABLE_LINE_INPUT = 0x00000002;
  static const ENABLE_MOUSE_INPUT = 0x00000010;
  static const ENABLE_PROCESSED_INPUT = 0x00000001;
  static const ENABLE_QUICK_EDIT_MODE = 0x00000040;
  static const ENABLE_WINDOW_INPUT = 0x00000008;
  static const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x00000200;
  static const ENABLE_PROCESSED_OUTPUT = 0x00000001;
  static const ENABLE_WRAP_AT_EOL_OUTPUT = 0x00000002;
  static const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x00000004;
  static const DISABLE_NEWLINE_AUTO_RETURN = 0x00000008;
  static const ENABLE_LVB_GRID_WORLDWIDE = 0x00000010;
}

/// {@category Enum}
class PAGE_TYPE {
  static const PAGE_NOACCESS = 0x00000001;
  static const PAGE_READONLY = 0x00000002;
  static const PAGE_READWRITE = 0x00000004;
  static const PAGE_WRITECOPY = 0x00000008;
  static const PAGE_EXECUTE = 0x00000010;
  static const PAGE_EXECUTE_READ = 0x00000020;
  static const PAGE_EXECUTE_READWRITE = 0x00000040;
  static const PAGE_EXECUTE_WRITECOPY = 0x00000080;
  static const PAGE_GUARD = 0x00000100;
  static const PAGE_NOCACHE = 0x00000200;
  static const PAGE_WRITECOMBINE = 0x00000400;
  static const PAGE_TARGETS_INVALID = 0x40000000;
  static const PAGE_TARGETS_NO_UPDATE = 0x40000000;
}

/// {@category Enum}
class PROCESS_ACCESS_RIGHTS {
  static const PROCESS_TERMINATE = 0x00000001;
  static const PROCESS_CREATE_THREAD = 0x00000002;
  static const PROCESS_SET_SESSIONID = 0x00000004;
  static const PROCESS_VM_OPERATION = 0x00000008;
  static const PROCESS_VM_READ = 0x00000010;
  static const PROCESS_VM_WRITE = 0x00000020;
  static const PROCESS_DUP_HANDLE = 0x00000040;
  static const PROCESS_CREATE_PROCESS = 0x00000080;
  static const PROCESS_SET_QUOTA = 0x00000100;
  static const PROCESS_SET_INFORMATION = 0x00000200;
  static const PROCESS_QUERY_INFORMATION = 0x00000400;
  static const PROCESS_SUSPEND_RESUME = 0x00000800;
  static const PROCESS_QUERY_LIMITED_INFORMATION = 0x00001000;
  static const PROCESS_SET_LIMITED_INFORMATION = 0x00002000;
  static const PROCESS_ALL_ACCESS = 0x001fffff;
  static const DELETE = 0x00010000;
  static const READ_CONTROL = 0x00020000;
  static const WRITE_DAC = 0x00040000;
  static const WRITE_OWNER = 0x00080000;
  static const SYNCHRONIZE = 0x00100000;
  static const STANDARD_RIGHTS_REQUIRED = 0x000f0000;
}

/// {@category Enum}
class JOB_OBJECT_LIMIT {
  static const JOB_OBJECT_LIMIT_WORKINGSET = 0x00000001;
  static const JOB_OBJECT_LIMIT_PROCESS_TIME = 0x00000002;
  static const JOB_OBJECT_LIMIT_JOB_TIME = 0x00000004;
  static const JOB_OBJECT_LIMIT_ACTIVE_PROCESS = 0x00000008;
  static const JOB_OBJECT_LIMIT_AFFINITY = 0x00000010;
  static const JOB_OBJECT_LIMIT_PRIORITY_CLASS = 0x00000020;
  static const JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = 0x00000040;
  static const JOB_OBJECT_LIMIT_SCHEDULING_CLASS = 0x00000080;
  static const JOB_OBJECT_LIMIT_PROCESS_MEMORY = 0x00000100;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY = 0x00000200;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY_HIGH = 0x00000200;
  static const JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 0x00000400;
  static const JOB_OBJECT_LIMIT_BREAKAWAY_OK = 0x00000800;
  static const JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = 0x00001000;
  static const JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = 0x00002000;
  static const JOB_OBJECT_LIMIT_SUBSET_AFFINITY = 0x00004000;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY_LOW = 0x00008000;
  static const JOB_OBJECT_LIMIT_JOB_READ_BYTES = 0x00010000;
  static const JOB_OBJECT_LIMIT_JOB_WRITE_BYTES = 0x00020000;
  static const JOB_OBJECT_LIMIT_RATE_CONTROL = 0x00040000;
  static const JOB_OBJECT_LIMIT_CPU_RATE_CONTROL = 0x00040000;
  static const JOB_OBJECT_LIMIT_IO_RATE_CONTROL = 0x00080000;
  static const JOB_OBJECT_LIMIT_NET_RATE_CONTROL = 0x00100000;
  static const JOB_OBJECT_LIMIT_VALID_FLAGS = 0x0007ffff;
  static const JOB_OBJECT_BASIC_LIMIT_VALID_FLAGS = 0x000000ff;
  static const JOB_OBJECT_EXTENDED_LIMIT_VALID_FLAGS = 0x00007fff;
  static const JOB_OBJECT_NOTIFICATION_LIMIT_VALID_FLAGS = 0x001f8204;
}

/// {@category Enum}
class JOB_OBJECT_UILIMIT {
  static const JOB_OBJECT_UILIMIT_NONE = 0x00000000;
  static const JOB_OBJECT_UILIMIT_HANDLES = 0x00000001;
  static const JOB_OBJECT_UILIMIT_READCLIPBOARD = 0x00000002;
  static const JOB_OBJECT_UILIMIT_WRITECLIPBOARD = 0x00000004;
  static const JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = 0x00000008;
  static const JOB_OBJECT_UILIMIT_DISPLAYSETTINGS = 0x00000010;
  static const JOB_OBJECT_UILIMIT_GLOBALATOMS = 0x00000020;
  static const JOB_OBJECT_UILIMIT_DESKTOP = 0x00000040;
  static const JOB_OBJECT_UILIMIT_EXITWINDOWS = 0x00000080;
}

/// {@category Enum}
class JOB_OBJECT_SECURITY {
  static const JOB_OBJECT_SECURITY_NO_ADMIN = 0x00000001;
  static const JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = 0x00000002;
  static const JOB_OBJECT_SECURITY_ONLY_TOKEN = 0x00000004;
  static const JOB_OBJECT_SECURITY_FILTER_TOKENS = 0x00000008;
  static const JOB_OBJECT_SECURITY_VALID_FLAGS = 0x0000000f;
}

/// {@category Enum}
class WAIT_RETURN_CAUSE {
  static const WAIT_OBJECT_0 = 0x00000000;
  static const WAIT_ABANDONED = 0x00000080;
  static const WAIT_ABANDONED_0 = 0x00000080;
  static const WAIT_IO_COMPLETION = 0x000000c0;
  static const WAIT_TIMEOUT = 0x00000102;
  static const WAIT_FAILED = 0xffffffff;
}

/// {@category Enum}
class PROCESS_MEMORY_EXHAUSTION_TYPE {
  static const PMETypeFailFastOnCommitFailure = 0x00000000;
  static const PMETypeMax = 0x00000001;
}

/// {@category Enum}
class ALERT_SYSTEM_SEV {
  static const ALERT_SYSTEM_INFORMATIONAL = 0x00000001;
  static const ALERT_SYSTEM_WARNING = 0x00000002;
  static const ALERT_SYSTEM_ERROR = 0x00000003;
  static const ALERT_SYSTEM_QUERY = 0x00000004;
  static const ALERT_SYSTEM_CRITICAL = 0x00000005;
}

/// {@category Enum}
class APPCOMMAND_ID {
  static const APPCOMMAND_BROWSER_BACKWARD = 0x00000001;
  static const APPCOMMAND_BROWSER_FORWARD = 0x00000002;
  static const APPCOMMAND_BROWSER_REFRESH = 0x00000003;
  static const APPCOMMAND_BROWSER_STOP = 0x00000004;
  static const APPCOMMAND_BROWSER_SEARCH = 0x00000005;
  static const APPCOMMAND_BROWSER_FAVORITES = 0x00000006;
  static const APPCOMMAND_BROWSER_HOME = 0x00000007;
  static const APPCOMMAND_VOLUME_MUTE = 0x00000008;
  static const APPCOMMAND_VOLUME_DOWN = 0x00000009;
  static const APPCOMMAND_VOLUME_UP = 0x0000000a;
  static const APPCOMMAND_MEDIA_NEXTTRACK = 0x0000000b;
  static const APPCOMMAND_MEDIA_PREVIOUSTRACK = 0x0000000c;
  static const APPCOMMAND_MEDIA_STOP = 0x0000000d;
  static const APPCOMMAND_MEDIA_PLAY_PAUSE = 0x0000000e;
  static const APPCOMMAND_LAUNCH_MAIL = 0x0000000f;
  static const APPCOMMAND_LAUNCH_MEDIA_SELECT = 0x00000010;
  static const APPCOMMAND_LAUNCH_APP1 = 0x00000011;
  static const APPCOMMAND_LAUNCH_APP2 = 0x00000012;
  static const APPCOMMAND_BASS_DOWN = 0x00000013;
  static const APPCOMMAND_BASS_BOOST = 0x00000014;
  static const APPCOMMAND_BASS_UP = 0x00000015;
  static const APPCOMMAND_TREBLE_DOWN = 0x00000016;
  static const APPCOMMAND_TREBLE_UP = 0x00000017;
  static const APPCOMMAND_MICROPHONE_VOLUME_MUTE = 0x00000018;
  static const APPCOMMAND_MICROPHONE_VOLUME_DOWN = 0x00000019;
  static const APPCOMMAND_MICROPHONE_VOLUME_UP = 0x0000001a;
  static const APPCOMMAND_HELP = 0x0000001b;
  static const APPCOMMAND_FIND = 0x0000001c;
  static const APPCOMMAND_NEW = 0x0000001d;
  static const APPCOMMAND_OPEN = 0x0000001e;
  static const APPCOMMAND_CLOSE = 0x0000001f;
  static const APPCOMMAND_SAVE = 0x00000020;
  static const APPCOMMAND_PRINT = 0x00000021;
  static const APPCOMMAND_UNDO = 0x00000022;
  static const APPCOMMAND_REDO = 0x00000023;
  static const APPCOMMAND_COPY = 0x00000024;
  static const APPCOMMAND_CUT = 0x00000025;
  static const APPCOMMAND_PASTE = 0x00000026;
  static const APPCOMMAND_REPLY_TO_MAIL = 0x00000027;
  static const APPCOMMAND_FORWARD_MAIL = 0x00000028;
  static const APPCOMMAND_SEND_MAIL = 0x00000029;
  static const APPCOMMAND_SPELL_CHECK = 0x0000002a;
  static const APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE = 0x0000002b;
  static const APPCOMMAND_MIC_ON_OFF_TOGGLE = 0x0000002c;
  static const APPCOMMAND_CORRECTION_LIST = 0x0000002d;
  static const APPCOMMAND_MEDIA_PLAY = 0x0000002e;
  static const APPCOMMAND_MEDIA_PAUSE = 0x0000002f;
  static const APPCOMMAND_MEDIA_RECORD = 0x00000030;
  static const APPCOMMAND_MEDIA_FAST_FORWARD = 0x00000031;
  static const APPCOMMAND_MEDIA_REWIND = 0x00000032;
  static const APPCOMMAND_MEDIA_CHANNEL_UP = 0x00000033;
  static const APPCOMMAND_MEDIA_CHANNEL_DOWN = 0x00000034;
  static const APPCOMMAND_DELETE = 0x00000035;
  static const APPCOMMAND_DWM_FLIP3D = 0x00000036;
}

/// {@category Enum}
class ATF_FLAGS {
  static const ATF_TIMEOUTON = 0x00000001;
  static const ATF_ONOFFFEEDBACK = 0x00000002;
}

/// {@category Enum}
class BUTTON_STYLE {
  static const BS_PUSHBUTTON = 0x00000000;
  static const BS_DEFPUSHBUTTON = 0x00000001;
  static const BS_CHECKBOX = 0x00000002;
  static const BS_AUTOCHECKBOX = 0x00000003;
  static const BS_RADIOBUTTON = 0x00000004;
  static const BS_3STATE = 0x00000005;
  static const BS_AUTO3STATE = 0x00000006;
  static const BS_GROUPBOX = 0x00000007;
  static const BS_USERBUTTON = 0x00000008;
  static const BS_AUTORADIOBUTTON = 0x00000009;
  static const BS_PUSHBOX = 0x0000000a;
  static const BS_OWNERDRAW = 0x0000000b;
  static const BS_TYPEMASK = 0x0000000f;
  static const BS_LEFTTEXT = 0x00000020;
  static const BS_TEXT = 0x00000000;
  static const BS_ICON = 0x00000040;
  static const BS_BITMAP = 0x00000080;
  static const BS_LEFT = 0x00000100;
  static const BS_RIGHT = 0x00000200;
  static const BS_CENTER = 0x00000300;
  static const BS_TOP = 0x00000400;
  static const BS_BOTTOM = 0x00000800;
  static const BS_VCENTER = 0x00000c00;
  static const BS_PUSHLIKE = 0x00001000;
  static const BS_MULTILINE = 0x00002000;
  static const BS_NOTIFY = 0x00004000;
  static const BS_FLAT = 0x00008000;
  static const BS_RIGHTBUTTON = 0x00000020;
}

/// {@category Enum}
class COMBOBOX_STYLE {
  static const CBS_SIMPLE = 0x00000001;
  static const CBS_DROPDOWN = 0x00000002;
  static const CBS_DROPDOWNLIST = 0x00000003;
  static const CBS_OWNERDRAWFIXED = 0x00000010;
  static const CBS_OWNERDRAWVARIABLE = 0x00000020;
  static const CBS_AUTOHSCROLL = 0x00000040;
  static const CBS_OEMCONVERT = 0x00000080;
  static const CBS_SORT = 0x00000100;
  static const CBS_HASSTRINGS = 0x00000200;
  static const CBS_NOINTEGRALHEIGHT = 0x00000400;
  static const CBS_DISABLENOSCROLL = 0x00000800;
  static const CBS_UPPERCASE = 0x00002000;
  static const CBS_LOWERCASE = 0x00004000;
}

/// {@category Enum}
class CHOOSECOLOR_FLAGS {
  static const CC_RGBINIT = 0x00000001;
  static const CC_FULLOPEN = 0x00000002;
  static const CC_PREVENTFULLOPEN = 0x00000004;
  static const CC_SHOWHELP = 0x00000008;
  static const CC_ENABLEHOOK = 0x00000010;
  static const CC_ENABLETEMPLATE = 0x00000020;
  static const CC_ENABLETEMPLATEHANDLE = 0x00000040;
  static const CC_SOLIDCOLOR = 0x00000080;
  static const CC_ANYCOLOR = 0x00000100;
}

/// {@category Enum}
class CLIPBOARD_FORMATS {
  static const CF_TEXT = 0x00000001;
  static const CF_BITMAP = 0x00000002;
  static const CF_METAFILEPICT = 0x00000003;
  static const CF_SYLK = 0x00000004;
  static const CF_DIF = 0x00000005;
  static const CF_TIFF = 0x00000006;
  static const CF_OEMTEXT = 0x00000007;
  static const CF_DIB = 0x00000008;
  static const CF_PALETTE = 0x00000009;
  static const CF_PENDATA = 0x0000000a;
  static const CF_RIFF = 0x0000000b;
  static const CF_WAVE = 0x0000000c;
  static const CF_UNICODETEXT = 0x0000000d;
  static const CF_ENHMETAFILE = 0x0000000e;
  static const CF_HDROP = 0x0000000f;
  static const CF_LOCALE = 0x00000010;
  static const CF_DIBV5 = 0x00000011;
  static const CF_MAX = 0x00000012;
  static const CF_OWNERDISPLAY = 0x00000080;
  static const CF_DSPTEXT = 0x00000081;
  static const CF_DSPBITMAP = 0x00000082;
  static const CF_DSPMETAFILEPICT = 0x00000083;
  static const CF_DSPENHMETAFILE = 0x0000008e;
  static const CF_PRIVATEFIRST = 0x00000200;
  static const CF_PRIVATELAST = 0x000002ff;
  static const CF_GDIOBJFIRST = 0x00000300;
  static const CF_GDIOBJLAST = 0x000003ff;
}

/// {@category Enum}
class DIALOGBOX_STYLE {
  static const DS_ABSALIGN = 0x00000001;
  static const DS_SYSMODAL = 0x00000002;
  static const DS_LOCALEDIT = 0x00000020;
  static const DS_SETFONT = 0x00000040;
  static const DS_MODALFRAME = 0x00000080;
  static const DS_NOIDLEMSG = 0x00000100;
  static const DS_SETFOREGROUND = 0x00000200;
  static const DS_3DLOOK = 0x00000004;
  static const DS_FIXEDSYS = 0x00000008;
  static const DS_NOFAILCREATE = 0x00000010;
  static const DS_CONTROL = 0x00000400;
  static const DS_CENTER = 0x00000800;
  static const DS_CENTERMOUSE = 0x00001000;
  static const DS_CONTEXTHELP = 0x00002000;
  static const DS_SHELLFONT = 0x00000048;
  static const DS_USEPIXELS = 0x00008000;
}

/// {@category Enum}
class EDITCONTROL_STYLE {
  static const ES_LEFT = 0x00000000;
  static const ES_CENTER = 0x00000001;
  static const ES_RIGHT = 0x00000002;
  static const ES_MULTILINE = 0x00000004;
  static const ES_UPPERCASE = 0x00000008;
  static const ES_LOWERCASE = 0x00000010;
  static const ES_PASSWORD = 0x00000020;
  static const ES_AUTOVSCROLL = 0x00000040;
  static const ES_AUTOHSCROLL = 0x00000080;
  static const ES_NOHIDESEL = 0x00000100;
  static const ES_OEMCONVERT = 0x00000400;
  static const ES_READONLY = 0x00000800;
  static const ES_WANTRETURN = 0x00001000;
  static const ES_NUMBER = 0x00002000;
}

/// {@category Enum}
class GESTURECONFIG_FLAGS {
  static const GC_ALLGESTURES = 0x00000001;
  static const GC_ZOOM = 0x00000001;
  static const GC_PAN = 0x00000001;
  static const GC_PAN_WITH_SINGLE_FINGER_VERTICALLY = 0x00000002;
  static const GC_PAN_WITH_SINGLE_FINGER_HORIZONTALLY = 0x00000004;
  static const GC_PAN_WITH_GUTTER = 0x00000008;
  static const GC_PAN_WITH_INERTIA = 0x00000010;
  static const GC_ROTATE = 0x00000001;
  static const GC_TWOFINGERTAP = 0x00000001;
  static const GC_PRESSANDTAP = 0x00000001;
  static const GC_ROLLOVER = 0x00000001;
}

/// {@category Enum}
class LISTBOX_STYLE {
  static const LBS_STANDARD = 0x00a00003;
  static const LBS_NOTIFY = 0x00000001;
  static const LBS_SORT = 0x00000002;
  static const LBS_NOREDRAW = 0x00000004;
  static const LBS_MULTIPLESEL = 0x00000008;
  static const LBS_OWNERDRAWFIXED = 0x00000010;
  static const LBS_OWNERDRAWVARIABLE = 0x00000020;
  static const LBS_HASSTRINGS = 0x00000040;
  static const LBS_USETABSTOPS = 0x00000080;
  static const LBS_NOINTEGRALHEIGHT = 0x00000100;
  static const LBS_MULTICOLUMN = 0x00000200;
  static const LBS_WANTKEYBOARDINPUT = 0x00000400;
  static const LBS_EXTENDEDSEL = 0x00000800;
  static const LBS_DISABLENOSCROLL = 0x00001000;
  static const LBS_NODATA = 0x00002000;
  static const LBS_NOSEL = 0x00004000;
  static const LBS_COMBOBOX = 0x00008000;
}

/// {@category Enum}
class SCROLLBAR_STYLE {
  static const SBS_HORZ = 0x00000000;
  static const SBS_VERT = 0x00000001;
  static const SBS_TOPALIGN = 0x00000002;
  static const SBS_LEFTALIGN = 0x00000002;
  static const SBS_BOTTOMALIGN = 0x00000004;
  static const SBS_RIGHTALIGN = 0x00000004;
  static const SBS_SIZEBOXTOPLEFTALIGN = 0x00000002;
  static const SBS_SIZEBOXBOTTOMRIGHTALIGN = 0x00000004;
  static const SBS_SIZEBOX = 0x00000008;
  static const SBS_SIZEGRIP = 0x00000010;
}

/// {@category Enum}
class STATIC_CONTROL_STYLE {
  static const SS_LEFT = 0x00000000;
  static const SS_CENTER = 0x00000001;
  static const SS_RIGHT = 0x00000002;
  static const SS_ICON = 0x00000003;
  static const SS_BLACKRECT = 0x00000004;
  static const SS_GRAYRECT = 0x00000005;
  static const SS_WHITERECT = 0x00000006;
  static const SS_BLACKFRAME = 0x00000007;
  static const SS_GRAYFRAME = 0x00000008;
  static const SS_WHITEFRAME = 0x00000009;
  static const SS_USERITEM = 0x0000000a;
  static const SS_SIMPLE = 0x0000000b;
  static const SS_LEFTNOWORDWRAP = 0x0000000c;
  static const SS_OWNERDRAW = 0x0000000d;
  static const SS_BITMAP = 0x0000000e;
  static const SS_ENHMETAFILE = 0x0000000f;
  static const SS_ETCHEDHORZ = 0x00000010;
  static const SS_ETCHEDVERT = 0x00000011;
  static const SS_ETCHEDFRAME = 0x00000012;
  static const SS_TYPEMASK = 0x0000001f;
  static const SS_REALSIZECONTROL = 0x00000040;
  static const SS_NOPREFIX = 0x00000080;
  static const SS_NOTIFY = 0x00000100;
  static const SS_CENTERIMAGE = 0x00000200;
  static const SS_RIGHTJUST = 0x00000400;
  static const SS_REALSIZEIMAGE = 0x00000800;
  static const SS_SUNKEN = 0x00001000;
  static const SS_EDITCONTROL = 0x00002000;
  static const SS_ENDELLIPSIS = 0x00004000;
  static const SS_PATHELLIPSIS = 0x00008000;
  static const SS_WORDELLIPSIS = 0x0000c000;
  static const SS_ELLIPSISMASK = 0x0000c000;
}

/// {@category Enum}
class PFM_FLAGS {
  static const IGP_GETIMEVERSION = 0xfffffffc;
}

/// {@category Enum}
class SECTION_FLAGS {
  static const SECTION_ALL_ACCESS = 0x000f001f;
  static const SECTION_QUERY = 0x00000001;
  static const SECTION_MAP_WRITE = 0x00000002;
  static const SECTION_MAP_READ = 0x00000004;
  static const SECTION_MAP_EXECUTE = 0x00000008;
  static const SECTION_EXTEND_SIZE = 0x00000010;
  static const SECTION_MAP_EXECUTE_EXPLICIT = 0x00000020;
}

/// {@category Enum}
class FILE_MAP {
  static const FILE_MAP_WRITE = 0x00000002;
  static const FILE_MAP_READ = 0x00000004;
  static const FILE_MAP_ALL_ACCESS = 0x000f001f;
  static const FILE_MAP_EXECUTE = 0x00000020;
  static const FILE_MAP_COPY = 0x00000001;
  static const FILE_MAP_RESERVE = 0x80000000;
  static const FILE_MAP_TARGETS_INVALID = 0x40000000;
  static const FILE_MAP_LARGE_PAGES = 0x20000000;
}

/// {@category Enum}
class THREAD_PRIORITY {
  static const THREAD_MODE_BACKGROUND_BEGIN = 0x00010000;
  static const THREAD_MODE_BACKGROUND_END = 0x00020000;
  static const THREAD_PRIORITY_ABOVE_NORMAL = 0x00000001;
  static const THREAD_PRIORITY_HIGHEST = 0x00000002;
  static const THREAD_PRIORITY_NORMAL = 0x00000000;
  static const THREAD_PRIORITY_TIME_CRITICAL = 0x0000000f;
}

/// {@category Enum}
class GPT_ATTRIBUTES {
  static const GPT_ATTRIBUTE_PLATFORM_REQUIRED = 0x00000001;
  static const GPT_BASIC_DATA_ATTRIBUTE_NO_DRIVE_LETTER = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_HIDDEN = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_SHADOW_COPY = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_READ_ONLY = 0x00000000;
}

/// {@category Enum}
class Uri_CREATE_FLAGS {
  static const Uri_CREATE_ALLOW_RELATIVE = 0x00000001;
  static const Uri_CREATE_ALLOW_IMPLICIT_WILDCARD_SCHEME = 0x00000002;
  static const Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME = 0x00000004;
  static const Uri_CREATE_NOFRAG = 0x00000008;
  static const Uri_CREATE_NO_CANONICALIZE = 0x00000010;
  static const Uri_CREATE_CANONICALIZE = 0x00000100;
  static const Uri_CREATE_FILE_USE_DOS_PATH = 0x00000020;
  static const Uri_CREATE_DECODE_EXTRA_INFO = 0x00000040;
  static const Uri_CREATE_NO_DECODE_EXTRA_INFO = 0x00000080;
  static const Uri_CREATE_CRACK_UNKNOWN_SCHEMES = 0x00000200;
  static const Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES = 0x00000400;
  static const Uri_CREATE_PRE_PROCESS_HTML_URI = 0x00000800;
  static const Uri_CREATE_NO_PRE_PROCESS_HTML_URI = 0x00001000;
  static const Uri_CREATE_IE_SETTINGS = 0x00002000;
  static const Uri_CREATE_NO_IE_SETTINGS = 0x00004000;
  static const Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = 0x00008000;
  static const Uri_CREATE_NORMALIZE_INTL_CHARACTERS = 0x00010000;
  static const Uri_CREATE_CANONICALIZE_ABSOLUTE = 0x00020000;
}

/// {@category Enum}
class GetCommModemStatus_lpModemStatFlags {
  static const MS_CTS_ON = 0x00000010;
  static const MS_DSR_ON = 0x00000020;
  static const MS_RING_ON = 0x00000040;
  static const MS_RLSD_ON = 0x00000080;
}

/// {@category Enum}
class ReportEvent_wType {
  static const EVENTLOG_SUCCESS = 0x00000000;
  static const EVENTLOG_AUDIT_FAILURE = 0x00000010;
  static const EVENTLOG_AUDIT_SUCCESS = 0x00000008;
  static const EVENTLOG_ERROR_TYPE = 0x00000001;
  static const EVENTLOG_INFORMATION_TYPE = 0x00000004;
  static const EVENTLOG_WARNING_TYPE = 0x00000002;
}

/// {@category Enum}
class GetNamedPipeHandleStateA_lpStateFlags {
  static const PIPE_NOWAIT = 0x00000001;
  static const PIPE_READMODE_MESSAGE = 0x00000002;
}

/// {@category Enum}
class RegisterWaitForSingleObject_dwFlags {
  static const WT_EXECUTEDEFAULT = 0x00000000;
  static const WT_EXECUTEINIOTHREAD = 0x00000001;
  static const WT_EXECUTEINPERSISTENTTHREAD = 0x00000080;
  static const WT_EXECUTEINWAITTHREAD = 0x00000004;
  static const WT_EXECUTELONGFUNCTION = 0x00000010;
  static const WT_EXECUTEONLYONCE = 0x00000008;
  static const WT_TRANSFER_IMPERSONATION = 0x00000100;
  static const WT_EXECUTEINTIMERTHREAD = 0x00000020;
}

/// {@category Enum}
class CreateFileMapping_flProtect {
  static const PAGE_EXECUTE_READ = 0x00000020;
  static const PAGE_EXECUTE_READWRITE = 0x00000040;
  static const PAGE_EXECUTE_WRITECOPY = 0x00000080;
  static const PAGE_READONLY = 0x00000002;
  static const PAGE_READWRITE = 0x00000004;
  static const PAGE_WRITECOPY = 0x00000008;
}

/// {@category Enum}
class HeapReAlloc_dwFlags {
  static const HEAP_GENERATE_EXCEPTIONS = 0x00000004;
  static const HEAP_NO_SERIALIZE = 0x00000001;
  static const HEAP_REALLOC_IN_PLACE_ONLY = 0x00000010;
  static const HEAP_ZERO_MEMORY = 0x00000008;
  static const HEAP_CREATE_ENABLE_EXECUTE = 0x00040000;
}

/// {@category Enum}
class WaitNamedPipeA_nTimeOutFlags {
  static const NMPWAIT_USE_DEFAULT_WAIT = 0x00000000;
  static const NMPWAIT_WAIT_FOREVER = 0xffffffff;
}

/// {@category Enum}
class UnmapViewOfFile_UnmapFlags {
  static const MEM_UNMAP_WITH_TRANSIENT_BOOST = 0x00000001;
  static const MEM_PRESERVE_PLACEHOLDER = 0x00000002;
}

/// {@category Enum}
class SERVICE_ERROR {
  static const SERVICE_ERROR_CRITICAL = 0x00000003;
  static const SERVICE_ERROR_IGNORE = 0x00000000;
  static const SERVICE_ERROR_NORMAL = 0x00000001;
  static const SERVICE_ERROR_SEVERE = 0x00000002;
}

/// {@category Enum}
class CREATE_EVENT {
  static const CREATE_EVENT_INITIAL_SET = 0x00000002;
  static const CREATE_EVENT_MANUAL_RESET = 0x00000001;
}

/// {@category Enum}
class ClearCommError_lpErrorsFlags {
  static const CE_BREAK = 0x00000010;
  static const CE_FRAME = 0x00000008;
  static const CE_OVERRUN = 0x00000002;
  static const CE_RXOVER = 0x00000001;
  static const CE_RXPARITY = 0x00000004;
}

/// {@category Enum}
class LoadLibraryEx_dwFlags {
  static const DONT_RESOLVE_DLL_REFERENCES = 0x00000001;
  static const LOAD_IGNORE_CODE_AUTHZ_LEVEL = 0x00000010;
  static const LOAD_LIBRARY_AS_DATAFILE = 0x00000002;
  static const LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 0x00000040;
  static const LOAD_LIBRARY_AS_IMAGE_RESOURCE = 0x00000020;
  static const LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 0x00000200;
  static const LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 0x00001000;
  static const LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 0x00000100;
  static const LOAD_LIBRARY_SEARCH_SYSTEM32 = 0x00000800;
  static const LOAD_LIBRARY_SEARCH_USER_DIRS = 0x00000400;
  static const LOAD_WITH_ALTERED_SEARCH_PATH = 0x00000008;
  static const LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = 0x00000080;
  static const LOAD_LIBRARY_SAFE_CURRENT_DIRS = 0x00002000;
}

/// {@category Enum}
class PurgeComm_dwFlags {
  static const PURGE_RXABORT = 0x00000002;
  static const PURGE_RXCLEAR = 0x00000008;
  static const PURGE_TXABORT = 0x00000001;
  static const PURGE_TXCLEAR = 0x00000004;
}

/// {@category Enum}
class SetPriorityClass_dwPriorityClassFlags {
  static const ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000;
  static const BELOW_NORMAL_PRIORITY_CLASS = 0x00004000;
  static const HIGH_PRIORITY_CLASS = 0x00000080;
  static const IDLE_PRIORITY_CLASS = 0x00000040;
  static const NORMAL_PRIORITY_CLASS = 0x00000020;
  static const PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000;
  static const PROCESS_MODE_BACKGROUND_END = 0x00200000;
  static const REALTIME_PRIORITY_CLASS = 0x00000100;
}

/// {@category Enum}
class VirtualFree_dwFreeType {
  static const MEM_DECOMMIT = 0x00004000;
  static const MEM_RELEASE = 0x00008000;
}

/// {@category Enum}
class CreateProcessWith_dwLogonFlags {
  static const LOGON_WITH_PROFILE = 0x00000001;
  static const LOGON_NETCREDENTIALS_ONLY = 0x00000002;
}

/// {@category Enum}
class GetTapePosition_dwPositionType {
  static const TAPE_ABSOLUTE_POSITION = 0x00000000;
  static const TAPE_LOGICAL_POSITION = 0x00000001;
}

/// {@category Enum}
class CreateTapePartition_dwPartitionMethodFlags {
  static const TAPE_FIXED_PARTITIONS = 0x00000000;
  static const TAPE_INITIATOR_PARTITIONS = 0x00000002;
  static const TAPE_SELECT_PARTITIONS = 0x00000001;
}

/// {@category Enum}
class MsgWaitForMultipleObjectsEx_dwFlags {
  static const MWMO_ALERTABLE = 0x00000002;
  static const MWMO_INPUTAVAILABLE = 0x00000004;
  static const MWMO_WAITALL = 0x00000001;
}

/// {@category Enum}
class PowerDeterminePlatformRoleEx_VersionFlags {
  static const POWER_PLATFORM_ROLE_VERSION = 0x00000002;
  static const POWER_PLATFORM_ROLE_V1 = 0x00000001;
  static const POWER_PLATFORM_ROLE_V2 = 0x00000002;
}

/// {@category Enum}
class PowerSettingRegisterNotification_Flags {
  static const DEVICE_NOTIFY_SERVICE_HANDLE = 0x00000001;
  static const DEVICE_NOTIFY_CALLBACK = 0x00000002;
  static const DEVICE_NOTIFY_WINDOW_HANDLE = 0x00000000;
}

/// {@category Enum}
class VirtualAlloc_flAllocationType {
  static const MEM_COMMIT = 0x00001000;
  static const MEM_RESERVE = 0x00002000;
  static const MEM_RESET = 0x00080000;
  static const MEM_RESET_UNDO = 0x01000000;
  static const MEM_REPLACE_PLACEHOLDER = 0x00004000;
  static const MEM_LARGE_PAGES = 0x20000000;
  static const MEM_RESERVE_PLACEHOLDER = 0x00040000;
  static const MEM_FREE = 0x00010000;
}

/// {@category Enum}
class GetCommMask_lpEvtMaskFlags {
  static const EV_BREAK = 0x00000040;
  static const EV_CTS = 0x00000008;
  static const EV_DSR = 0x00000010;
  static const EV_ERR = 0x00000080;
  static const EV_EVENT1 = 0x00000800;
  static const EV_EVENT2 = 0x00001000;
  static const EV_PERR = 0x00000200;
  static const EV_RING = 0x00000100;
  static const EV_RLSD = 0x00000020;
  static const EV_RX80FULL = 0x00000400;
  static const EV_RXCHAR = 0x00000001;
  static const EV_RXFLAG = 0x00000002;
  static const EV_TXEMPTY = 0x00000004;
}

/// {@category Enum}
class WriteTapemark_dwTapemarkType {
  static const TAPE_FILEMARKS = 0x00000001;
  static const TAPE_LONG_FILEMARKS = 0x00000003;
  static const TAPE_SETMARKS = 0x00000000;
  static const TAPE_SHORT_FILEMARKS = 0x00000002;
}

/// {@category Enum}
class CreateServiceW_dwStartType {
  static const SERVICE_AUTO_START = 0x00000002;
  static const SERVICE_BOOT_START = 0x00000000;
  static const SERVICE_DEMAND_START = 0x00000003;
  static const SERVICE_DISABLED = 0x00000004;
  static const SERVICE_SYSTEM_START = 0x00000001;
}

/// {@category Enum}
class SetTapePosition_dwPositionMethod {
  static const TAPE_ABSOLUTE_BLOCK = 0x00000001;
  static const TAPE_LOGICAL_BLOCK = 0x00000002;
  static const TAPE_REWIND = 0x00000000;
  static const TAPE_SPACE_END_OF_DATA = 0x00000004;
  static const TAPE_SPACE_FILEMARKS = 0x00000006;
  static const TAPE_SPACE_RELATIVE_BLOCKS = 0x00000005;
  static const TAPE_SPACE_SEQUENTIAL_FMKS = 0x00000007;
  static const TAPE_SPACE_SEQUENTIAL_SMKS = 0x00000009;
  static const TAPE_SPACE_SETMARKS = 0x00000008;
}

/// {@category Enum}
class PreFetchCacheLine_lFlags {
  static const PF_TEMPORAL_LEVEL_1 = 0x00000001;
  static const PF_NON_TEMPORAL_LEVEL_ALL = 0x00000000;
}

/// {@category Enum}
class QueryInformationJobObject_JobObjectInformationClassFlags {
  static const JobObjectBasicAccountingInformation = 0x00000001;
  static const JobObjectBasicAndIoAccountingInformation = 0x00000008;
  static const JobObjectBasicLimitInformation = 0x00000002;
  static const JobObjectBasicProcessIdList = 0x00000003;
  static const JobObjectBasicUIRestrictions = 0x00000004;
  static const JobObjectCpuRateControlInformation = 0x0000000f;
  static const JobObjectEndOfJobTimeInformation = 0x00000006;
  static const JobObjectExtendedLimitInformation = 0x00000009;
  static const JobObjectGroupInformation = 0x0000000b;
  static const JobObjectGroupInformationEx = 0x0000000e;
  static const JobObjectLimitViolationInformation = 0x0000000d;
  static const JobObjectLimitViolationInformation2 = 0x00000022;
  static const JobObjectNetRateControlInformation = 0x00000020;
  static const JobObjectNotificationLimitInformation = 0x0000000c;
  static const JobObjectNotificationLimitInformation2 = 0x00000021;
  static const JobObjectSecurityLimitInformation = 0x00000005;
  static const JobObjectAssociateCompletionPortInformation = 0x00000007;
}

/// {@category Enum}
class QueryProcessAffinityUpdateMode_lpdwFlags {
  static const PROCESS_AFFINITY_ENABLE_AUTO_UPDATE = 0x00000001;
}

/// {@category Enum}
class GetNamedPipeInfo_lpFlags {
  static const PIPE_CLIENT_END = 0x00000000;
  static const PIPE_SERVER_END = 0x00000001;
  static const PIPE_TYPE_BYTE = 0x00000000;
  static const PIPE_TYPE_MESSAGE = 0x00000004;
}

/// {@category Enum}
class SetTapeParameters_dwOperationFlags {
  static const SET_TAPE_DRIVE_INFORMATION = 0x00000001;
  static const SET_TAPE_MEDIA_INFORMATION = 0x00000000;
}

/// {@category Enum}
class SetProcessDEPPolicy_dwFlags {
  static const PROCESS_DEP_ENABLE = 0x00000001;
  static const PROCESS_DEP_DISABLE_ATL_THUNK_EMULATION = 0x00000002;
}

/// {@category Enum}
class CreateHatchBrush_iHatchFlags {
  static const HS_BDIAGONAL = 0x00000003;
  static const HS_CROSS = 0x00000004;
  static const HS_DIAGCROSS = 0x00000005;
  static const HS_FDIAGONAL = 0x00000002;
  static const HS_HORIZONTAL = 0x00000000;
  static const HS_VERTICAL = 0x00000001;
}

/// {@category Enum}
class QueryFullProcessImageName_dwFlags {
  static const PROCESS_NAME_NATIVE = 0x00000001;
}

/// {@category Enum}
class SetThreadExecutionState_esFlags {
  static const ES_AWAYMODE_REQUIRED = 0x00000040;
  static const ES_CONTINUOUS = 0x80000000;
  static const ES_DISPLAY_REQUIRED = 0x00000002;
  static const ES_SYSTEM_REQUIRED = 0x00000001;
  static const ES_USER_PRESENT = 0x00000004;
}

/// {@category Enum}
class EscapeCommFunction_dwFuncFlags {
  static const CLRBREAK = 0x00000009;
  static const CLRDTR = 0x00000006;
  static const CLRRTS = 0x00000004;
  static const SETBREAK = 0x00000008;
  static const SETDTR = 0x00000005;
  static const SETRTS = 0x00000003;
  static const SETXOFF = 0x00000001;
  static const SETXON = 0x00000002;
}

/// {@category Enum}
class OfferVirtualMemory_PriorityFlags {
  static const VMOfferPriorityVeryLow = 0x00001000;
  static const VMOfferPriorityLow = 0x00002000;
  static const VMOfferPriorityBelowNormal = 0x00002000;
  static const VMOfferPriorityNormal = 0x00002000;
}

/// {@category Enum}
class ReadEventLog_dwReadFlags {
  static const EVENTLOG_SEEK_READ = 0x00000002;
  static const EVENTLOG_SEQUENTIAL_READ = 0x00000001;
}

/// {@category Enum}
class LocalAlloc_uFlags {
  static const LHND = 0x00000042;
  static const LMEM_FIXED = 0x00000000;
  static const LMEM_MOVEABLE = 0x00000002;
  static const LMEM_ZEROINIT = 0x00000040;
  static const LPTR = 0x00000040;
  static const NONZEROLHND = 0x00000002;
  static const NONZEROLPTR = 0x00000000;
}

/// {@category Enum}
class HeapSetInformation_HeapInformationClassFlags {
  static const HeapCompatibilityInformation = 0x00000000;
  static const HeapEnableTerminationOnCorruption = 0x00000001;
  static const HeapOptimizeResources = 0x00000003;
}

/// {@category Enum}
class ExitWindowsEx_uFlags {
  static const EWX_HYBRID_SHUTDOWN = 0x00400000;
  static const EWX_LOGOFF = 0x00000000;
  static const EWX_POWEROFF = 0x00000008;
  static const EWX_REBOOT = 0x00000002;
  static const EWX_RESTARTAPPS = 0x00000040;
  static const EWX_SHUTDOWN = 0x00000001;
}

/// {@category Enum}
class NtQueryInformationProcess_ProcessInformationClassFlags {
  static const ProcessBasicInformation = 0x00000000;
  static const ProcessDebugPort = 0x00000007;
  static const ProcessWow64Information = 0x0000001a;
  static const ProcessImageFileName = 0x0000001b;
  static const ProcessBreakOnTermination = 0x0000001d;
  static const ProcessSubsystemInformation = 0x0000004b;
}

/// {@category Enum}
class PrepareTape_dwOperationFlags {
  static const TAPE_FORMAT = 0x00000005;
  static const TAPE_LOAD = 0x00000000;
  static const TAPE_LOCK = 0x00000003;
  static const TAPE_TENSION = 0x00000002;
  static const TAPE_UNLOAD = 0x00000001;
  static const TAPE_UNLOCK = 0x00000004;
}

/// {@category Enum}
class IImageList_GetItemFlagsFlags {
  static const ILIF_ALPHA = 0x00000001;
  static const ILIF_LOWQUALITY = 0x00000002;
}

/// {@category Enum}
class GlobalAlloc_uFlags {
  static const GHND = 0x00000042;
  static const GMEM_FIXED = 0x00000000;
  static const GMEM_MOVEABLE = 0x00000002;
  static const GMEM_ZEROINIT = 0x00000040;
  static const GPTR = 0x00000040;
}

/// {@category Enum}
class GetTapeParameters_dwOperationFlags {
  static const GET_TAPE_DRIVE_INFORMATION = 0x00000001;
  static const GET_TAPE_MEDIA_INFORMATION = 0x00000000;
}

/// {@category Enum}
class EraseTape_dwEraseType {
  static const TAPE_ERASE_LONG = 0x00000001;
  static const TAPE_ERASE_SHORT = 0x00000000;
}

/// {@category Enum}
class GetGuiResources_uiFlags {
  static const GR_GDIOBJECTS = 0x00000000;
  static const GR_GDIOBJECTS_PEAK = 0x00000002;
  static const GR_USEROBJECTS = 0x00000001;
  static const GR_USEROBJECTS_PEAK = 0x00000004;
}

/// {@category Enum}
class MODEMDEVCAPS_dwDialOptionsFlags {
  static const DIALOPTION_BILLING = 0x00000040;
  static const DIALOPTION_DIALTONE = 0x00000100;
  static const DIALOPTION_QUIET = 0x00000080;
}

/// {@category Enum}
class JOBOBJECT_CPU_RATE_CONTROL_INFORMATIONFlags {
  static const JOB_OBJECT_CPU_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_CPU_RATE_CONTROL_WEIGHT_BASED = 0x00000002;
  static const JOB_OBJECT_CPU_RATE_CONTROL_HARD_CAP = 0x00000004;
  static const JOB_OBJECT_CPU_RATE_CONTROL_NOTIFY = 0x00000008;
  static const JOB_OBJECT__CPU_RATE_CONTROL_MIN_MAX_RATE = 0x00000010;
}

/// {@category Enum}
class VDS_NF_PACK {
  static const VDS_NF_PACK_ARRIVE = 0x00000001;
  static const VDS_NF_PACK_DEPART = 0x00000002;
  static const VDS_NF_PACK_MODIFY = 0x00000003;
}

/// {@category Enum}
class VDS_NF_FILE_SYSTEM {
  static const VDS_NF_FILE_SYSTEM_MODIFY = 0x000000cb;
  static const VDS_NF_FILE_SYSTEM_FORMAT_PROGRESS = 0x000000cc;
}

/// {@category Enum}
class GET_CHANGER_PARAMETERS_LockUnlockCapabilitiesFlags {
  static const LOCK_UNLOCK_DOOR = 0x00000002;
  static const LOCK_UNLOCK_IEPORT = 0x00000001;
  static const LOCK_UNLOCK_KEYPAD = 0x00000004;
}

/// {@category Enum}
class MODEMSETTINGS_dwSpeakerModeFlags {
  static const MDMSPKR_CALLSETUP = 0x00000008;
  static const MDMSPKR_DIAL = 0x00000002;
  static const MDMSPKR_OFF = 0x00000001;
  static const MDMSPKR_ON = 0x00000004;
}

/// {@category Enum}
class JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2_IoRateControlToleranceInterval {
  static const ToleranceIntervalShort = 0x00000001;
  static const ToleranceIntervalMedium = 0x00000002;
  static const ToleranceIntervalLong = 0x00000003;
}

/// {@category Enum}
class DCB_fDtrControlFlags {
  static const DTR_CONTROL_DISABLE = 0x00000000;
  static const DTR_CONTROL_ENABLE = 0x00000001;
  static const DTR_CONTROL_HANDSHAKE = 0x00000002;
}

/// {@category Enum}
class VDS_NF_CONTROLLER {
  static const VDS_NF_CONTROLLER_ARRIVE = 0x00000067;
  static const VDS_NF_CONTROLLER_DEPART = 0x00000068;
  static const VDS_NF_CONTROLLER_MODIFY = 0x0000015e;
  static const VDS_NF_CONTROLLER_REMOVED = 0x0000015f;
}

/// {@category Enum}
class GET_CHANGER_PARAMETERS_Features0Flags {
  static const CHANGER_BAR_CODE_SCANNER_INSTALLED = 0x00000001;
  static const CHANGER_CARTRIDGE_MAGAZINE = 0x00000100;
  static const CHANGER_CLEANER_ACCESS_NOT_VALID = 0x00040000;
  static const CHANGER_CLEANER_SLOT = 0x00000040;
  static const CHANGER_CLOSE_IEPORT = 0x00000004;
  static const CHANGER_DEVICE_REINITIALIZE_CAPABLE = 0x08000000;
  static const CHANGER_DRIVE_CLEANING_REQUIRED = 0x00010000;
  static const CHANGER_DRIVE_EMPTY_ON_DOOR_ACCESS = 0x20000000;
  static const CHANGER_EXCHANGE_MEDIA = 0x00000020;
  static const CHANGER_INIT_ELEM_STAT_WITH_RANGE = 0x00000002;
  static const CHANGER_KEYPAD_ENABLE_DISABLE = 0x10000000;
  static const CHANGER_LOCK_UNLOCK = 0x00000080;
  static const CHANGER_MEDIUM_FLIP = 0x00000200;
  static const CHANGER_OPEN_IEPORT = 0x00000008;
  static const CHANGER_POSITION_TO_ELEMENT = 0x00000400;
  static const CHANGER_PREDISMOUNT_EJECT_REQUIRED = 0x00020000;
  static const CHANGER_PREMOUNT_EJECT_REQUIRED = 0x00080000;
  static const CHANGER_REPORT_IEPORT_STATE = 0x00000800;
  static const CHANGER_SERIAL_NUMBER_VALID = 0x04000000;
  static const CHANGER_STATUS_NON_VOLATILE = 0x00000010;
  static const CHANGER_STORAGE_DRIVE = 0x00001000;
  static const CHANGER_STORAGE_IEPORT = 0x00002000;
  static const CHANGER_STORAGE_SLOT = 0x00004000;
  static const CHANGER_STORAGE_TRANSPORT = 0x00008000;
  static const CHANGER_VOLUME_ASSERT = 0x00400000;
  static const CHANGER_VOLUME_IDENTIFICATION = 0x00100000;
  static const CHANGER_VOLUME_REPLACE = 0x00800000;
  static const CHANGER_VOLUME_SEARCH = 0x00200000;
  static const CHANGER_VOLUME_UNDEFINE = 0x01000000;
}

/// {@category Enum}
class JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2_RateControlTolerance {
  static const ToleranceLow = 0x00000001;
  static const ToleranceMedium = 0x00000002;
  static const ToleranceHigh = 0x00000003;
}

/// {@category Enum}
class VDS_NF_DRIVE {
  static const VDS_NF_DRIVE_ARRIVE = 0x00000069;
  static const VDS_NF_DRIVE_DEPART = 0x0000006a;
  static const VDS_NF_DRIVE_MODIFY = 0x0000006b;
  static const VDS_NF_DRIVE_REMOVED = 0x00000162;
}

/// {@category Enum}
class VDS_NF_PORT {
  static const VDS_NF_PORT_ARRIVE = 0x00000079;
  static const VDS_NF_PORT_DEPART = 0x0000007a;
  static const VDS_NF_PORT_MODIFY = 0x00000160;
  static const VDS_NF_PORT_REMOVED = 0x00000161;
}

/// {@category Enum}
class tttoolinfoa_uFlags {
  static const TTF_ABSOLUTE = 0x00000080;
  static const TTF_CENTERTIP = 0x00000002;
  static const TTF_IDISHWND = 0x00000001;
  static const TTF_PARSELINKS = 0x00001000;
  static const TTF_RTLREADING = 0x00000004;
  static const TTF_SUBCLASS = 0x00000010;
  static const TTF_TRACK = 0x00000020;
  static const TTF_TRANSPARENT = 0x00000100;
}

/// {@category Enum}
class JOBOBJECT_END_OF_JOB_TIME_INFORMATION_EndOfJobTimeActionFlags {
  static const JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0x00000000;
  static const JOB_OBJECT_POST_AT_END_OF_JOB = 0x00000001;
}

/// {@category Enum}
class COMMPROP_wSettableStopParityFlags {
  static const STOPBITS_10 = 0x00000001;
  static const STOPBITS_15 = 0x00000002;
  static const STOPBITS_20 = 0x00000004;
  static const PARITY_NONE = 0x00000100;
  static const PARITY_ODD = 0x00000200;
  static const PARITY_EVEN = 0x00000400;
  static const PARITY_MARK = 0x00000800;
  static const PARITY_SPACE = 0x00001000;
}

/// {@category Enum}
class MODEMSETTINGS_dwSpeakerVolumeFlags {
  static const MDMVOL_HIGH = 0x00000002;
  static const MDMVOL_LOW = 0x00000000;
  static const MDMVOL_MEDIUM = 0x00000001;
}

/// {@category Enum}
class MODEMDEVCAPS_dwSpeakerVolumeFlags {
  static const MDMVOLFLAG_HIGH = 0x00000004;
  static const MDMVOLFLAG_LOW = 0x00000001;
  static const MDMVOLFLAG_MEDIUM = 0x00000002;
}

/// {@category Enum}
class MODEMDEVCAPS_dwSpeakerModeFlags {
  static const MDMSPKRFLAG_CALLSETUP = 0x00000008;
  static const MDMSPKRFLAG_DIAL = 0x00000002;
  static const MDMSPKRFLAG_OFF = 0x00000001;
  static const MDMSPKRFLAG_ON = 0x00000004;
}

/// {@category Enum}
class DCB_StopBitsFlags {
  static const ONESTOPBIT = 0x00000000;
  static const ONE5STOPBITS = 0x00000001;
  static const TWOSTOPBITS = 0x00000002;
}

/// {@category Enum}
class CHANGER_ELEMENT_STATUSFlags {
  static const ELEMENT_STATUS_ACCESS = 0x00000008;
  static const ELEMENT_STATUS_AVOLTAG = 0x20000000;
  static const ELEMENT_STATUS_EXCEPT = 0x00000004;
  static const ELEMENT_STATUS_EXENAB = 0x00000010;
  static const ELEMENT_STATUS_FULL = 0x00000001;
  static const ELEMENT_STATUS_ID_VALID = 0x00002000;
  static const ELEMENT_STATUS_IMPEXP = 0x00000002;
  static const ELEMENT_STATUS_INENAB = 0x00000020;
  static const ELEMENT_STATUS_INVERT = 0x00400000;
  static const ELEMENT_STATUS_LUN_VALID = 0x00001000;
  static const ELEMENT_STATUS_NOT_BUS = 0x00008000;
  static const ELEMENT_STATUS_PVOLTAG = 0x10000000;
  static const ELEMENT_STATUS_SVALID = 0x00800000;
  static const ELEMENT_STATUS_PRODUCT_DATA = 0x00000040;
}

/// {@category Enum}
class STARTUPINFOW_dwFlags {
  static const STARTF_FORCEONFEEDBACK = 0x00000040;
  static const STARTF_FORCEOFFFEEDBACK = 0x00000080;
  static const STARTF_PREVENTPINNING = 0x00002000;
  static const STARTF_RUNFULLSCREEN = 0x00000020;
  static const STARTF_TITLEISAPPID = 0x00001000;
  static const STARTF_TITLEISLINKNAME = 0x00000800;
  static const STARTF_UNTRUSTEDSOURCE = 0x00008000;
  static const STARTF_USECOUNTCHARS = 0x00000008;
  static const STARTF_USEFILLATTRIBUTE = 0x00000010;
  static const STARTF_USEHOTKEY = 0x00000200;
  static const STARTF_USEPOSITION = 0x00000004;
  static const STARTF_USESHOWWINDOW = 0x00000001;
  static const STARTF_USESIZE = 0x00000002;
  static const STARTF_USESTDHANDLES = 0x00000100;
}

/// {@category Enum}
class TAPE_GET_DRIVE_PARAMETERS_FeaturesHighFlags {
  static const TAPE_DRIVE_ABS_BLK_IMMED = 0x80002000;
  static const TAPE_DRIVE_ABSOLUTE_BLK = 0x80001000;
  static const TAPE_DRIVE_END_OF_DATA = 0x80010000;
  static const TAPE_DRIVE_FILEMARKS = 0x80040000;
  static const TAPE_DRIVE_LOAD_UNLOAD = 0x80000001;
  static const TAPE_DRIVE_LOAD_UNLD_IMMED = 0x80000020;
  static const TAPE_DRIVE_LOCK_UNLOCK = 0x80000004;
  static const TAPE_DRIVE_LOCK_UNLK_IMMED = 0x80000080;
  static const TAPE_DRIVE_LOG_BLK_IMMED = 0x80008000;
  static const TAPE_DRIVE_LOGICAL_BLK = 0x80004000;
  static const TAPE_DRIVE_RELATIVE_BLKS = 0x80020000;
  static const TAPE_DRIVE_REVERSE_POSITION = 0x80400000;
  static const TAPE_DRIVE_REWIND_IMMEDIATE = 0x80000008;
  static const TAPE_DRIVE_SEQUENTIAL_FMKS = 0x80080000;
  static const TAPE_DRIVE_SEQUENTIAL_SMKS = 0x80200000;
  static const TAPE_DRIVE_SET_BLOCK_SIZE = 0x80000010;
  static const TAPE_DRIVE_SET_COMPRESSION = 0x80000200;
  static const TAPE_DRIVE_SET_ECC = 0x80000100;
  static const TAPE_DRIVE_SET_PADDING = 0x80000400;
  static const TAPE_DRIVE_SET_REPORT_SMKS = 0x80000800;
  static const TAPE_DRIVE_SETMARKS = 0x80100000;
  static const TAPE_DRIVE_SPACE_IMMEDIATE = 0x80800000;
  static const TAPE_DRIVE_TENSION = 0x80000002;
  static const TAPE_DRIVE_TENSION_IMMED = 0x80000040;
  static const TAPE_DRIVE_WRITE_FILEMARKS = 0x82000000;
  static const TAPE_DRIVE_WRITE_LONG_FMKS = 0x88000000;
  static const TAPE_DRIVE_WRITE_MARK_IMMED = 0x90000000;
  static const TAPE_DRIVE_WRITE_SETMARKS = 0x81000000;
  static const TAPE_DRIVE_WRITE_SHORT_FMKS = 0x84000000;
}

/// {@category Enum}
class MEMORY_PRIORITY_INFORMATION_MemoryPriorityFlags {
  static const MEMORY_PRIORITY_VERY_LOW = 0x00000001;
  static const MEMORY_PRIORITY_LOW = 0x00000002;
  static const MEMORY_PRIORITY_MEDIUM = 0x00000003;
  static const MEMORY_PRIORITY_BELOW_NORMAL = 0x00000004;
  static const MEMORY_PRIORITY_NORMAL = 0x00000005;
}

/// {@category Enum}
class VDS_NF_LUN {
  static const VDS_NF_LUN_ARRIVE = 0x0000006c;
  static const VDS_NF_LUN_DEPART = 0x0000006d;
  static const VDS_NF_LUN_MODIFY = 0x0000006e;
}

/// {@category Enum}
class WIN32_STREAM_ID_dwStreamIdFlags {
  static const BACKUP_ALTERNATE_DATA = 0x00000004;
  static const BACKUP_DATA = 0x00000001;
  static const BACKUP_EA_DATA = 0x00000002;
  static const BACKUP_LINK = 0x00000005;
  static const BACKUP_OBJECT_ID = 0x00000007;
  static const BACKUP_PROPERTY_DATA = 0x00000006;
  static const BACKUP_REPARSE_DATA = 0x00000008;
  static const BACKUP_SECURITY_DATA = 0x00000003;
  static const BACKUP_SPARSE_BLOCK = 0x00000009;
  static const BACKUP_TXFS_DATA = 0x0000000a;
}

/// {@category Enum}
class PROCESS_PROTECTION_LEVEL_INFORMATION_ProtectionLevelFlags {
  static const PROTECTION_LEVEL_WINTCB_LIGHT = 0x00000000;
  static const PROTECTION_LEVEL_WINDOWS = 0x00000001;
  static const PROTECTION_LEVEL_WINDOWS_LIGHT = 0x00000002;
  static const PROTECTION_LEVEL_ANTIMALWARE_LIGHT = 0x00000003;
  static const PROTECTION_LEVEL_LSA_LIGHT = 0x00000004;
  static const PROTECTION_LEVEL_WINTCB = 0x00000005;
  static const PROTECTION_LEVEL_CODEGEN_LIGHT = 0x00000006;
  static const PROTECTION_LEVEL_AUTHENTICODE = 0x00000007;
  static const PROTECTION_LEVEL_PPL_APP = 0x00000008;
  static const PROTECTION_LEVEL_NONE = 0xfffffffe;
}

/// {@category Enum}
class DEV_BROADCAST_HDR_dbch_devicetypeFlags {
  static const DBT_DEVTYP_DEVICEINTERFACE = 0x00000005;
  static const DBT_DEVTYP_HANDLE = 0x00000006;
  static const DBT_DEVTYP_OEM = 0x00000000;
  static const DBT_DEVTYP_PORT = 0x00000003;
  static const DBT_DEVTYP_VOLUME = 0x00000002;
}

/// {@category Enum}
class GET_CHANGER_PARAMETERS_Features1Flags {
  static const CHANGER_CLEANER_AUTODISMOUNT = 0x80000004;
  static const CHANGER_CLEANER_OPS_NOT_SUPPORTED = 0x80000040;
  static const CHANGER_IEPORT_USER_CONTROL_CLOSE = 0x80000100;
  static const CHANGER_IEPORT_USER_CONTROL_OPEN = 0x80000080;
  static const CHANGER_MOVE_EXTENDS_IEPORT = 0x80000200;
  static const CHANGER_MOVE_RETRACTS_IEPORT = 0x80000400;
  static const CHANGER_PREDISMOUNT_ALIGN_TO_DRIVE = 0x80000002;
  static const CHANGER_PREDISMOUNT_ALIGN_TO_SLOT = 0x80000001;
  static const CHANGER_RTN_MEDIA_TO_ORIGINAL_ADDR = 0x80000020;
  static const CHANGER_SLOTS_USE_TRAYS = 0x80000010;
  static const CHANGER_TRUE_EXCHANGE_CAPABLE = 0x80000008;
}

/// {@category Enum}
class POWER_ACTION_POLICY_EventCodeFlags {
  static const POWER_FORCE_TRIGGER_RESET = 0x80000000;
  static const POWER_LEVEL_USER_NOTIFY_EXEC = 0x00000004;
  static const POWER_LEVEL_USER_NOTIFY_SOUND = 0x00000002;
  static const POWER_LEVEL_USER_NOTIFY_TEXT = 0x00000001;
  static const POWER_USER_NOTIFY_BUTTON = 0x00000008;
  static const POWER_USER_NOTIFY_SHUTDOWN = 0x00000010;
}

/// {@category Enum}
class VDS_NF_DISK {
  static const VDS_NF_DISK_ARRIVE = 0x00000008;
  static const VDS_NF_DISK_DEPART = 0x00000009;
  static const VDS_NF_DISK_MODIFY = 0x0000000a;
}

/// {@category Enum}
class DCB_fRtsControlFlags {
  static const RTS_CONTROL_DISABLE = 0x00000000;
  static const RTS_CONTROL_ENABLE = 0x00000001;
  static const RTS_CONTROL_HANDSHAKE = 0x00000002;
  static const RTS_CONTROL_TOGGLE = 0x00000003;
}

/// {@category Enum}
class DEV_BROADCAST_VOLUMEFlags {
  static const DBTF_MEDIA = 0x00000001;
  static const DBTF_NET = 0x00000002;
}

/// {@category Enum}
class cert_viewproperties_struct_a_dwFlags {
  static const CM_ENABLEHOOK = 0x00000001;
  static const CM_SHOW_HELP = 0x00000002;
  static const CM_SHOW_HELPICON = 0x00000004;
  static const CM_ENABLETEMPLATE = 0x00000008;
  static const CM_HIDE_ADVANCEPAGE = 0x00000010;
  static const CM_HIDE_TRUSTPAGE = 0x00000020;
  static const CM_NO_NAMECHANGE = 0x00000040;
  static const CM_NO_EDITTRUST = 0x00000080;
  static const CM_HIDE_DETAILPAGE = 0x00000100;
  static const CM_ADD_CERT_STORES = 0x00000200;
}

/// {@category Enum}
class JOBOBJECT_IO_RATE_CONTROL_INFORMATIONFlags {
  static const JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 0x00000001;
}

/// {@category Enum}
class REASON_CONTEXTFlags {
  static const POWER_REQUEST_CONTEXT_DETAILED_STRING = 0x00000002;
  static const POWER_REQUEST_CONTEXT_SIMPLE_STRING = 0x00000001;
}

/// {@category Enum}
class DCB_ParityFlags {
  static const EVENPARITY = 0x00000002;
  static const MARKPARITY = 0x00000003;
  static const NOPARITY = 0x00000000;
  static const ODDPARITY = 0x00000001;
  static const SPACEPARITY = 0x00000004;
}

/// {@category Enum}
class MEMORY_RESOURCE_NOTIFICATION_TYPE {
  static const LowMemoryResourceNotification = 0x00000000;
  static const HighMemoryResourceNotification = 0x00000001;
}

/// {@category Enum}
class OFFER_PRIORITY {
  static const VmOfferPriorityVeryLow = 0x00000001;
  static const VmOfferPriorityLow = 0x00000002;
  static const VmOfferPriorityBelowNormal = 0x00000003;
  static const VmOfferPriorityNormal = 0x00000004;
}

/// {@category Enum}
class WIN32_MEMORY_INFORMATION_CLASS {
  static const MemoryRegionInfo = 0x00000000;
}

/// {@category Enum}
class STORAGE_MEDIA_TYPE {
  static const DDS_4mm = 0x00000020;
  static const MiniQic = 0x00000021;
  static const Travan = 0x00000022;
  static const QIC = 0x00000023;
  static const MP_8mm = 0x00000024;
  static const AME_8mm = 0x00000025;
  static const AIT1_8mm = 0x00000026;
  static const DLT = 0x00000027;
  static const NCTP = 0x00000028;
  static const IBM_3480 = 0x00000029;
  static const IBM_3490E = 0x0000002a;
  static const IBM_Magstar_3590 = 0x0000002b;
  static const IBM_Magstar_MP = 0x0000002c;
  static const STK_DATA_D3 = 0x0000002d;
  static const SONY_DTF = 0x0000002e;
  static const DV_6mm = 0x0000002f;
  static const DMI = 0x00000030;
  static const SONY_D2 = 0x00000031;
  static const CLEANER_CARTRIDGE = 0x00000032;
  static const CD_ROM = 0x00000033;
  static const CD_R = 0x00000034;
  static const CD_RW = 0x00000035;
  static const DVD_ROM = 0x00000036;
  static const DVD_R = 0x00000037;
  static const DVD_RW = 0x00000038;
  static const MO_3_RW = 0x00000039;
  static const MO_5_WO = 0x0000003a;
  static const MO_5_RW = 0x0000003b;
  static const MO_5_LIMDOW = 0x0000003c;
  static const PC_5_WO = 0x0000003d;
  static const PC_5_RW = 0x0000003e;
  static const PD_5_RW = 0x0000003f;
  static const ABL_5_WO = 0x00000040;
  static const PINNACLE_APEX_5_RW = 0x00000041;
  static const SONY_12_WO = 0x00000042;
  static const PHILIPS_12_WO = 0x00000043;
  static const HITACHI_12_WO = 0x00000044;
  static const CYGNET_12_WO = 0x00000045;
  static const KODAK_14_WO = 0x00000046;
  static const MO_NFR_525 = 0x00000047;
  static const NIKON_12_RW = 0x00000048;
  static const IOMEGA_ZIP = 0x00000049;
  static const IOMEGA_JAZ = 0x0000004a;
  static const SYQUEST_EZ135 = 0x0000004b;
  static const SYQUEST_EZFLYER = 0x0000004c;
  static const SYQUEST_SYJET = 0x0000004d;
  static const AVATAR_F2 = 0x0000004e;
  static const MP2_8mm = 0x0000004f;
  static const DST_S = 0x00000050;
  static const DST_M = 0x00000051;
  static const DST_L = 0x00000052;
  static const VXATape_1 = 0x00000053;
  static const VXATape_2 = 0x00000054;
  static const STK_9840 = 0x00000055;
  static const LTO_Ultrium = 0x00000056;
  static const LTO_Accelis = 0x00000057;
  static const DVD_RAM = 0x00000058;
  static const AIT_8mm = 0x00000059;
  static const ADR_1 = 0x0000005a;
  static const ADR_2 = 0x0000005b;
  static const STK_9940 = 0x0000005c;
  static const SAIT = 0x0000005d;
  static const VXATape = 0x0000005e;
}

/// {@category Enum}
class STORAGE_BUS_TYPE {
  static const BusTypeUnknown = 0x00000000;
  static const BusTypeScsi = 0x00000001;
  static const BusTypeAtapi = 0x00000002;
  static const BusTypeAta = 0x00000003;
  static const BusType1394 = 0x00000004;
  static const BusTypeSsa = 0x00000005;
  static const BusTypeFibre = 0x00000006;
  static const BusTypeUsb = 0x00000007;
  static const BusTypeRAID = 0x00000008;
  static const BusTypeiScsi = 0x00000009;
  static const BusTypeSas = 0x0000000a;
  static const BusTypeSata = 0x0000000b;
  static const BusTypeSd = 0x0000000c;
  static const BusTypeMmc = 0x0000000d;
  static const BusTypeVirtual = 0x0000000e;
  static const BusTypeFileBackedVirtual = 0x0000000f;
  static const BusTypeSpaces = 0x00000010;
  static const BusTypeNvme = 0x00000011;
  static const BusTypeSCM = 0x00000012;
  static const BusTypeUfs = 0x00000013;
  static const BusTypeMax = 0x00000014;
  static const BusTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class STORAGE_SET_TYPE {
  static const PropertyStandardSet = 0x00000000;
  static const PropertyExistsSet = 0x00000001;
  static const PropertySetMaxDefined = 0x00000002;
}

/// {@category Enum}
class STORAGE_IDENTIFIER_CODE_SET {
  static const StorageIdCodeSetReserved = 0x00000000;
  static const StorageIdCodeSetBinary = 0x00000001;
  static const StorageIdCodeSetAscii = 0x00000002;
  static const StorageIdCodeSetUtf8 = 0x00000003;
}

/// {@category Enum}
class STORAGE_IDENTIFIER_TYPE {
  static const StorageIdTypeVendorSpecific = 0x00000000;
  static const StorageIdTypeVendorId = 0x00000001;
  static const StorageIdTypeEUI64 = 0x00000002;
  static const StorageIdTypeFCPHName = 0x00000003;
  static const StorageIdTypePortRelative = 0x00000004;
  static const StorageIdTypeTargetPortGroup = 0x00000005;
  static const StorageIdTypeLogicalUnitGroup = 0x00000006;
  static const StorageIdTypeMD5LogicalUnitIdentifier = 0x00000007;
  static const StorageIdTypeScsiNameString = 0x00000008;
}

/// {@category Enum}
class STORAGE_ID_NAA_FORMAT {
  static const StorageIdNAAFormatIEEEExtended = 0x00000002;
  static const StorageIdNAAFormatIEEERegistered = 0x00000003;
  static const StorageIdNAAFormatIEEEERegisteredExtended = 0x00000005;
}

/// {@category Enum}
class STORAGE_ASSOCIATION_TYPE {
  static const StorageIdAssocDevice = 0x00000000;
  static const StorageIdAssocPort = 0x00000001;
  static const StorageIdAssocTarget = 0x00000002;
}

/// {@category Enum}
class STORAGE_RPMB_FRAME_TYPE {
  static const StorageRpmbFrameTypeUnknown = 0x00000000;
  static const StorageRpmbFrameTypeStandard = 0x00000001;
  static const StorageRpmbFrameTypeMax = 0x00000002;
}

/// {@category Enum}
class STORAGE_CRYPTO_ALGORITHM_ID {
  static const StorageCryptoAlgorithmUnknown = 0x00000000;
  static const StorageCryptoAlgorithmXTSAES = 0x00000001;
  static const StorageCryptoAlgorithmBitlockerAESCBC = 0x00000002;
  static const StorageCryptoAlgorithmAESECB = 0x00000003;
  static const StorageCryptoAlgorithmESSIVAESCBC = 0x00000004;
  static const StorageCryptoAlgorithmMax = 0x00000005;
}

/// {@category Enum}
class STORAGE_CRYPTO_KEY_SIZE {
  static const StorageCryptoKeySizeUnknown = 0x00000000;
  static const StorageCryptoKeySize128Bits = 0x00000001;
  static const StorageCryptoKeySize192Bits = 0x00000002;
  static const StorageCryptoKeySize256Bits = 0x00000003;
  static const StorageCryptoKeySize512Bits = 0x00000004;
}

/// {@category Enum}
class STORAGE_TIER_MEDIA_TYPE {
  static const StorageTierMediaTypeUnspecified = 0x00000000;
  static const StorageTierMediaTypeDisk = 0x00000001;
  static const StorageTierMediaTypeSsd = 0x00000002;
  static const StorageTierMediaTypeScm = 0x00000004;
  static const StorageTierMediaTypeMax = 0x00000005;
}

/// {@category Enum}
class STORAGE_TIER_CLASS {
  static const StorageTierClassUnspecified = 0x00000000;
  static const StorageTierClassCapacity = 0x00000001;
  static const StorageTierClassPerformance = 0x00000002;
  static const StorageTierClassMax = 0x00000003;
}

/// {@category Enum}
class STORAGE_PROTOCOL_UFS_DATA_TYPE {
  static const UfsDataTypeUnknown = 0x00000000;
  static const UfsDataTypeQueryDescriptor = 0x00000001;
  static const UfsDataTypeMax = 0x00000002;
}

/// {@category Enum}
class STORAGE_DISK_HEALTH_STATUS {
  static const DiskHealthUnknown = 0x00000000;
  static const DiskHealthUnhealthy = 0x00000001;
  static const DiskHealthWarning = 0x00000002;
  static const DiskHealthHealthy = 0x00000003;
  static const DiskHealthMax = 0x00000004;
}

/// {@category Enum}
class STORAGE_DISK_OPERATIONAL_STATUS {
  static const DiskOpStatusNone = 0x00000000;
  static const DiskOpStatusUnknown = 0x00000001;
  static const DiskOpStatusOk = 0x00000002;
  static const DiskOpStatusPredictingFailure = 0x00000003;
  static const DiskOpStatusInService = 0x00000004;
  static const DiskOpStatusHardwareError = 0x00000005;
  static const DiskOpStatusNotUsable = 0x00000006;
  static const DiskOpStatusTransientError = 0x00000007;
  static const DiskOpStatusMissing = 0x00000008;
}

/// {@category Enum}
class STORAGE_OPERATIONAL_STATUS_REASON {
  static const DiskOpReasonUnknown = 0x00000000;
  static const DiskOpReasonScsiSenseCode = 0x00000001;
  static const DiskOpReasonMedia = 0x00000002;
  static const DiskOpReasonIo = 0x00000003;
  static const DiskOpReasonThresholdExceeded = 0x00000004;
  static const DiskOpReasonLostData = 0x00000005;
  static const DiskOpReasonEnergySource = 0x00000006;
  static const DiskOpReasonConfiguration = 0x00000007;
  static const DiskOpReasonDeviceController = 0x00000008;
  static const DiskOpReasonMediaController = 0x00000009;
  static const DiskOpReasonComponent = 0x0000000a;
  static const DiskOpReasonNVDIMM_N = 0x0000000b;
  static const DiskOpReasonBackgroundOperation = 0x0000000c;
  static const DiskOpReasonInvalidFirmware = 0x0000000d;
  static const DiskOpReasonHealthCheck = 0x0000000e;
  static const DiskOpReasonLostDataPersistence = 0x0000000f;
  static const DiskOpReasonDisabledByPlatform = 0x00000010;
  static const DiskOpReasonLostWritePersistence = 0x00000011;
  static const DiskOpReasonDataPersistenceLossImminent = 0x00000012;
  static const DiskOpReasonWritePersistenceLossImminent = 0x00000013;
  static const DiskOpReasonMax = 0x00000014;
}

/// {@category Enum}
class STORAGE_ZONED_DEVICE_TYPES {
  static const ZonedDeviceTypeUnknown = 0x00000000;
  static const ZonedDeviceTypeHostManaged = 0x00000001;
  static const ZonedDeviceTypeHostAware = 0x00000002;
  static const ZonedDeviceTypeDeviceManaged = 0x00000003;
}

/// {@category Enum}
class STORAGE_ZONE_TYPES {
  static const ZoneTypeUnknown = 0x00000000;
  static const ZoneTypeConventional = 0x00000001;
  static const ZoneTypeSequentialWriteRequired = 0x00000002;
  static const ZoneTypeSequentialWritePreferred = 0x00000003;
  static const ZoneTypeMax = 0x00000004;
}

/// {@category Enum}
class STORAGE_ZONES_ATTRIBUTES {
  static const ZonesAttributeTypeAndLengthMayDifferent = 0x00000000;
  static const ZonesAttributeTypeSameLengthSame = 0x00000001;
  static const ZonesAttributeTypeSameLastZoneLengthDifferent = 0x00000002;
  static const ZonesAttributeTypeMayDifferentLengthSame = 0x00000003;
}

/// {@category Enum}
class STORAGE_ZONE_CONDITION {
  static const ZoneConditionConventional = 0x00000000;
  static const ZoneConditionEmpty = 0x00000001;
  static const ZoneConditionImplicitlyOpened = 0x00000002;
  static const ZoneConditionExplicitlyOpened = 0x00000003;
  static const ZoneConditionClosed = 0x00000004;
  static const ZoneConditionReadOnly = 0x0000000d;
  static const ZoneConditionFull = 0x0000000e;
  static const ZoneConditionOffline = 0x0000000f;
}

/// {@category Enum}
class STORAGE_DIAGNOSTIC_LEVEL {
  static const StorageDiagnosticLevelDefault = 0x00000000;
  static const StorageDiagnosticLevelMax = 0x00000001;
}

/// {@category Enum}
class STORAGE_DIAGNOSTIC_TARGET_TYPE {
  static const StorageDiagnosticTargetTypeUndefined = 0x00000000;
  static const StorageDiagnosticTargetTypePort = 0x00000001;
  static const StorageDiagnosticTargetTypeMiniport = 0x00000002;
  static const StorageDiagnosticTargetTypeHbaFirmware = 0x00000003;
  static const StorageDiagnosticTargetTypeMax = 0x00000004;
}

/// {@category Enum}
class DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE {
  static const DeviceInternalStatusDataRequestTypeUndefined = 0x00000000;
  static const DeviceCurrentInternalStatusDataHeader = 0x00000001;
  static const DeviceCurrentInternalStatusData = 0x00000002;
}

/// {@category Enum}
class DEVICE_INTERNAL_STATUS_DATA_SET {
  static const DeviceStatusDataSetUndefined = 0x00000000;
  static const DeviceStatusDataSet1 = 0x00000001;
  static const DeviceStatusDataSet2 = 0x00000002;
  static const DeviceStatusDataSet3 = 0x00000003;
  static const DeviceStatusDataSet4 = 0x00000004;
  static const DeviceStatusDataSetMax = 0x00000005;
}

/// {@category Enum}
class DEVICEDUMP_COLLECTION_TYPE {
  static const TCCollectionBugCheck = 0x00000001;
  static const TCCollectionApplicationRequested = 0x00000002;
  static const TCCollectionDeviceRequested = 0x00000003;
}

/// {@category Enum}
class STORAGE_POWERUP_REASON_TYPE {
  static const StoragePowerupUnknown = 0x00000000;
  static const StoragePowerupIO = 0x00000001;
  static const StoragePowerupDeviceAttention = 0x00000002;
}

/// {@category Enum}
class STORAGE_RPMB_COMMAND_TYPE {
  static const StorRpmbProgramAuthKey = 0x00000001;
  static const StorRpmbQueryWriteCounter = 0x00000002;
  static const StorRpmbAuthenticatedWrite = 0x00000003;
  static const StorRpmbAuthenticatedRead = 0x00000004;
  static const StorRpmbReadResultRequest = 0x00000005;
  static const StorRpmbAuthenticatedDeviceConfigWrite = 0x00000006;
  static const StorRpmbAuthenticatedDeviceConfigRead = 0x00000007;
}

/// {@category Enum}
class STORAGE_COUNTER_TYPE {
  static const StorageCounterTypeUnknown = 0x00000000;
  static const StorageCounterTypeTemperatureCelsius = 0x00000001;
  static const StorageCounterTypeTemperatureCelsiusMax = 0x00000002;
  static const StorageCounterTypeReadErrorsTotal = 0x00000003;
  static const StorageCounterTypeReadErrorsCorrected = 0x00000004;
  static const StorageCounterTypeReadErrorsUncorrected = 0x00000005;
  static const StorageCounterTypeWriteErrorsTotal = 0x00000006;
  static const StorageCounterTypeWriteErrorsCorrected = 0x00000007;
  static const StorageCounterTypeWriteErrorsUncorrected = 0x00000008;
  static const StorageCounterTypeManufactureDate = 0x00000009;
  static const StorageCounterTypeStartStopCycleCount = 0x0000000a;
  static const StorageCounterTypeStartStopCycleCountMax = 0x0000000b;
  static const StorageCounterTypeLoadUnloadCycleCount = 0x0000000c;
  static const StorageCounterTypeLoadUnloadCycleCountMax = 0x0000000d;
  static const StorageCounterTypeWearPercentage = 0x0000000e;
  static const StorageCounterTypeWearPercentageWarning = 0x0000000f;
  static const StorageCounterTypeWearPercentageMax = 0x00000010;
  static const StorageCounterTypePowerOnHours = 0x00000011;
  static const StorageCounterTypeReadLatency100NSMax = 0x00000012;
  static const StorageCounterTypeWriteLatency100NSMax = 0x00000013;
  static const StorageCounterTypeFlushLatency100NSMax = 0x00000014;
  static const StorageCounterTypeMax = 0x00000015;
}

/// {@category Enum}
class STORAGE_ATTRIBUTE_MGMT_ACTION {
  static const StorAttributeMgmt_ClearAttribute = 0x00000000;
  static const StorAttributeMgmt_SetAttribute = 0x00000001;
  static const StorAttributeMgmt_ResetAttribute = 0x00000002;
}

/// {@category Enum}
class SCM_REGION_FLAG {
  static const ScmRegionFlagNone = 0x00000000;
  static const ScmRegionFlagLabel = 0x00000001;
}

/// {@category Enum}
class SCM_PD_QUERY_TYPE {
  static const ScmPhysicalDeviceQuery_Descriptor = 0x00000000;
  static const ScmPhysicalDeviceQuery_IsSupported = 0x00000001;
  static const ScmPhysicalDeviceQuery_Max = 0x00000002;
}

/// {@category Enum}
class SCM_PD_PROPERTY_ID {
  static const ScmPhysicalDeviceProperty_DeviceInfo = 0x00000000;
  static const ScmPhysicalDeviceProperty_ManagementStatus = 0x00000001;
  static const ScmPhysicalDeviceProperty_FirmwareInfo = 0x00000002;
  static const ScmPhysicalDeviceProperty_LocationString = 0x00000003;
  static const ScmPhysicalDeviceProperty_DeviceSpecificInfo = 0x00000004;
  static const ScmPhysicalDeviceProperty_DeviceHandle = 0x00000005;
  static const ScmPhysicalDeviceProperty_Max = 0x00000006;
}

/// {@category Enum}
class SCM_PD_HEALTH_STATUS {
  static const ScmPhysicalDeviceHealth_Unknown = 0x00000000;
  static const ScmPhysicalDeviceHealth_Unhealthy = 0x00000001;
  static const ScmPhysicalDeviceHealth_Warning = 0x00000002;
  static const ScmPhysicalDeviceHealth_Healthy = 0x00000003;
  static const ScmPhysicalDeviceHealth_Max = 0x00000004;
}

/// {@category Enum}
class SCM_PD_OPERATIONAL_STATUS {
  static const ScmPhysicalDeviceOpStatus_Unknown = 0x00000000;
  static const ScmPhysicalDeviceOpStatus_Ok = 0x00000001;
  static const ScmPhysicalDeviceOpStatus_PredictingFailure = 0x00000002;
  static const ScmPhysicalDeviceOpStatus_InService = 0x00000003;
  static const ScmPhysicalDeviceOpStatus_HardwareError = 0x00000004;
  static const ScmPhysicalDeviceOpStatus_NotUsable = 0x00000005;
  static const ScmPhysicalDeviceOpStatus_TransientError = 0x00000006;
  static const ScmPhysicalDeviceOpStatus_Missing = 0x00000007;
  static const ScmPhysicalDeviceOpStatus_Max = 0x00000008;
}

/// {@category Enum}
class SCM_PD_OPERATIONAL_STATUS_REASON {
  static const ScmPhysicalDeviceOpReason_Unknown = 0x00000000;
  static const ScmPhysicalDeviceOpReason_Media = 0x00000001;
  static const ScmPhysicalDeviceOpReason_ThresholdExceeded = 0x00000002;
  static const ScmPhysicalDeviceOpReason_LostData = 0x00000003;
  static const ScmPhysicalDeviceOpReason_EnergySource = 0x00000004;
  static const ScmPhysicalDeviceOpReason_Configuration = 0x00000005;
  static const ScmPhysicalDeviceOpReason_DeviceController = 0x00000006;
  static const ScmPhysicalDeviceOpReason_MediaController = 0x00000007;
  static const ScmPhysicalDeviceOpReason_Component = 0x00000008;
  static const ScmPhysicalDeviceOpReason_BackgroundOperation = 0x00000009;
  static const ScmPhysicalDeviceOpReason_InvalidFirmware = 0x0000000a;
  static const ScmPhysicalDeviceOpReason_HealthCheck = 0x0000000b;
  static const ScmPhysicalDeviceOpReason_LostDataPersistence = 0x0000000c;
  static const ScmPhysicalDeviceOpReason_DisabledByPlatform = 0x0000000d;
  static const ScmPhysicalDeviceOpReason_PermanentError = 0x0000000e;
  static const ScmPhysicalDeviceOpReason_LostWritePersistence = 0x0000000f;
  static const ScmPhysicalDeviceOpReason_FatalError = 0x00000010;
  static const ScmPhysicalDeviceOpReason_DataPersistenceLossImminent = 0x00000011;
  static const ScmPhysicalDeviceOpReason_WritePersistenceLossImminent = 0x00000012;
  static const ScmPhysicalDeviceOpReason_MediaRemainingSpareBlock = 0x00000013;
  static const ScmPhysicalDeviceOpReason_PerformanceDegradation = 0x00000014;
  static const ScmPhysicalDeviceOpReason_ExcessiveTemperature = 0x00000015;
  static const ScmPhysicalDeviceOpReason_Max = 0x00000016;
}

/// {@category Enum}
class SCM_PD_MEDIA_REINITIALIZATION_STATUS {
  static const ScmPhysicalDeviceReinit_Success = 0x00000000;
  static const ScmPhysicalDeviceReinit_RebootNeeded = 0x00000001;
  static const ScmPhysicalDeviceReinit_ColdBootNeeded = 0x00000002;
  static const ScmPhysicalDeviceReinit_Max = 0x00000003;
}

/// {@category Enum}
class DETECTION_TYPE {
  static const DetectNone = 0x00000000;
  static const DetectInt13 = 0x00000001;
  static const DetectExInt13 = 0x00000002;
}

/// {@category Enum}
class DISK_CACHE_RETENTION_PRIORITY {
  static const EqualPriority = 0x00000000;
  static const KeepPrefetchedData = 0x00000001;
  static const KeepReadData = 0x00000002;
}

/// {@category Enum}
class BIN_TYPES {
  static const RequestSize = 0x00000000;
  static const RequestLocation = 0x00000001;
}

/// {@category Enum}
class ELEMENT_TYPE {
  static const AllElements = 0x00000000;
  static const ChangerTransport = 0x00000001;
  static const ChangerSlot = 0x00000002;
  static const ChangerIEPort = 0x00000003;
  static const ChangerDrive = 0x00000004;
  static const ChangerDoor = 0x00000005;
  static const ChangerKeypad = 0x00000006;
  static const ChangerMaxElement = 0x00000007;
}

/// {@category Enum}
class CHANGER_DEVICE_PROBLEM_TYPE {
  static const DeviceProblemNone = 0x00000000;
  static const DeviceProblemHardware = 0x00000001;
  static const DeviceProblemCHMError = 0x00000002;
  static const DeviceProblemDoorOpen = 0x00000003;
  static const DeviceProblemCalibrationError = 0x00000004;
  static const DeviceProblemTargetFailure = 0x00000005;
  static const DeviceProblemCHMMoveError = 0x00000006;
  static const DeviceProblemCHMZeroError = 0x00000007;
  static const DeviceProblemCartridgeInsertError = 0x00000008;
  static const DeviceProblemPositionError = 0x00000009;
  static const DeviceProblemSensorError = 0x0000000a;
  static const DeviceProblemCartridgeEjectError = 0x0000000b;
  static const DeviceProblemGripperError = 0x0000000c;
  static const DeviceProblemDriveError = 0x0000000d;
}

/// {@category Enum}
class SHRINK_VOLUME_REQUEST_TYPES {
  static const ShrinkPrepare = 0x00000001;
  static const ShrinkCommit = 0x00000002;
  static const ShrinkAbort = 0x00000003;
}

/// {@category Enum}
class CSVFS_DISK_CONNECTIVITY {
  static const CsvFsDiskConnectivityNone = 0x00000000;
  static const CsvFsDiskConnectivityMdsNodeOnly = 0x00000001;
  static const CsvFsDiskConnectivitySubsetOfNodes = 0x00000002;
  static const CsvFsDiskConnectivityAllNodes = 0x00000003;
}

/// {@category Enum}
class STORAGE_RESERVE_ID {
  static const StorageReserveIdNone = 0x00000000;
  static const StorageReserveIdHard = 0x00000001;
  static const StorageReserveIdSoft = 0x00000002;
  static const StorageReserveIdUpdateScratch = 0x00000003;
  static const StorageReserveIdMax = 0x00000004;
}

/// {@category Enum}
class QUERY_FILE_LAYOUT_FILTER_TYPE {
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_NONE = 0x00000000;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_CLUSTERS = 0x00000001;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_FILEID = 0x00000002;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_STORAGE_RESERVE_ID = 0x00000003;
  static const QUERY_FILE_LAYOUT_NUM_FILTER_TYPES = 0x00000004;
}

/// {@category Enum}
class FILE_STORAGE_TIER_CLASS {
  static const FileStorageTierClassUnspecified = 0x00000000;
  static const FileStorageTierClassCapacity = 0x00000001;
  static const FileStorageTierClassPerformance = 0x00000002;
  static const FileStorageTierClassMax = 0x00000003;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_STATE {
  static const SmrGcStateInactive = 0x00000000;
  static const SmrGcStatePaused = 0x00000001;
  static const SmrGcStateActive = 0x00000002;
  static const SmrGcStateActiveFullSpeed = 0x00000003;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_ACTION {
  static const SmrGcActionStart = 0x00000001;
  static const SmrGcActionStartFullSpeed = 0x00000002;
  static const SmrGcActionPause = 0x00000003;
  static const SmrGcActionStop = 0x00000004;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_METHOD {
  static const SmrGcMethodCompaction = 0x00000001;
  static const SmrGcMethodCompression = 0x00000002;
  static const SmrGcMethodRotation = 0x00000003;
}

/// {@category Enum}
class VIRTUAL_STORAGE_BEHAVIOR_CODE {
  static const VirtualStorageBehaviorUndefined = 0x00000000;
  static const VirtualStorageBehaviorCacheWriteThrough = 0x00000001;
  static const VirtualStorageBehaviorCacheWriteBack = 0x00000002;
}

/// {@category Enum}
class BIDI_TYPE {
  static const BIDI_NULL = 0x00000000;
  static const BIDI_INT = 0x00000001;
  static const BIDI_FLOAT = 0x00000002;
  static const BIDI_BOOL = 0x00000003;
  static const BIDI_STRING = 0x00000004;
  static const BIDI_TEXT = 0x00000005;
  static const BIDI_ENUM = 0x00000006;
  static const BIDI_BLOB = 0x00000007;
}

/// {@category Enum}
class PRINTER_OPTION_FLAGS {
  static const PRINTER_OPTION_NO_CACHE = 0x00000001;
  static const PRINTER_OPTION_CACHE = 0x00000002;
  static const PRINTER_OPTION_CLIENT_CHANGE = 0x00000004;
  static const PRINTER_OPTION_NO_CLIENT_DATA = 0x00000008;
}

/// {@category Enum}
class EPrintPropertyType {
  static const kPropertyTypeString = 0x00000001;
  static const kPropertyTypeInt32 = 0x00000002;
  static const kPropertyTypeInt64 = 0x00000003;
  static const kPropertyTypeByte = 0x00000004;
  static const kPropertyTypeTime = 0x00000005;
  static const kPropertyTypeDevMode = 0x00000006;
  static const kPropertyTypeSD = 0x00000007;
  static const kPropertyTypeNotificationReply = 0x00000008;
  static const kPropertyTypeNotificationOptions = 0x00000009;
  static const kPropertyTypeBuffer = 0x0000000a;
}

/// {@category Enum}
class EPrintXPSJobProgress {
  static const kAddingDocumentSequence = 0x00000000;
  static const kDocumentSequenceAdded = 0x00000001;
  static const kAddingFixedDocument = 0x00000002;
  static const kFixedDocumentAdded = 0x00000003;
  static const kAddingFixedPage = 0x00000004;
  static const kFixedPageAdded = 0x00000005;
  static const kResourceAdded = 0x00000006;
  static const kFontAdded = 0x00000007;
  static const kImageAdded = 0x00000008;
  static const kXpsDocumentCommitted = 0x00000009;
}

/// {@category Enum}
class EPrintXPSJobOperation {
  static const kJobProduction = 0x00000001;
  static const kJobConsumption = 0x00000002;
}

/// {@category Enum}
class PRINT_EXECUTION_CONTEXT {
  static const PRINT_EXECUTION_CONTEXT_APPLICATION = 0x00000000;
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE = 0x00000001;
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST = 0x00000002;
  static const PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE = 0x00000003;
  static const PRINT_EXECUTION_CONTEXT_WOW64 = 0x00000004;
}

/// {@category Enum}
class DISPATCHERQUEUE_THREAD_APARTMENTTYPE {
  static const DQTAT_COM_NONE = 0x00000000;
  static const DQTAT_COM_ASTA = 0x00000001;
  static const DQTAT_COM_STA = 0x00000002;
}

/// {@category Enum}
class DISPATCHERQUEUE_THREAD_TYPE {
  static const DQTYPE_THREAD_DEDICATED = 0x00000001;
  static const DQTYPE_THREAD_CURRENT = 0x00000002;
}

/// {@category Enum}
class VDS_STORAGE_IDENTIFIER_CODE_SET {
  static const VDSStorageIdCodeSetReserved = 0x00000000;
  static const VDSStorageIdCodeSetBinary = 0x00000001;
  static const VDSStorageIdCodeSetAscii = 0x00000002;
  static const VDSStorageIdCodeSetUtf8 = 0x00000003;
}

/// {@category Enum}
class VDS_STORAGE_IDENTIFIER_TYPE {
  static const VDSStorageIdTypeVendorSpecific = 0x00000000;
  static const VDSStorageIdTypeVendorId = 0x00000001;
  static const VDSStorageIdTypeEUI64 = 0x00000002;
  static const VDSStorageIdTypeFCPHName = 0x00000003;
  static const VDSStorageIdTypePortRelative = 0x00000004;
  static const VDSStorageIdTypeTargetPortGroup = 0x00000005;
  static const VDSStorageIdTypeLogicalUnitGroup = 0x00000006;
  static const VDSStorageIdTypeMD5LogicalUnitIdentifier = 0x00000007;
  static const VDSStorageIdTypeScsiNameString = 0x00000008;
}

/// {@category Enum}
class VDS_STORAGE_BUS_TYPE {
  static const VDSBusTypeUnknown = 0x00000000;
  static const VDSBusTypeScsi = 0x00000001;
  static const VDSBusTypeAtapi = 0x00000002;
  static const VDSBusTypeAta = 0x00000003;
  static const VDSBusType1394 = 0x00000004;
  static const VDSBusTypeSsa = 0x00000005;
  static const VDSBusTypeFibre = 0x00000006;
  static const VDSBusTypeUsb = 0x00000007;
  static const VDSBusTypeRAID = 0x00000008;
  static const VDSBusTypeiScsi = 0x00000009;
  static const VDSBusTypeSas = 0x0000000a;
  static const VDSBusTypeSata = 0x0000000b;
  static const VDSBusTypeSd = 0x0000000c;
  static const VDSBusTypeMmc = 0x0000000d;
  static const VDSBusTypeMax = 0x0000000e;
  static const VDSBusTypeVirtual = 0x0000000e;
  static const VDSBusTypeFileBackedVirtual = 0x0000000f;
  static const VDSBusTypeSpaces = 0x00000010;
  static const VDSBusTypeNVMe = 0x00000011;
  static const VDSBusTypeScm = 0x00000012;
  static const VDSBusTypeUfs = 0x00000013;
  static const VDSBusTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class VDS_INTERCONNECT_ADDRESS_TYPE {
  static const VDS_IA_UNKNOWN = 0x00000000;
  static const VDS_IA_FCFS = 0x00000001;
  static const VDS_IA_FCPH = 0x00000002;
  static const VDS_IA_FCPH3 = 0x00000003;
  static const VDS_IA_MAC = 0x00000004;
  static const VDS_IA_SCSI = 0x00000005;
}

/// {@category Enum}
class VDS_OBJECT_TYPE {
  static const VDS_OT_UNKNOWN = 0x00000000;
  static const VDS_OT_PROVIDER = 0x00000001;
  static const VDS_OT_PACK = 0x0000000a;
  static const VDS_OT_VOLUME = 0x0000000b;
  static const VDS_OT_VOLUME_PLEX = 0x0000000c;
  static const VDS_OT_DISK = 0x0000000d;
  static const VDS_OT_SUB_SYSTEM = 0x0000001e;
  static const VDS_OT_CONTROLLER = 0x0000001f;
  static const VDS_OT_DRIVE = 0x00000020;
  static const VDS_OT_LUN = 0x00000021;
  static const VDS_OT_LUN_PLEX = 0x00000022;
  static const VDS_OT_PORT = 0x00000023;
  static const VDS_OT_PORTAL = 0x00000024;
  static const VDS_OT_TARGET = 0x00000025;
  static const VDS_OT_PORTAL_GROUP = 0x00000026;
  static const VDS_OT_STORAGE_POOL = 0x00000027;
  static const VDS_OT_HBAPORT = 0x0000005a;
  static const VDS_OT_INIT_ADAPTER = 0x0000005b;
  static const VDS_OT_INIT_PORTAL = 0x0000005c;
  static const VDS_OT_ASYNC = 0x00000064;
  static const VDS_OT_ENUM = 0x00000065;
  static const VDS_OT_VDISK = 0x000000c8;
  static const VDS_OT_OPEN_VDISK = 0x000000c9;
}

/// {@category Enum}
class VDS_PROVIDER_TYPE {
  static const VDS_PT_UNKNOWN = 0x00000000;
  static const VDS_PT_SOFTWARE = 0x00000001;
  static const VDS_PT_HARDWARE = 0x00000002;
  static const VDS_PT_VIRTUALDISK = 0x00000003;
  static const VDS_PT_MAX = 0x00000004;
}

/// {@category Enum}
class VDS_PROVIDER_FLAG {
  static const VDS_PF_DYNAMIC = 0x00000001;
  static const VDS_PF_INTERNAL_HARDWARE_PROVIDER = 0x00000002;
  static const VDS_PF_ONE_DISK_ONLY_PER_PACK = 0x00000004;
  static const VDS_PF_ONE_PACK_ONLINE_ONLY = 0x00000008;
  static const VDS_PF_VOLUME_SPACE_MUST_BE_CONTIGUOUS = 0x00000010;
  static const VDS_PF_SUPPORT_DYNAMIC = 0x80000000;
  static const VDS_PF_SUPPORT_FAULT_TOLERANT = 0x40000000;
  static const VDS_PF_SUPPORT_DYNAMIC_1394 = 0x20000000;
  static const VDS_PF_SUPPORT_MIRROR = 0x00000020;
  static const VDS_PF_SUPPORT_RAID5 = 0x00000040;
}

/// {@category Enum}
class VDS_RECOVER_ACTION {
  static const VDS_RA_UNKNOWN = 0x00000000;
  static const VDS_RA_REFRESH = 0x00000001;
  static const VDS_RA_RESTART = 0x00000002;
}

/// {@category Enum}
class VDS_NOTIFICATION_TARGET_TYPE {
  static const VDS_NTT_UNKNOWN = 0x00000000;
  static const VDS_NTT_PACK = 0x0000000a;
  static const VDS_NTT_VOLUME = 0x0000000b;
  static const VDS_NTT_DISK = 0x0000000d;
  static const VDS_NTT_PARTITION = 0x0000003c;
  static const VDS_NTT_DRIVE_LETTER = 0x0000003d;
  static const VDS_NTT_FILE_SYSTEM = 0x0000003e;
  static const VDS_NTT_MOUNT_POINT = 0x0000003f;
  static const VDS_NTT_SUB_SYSTEM = 0x0000001e;
  static const VDS_NTT_CONTROLLER = 0x0000001f;
  static const VDS_NTT_DRIVE = 0x00000020;
  static const VDS_NTT_LUN = 0x00000021;
  static const VDS_NTT_PORT = 0x00000023;
  static const VDS_NTT_PORTAL = 0x00000024;
  static const VDS_NTT_TARGET = 0x00000025;
  static const VDS_NTT_PORTAL_GROUP = 0x00000026;
  static const VDS_NTT_SERVICE = 0x000000c8;
}

/// {@category Enum}
class VDS_ASYNC_OUTPUT_TYPE {
  static const VDS_ASYNCOUT_UNKNOWN = 0x00000000;
  static const VDS_ASYNCOUT_CREATEVOLUME = 0x00000001;
  static const VDS_ASYNCOUT_EXTENDVOLUME = 0x00000002;
  static const VDS_ASYNCOUT_SHRINKVOLUME = 0x00000003;
  static const VDS_ASYNCOUT_ADDVOLUMEPLEX = 0x00000004;
  static const VDS_ASYNCOUT_BREAKVOLUMEPLEX = 0x00000005;
  static const VDS_ASYNCOUT_REMOVEVOLUMEPLEX = 0x00000006;
  static const VDS_ASYNCOUT_REPAIRVOLUMEPLEX = 0x00000007;
  static const VDS_ASYNCOUT_RECOVERPACK = 0x00000008;
  static const VDS_ASYNCOUT_REPLACEDISK = 0x00000009;
  static const VDS_ASYNCOUT_CREATEPARTITION = 0x0000000a;
  static const VDS_ASYNCOUT_CLEAN = 0x0000000b;
  static const VDS_ASYNCOUT_CREATELUN = 0x00000032;
  static const VDS_ASYNCOUT_ADDLUNPLEX = 0x00000034;
  static const VDS_ASYNCOUT_REMOVELUNPLEX = 0x00000035;
  static const VDS_ASYNCOUT_EXTENDLUN = 0x00000036;
  static const VDS_ASYNCOUT_SHRINKLUN = 0x00000037;
  static const VDS_ASYNCOUT_RECOVERLUN = 0x00000038;
  static const VDS_ASYNCOUT_LOGINTOTARGET = 0x0000003c;
  static const VDS_ASYNCOUT_LOGOUTFROMTARGET = 0x0000003d;
  static const VDS_ASYNCOUT_CREATETARGET = 0x0000003e;
  static const VDS_ASYNCOUT_CREATEPORTALGROUP = 0x0000003f;
  static const VDS_ASYNCOUT_DELETETARGET = 0x00000040;
  static const VDS_ASYNCOUT_ADDPORTAL = 0x00000041;
  static const VDS_ASYNCOUT_REMOVEPORTAL = 0x00000042;
  static const VDS_ASYNCOUT_DELETEPORTALGROUP = 0x00000043;
  static const VDS_ASYNCOUT_FORMAT = 0x00000065;
  static const VDS_ASYNCOUT_CREATE_VDISK = 0x000000c8;
  static const VDS_ASYNCOUT_ATTACH_VDISK = 0x000000c9;
  static const VDS_ASYNCOUT_COMPACT_VDISK = 0x000000ca;
  static const VDS_ASYNCOUT_MERGE_VDISK = 0x000000cb;
  static const VDS_ASYNCOUT_EXPAND_VDISK = 0x000000cc;
}

/// {@category Enum}
class VDS_IPADDRESS_TYPE {
  static const VDS_IPT_TEXT = 0x00000000;
  static const VDS_IPT_IPV4 = 0x00000001;
  static const VDS_IPT_IPV6 = 0x00000002;
  static const VDS_IPT_EMPTY = 0x00000003;
}

/// {@category Enum}
class VDS_HEALTH {
  static const VDS_H_UNKNOWN = 0x00000000;
  static const VDS_H_HEALTHY = 0x00000001;
  static const VDS_H_REBUILDING = 0x00000002;
  static const VDS_H_STALE = 0x00000003;
  static const VDS_H_FAILING = 0x00000004;
  static const VDS_H_FAILING_REDUNDANCY = 0x00000005;
  static const VDS_H_FAILED_REDUNDANCY = 0x00000006;
  static const VDS_H_FAILED_REDUNDANCY_FAILING = 0x00000007;
  static const VDS_H_FAILED = 0x00000008;
  static const VDS_H_REPLACED = 0x00000009;
  static const VDS_H_PENDING_FAILURE = 0x0000000a;
  static const VDS_H_DEGRADED = 0x0000000b;
}

/// {@category Enum}
class VDS_TRANSITION_STATE {
  static const VDS_TS_UNKNOWN = 0x00000000;
  static const VDS_TS_STABLE = 0x00000001;
  static const VDS_TS_EXTENDING = 0x00000002;
  static const VDS_TS_SHRINKING = 0x00000003;
  static const VDS_TS_RECONFIGING = 0x00000004;
  static const VDS_TS_RESTRIPING = 0x00000005;
}

/// {@category Enum}
class VDS_FILE_SYSTEM_TYPE {
  static const VDS_FST_UNKNOWN = 0x00000000;
  static const VDS_FST_RAW = 0x00000001;
  static const VDS_FST_FAT = 0x00000002;
  static const VDS_FST_FAT32 = 0x00000003;
  static const VDS_FST_NTFS = 0x00000004;
  static const VDS_FST_CDFS = 0x00000005;
  static const VDS_FST_UDF = 0x00000006;
  static const VDS_FST_EXFAT = 0x00000007;
  static const VDS_FST_CSVFS = 0x00000008;
  static const VDS_FST_REFS = 0x00000009;
}

/// {@category Enum}
class VDS_HBAPORT_TYPE {
  static const VDS_HPT_UNKNOWN = 0x00000001;
  static const VDS_HPT_OTHER = 0x00000002;
  static const VDS_HPT_NOTPRESENT = 0x00000003;
  static const VDS_HPT_NPORT = 0x00000005;
  static const VDS_HPT_NLPORT = 0x00000006;
  static const VDS_HPT_FLPORT = 0x00000007;
  static const VDS_HPT_FPORT = 0x00000008;
  static const VDS_HPT_EPORT = 0x00000009;
  static const VDS_HPT_GPORT = 0x0000000a;
  static const VDS_HPT_LPORT = 0x00000014;
  static const VDS_HPT_PTP = 0x00000015;
}

/// {@category Enum}
class VDS_HBAPORT_STATUS {
  static const VDS_HPS_UNKNOWN = 0x00000001;
  static const VDS_HPS_ONLINE = 0x00000002;
  static const VDS_HPS_OFFLINE = 0x00000003;
  static const VDS_HPS_BYPASSED = 0x00000004;
  static const VDS_HPS_DIAGNOSTICS = 0x00000005;
  static const VDS_HPS_LINKDOWN = 0x00000006;
  static const VDS_HPS_ERROR = 0x00000007;
  static const VDS_HPS_LOOPBACK = 0x00000008;
}

/// {@category Enum}
class VDS_HBAPORT_SPEED_FLAG {
  static const VDS_HSF_UNKNOWN = 0x00000000;
  static const VDS_HSF_1GBIT = 0x00000001;
  static const VDS_HSF_2GBIT = 0x00000002;
  static const VDS_HSF_10GBIT = 0x00000004;
  static const VDS_HSF_4GBIT = 0x00000008;
  static const VDS_HSF_NOT_NEGOTIATED = 0x00008000;
}

/// {@category Enum}
class VDS_PATH_STATUS {
  static const VDS_MPS_UNKNOWN = 0x00000000;
  static const VDS_MPS_ONLINE = 0x00000001;
  static const VDS_MPS_FAILED = 0x00000005;
  static const VDS_MPS_STANDBY = 0x00000007;
}

/// {@category Enum}
class VDS_LOADBALANCE_POLICY_ENUM {
  static const VDS_LBP_UNKNOWN = 0x00000000;
  static const VDS_LBP_FAILOVER = 0x00000001;
  static const VDS_LBP_ROUND_ROBIN = 0x00000002;
  static const VDS_LBP_ROUND_ROBIN_WITH_SUBSET = 0x00000003;
  static const VDS_LBP_DYN_LEAST_QUEUE_DEPTH = 0x00000004;
  static const VDS_LBP_WEIGHTED_PATHS = 0x00000005;
  static const VDS_LBP_LEAST_BLOCKS = 0x00000006;
  static const VDS_LBP_VENDOR_SPECIFIC = 0x00000007;
}

/// {@category Enum}
class VDS_PROVIDER_LBSUPPORT_FLAG {
  static const VDS_LBF_FAILOVER = 0x00000001;
  static const VDS_LBF_ROUND_ROBIN = 0x00000002;
  static const VDS_LBF_ROUND_ROBIN_WITH_SUBSET = 0x00000004;
  static const VDS_LBF_DYN_LEAST_QUEUE_DEPTH = 0x00000008;
  static const VDS_LBF_WEIGHTED_PATHS = 0x00000010;
  static const VDS_LBF_LEAST_BLOCKS = 0x00000020;
  static const VDS_LBF_VENDOR_SPECIFIC = 0x00000040;
}

/// {@category Enum}
class VDS_VERSION_SUPPORT_FLAG {
  static const VDS_VSF_1_0 = 0x00000001;
  static const VDS_VSF_1_1 = 0x00000002;
  static const VDS_VSF_2_0 = 0x00000004;
  static const VDS_VSF_2_1 = 0x00000008;
  static const VDS_VSF_3_0 = 0x00000010;
}

/// {@category Enum}
class VDS_HWPROVIDER_TYPE {
  static const VDS_HWT_UNKNOWN = 0x00000000;
  static const VDS_HWT_PCI_RAID = 0x00000001;
  static const VDS_HWT_FIBRE_CHANNEL = 0x00000002;
  static const VDS_HWT_ISCSI = 0x00000003;
  static const VDS_HWT_SAS = 0x00000004;
  static const VDS_HWT_HYBRID = 0x00000005;
}

/// {@category Enum}
class VDS_ISCSI_LOGIN_TYPE {
  static const VDS_ILT_MANUAL = 0x00000000;
  static const VDS_ILT_PERSISTENT = 0x00000001;
  static const VDS_ILT_BOOT = 0x00000002;
}

/// {@category Enum}
class VDS_ISCSI_AUTH_TYPE {
  static const VDS_IAT_NONE = 0x00000000;
  static const VDS_IAT_CHAP = 0x00000001;
  static const VDS_IAT_MUTUAL_CHAP = 0x00000002;
}

/// {@category Enum}
class VDS_ISCSI_IPSEC_FLAG {
  static const VDS_IIF_VALID = 0x00000001;
  static const VDS_IIF_IKE = 0x00000002;
  static const VDS_IIF_MAIN_MODE = 0x00000004;
  static const VDS_IIF_AGGRESSIVE_MODE = 0x00000008;
  static const VDS_IIF_PFS_ENABLE = 0x00000010;
  static const VDS_IIF_TRANSPORT_MODE_PREFERRED = 0x00000020;
  static const VDS_IIF_TUNNEL_MODE_PREFERRED = 0x00000040;
}

/// {@category Enum}
class VDS_ISCSI_LOGIN_FLAG {
  static const VDS_ILF_REQUIRE_IPSEC = 0x00000001;
  static const VDS_ILF_MULTIPATH_ENABLED = 0x00000002;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_STATUS {
  static const VDS_SSS_UNKNOWN = 0x00000000;
  static const VDS_SSS_ONLINE = 0x00000001;
  static const VDS_SSS_NOT_READY = 0x00000002;
  static const VDS_SSS_OFFLINE = 0x00000004;
  static const VDS_SSS_FAILED = 0x00000005;
  static const VDS_SSS_PARTIALLY_MANAGED = 0x00000009;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_FLAG {
  static const VDS_SF_LUN_MASKING_CAPABLE = 0x00000001;
  static const VDS_SF_LUN_PLEXING_CAPABLE = 0x00000002;
  static const VDS_SF_LUN_REMAPPING_CAPABLE = 0x00000004;
  static const VDS_SF_DRIVE_EXTENT_CAPABLE = 0x00000008;
  static const VDS_SF_HARDWARE_CHECKSUM_CAPABLE = 0x00000010;
  static const VDS_SF_RADIUS_CAPABLE = 0x00000020;
  static const VDS_SF_READ_BACK_VERIFY_CAPABLE = 0x00000040;
  static const VDS_SF_WRITE_THROUGH_CACHING_CAPABLE = 0x00000080;
  static const VDS_SF_SUPPORTS_FAULT_TOLERANT_LUNS = 0x00000200;
  static const VDS_SF_SUPPORTS_NON_FAULT_TOLERANT_LUNS = 0x00000400;
  static const VDS_SF_SUPPORTS_SIMPLE_LUNS = 0x00000800;
  static const VDS_SF_SUPPORTS_SPAN_LUNS = 0x00001000;
  static const VDS_SF_SUPPORTS_STRIPE_LUNS = 0x00002000;
  static const VDS_SF_SUPPORTS_MIRROR_LUNS = 0x00004000;
  static const VDS_SF_SUPPORTS_PARITY_LUNS = 0x00008000;
  static const VDS_SF_SUPPORTS_AUTH_CHAP = 0x00010000;
  static const VDS_SF_SUPPORTS_AUTH_MUTUAL_CHAP = 0x00020000;
  static const VDS_SF_SUPPORTS_SIMPLE_TARGET_CONFIG = 0x00040000;
  static const VDS_SF_SUPPORTS_LUN_NUMBER = 0x00080000;
  static const VDS_SF_SUPPORTS_MIRRORED_CACHE = 0x00100000;
  static const VDS_SF_READ_CACHING_CAPABLE = 0x00200000;
  static const VDS_SF_WRITE_CACHING_CAPABLE = 0x00400000;
  static const VDS_SF_MEDIA_SCAN_CAPABLE = 0x00800000;
  static const VDS_SF_CONSISTENCY_CHECK_CAPABLE = 0x01000000;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_SUPPORTED_RAID_TYPE_FLAG {
  static const VDS_SF_SUPPORTS_RAID2_LUNS = 0x00000001;
  static const VDS_SF_SUPPORTS_RAID3_LUNS = 0x00000002;
  static const VDS_SF_SUPPORTS_RAID4_LUNS = 0x00000004;
  static const VDS_SF_SUPPORTS_RAID5_LUNS = 0x00000008;
  static const VDS_SF_SUPPORTS_RAID6_LUNS = 0x00000010;
  static const VDS_SF_SUPPORTS_RAID01_LUNS = 0x00000020;
  static const VDS_SF_SUPPORTS_RAID03_LUNS = 0x00000040;
  static const VDS_SF_SUPPORTS_RAID05_LUNS = 0x00000080;
  static const VDS_SF_SUPPORTS_RAID10_LUNS = 0x00000100;
  static const VDS_SF_SUPPORTS_RAID15_LUNS = 0x00000200;
  static const VDS_SF_SUPPORTS_RAID30_LUNS = 0x00000400;
  static const VDS_SF_SUPPORTS_RAID50_LUNS = 0x00000800;
  static const VDS_SF_SUPPORTS_RAID51_LUNS = 0x00001000;
  static const VDS_SF_SUPPORTS_RAID53_LUNS = 0x00002000;
  static const VDS_SF_SUPPORTS_RAID60_LUNS = 0x00004000;
  static const VDS_SF_SUPPORTS_RAID61_LUNS = 0x00008000;
}

/// {@category Enum}
class VDS_INTERCONNECT_FLAG {
  static const VDS_ITF_PCI_RAID = 0x00000001;
  static const VDS_ITF_FIBRE_CHANNEL = 0x00000002;
  static const VDS_ITF_ISCSI = 0x00000004;
  static const VDS_ITF_SAS = 0x00000008;
}

/// {@category Enum}
class VDS_CONTROLLER_STATUS {
  static const VDS_CS_UNKNOWN = 0x00000000;
  static const VDS_CS_ONLINE = 0x00000001;
  static const VDS_CS_NOT_READY = 0x00000002;
  static const VDS_CS_OFFLINE = 0x00000004;
  static const VDS_CS_FAILED = 0x00000005;
  static const VDS_CS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_PORT_STATUS {
  static const VDS_PRS_UNKNOWN = 0x00000000;
  static const VDS_PRS_ONLINE = 0x00000001;
  static const VDS_PRS_NOT_READY = 0x00000002;
  static const VDS_PRS_OFFLINE = 0x00000004;
  static const VDS_PRS_FAILED = 0x00000005;
  static const VDS_PRS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_DRIVE_STATUS {
  static const VDS_DRS_UNKNOWN = 0x00000000;
  static const VDS_DRS_ONLINE = 0x00000001;
  static const VDS_DRS_NOT_READY = 0x00000002;
  static const VDS_DRS_OFFLINE = 0x00000004;
  static const VDS_DRS_FAILED = 0x00000005;
  static const VDS_DRS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_DRIVE_FLAG {
  static const VDS_DRF_HOTSPARE = 0x00000001;
  static const VDS_DRF_ASSIGNED = 0x00000002;
  static const VDS_DRF_UNASSIGNED = 0x00000004;
  static const VDS_DRF_HOTSPARE_IN_USE = 0x00000008;
  static const VDS_DRF_HOTSPARE_STANDBY = 0x00000010;
}

/// {@category Enum}
class VDS_LUN_TYPE {
  static const VDS_LT_UNKNOWN = 0x00000000;
  static const VDS_LT_DEFAULT = 0x00000001;
  static const VDS_LT_FAULT_TOLERANT = 0x00000002;
  static const VDS_LT_NON_FAULT_TOLERANT = 0x00000003;
  static const VDS_LT_SIMPLE = 0x0000000a;
  static const VDS_LT_SPAN = 0x0000000b;
  static const VDS_LT_STRIPE = 0x0000000c;
  static const VDS_LT_MIRROR = 0x0000000d;
  static const VDS_LT_PARITY = 0x0000000e;
  static const VDS_LT_RAID2 = 0x0000000f;
  static const VDS_LT_RAID3 = 0x00000010;
  static const VDS_LT_RAID4 = 0x00000011;
  static const VDS_LT_RAID5 = 0x00000012;
  static const VDS_LT_RAID6 = 0x00000013;
  static const VDS_LT_RAID01 = 0x00000014;
  static const VDS_LT_RAID03 = 0x00000015;
  static const VDS_LT_RAID05 = 0x00000016;
  static const VDS_LT_RAID10 = 0x00000017;
  static const VDS_LT_RAID15 = 0x00000018;
  static const VDS_LT_RAID30 = 0x00000019;
  static const VDS_LT_RAID50 = 0x0000001a;
  static const VDS_LT_RAID51 = 0x0000001b;
  static const VDS_LT_RAID53 = 0x0000001c;
  static const VDS_LT_RAID60 = 0x0000001d;
  static const VDS_LT_RAID61 = 0x0000001e;
}

/// {@category Enum}
class VDS_LUN_STATUS {
  static const VDS_LS_UNKNOWN = 0x00000000;
  static const VDS_LS_ONLINE = 0x00000001;
  static const VDS_LS_NOT_READY = 0x00000002;
  static const VDS_LS_OFFLINE = 0x00000004;
  static const VDS_LS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_LUN_FLAG {
  static const VDS_LF_LBN_REMAP_ENABLED = 0x00000001;
  static const VDS_LF_READ_BACK_VERIFY_ENABLED = 0x00000002;
  static const VDS_LF_WRITE_THROUGH_CACHING_ENABLED = 0x00000004;
  static const VDS_LF_HARDWARE_CHECKSUM_ENABLED = 0x00000008;
  static const VDS_LF_READ_CACHE_ENABLED = 0x00000010;
  static const VDS_LF_WRITE_CACHE_ENABLED = 0x00000020;
  static const VDS_LF_MEDIA_SCAN_ENABLED = 0x00000040;
  static const VDS_LF_CONSISTENCY_CHECK_ENABLED = 0x00000080;
  static const VDS_LF_SNAPSHOT = 0x00000100;
}

/// {@category Enum}
class VDS_LUN_PLEX_TYPE {
  static const VDS_LPT_UNKNOWN = 0x00000000;
  static const VDS_LPT_SIMPLE = 0x0000000a;
  static const VDS_LPT_SPAN = 0x0000000b;
  static const VDS_LPT_STRIPE = 0x0000000c;
  static const VDS_LPT_PARITY = 0x0000000e;
  static const VDS_LPT_RAID2 = 0x0000000f;
  static const VDS_LPT_RAID3 = 0x00000010;
  static const VDS_LPT_RAID4 = 0x00000011;
  static const VDS_LPT_RAID5 = 0x00000012;
  static const VDS_LPT_RAID6 = 0x00000013;
  static const VDS_LPT_RAID03 = 0x00000015;
  static const VDS_LPT_RAID05 = 0x00000016;
  static const VDS_LPT_RAID10 = 0x00000017;
  static const VDS_LPT_RAID15 = 0x00000018;
  static const VDS_LPT_RAID30 = 0x00000019;
  static const VDS_LPT_RAID50 = 0x0000001a;
  static const VDS_LPT_RAID53 = 0x0000001c;
  static const VDS_LPT_RAID60 = 0x0000001d;
}

/// {@category Enum}
class VDS_LUN_PLEX_STATUS {
  static const VDS_LPS_UNKNOWN = 0x00000000;
  static const VDS_LPS_ONLINE = 0x00000001;
  static const VDS_LPS_NOT_READY = 0x00000002;
  static const VDS_LPS_OFFLINE = 0x00000004;
  static const VDS_LPS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_LUN_PLEX_FLAG {
  static const VDS_LPF_LBN_REMAP_ENABLED = 0x00000001;
}

/// {@category Enum}
class VDS_ISCSI_PORTAL_STATUS {
  static const VDS_IPS_UNKNOWN = 0x00000000;
  static const VDS_IPS_ONLINE = 0x00000001;
  static const VDS_IPS_NOT_READY = 0x00000002;
  static const VDS_IPS_OFFLINE = 0x00000004;
  static const VDS_IPS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_STORAGE_POOL_STATUS {
  static const VDS_SPS_UNKNOWN = 0x00000000;
  static const VDS_SPS_ONLINE = 0x00000001;
  static const VDS_SPS_NOT_READY = 0x00000002;
  static const VDS_SPS_OFFLINE = 0x00000004;
}

/// {@category Enum}
class VDS_STORAGE_POOL_TYPE {
  static const VDS_SPT_UNKNOWN = 0x00000000;
  static const VDS_SPT_PRIMORDIAL = 0x00000001;
  static const VDS_SPT_CONCRETE = 0x00000002;
}

/// {@category Enum}
class VDS_MAINTENANCE_OPERATION {
  static const BlinkLight = 0x00000001;
  static const BeepAlarm = 0x00000002;
  static const SpinDown = 0x00000003;
  static const SpinUp = 0x00000004;
  static const Ping = 0x00000005;
}

/// {@category Enum}
class VDS_RAID_TYPE {
  static const VDS_RT_UNKNOWN = 0x00000000;
  static const VDS_RT_RAID0 = 0x0000000a;
  static const VDS_RT_RAID1 = 0x0000000b;
  static const VDS_RT_RAID2 = 0x0000000c;
  static const VDS_RT_RAID3 = 0x0000000d;
  static const VDS_RT_RAID4 = 0x0000000e;
  static const VDS_RT_RAID5 = 0x0000000f;
  static const VDS_RT_RAID6 = 0x00000010;
  static const VDS_RT_RAID01 = 0x00000011;
  static const VDS_RT_RAID03 = 0x00000012;
  static const VDS_RT_RAID05 = 0x00000013;
  static const VDS_RT_RAID10 = 0x00000014;
  static const VDS_RT_RAID15 = 0x00000015;
  static const VDS_RT_RAID30 = 0x00000016;
  static const VDS_RT_RAID50 = 0x00000017;
  static const VDS_RT_RAID51 = 0x00000018;
  static const VDS_RT_RAID53 = 0x00000019;
  static const VDS_RT_RAID60 = 0x0000001a;
  static const VDS_RT_RAID61 = 0x0000001b;
}

/// {@category Enum}
class VSS_OBJECT_TYPE {
  static const VSS_OBJECT_UNKNOWN = 0x00000000;
  static const VSS_OBJECT_NONE = 0x00000001;
  static const VSS_OBJECT_SNAPSHOT_SET = 0x00000002;
  static const VSS_OBJECT_SNAPSHOT = 0x00000003;
  static const VSS_OBJECT_PROVIDER = 0x00000004;
  static const VSS_OBJECT_TYPE_COUNT = 0x00000005;
}

/// {@category Enum}
class VSS_SNAPSHOT_STATE {
  static const VSS_SS_UNKNOWN = 0x00000000;
  static const VSS_SS_PREPARING = 0x00000001;
  static const VSS_SS_PROCESSING_PREPARE = 0x00000002;
  static const VSS_SS_PREPARED = 0x00000003;
  static const VSS_SS_PROCESSING_PRECOMMIT = 0x00000004;
  static const VSS_SS_PRECOMMITTED = 0x00000005;
  static const VSS_SS_PROCESSING_COMMIT = 0x00000006;
  static const VSS_SS_COMMITTED = 0x00000007;
  static const VSS_SS_PROCESSING_POSTCOMMIT = 0x00000008;
  static const VSS_SS_PROCESSING_PREFINALCOMMIT = 0x00000009;
  static const VSS_SS_PREFINALCOMMITTED = 0x0000000a;
  static const VSS_SS_PROCESSING_POSTFINALCOMMIT = 0x0000000b;
  static const VSS_SS_CREATED = 0x0000000c;
  static const VSS_SS_ABORTED = 0x0000000d;
  static const VSS_SS_DELETED = 0x0000000e;
  static const VSS_SS_POSTCOMMITTED = 0x0000000f;
  static const VSS_SS_COUNT = 0x00000010;
}

/// {@category Enum}
class VSS_VOLUME_SNAPSHOT_ATTRIBUTES {
  static const VSS_VOLSNAP_ATTR_PERSISTENT = 0x00000001;
  static const VSS_VOLSNAP_ATTR_NO_AUTORECOVERY = 0x00000002;
  static const VSS_VOLSNAP_ATTR_CLIENT_ACCESSIBLE = 0x00000004;
  static const VSS_VOLSNAP_ATTR_NO_AUTO_RELEASE = 0x00000008;
  static const VSS_VOLSNAP_ATTR_NO_WRITERS = 0x00000010;
  static const VSS_VOLSNAP_ATTR_TRANSPORTABLE = 0x00000020;
  static const VSS_VOLSNAP_ATTR_NOT_SURFACED = 0x00000040;
  static const VSS_VOLSNAP_ATTR_NOT_TRANSACTED = 0x00000080;
  static const VSS_VOLSNAP_ATTR_HARDWARE_ASSISTED = 0x00010000;
  static const VSS_VOLSNAP_ATTR_DIFFERENTIAL = 0x00020000;
  static const VSS_VOLSNAP_ATTR_PLEX = 0x00040000;
  static const VSS_VOLSNAP_ATTR_IMPORTED = 0x00080000;
  static const VSS_VOLSNAP_ATTR_EXPOSED_LOCALLY = 0x00100000;
  static const VSS_VOLSNAP_ATTR_EXPOSED_REMOTELY = 0x00200000;
  static const VSS_VOLSNAP_ATTR_AUTORECOVER = 0x00400000;
  static const VSS_VOLSNAP_ATTR_ROLLBACK_RECOVERY = 0x00800000;
  static const VSS_VOLSNAP_ATTR_DELAYED_POSTSNAPSHOT = 0x01000000;
  static const VSS_VOLSNAP_ATTR_TXF_RECOVERY = 0x02000000;
  static const VSS_VOLSNAP_ATTR_FILE_SHARE = 0x04000000;
}

/// {@category Enum}
class VSS_SNAPSHOT_CONTEXT {
  static const VSS_CTX_BACKUP = 0x00000000;
  static const VSS_CTX_FILE_SHARE_BACKUP = 0x00000010;
  static const VSS_CTX_NAS_ROLLBACK = 0x00000019;
  static const VSS_CTX_APP_ROLLBACK = 0x00000009;
  static const VSS_CTX_CLIENT_ACCESSIBLE = 0x0000001d;
  static const VSS_CTX_CLIENT_ACCESSIBLE_WRITERS = 0x0000000d;
  static const VSS_CTX_ALL = 0xffffffff;
}

/// {@category Enum}
class VSS_PROVIDER_CAPABILITIES {
  static const VSS_PRV_CAPABILITY_LEGACY = 0x00000001;
  static const VSS_PRV_CAPABILITY_COMPLIANT = 0x00000002;
  static const VSS_PRV_CAPABILITY_LUN_REPOINT = 0x00000004;
  static const VSS_PRV_CAPABILITY_LUN_RESYNC = 0x00000008;
  static const VSS_PRV_CAPABILITY_OFFLINE_CREATION = 0x00000010;
  static const VSS_PRV_CAPABILITY_MULTIPLE_IMPORT = 0x00000020;
  static const VSS_PRV_CAPABILITY_RECYCLING = 0x00000040;
  static const VSS_PRV_CAPABILITY_PLEX = 0x00000080;
  static const VSS_PRV_CAPABILITY_DIFFERENTIAL = 0x00000100;
  static const VSS_PRV_CAPABILITY_CLUSTERED = 0x00000200;
}

/// {@category Enum}
class VSS_HARDWARE_OPTIONS {
  static const VSS_BREAKEX_FLAG_MASK_LUNS = 0x00000001;
  static const VSS_BREAKEX_FLAG_MAKE_READ_WRITE = 0x00000002;
  static const VSS_BREAKEX_FLAG_REVERT_IDENTITY_ALL = 0x00000004;
  static const VSS_BREAKEX_FLAG_REVERT_IDENTITY_NONE = 0x00000008;
  static const VSS_ONLUNSTATECHANGE_NOTIFY_READ_WRITE = 0x00000100;
  static const VSS_ONLUNSTATECHANGE_NOTIFY_LUN_PRE_RECOVERY = 0x00000200;
  static const VSS_ONLUNSTATECHANGE_NOTIFY_LUN_POST_RECOVERY = 0x00000400;
  static const VSS_ONLUNSTATECHANGE_DO_MASK_LUNS = 0x00000800;
}

/// {@category Enum}
class VSS_RECOVERY_OPTIONS {
  static const VSS_RECOVERY_REVERT_IDENTITY_ALL = 0x00000100;
  static const VSS_RECOVERY_NO_VOLUME_CHECK = 0x00000200;
}

/// {@category Enum}
class VSS_WRITER_STATE {
  static const VSS_WS_UNKNOWN = 0x00000000;
  static const VSS_WS_STABLE = 0x00000001;
  static const VSS_WS_WAITING_FOR_FREEZE = 0x00000002;
  static const VSS_WS_WAITING_FOR_THAW = 0x00000003;
  static const VSS_WS_WAITING_FOR_POST_SNAPSHOT = 0x00000004;
  static const VSS_WS_WAITING_FOR_BACKUP_COMPLETE = 0x00000005;
  static const VSS_WS_FAILED_AT_IDENTIFY = 0x00000006;
  static const VSS_WS_FAILED_AT_PREPARE_BACKUP = 0x00000007;
  static const VSS_WS_FAILED_AT_PREPARE_SNAPSHOT = 0x00000008;
  static const VSS_WS_FAILED_AT_FREEZE = 0x00000009;
  static const VSS_WS_FAILED_AT_THAW = 0x0000000a;
  static const VSS_WS_FAILED_AT_POST_SNAPSHOT = 0x0000000b;
  static const VSS_WS_FAILED_AT_BACKUP_COMPLETE = 0x0000000c;
  static const VSS_WS_FAILED_AT_PRE_RESTORE = 0x0000000d;
  static const VSS_WS_FAILED_AT_POST_RESTORE = 0x0000000e;
  static const VSS_WS_FAILED_AT_BACKUPSHUTDOWN = 0x0000000f;
  static const VSS_WS_COUNT = 0x00000010;
}

/// {@category Enum}
class VSS_BACKUP_TYPE {
  static const VSS_BT_UNDEFINED = 0x00000000;
  static const VSS_BT_FULL = 0x00000001;
  static const VSS_BT_INCREMENTAL = 0x00000002;
  static const VSS_BT_DIFFERENTIAL = 0x00000003;
  static const VSS_BT_LOG = 0x00000004;
  static const VSS_BT_COPY = 0x00000005;
  static const VSS_BT_OTHER = 0x00000006;
}

/// {@category Enum}
class VSS_RESTORE_TYPE {
  static const VSS_RTYPE_UNDEFINED = 0x00000000;
  static const VSS_RTYPE_BY_COPY = 0x00000001;
  static const VSS_RTYPE_IMPORT = 0x00000002;
  static const VSS_RTYPE_OTHER = 0x00000003;
}

/// {@category Enum}
class VSS_ROLLFORWARD_TYPE {
  static const VSS_RF_UNDEFINED = 0x00000000;
  static const VSS_RF_NONE = 0x00000001;
  static const VSS_RF_ALL = 0x00000002;
  static const VSS_RF_PARTIAL = 0x00000003;
}

/// {@category Enum}
class VSS_PROVIDER_TYPE {
  static const VSS_PROV_UNKNOWN = 0x00000000;
  static const VSS_PROV_SYSTEM = 0x00000001;
  static const VSS_PROV_SOFTWARE = 0x00000002;
  static const VSS_PROV_HARDWARE = 0x00000003;
  static const VSS_PROV_FILESHARE = 0x00000004;
}

/// {@category Enum}
class VSS_APPLICATION_LEVEL {
  static const VSS_APP_UNKNOWN = 0x00000000;
  static const VSS_APP_SYSTEM = 0x00000001;
  static const VSS_APP_BACK_END = 0x00000002;
  static const VSS_APP_FRONT_END = 0x00000003;
  static const VSS_APP_SYSTEM_RM = 0x00000004;
  static const VSS_APP_AUTO = 0xffffffff;
}

/// {@category Enum}
class VSS_SNAPSHOT_COMPATIBILITY {
  static const VSS_SC_DISABLE_DEFRAG = 0x00000001;
  static const VSS_SC_DISABLE_CONTENTINDEX = 0x00000002;
}

/// {@category Enum}
class VSS_SNAPSHOT_PROPERTY_ID {
  static const VSS_SPROPID_UNKNOWN = 0x00000000;
  static const VSS_SPROPID_SNAPSHOT_ID = 0x00000001;
  static const VSS_SPROPID_SNAPSHOT_SET_ID = 0x00000002;
  static const VSS_SPROPID_SNAPSHOTS_COUNT = 0x00000003;
  static const VSS_SPROPID_SNAPSHOT_DEVICE = 0x00000004;
  static const VSS_SPROPID_ORIGINAL_VOLUME = 0x00000005;
  static const VSS_SPROPID_ORIGINATING_MACHINE = 0x00000006;
  static const VSS_SPROPID_SERVICE_MACHINE = 0x00000007;
  static const VSS_SPROPID_EXPOSED_NAME = 0x00000008;
  static const VSS_SPROPID_EXPOSED_PATH = 0x00000009;
  static const VSS_SPROPID_PROVIDER_ID = 0x0000000a;
  static const VSS_SPROPID_SNAPSHOT_ATTRIBUTES = 0x0000000b;
  static const VSS_SPROPID_CREATION_TIMESTAMP = 0x0000000c;
  static const VSS_SPROPID_STATUS = 0x0000000d;
}

/// {@category Enum}
class VSS_FILE_SPEC_BACKUP_TYPE {
  static const VSS_FSBT_FULL_BACKUP_REQUIRED = 0x00000001;
  static const VSS_FSBT_DIFFERENTIAL_BACKUP_REQUIRED = 0x00000002;
  static const VSS_FSBT_INCREMENTAL_BACKUP_REQUIRED = 0x00000004;
  static const VSS_FSBT_LOG_BACKUP_REQUIRED = 0x00000008;
  static const VSS_FSBT_FULL_SNAPSHOT_REQUIRED = 0x00000100;
  static const VSS_FSBT_DIFFERENTIAL_SNAPSHOT_REQUIRED = 0x00000200;
  static const VSS_FSBT_INCREMENTAL_SNAPSHOT_REQUIRED = 0x00000400;
  static const VSS_FSBT_LOG_SNAPSHOT_REQUIRED = 0x00000800;
  static const VSS_FSBT_CREATED_DURING_BACKUP = 0x00010000;
  static const VSS_FSBT_ALL_BACKUP_REQUIRED = 0x0000000f;
  static const VSS_FSBT_ALL_SNAPSHOT_REQUIRED = 0x00000f00;
}

/// {@category Enum}
class VSS_BACKUP_SCHEMA {
  static const VSS_BS_UNDEFINED = 0x00000000;
  static const VSS_BS_DIFFERENTIAL = 0x00000001;
  static const VSS_BS_INCREMENTAL = 0x00000002;
  static const VSS_BS_EXCLUSIVE_INCREMENTAL_DIFFERENTIAL = 0x00000004;
  static const VSS_BS_LOG = 0x00000008;
  static const VSS_BS_COPY = 0x00000010;
  static const VSS_BS_TIMESTAMPED = 0x00000020;
  static const VSS_BS_LAST_MODIFY = 0x00000040;
  static const VSS_BS_LSN = 0x00000080;
  static const VSS_BS_WRITER_SUPPORTS_NEW_TARGET = 0x00000100;
  static const VSS_BS_WRITER_SUPPORTS_RESTORE_WITH_MOVE = 0x00000200;
  static const VSS_BS_INDEPENDENT_SYSTEM_STATE = 0x00000400;
  static const VSS_BS_ROLLFORWARD_RESTORE = 0x00001000;
  static const VSS_BS_RESTORE_RENAME = 0x00002000;
  static const VSS_BS_AUTHORITATIVE_RESTORE = 0x00004000;
  static const VSS_BS_WRITER_SUPPORTS_PARALLEL_RESTORES = 0x00008000;
}

/// {@category Enum}
class VSS_USAGE_TYPE {
  static const VSS_UT_UNDEFINED = 0x00000000;
  static const VSS_UT_BOOTABLESYSTEMSTATE = 0x00000001;
  static const VSS_UT_SYSTEMSERVICE = 0x00000002;
  static const VSS_UT_USERDATA = 0x00000003;
  static const VSS_UT_OTHER = 0x00000004;
}

/// {@category Enum}
class VSS_SOURCE_TYPE {
  static const VSS_ST_UNDEFINED = 0x00000000;
  static const VSS_ST_TRANSACTEDDB = 0x00000001;
  static const VSS_ST_NONTRANSACTEDDB = 0x00000002;
  static const VSS_ST_OTHER = 0x00000003;
}

/// {@category Enum}
class VSS_RESTOREMETHOD_ENUM {
  static const VSS_RME_UNDEFINED = 0x00000000;
  static const VSS_RME_RESTORE_IF_NOT_THERE = 0x00000001;
  static const VSS_RME_RESTORE_IF_CAN_REPLACE = 0x00000002;
  static const VSS_RME_STOP_RESTORE_START = 0x00000003;
  static const VSS_RME_RESTORE_TO_ALTERNATE_LOCATION = 0x00000004;
  static const VSS_RME_RESTORE_AT_REBOOT = 0x00000005;
  static const VSS_RME_RESTORE_AT_REBOOT_IF_CANNOT_REPLACE = 0x00000006;
  static const VSS_RME_CUSTOM = 0x00000007;
  static const VSS_RME_RESTORE_STOP_START = 0x00000008;
}

/// {@category Enum}
class VSS_WRITERRESTORE_ENUM {
  static const VSS_WRE_UNDEFINED = 0x00000000;
  static const VSS_WRE_NEVER = 0x00000001;
  static const VSS_WRE_IF_REPLACE_FAILS = 0x00000002;
  static const VSS_WRE_ALWAYS = 0x00000003;
}

/// {@category Enum}
class VSS_COMPONENT_TYPE {
  static const VSS_CT_UNDEFINED = 0x00000000;
  static const VSS_CT_DATABASE = 0x00000001;
  static const VSS_CT_FILEGROUP = 0x00000002;
}

/// {@category Enum}
class VSS_ALTERNATE_WRITER_STATE {
  static const VSS_AWS_UNDEFINED = 0x00000000;
  static const VSS_AWS_NO_ALTERNATE_WRITER = 0x00000001;
  static const VSS_AWS_ALTERNATE_WRITER_EXISTS = 0x00000002;
  static const VSS_AWS_THIS_IS_ALTERNATE_WRITER = 0x00000003;
}

/// {@category Enum}
class VSS_SUBSCRIBE_MASK {
  static const VSS_SM_POST_SNAPSHOT_FLAG = 0x00000001;
  static const VSS_SM_BACKUP_EVENTS_FLAG = 0x00000002;
  static const VSS_SM_RESTORE_EVENTS_FLAG = 0x00000004;
  static const VSS_SM_IO_THROTTLING_FLAG = 0x00000008;
  static const VSS_SM_ALL_FLAGS = 0xffffffff;
}

/// {@category Enum}
class VSS_RESTORE_TARGET {
  static const VSS_RT_UNDEFINED = 0x00000000;
  static const VSS_RT_ORIGINAL = 0x00000001;
  static const VSS_RT_ALTERNATE = 0x00000002;
  static const VSS_RT_DIRECTED = 0x00000003;
  static const VSS_RT_ORIGINAL_LOCATION = 0x00000004;
}

/// {@category Enum}
class VSS_FILE_RESTORE_STATUS {
  static const VSS_RS_UNDEFINED = 0x00000000;
  static const VSS_RS_NONE = 0x00000001;
  static const VSS_RS_ALL = 0x00000002;
  static const VSS_RS_FAILED = 0x00000003;
}

/// {@category Enum}
class VSS_COMPONENT_FLAGS {
  static const VSS_CF_BACKUP_RECOVERY = 0x00000001;
  static const VSS_CF_APP_ROLLBACK_RECOVERY = 0x00000002;
  static const VSS_CF_NOT_SYSTEM_STATE = 0x00000004;
}

/// {@category Enum}
class VSS_MGMT_OBJECT_TYPE {
  static const VSS_MGMT_OBJECT_UNKNOWN = 0x00000000;
  static const VSS_MGMT_OBJECT_VOLUME = 0x00000001;
  static const VSS_MGMT_OBJECT_DIFF_VOLUME = 0x00000002;
  static const VSS_MGMT_OBJECT_DIFF_AREA = 0x00000003;
}

/// {@category Enum}
class VSS_PROTECTION_LEVEL {
  static const VSS_PROTECTION_LEVEL_ORIGINAL_VOLUME = 0x00000000;
  static const VSS_PROTECTION_LEVEL_SNAPSHOT = 0x00000001;
}

/// {@category Enum}
class VSS_PROTECTION_FAULT {
  static const VSS_PROTECTION_FAULT_NONE = 0x00000000;
  static const VSS_PROTECTION_FAULT_DIFF_AREA_MISSING = 0x00000001;
  static const VSS_PROTECTION_FAULT_IO_FAILURE_DURING_ONLINE = 0x00000002;
  static const VSS_PROTECTION_FAULT_META_DATA_CORRUPTION = 0x00000003;
  static const VSS_PROTECTION_FAULT_MEMORY_ALLOCATION_FAILURE = 0x00000004;
  static const VSS_PROTECTION_FAULT_MAPPED_MEMORY_FAILURE = 0x00000005;
  static const VSS_PROTECTION_FAULT_COW_READ_FAILURE = 0x00000006;
  static const VSS_PROTECTION_FAULT_COW_WRITE_FAILURE = 0x00000007;
  static const VSS_PROTECTION_FAULT_DIFF_AREA_FULL = 0x00000008;
  static const VSS_PROTECTION_FAULT_GROW_TOO_SLOW = 0x00000009;
  static const VSS_PROTECTION_FAULT_GROW_FAILED = 0x0000000a;
  static const VSS_PROTECTION_FAULT_DESTROY_ALL_SNAPSHOTS = 0x0000000b;
  static const VSS_PROTECTION_FAULT_FILE_SYSTEM_FAILURE = 0x0000000c;
  static const VSS_PROTECTION_FAULT_IO_FAILURE = 0x0000000d;
  static const VSS_PROTECTION_FAULT_DIFF_AREA_REMOVED = 0x0000000e;
  static const VSS_PROTECTION_FAULT_EXTERNAL_WRITER_TO_DIFF_AREA = 0x0000000f;
  static const VSS_PROTECTION_FAULT_MOUNT_DURING_CLUSTER_OFFLINE = 0x00000010;
}

/// {@category Enum}
class D3DLIGHTTYPE {
  static const D3DLIGHT_POINT = 0x00000001;
  static const D3DLIGHT_SPOT = 0x00000002;
  static const D3DLIGHT_DIRECTIONAL = 0x00000003;
  static const D3DLIGHT_PARALLELPOINT = 0x00000004;
  static const D3DLIGHT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DOPCODE {
  static const D3DOP_POINT = 0x00000001;
  static const D3DOP_LINE = 0x00000002;
  static const D3DOP_TRIANGLE = 0x00000003;
  static const D3DOP_MATRIXLOAD = 0x00000004;
  static const D3DOP_MATRIXMULTIPLY = 0x00000005;
  static const D3DOP_STATETRANSFORM = 0x00000006;
  static const D3DOP_STATELIGHT = 0x00000007;
  static const D3DOP_STATERENDER = 0x00000008;
  static const D3DOP_PROCESSVERTICES = 0x00000009;
  static const D3DOP_TEXTURELOAD = 0x0000000a;
  static const D3DOP_EXIT = 0x0000000b;
  static const D3DOP_BRANCHFORWARD = 0x0000000c;
  static const D3DOP_SPAN = 0x0000000d;
  static const D3DOP_SETSTATUS = 0x0000000e;
  static const D3DOP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADEMODE {
  static const D3DSHADE_FLAT = 0x00000001;
  static const D3DSHADE_GOURAUD = 0x00000002;
  static const D3DSHADE_PHONG = 0x00000003;
  static const D3DSHADE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DFILLMODE {
  static const D3DFILL_POINT = 0x00000001;
  static const D3DFILL_WIREFRAME = 0x00000002;
  static const D3DFILL_SOLID = 0x00000003;
  static const D3DFILL_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREFILTER {
  static const D3DFILTER_NEAREST = 0x00000001;
  static const D3DFILTER_LINEAR = 0x00000002;
  static const D3DFILTER_MIPNEAREST = 0x00000003;
  static const D3DFILTER_MIPLINEAR = 0x00000004;
  static const D3DFILTER_LINEARMIPNEAREST = 0x00000005;
  static const D3DFILTER_LINEARMIPLINEAR = 0x00000006;
  static const D3DFILTER_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DBLEND {
  static const D3DBLEND_ZERO = 0x00000001;
  static const D3DBLEND_ONE = 0x00000002;
  static const D3DBLEND_SRCCOLOR = 0x00000003;
  static const D3DBLEND_INVSRCCOLOR = 0x00000004;
  static const D3DBLEND_SRCALPHA = 0x00000005;
  static const D3DBLEND_INVSRCALPHA = 0x00000006;
  static const D3DBLEND_DESTALPHA = 0x00000007;
  static const D3DBLEND_INVDESTALPHA = 0x00000008;
  static const D3DBLEND_DESTCOLOR = 0x00000009;
  static const D3DBLEND_INVDESTCOLOR = 0x0000000a;
  static const D3DBLEND_SRCALPHASAT = 0x0000000b;
  static const D3DBLEND_BOTHSRCALPHA = 0x0000000c;
  static const D3DBLEND_BOTHINVSRCALPHA = 0x0000000d;
  static const D3DBLEND_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREBLEND {
  static const D3DTBLEND_DECAL = 0x00000001;
  static const D3DTBLEND_MODULATE = 0x00000002;
  static const D3DTBLEND_DECALALPHA = 0x00000003;
  static const D3DTBLEND_MODULATEALPHA = 0x00000004;
  static const D3DTBLEND_DECALMASK = 0x00000005;
  static const D3DTBLEND_MODULATEMASK = 0x00000006;
  static const D3DTBLEND_COPY = 0x00000007;
  static const D3DTBLEND_ADD = 0x00000008;
  static const D3DTBLEND_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREADDRESS {
  static const D3DTADDRESS_WRAP = 0x00000001;
  static const D3DTADDRESS_MIRROR = 0x00000002;
  static const D3DTADDRESS_CLAMP = 0x00000003;
  static const D3DTADDRESS_BORDER = 0x00000004;
  static const D3DTADDRESS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DCULL {
  static const D3DCULL_NONE = 0x00000001;
  static const D3DCULL_CW = 0x00000002;
  static const D3DCULL_CCW = 0x00000003;
  static const D3DCULL_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DCMPFUNC {
  static const D3DCMP_NEVER = 0x00000001;
  static const D3DCMP_LESS = 0x00000002;
  static const D3DCMP_EQUAL = 0x00000003;
  static const D3DCMP_LESSEQUAL = 0x00000004;
  static const D3DCMP_GREATER = 0x00000005;
  static const D3DCMP_NOTEQUAL = 0x00000006;
  static const D3DCMP_GREATEREQUAL = 0x00000007;
  static const D3DCMP_ALWAYS = 0x00000008;
  static const D3DCMP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSTENCILOP {
  static const D3DSTENCILOP_KEEP = 0x00000001;
  static const D3DSTENCILOP_ZERO = 0x00000002;
  static const D3DSTENCILOP_REPLACE = 0x00000003;
  static const D3DSTENCILOP_INCRSAT = 0x00000004;
  static const D3DSTENCILOP_DECRSAT = 0x00000005;
  static const D3DSTENCILOP_INVERT = 0x00000006;
  static const D3DSTENCILOP_INCR = 0x00000007;
  static const D3DSTENCILOP_DECR = 0x00000008;
  static const D3DSTENCILOP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DFOGMODE {
  static const D3DFOG_NONE = 0x00000000;
  static const D3DFOG_EXP = 0x00000001;
  static const D3DFOG_EXP2 = 0x00000002;
  static const D3DFOG_LINEAR = 0x00000003;
  static const D3DFOG_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DZBUFFERTYPE {
  static const D3DZB_FALSE = 0x00000000;
  static const D3DZB_TRUE = 0x00000001;
  static const D3DZB_USEW = 0x00000002;
  static const D3DZB_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DANTIALIASMODE {
  static const D3DANTIALIAS_NONE = 0x00000000;
  static const D3DANTIALIAS_SORTDEPENDENT = 0x00000001;
  static const D3DANTIALIAS_SORTINDEPENDENT = 0x00000002;
  static const D3DANTIALIAS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DVERTEXTYPE {
  static const D3DVT_VERTEX = 0x00000001;
  static const D3DVT_LVERTEX = 0x00000002;
  static const D3DVT_TLVERTEX = 0x00000003;
  static const D3DVT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DPRIMITIVETYPE {
  static const D3DPT_POINTLIST = 0x00000001;
  static const D3DPT_LINELIST = 0x00000002;
  static const D3DPT_LINESTRIP = 0x00000003;
  static const D3DPT_TRIANGLELIST = 0x00000004;
  static const D3DPT_TRIANGLESTRIP = 0x00000005;
  static const D3DPT_TRIANGLEFAN = 0x00000006;
  static const D3DPT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTRANSFORMSTATETYPE {
  static const D3DTRANSFORMSTATE_WORLD = 0x00000001;
  static const D3DTRANSFORMSTATE_VIEW = 0x00000002;
  static const D3DTRANSFORMSTATE_PROJECTION = 0x00000003;
  static const D3DTRANSFORMSTATE_WORLD1 = 0x00000004;
  static const D3DTRANSFORMSTATE_WORLD2 = 0x00000005;
  static const D3DTRANSFORMSTATE_WORLD3 = 0x00000006;
  static const D3DTRANSFORMSTATE_TEXTURE0 = 0x00000010;
  static const D3DTRANSFORMSTATE_TEXTURE1 = 0x00000011;
  static const D3DTRANSFORMSTATE_TEXTURE2 = 0x00000012;
  static const D3DTRANSFORMSTATE_TEXTURE3 = 0x00000013;
  static const D3DTRANSFORMSTATE_TEXTURE4 = 0x00000014;
  static const D3DTRANSFORMSTATE_TEXTURE5 = 0x00000015;
  static const D3DTRANSFORMSTATE_TEXTURE6 = 0x00000016;
  static const D3DTRANSFORMSTATE_TEXTURE7 = 0x00000017;
  static const D3DTRANSFORMSTATE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DLIGHTSTATETYPE {
  static const D3DLIGHTSTATE_MATERIAL = 0x00000001;
  static const D3DLIGHTSTATE_AMBIENT = 0x00000002;
  static const D3DLIGHTSTATE_COLORMODEL = 0x00000003;
  static const D3DLIGHTSTATE_FOGMODE = 0x00000004;
  static const D3DLIGHTSTATE_FOGSTART = 0x00000005;
  static const D3DLIGHTSTATE_FOGEND = 0x00000006;
  static const D3DLIGHTSTATE_FOGDENSITY = 0x00000007;
  static const D3DLIGHTSTATE_COLORVERTEX = 0x00000008;
  static const D3DLIGHTSTATE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DRENDERSTATETYPE {
  static const D3DRENDERSTATE_ANTIALIAS = 0x00000002;
  static const D3DRENDERSTATE_TEXTUREPERSPECTIVE = 0x00000004;
  static const D3DRENDERSTATE_ZENABLE = 0x00000007;
  static const D3DRENDERSTATE_FILLMODE = 0x00000008;
  static const D3DRENDERSTATE_SHADEMODE = 0x00000009;
  static const D3DRENDERSTATE_LINEPATTERN = 0x0000000a;
  static const D3DRENDERSTATE_ZWRITEENABLE = 0x0000000e;
  static const D3DRENDERSTATE_ALPHATESTENABLE = 0x0000000f;
  static const D3DRENDERSTATE_LASTPIXEL = 0x00000010;
  static const D3DRENDERSTATE_SRCBLEND = 0x00000013;
  static const D3DRENDERSTATE_DESTBLEND = 0x00000014;
  static const D3DRENDERSTATE_CULLMODE = 0x00000016;
  static const D3DRENDERSTATE_ZFUNC = 0x00000017;
  static const D3DRENDERSTATE_ALPHAREF = 0x00000018;
  static const D3DRENDERSTATE_ALPHAFUNC = 0x00000019;
  static const D3DRENDERSTATE_DITHERENABLE = 0x0000001a;
  static const D3DRENDERSTATE_ALPHABLENDENABLE = 0x0000001b;
  static const D3DRENDERSTATE_FOGENABLE = 0x0000001c;
  static const D3DRENDERSTATE_SPECULARENABLE = 0x0000001d;
  static const D3DRENDERSTATE_ZVISIBLE = 0x0000001e;
  static const D3DRENDERSTATE_STIPPLEDALPHA = 0x00000021;
  static const D3DRENDERSTATE_FOGCOLOR = 0x00000022;
  static const D3DRENDERSTATE_FOGTABLEMODE = 0x00000023;
  static const D3DRENDERSTATE_FOGSTART = 0x00000024;
  static const D3DRENDERSTATE_FOGEND = 0x00000025;
  static const D3DRENDERSTATE_FOGDENSITY = 0x00000026;
  static const D3DRENDERSTATE_EDGEANTIALIAS = 0x00000028;
  static const D3DRENDERSTATE_COLORKEYENABLE = 0x00000029;
  static const D3DRENDERSTATE_ZBIAS = 0x0000002f;
  static const D3DRENDERSTATE_RANGEFOGENABLE = 0x00000030;
  static const D3DRENDERSTATE_STENCILENABLE = 0x00000034;
  static const D3DRENDERSTATE_STENCILFAIL = 0x00000035;
  static const D3DRENDERSTATE_STENCILZFAIL = 0x00000036;
  static const D3DRENDERSTATE_STENCILPASS = 0x00000037;
  static const D3DRENDERSTATE_STENCILFUNC = 0x00000038;
  static const D3DRENDERSTATE_STENCILREF = 0x00000039;
  static const D3DRENDERSTATE_STENCILMASK = 0x0000003a;
  static const D3DRENDERSTATE_STENCILWRITEMASK = 0x0000003b;
  static const D3DRENDERSTATE_TEXTUREFACTOR = 0x0000003c;
  static const D3DRENDERSTATE_WRAP0 = 0x00000080;
  static const D3DRENDERSTATE_WRAP1 = 0x00000081;
  static const D3DRENDERSTATE_WRAP2 = 0x00000082;
  static const D3DRENDERSTATE_WRAP3 = 0x00000083;
  static const D3DRENDERSTATE_WRAP4 = 0x00000084;
  static const D3DRENDERSTATE_WRAP5 = 0x00000085;
  static const D3DRENDERSTATE_WRAP6 = 0x00000086;
  static const D3DRENDERSTATE_WRAP7 = 0x00000087;
  static const D3DRENDERSTATE_CLIPPING = 0x00000088;
  static const D3DRENDERSTATE_LIGHTING = 0x00000089;
  static const D3DRENDERSTATE_EXTENTS = 0x0000008a;
  static const D3DRENDERSTATE_AMBIENT = 0x0000008b;
  static const D3DRENDERSTATE_FOGVERTEXMODE = 0x0000008c;
  static const D3DRENDERSTATE_COLORVERTEX = 0x0000008d;
  static const D3DRENDERSTATE_LOCALVIEWER = 0x0000008e;
  static const D3DRENDERSTATE_NORMALIZENORMALS = 0x0000008f;
  static const D3DRENDERSTATE_COLORKEYBLENDENABLE = 0x00000090;
  static const D3DRENDERSTATE_DIFFUSEMATERIALSOURCE = 0x00000091;
  static const D3DRENDERSTATE_SPECULARMATERIALSOURCE = 0x00000092;
  static const D3DRENDERSTATE_AMBIENTMATERIALSOURCE = 0x00000093;
  static const D3DRENDERSTATE_EMISSIVEMATERIALSOURCE = 0x00000094;
  static const D3DRENDERSTATE_VERTEXBLEND = 0x00000097;
  static const D3DRENDERSTATE_CLIPPLANEENABLE = 0x00000098;
  static const D3DRENDERSTATE_TEXTUREHANDLE = 0x00000001;
  static const D3DRENDERSTATE_TEXTUREADDRESS = 0x00000003;
  static const D3DRENDERSTATE_WRAPU = 0x00000005;
  static const D3DRENDERSTATE_WRAPV = 0x00000006;
  static const D3DRENDERSTATE_MONOENABLE = 0x0000000b;
  static const D3DRENDERSTATE_ROP2 = 0x0000000c;
  static const D3DRENDERSTATE_PLANEMASK = 0x0000000d;
  static const D3DRENDERSTATE_TEXTUREMAG = 0x00000011;
  static const D3DRENDERSTATE_TEXTUREMIN = 0x00000012;
  static const D3DRENDERSTATE_TEXTUREMAPBLEND = 0x00000015;
  static const D3DRENDERSTATE_SUBPIXEL = 0x0000001f;
  static const D3DRENDERSTATE_SUBPIXELX = 0x00000020;
  static const D3DRENDERSTATE_STIPPLEENABLE = 0x00000027;
  static const D3DRENDERSTATE_BORDERCOLOR = 0x0000002b;
  static const D3DRENDERSTATE_TEXTUREADDRESSU = 0x0000002c;
  static const D3DRENDERSTATE_TEXTUREADDRESSV = 0x0000002d;
  static const D3DRENDERSTATE_MIPMAPLODBIAS = 0x0000002e;
  static const D3DRENDERSTATE_ANISOTROPY = 0x00000031;
  static const D3DRENDERSTATE_FLUSHBATCH = 0x00000032;
  static const D3DRENDERSTATE_TRANSLUCENTSORTINDEPENDENT = 0x00000033;
  static const D3DRENDERSTATE_STIPPLEPATTERN00 = 0x00000040;
  static const D3DRENDERSTATE_STIPPLEPATTERN01 = 0x00000041;
  static const D3DRENDERSTATE_STIPPLEPATTERN02 = 0x00000042;
  static const D3DRENDERSTATE_STIPPLEPATTERN03 = 0x00000043;
  static const D3DRENDERSTATE_STIPPLEPATTERN04 = 0x00000044;
  static const D3DRENDERSTATE_STIPPLEPATTERN05 = 0x00000045;
  static const D3DRENDERSTATE_STIPPLEPATTERN06 = 0x00000046;
  static const D3DRENDERSTATE_STIPPLEPATTERN07 = 0x00000047;
  static const D3DRENDERSTATE_STIPPLEPATTERN08 = 0x00000048;
  static const D3DRENDERSTATE_STIPPLEPATTERN09 = 0x00000049;
  static const D3DRENDERSTATE_STIPPLEPATTERN10 = 0x0000004a;
  static const D3DRENDERSTATE_STIPPLEPATTERN11 = 0x0000004b;
  static const D3DRENDERSTATE_STIPPLEPATTERN12 = 0x0000004c;
  static const D3DRENDERSTATE_STIPPLEPATTERN13 = 0x0000004d;
  static const D3DRENDERSTATE_STIPPLEPATTERN14 = 0x0000004e;
  static const D3DRENDERSTATE_STIPPLEPATTERN15 = 0x0000004f;
  static const D3DRENDERSTATE_STIPPLEPATTERN16 = 0x00000050;
  static const D3DRENDERSTATE_STIPPLEPATTERN17 = 0x00000051;
  static const D3DRENDERSTATE_STIPPLEPATTERN18 = 0x00000052;
  static const D3DRENDERSTATE_STIPPLEPATTERN19 = 0x00000053;
  static const D3DRENDERSTATE_STIPPLEPATTERN20 = 0x00000054;
  static const D3DRENDERSTATE_STIPPLEPATTERN21 = 0x00000055;
  static const D3DRENDERSTATE_STIPPLEPATTERN22 = 0x00000056;
  static const D3DRENDERSTATE_STIPPLEPATTERN23 = 0x00000057;
  static const D3DRENDERSTATE_STIPPLEPATTERN24 = 0x00000058;
  static const D3DRENDERSTATE_STIPPLEPATTERN25 = 0x00000059;
  static const D3DRENDERSTATE_STIPPLEPATTERN26 = 0x0000005a;
  static const D3DRENDERSTATE_STIPPLEPATTERN27 = 0x0000005b;
  static const D3DRENDERSTATE_STIPPLEPATTERN28 = 0x0000005c;
  static const D3DRENDERSTATE_STIPPLEPATTERN29 = 0x0000005d;
  static const D3DRENDERSTATE_STIPPLEPATTERN30 = 0x0000005e;
  static const D3DRENDERSTATE_STIPPLEPATTERN31 = 0x0000005f;
  static const D3DRENDERSTATE_FOGTABLESTART = 0x00000024;
  static const D3DRENDERSTATE_FOGTABLEEND = 0x00000025;
  static const D3DRENDERSTATE_FOGTABLEDENSITY = 0x00000026;
  static const D3DRENDERSTATE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DMATERIALCOLORSOURCE {
  static const D3DMCS_MATERIAL = 0x00000000;
  static const D3DMCS_COLOR1 = 0x00000001;
  static const D3DMCS_COLOR2 = 0x00000002;
  static const D3DMCS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTURESTAGESTATETYPE {
  static const D3DTSS_COLOROP = 0x00000001;
  static const D3DTSS_COLORARG1 = 0x00000002;
  static const D3DTSS_COLORARG2 = 0x00000003;
  static const D3DTSS_ALPHAOP = 0x00000004;
  static const D3DTSS_ALPHAARG1 = 0x00000005;
  static const D3DTSS_ALPHAARG2 = 0x00000006;
  static const D3DTSS_BUMPENVMAT00 = 0x00000007;
  static const D3DTSS_BUMPENVMAT01 = 0x00000008;
  static const D3DTSS_BUMPENVMAT10 = 0x00000009;
  static const D3DTSS_BUMPENVMAT11 = 0x0000000a;
  static const D3DTSS_TEXCOORDINDEX = 0x0000000b;
  static const D3DTSS_ADDRESS = 0x0000000c;
  static const D3DTSS_ADDRESSU = 0x0000000d;
  static const D3DTSS_ADDRESSV = 0x0000000e;
  static const D3DTSS_BORDERCOLOR = 0x0000000f;
  static const D3DTSS_MAGFILTER = 0x00000010;
  static const D3DTSS_MINFILTER = 0x00000011;
  static const D3DTSS_MIPFILTER = 0x00000012;
  static const D3DTSS_MIPMAPLODBIAS = 0x00000013;
  static const D3DTSS_MAXMIPLEVEL = 0x00000014;
  static const D3DTSS_MAXANISOTROPY = 0x00000015;
  static const D3DTSS_BUMPENVLSCALE = 0x00000016;
  static const D3DTSS_BUMPENVLOFFSET = 0x00000017;
  static const D3DTSS_TEXTURETRANSFORMFLAGS = 0x00000018;
  static const D3DTSS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREOP {
  static const D3DTOP_DISABLE = 0x00000001;
  static const D3DTOP_SELECTARG1 = 0x00000002;
  static const D3DTOP_SELECTARG2 = 0x00000003;
  static const D3DTOP_MODULATE = 0x00000004;
  static const D3DTOP_MODULATE2X = 0x00000005;
  static const D3DTOP_MODULATE4X = 0x00000006;
  static const D3DTOP_ADD = 0x00000007;
  static const D3DTOP_ADDSIGNED = 0x00000008;
  static const D3DTOP_ADDSIGNED2X = 0x00000009;
  static const D3DTOP_SUBTRACT = 0x0000000a;
  static const D3DTOP_ADDSMOOTH = 0x0000000b;
  static const D3DTOP_BLENDDIFFUSEALPHA = 0x0000000c;
  static const D3DTOP_BLENDTEXTUREALPHA = 0x0000000d;
  static const D3DTOP_BLENDFACTORALPHA = 0x0000000e;
  static const D3DTOP_BLENDTEXTUREALPHAPM = 0x0000000f;
  static const D3DTOP_BLENDCURRENTALPHA = 0x00000010;
  static const D3DTOP_PREMODULATE = 0x00000011;
  static const D3DTOP_MODULATEALPHA_ADDCOLOR = 0x00000012;
  static const D3DTOP_MODULATECOLOR_ADDALPHA = 0x00000013;
  static const D3DTOP_MODULATEINVALPHA_ADDCOLOR = 0x00000014;
  static const D3DTOP_MODULATEINVCOLOR_ADDALPHA = 0x00000015;
  static const D3DTOP_BUMPENVMAP = 0x00000016;
  static const D3DTOP_BUMPENVMAPLUMINANCE = 0x00000017;
  static const D3DTOP_DOTPRODUCT3 = 0x00000018;
  static const D3DTOP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMAGFILTER {
  static const D3DTFG_POINT = 0x00000001;
  static const D3DTFG_LINEAR = 0x00000002;
  static const D3DTFG_FLATCUBIC = 0x00000003;
  static const D3DTFG_GAUSSIANCUBIC = 0x00000004;
  static const D3DTFG_ANISOTROPIC = 0x00000005;
  static const D3DTFG_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMINFILTER {
  static const D3DTFN_POINT = 0x00000001;
  static const D3DTFN_LINEAR = 0x00000002;
  static const D3DTFN_ANISOTROPIC = 0x00000003;
  static const D3DTFN_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMIPFILTER {
  static const D3DTFP_NONE = 0x00000001;
  static const D3DTFP_POINT = 0x00000002;
  static const D3DTFP_LINEAR = 0x00000003;
  static const D3DTFP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSTATEBLOCKTYPE {
  static const D3DSBT_ALL = 0x00000001;
  static const D3DSBT_PIXELSTATE = 0x00000002;
  static const D3DSBT_VERTEXSTATE = 0x00000003;
  static const D3DSBT_FORCE_DWORD = 0xffffffff;
}

/// {@category Enum}
class D3DVERTEXBLENDFLAGS {
  static const D3DVBLEND_DISABLE = 0x00000000;
  static const D3DVBLEND_1WEIGHT = 0x00000001;
  static const D3DVBLEND_2WEIGHTS = 0x00000002;
  static const D3DVBLEND_3WEIGHTS = 0x00000003;
}

/// {@category Enum}
class D3DTEXTURETRANSFORMFLAGS {
  static const D3DTTFF_DISABLE = 0x00000000;
  static const D3DTTFF_COUNT1 = 0x00000001;
  static const D3DTTFF_COUNT2 = 0x00000002;
  static const D3DTTFF_COUNT3 = 0x00000003;
  static const D3DTTFF_COUNT4 = 0x00000004;
  static const D3DTTFF_PROJECTED = 0x00000100;
  static const D3DTTFF_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DNTHAL_DP2OPERATION {
  static const D3DNTDP2OP_POINTS = 0x00000001;
  static const D3DNTDP2OP_INDEXEDLINELIST = 0x00000002;
  static const D3DNTDP2OP_INDEXEDTRIANGLELIST = 0x00000003;
  static const D3DNTDP2OP_RENDERSTATE = 0x00000008;
  static const D3DNTDP2OP_LINELIST = 0x0000000f;
  static const D3DNTDP2OP_LINESTRIP = 0x00000010;
  static const D3DNTDP2OP_INDEXEDLINESTRIP = 0x00000011;
  static const D3DNTDP2OP_TRIANGLELIST = 0x00000012;
  static const D3DNTDP2OP_TRIANGLESTRIP = 0x00000013;
  static const D3DNTDP2OP_INDEXEDTRIANGLESTRIP = 0x00000014;
  static const D3DNTDP2OP_TRIANGLEFAN = 0x00000015;
  static const D3DNTDP2OP_INDEXEDTRIANGLEFAN = 0x00000016;
  static const D3DNTDP2OP_TRIANGLEFAN_IMM = 0x00000017;
  static const D3DNTDP2OP_LINELIST_IMM = 0x00000018;
  static const D3DNTDP2OP_TEXTURESTAGESTATE = 0x00000019;
  static const D3DNTDP2OP_INDEXEDTRIANGLELIST2 = 0x0000001a;
  static const D3DNTDP2OP_INDEXEDLINELIST2 = 0x0000001b;
  static const D3DNTDP2OP_VIEWPORTINFO = 0x0000001c;
  static const D3DNTDP2OP_WINFO = 0x0000001d;
  static const D3DNTDP2OP_SETPALETTE = 0x0000001e;
  static const D3DNTDP2OP_UPDATEPALETTE = 0x0000001f;
  static const D3DNTDP2OP_ZRANGE = 0x00000020;
  static const D3DNTDP2OP_SETMATERIAL = 0x00000021;
  static const D3DNTDP2OP_SETLIGHT = 0x00000022;
  static const D3DNTDP2OP_CREATELIGHT = 0x00000023;
  static const D3DNTDP2OP_SETTRANSFORM = 0x00000024;
  static const D3DNTDP2OP_TEXBLT = 0x00000026;
  static const D3DNTDP2OP_STATESET = 0x00000027;
  static const D3DNTDP2OP_SETPRIORITY = 0x00000028;
  static const D3DNTDP2OP_SETRENDERTARGET = 0x00000029;
  static const D3DNTDP2OP_CLEAR = 0x0000002a;
  static const D3DNTDP2OP_SETTEXLOD = 0x0000002b;
  static const D3DNTDP2OP_SETCLIPPLANE = 0x0000002c;
}

/// {@category Enum}
class ENG_SYSTEM_ATTRIBUTE {
  static const EngProcessorFeature = 0x00000001;
  static const EngNumberOfProcessors = 0x00000002;
  static const EngOptimumAvailableUserMemory = 0x00000003;
  static const EngOptimumAvailableSystemMemory = 0x00000004;
}

/// {@category Enum}
class ENG_DEVICE_ATTRIBUTE {
  static const QDA_RESERVED = 0x00000000;
  static const QDA_ACCELERATION_LEVEL = 0x00000001;
}

/// {@category Enum}
class DEVPROPSTORE {
  static const DEVPROP_STORE_SYSTEM = 0x00000000;
  static const DEVPROP_STORE_USER = 0x00000001;
}

/// {@category Enum}
class PWM_POLARITY {
  static const PWM_ACTIVE_HIGH = 0x00000000;
  static const PWM_ACTIVE_LOW = 0x00000001;
}

/// {@category Enum}
class ENCLAVE_SEALING_IDENTITY_POLICY {
  static const ENCLAVE_IDENTITY_POLICY_SEAL_INVALID = 0x00000000;
  static const ENCLAVE_IDENTITY_POLICY_SEAL_EXACT_CODE = 0x00000001;
  static const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_PRIMARY_CODE = 0x00000002;
  static const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_IMAGE = 0x00000003;
  static const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_FAMILY = 0x00000004;
  static const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_AUTHOR = 0x00000005;
}

/// {@category Enum}
class EFFECTIVE_POWER_MODE {
  static const EffectivePowerModeBatterySaver = 0x00000000;
  static const EffectivePowerModeBetterBattery = 0x00000001;
  static const EffectivePowerModeBalanced = 0x00000002;
  static const EffectivePowerModeHighPerformance = 0x00000003;
  static const EffectivePowerModeMaxPerformance = 0x00000004;
  static const EffectivePowerModeGameMode = 0x00000005;
  static const EffectivePowerModeMixedReality = 0x00000006;
}

/// {@category Enum}
class POWER_DATA_ACCESSOR {
  static const ACCESS_AC_POWER_SETTING_INDEX = 0x00000000;
  static const ACCESS_DC_POWER_SETTING_INDEX = 0x00000001;
  static const ACCESS_FRIENDLY_NAME = 0x00000002;
  static const ACCESS_DESCRIPTION = 0x00000003;
  static const ACCESS_POSSIBLE_POWER_SETTING = 0x00000004;
  static const ACCESS_POSSIBLE_POWER_SETTING_FRIENDLY_NAME = 0x00000005;
  static const ACCESS_POSSIBLE_POWER_SETTING_DESCRIPTION = 0x00000006;
  static const ACCESS_DEFAULT_AC_POWER_SETTING = 0x00000007;
  static const ACCESS_DEFAULT_DC_POWER_SETTING = 0x00000008;
  static const ACCESS_POSSIBLE_VALUE_MIN = 0x00000009;
  static const ACCESS_POSSIBLE_VALUE_MAX = 0x0000000a;
  static const ACCESS_POSSIBLE_VALUE_INCREMENT = 0x0000000b;
  static const ACCESS_POSSIBLE_VALUE_UNITS = 0x0000000c;
  static const ACCESS_ICON_RESOURCE = 0x0000000d;
  static const ACCESS_DEFAULT_SECURITY_DESCRIPTOR = 0x0000000e;
  static const ACCESS_ATTRIBUTES = 0x0000000f;
  static const ACCESS_SCHEME = 0x00000010;
  static const ACCESS_SUBGROUP = 0x00000011;
  static const ACCESS_INDIVIDUAL_SETTING = 0x00000012;
  static const ACCESS_ACTIVE_SCHEME = 0x00000013;
  static const ACCESS_CREATE_SCHEME = 0x00000014;
  static const ACCESS_AC_POWER_SETTING_MAX = 0x00000015;
  static const ACCESS_DC_POWER_SETTING_MAX = 0x00000016;
  static const ACCESS_AC_POWER_SETTING_MIN = 0x00000017;
  static const ACCESS_DC_POWER_SETTING_MIN = 0x00000018;
  static const ACCESS_PROFILE = 0x00000019;
  static const ACCESS_OVERLAY_SCHEME = 0x0000001a;
  static const ACCESS_ACTIVE_OVERLAY_SCHEME = 0x0000001b;
}

/// {@category Enum}
class BATTERY_QUERY_INFORMATION_LEVEL {
  static const BatteryInformation = 0x00000000;
  static const BatteryGranularityInformation = 0x00000001;
  static const BatteryTemperature = 0x00000002;
  static const BatteryEstimatedTime = 0x00000003;
  static const BatteryDeviceName = 0x00000004;
  static const BatteryManufactureDate = 0x00000005;
  static const BatteryManufactureName = 0x00000006;
  static const BatteryUniqueID = 0x00000007;
  static const BatterySerialNumber = 0x00000008;
}

/// {@category Enum}
class BATTERY_CHARGING_SOURCE_TYPE {
  static const BatteryChargingSourceType_AC = 0x00000001;
  static const BatteryChargingSourceType_USB = 0x00000002;
  static const BatteryChargingSourceType_Wireless = 0x00000003;
  static const BatteryChargingSourceType_Max = 0x00000004;
}

/// {@category Enum}
class USB_CHARGER_PORT {
  static const UsbChargerPort_Legacy = 0x00000000;
  static const UsbChargerPort_TypeC = 0x00000001;
  static const UsbChargerPort_Max = 0x00000002;
}

/// {@category Enum}
class BATTERY_SET_INFORMATION_LEVEL {
  static const BatteryCriticalBias = 0x00000000;
  static const BatteryCharge = 0x00000001;
  static const BatteryDischarge = 0x00000002;
  static const BatteryChargingSource = 0x00000003;
  static const BatteryChargerId = 0x00000004;
  static const BatteryChargerStatus = 0x00000005;
}

/// {@category Enum}
class VIDEO_WIN32K_CALLBACKS_PARAMS_TYPE {
  static const VideoPowerNotifyCallout = 0x00000001;
  static const VideoEnumChildPdoNotifyCallout = 0x00000003;
  static const VideoFindAdapterCallout = 0x00000004;
  static const VideoPnpNotifyCallout = 0x00000007;
  static const VideoDxgkDisplaySwitchCallout = 0x00000008;
  static const VideoDxgkFindAdapterTdrCallout = 0x0000000a;
  static const VideoDxgkHardwareProtectionTeardown = 0x0000000b;
  static const VideoRepaintDesktop = 0x0000000c;
  static const VideoUpdateCursor = 0x0000000d;
  static const VideoDisableMultiPlaneOverlay = 0x0000000e;
  static const VideoDesktopDuplicationChange = 0x0000000f;
  static const VideoBlackScreenDiagnostics = 0x00000010;
}

/// {@category Enum}
class BlackScreenDiagnosticsCalloutParam {
  static const BlackScreenDiagnosticsData = 0x00000001;
  static const BlackScreenDisplayRecovery = 0x00000002;
}

/// {@category Enum}
class VIDEO_BANK_TYPE {
  static const VideoNotBanked = 0x00000000;
  static const VideoBanked1RW = 0x00000001;
  static const VideoBanked1R1W = 0x00000002;
  static const VideoBanked2RW = 0x00000003;
  static const NumVideoBankTypes = 0x00000004;
}

/// {@category Enum}
class VIDEO_POWER_STATE {
  static const VideoPowerUnspecified = 0x00000000;
  static const VideoPowerOn = 0x00000001;
  static const VideoPowerStandBy = 0x00000002;
  static const VideoPowerSuspend = 0x00000003;
  static const VideoPowerOff = 0x00000004;
  static const VideoPowerHibernate = 0x00000005;
  static const VideoPowerShutdown = 0x00000006;
  static const VideoPowerMaximum = 0x00000007;
}

/// {@category Enum}
class BRIGHTNESS_INTERFACE_VERSION {
  static const BRIGHTNESS_INTERFACE_VERSION_1 = 0x00000001;
  static const BRIGHTNESS_INTERFACE_VERSION_2 = 0x00000002;
  static const BRIGHTNESS_INTERFACE_VERSION_3 = 0x00000003;
}

/// {@category Enum}
class BACKLIGHT_OPTIMIZATION_LEVEL {
  static const BacklightOptimizationDisable = 0x00000000;
  static const BacklightOptimizationDesktop = 0x00000001;
  static const BacklightOptimizationDynamic = 0x00000002;
  static const BacklightOptimizationDimmed = 0x00000003;
  static const BacklightOptimizationEDR = 0x00000004;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_DATA_TYPE {
  static const COLORSPACE_TRANSFORM_DATA_TYPE_FIXED_POINT = 0x00000000;
  static const COLORSPACE_TRANSFORM_DATA_TYPE_FLOAT = 0x00000001;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_TARGET_CAPS_VERSION {
  static const COLORSPACE_TRANSFORM_VERSION_DEFAULT = 0x00000000;
  static const COLORSPACE_TRANSFORM_VERSION_1 = 0x00000001;
  static const COLORSPACE_TRANSFORM_VERSION_NOT_SUPPORTED = 0x00000000;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_TYPE {
  static const COLORSPACE_TRANSFORM_TYPE_UNINITIALIZED = 0x00000000;
  static const COLORSPACE_TRANSFORM_TYPE_DEFAULT = 0x00000001;
  static const COLORSPACE_TRANSFORM_TYPE_RGB256x3x16 = 0x00000002;
  static const COLORSPACE_TRANSFORM_TYPE_DXGI_1 = 0x00000003;
  static const COLORSPACE_TRANSFORM_TYPE_MATRIX_3x4 = 0x00000004;
  static const COLORSPACE_TRANSFORM_TYPE_MATRIX_V2 = 0x00000005;
}

/// {@category Enum}
class OUTPUT_WIRE_COLOR_SPACE_TYPE {
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P709 = 0x00000000;
  static const OUTPUT_WIRE_COLOR_SPACE_RESERVED = 0x00000004;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020 = 0x0000000c;
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P709_WCG = 0x0000001e;
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P2020 = 0x0000001f;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020_HDR10PLUS = 0x00000020;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020_DVLL = 0x00000021;
}

/// {@category Enum}
class OUTPUT_COLOR_ENCODING {
  static const OUTPUT_COLOR_ENCODING_RGB = 0x00000000;
  static const OUTPUT_COLOR_ENCODING_YCBCR444 = 0x00000001;
  static const OUTPUT_COLOR_ENCODING_YCBCR422 = 0x00000002;
  static const OUTPUT_COLOR_ENCODING_YCBCR420 = 0x00000003;
  static const OUTPUT_COLOR_ENCODING_INTENSITY = 0x00000004;
  static const OUTPUT_COLOR_ENCODING_FORCE_UINT32 = 0xffffffff;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_STAGE_CONTROL {
  static const ColorSpaceTransformStageControl_No_Change = 0x00000000;
  static const ColorSpaceTransformStageControl_Enable = 0x00000001;
  static const ColorSpaceTransformStageControl_Bypass = 0x00000002;
}

/// {@category Enum}
class DSI_CONTROL_TRANSMISSION_MODE {
  static const DCT_DEFAULT = 0x00000000;
  static const DCT_FORCE_LOW_POWER = 0x00000001;
  static const DCT_FORCE_HIGH_PERFORMANCE = 0x00000002;
}

/// {@category Enum}
class AR_STATE {
  static const AR_ENABLED = 0x00000000;
  static const AR_DISABLED = 0x00000001;
  static const AR_SUPPRESSED = 0x00000002;
  static const AR_REMOTESESSION = 0x00000004;
  static const AR_MULTIMON = 0x00000008;
  static const AR_NOSENSOR = 0x00000010;
  static const AR_NOT_SUPPORTED = 0x00000020;
  static const AR_DOCKED = 0x00000040;
  static const AR_LAPTOP = 0x00000080;
}

/// {@category Enum}
class ORIENTATION_PREFERENCE {
  static const ORIENTATION_PREFERENCE_NONE = 0x00000000;
  static const ORIENTATION_PREFERENCE_LANDSCAPE = 0x00000001;
  static const ORIENTATION_PREFERENCE_PORTRAIT = 0x00000002;
  static const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED = 0x00000004;
  static const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED = 0x00000008;
}

