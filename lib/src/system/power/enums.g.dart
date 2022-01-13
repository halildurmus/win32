/// {@category Enum}
class BATTERY_CHARGING_SOURCE_TYPE {
  static const BatteryChargingSourceType_AC = 0x00000001;
  static const BatteryChargingSourceType_USB = 0x00000002;
  static const BatteryChargingSourceType_Wireless = 0x00000003;
  static const BatteryChargingSourceType_Max = 0x00000004;
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
class BATTERY_SET_INFORMATION_LEVEL {
  static const BatteryCriticalBias = 0x00000000;
  static const BatteryCharge = 0x00000001;
  static const BatteryDischarge = 0x00000002;
  static const BatteryChargingSource = 0x00000003;
  static const BatteryChargerId = 0x00000004;
  static const BatteryChargerStatus = 0x00000005;
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
class EMI_MEASUREMENT_UNIT {
  static const EmiMeasurementUnitPicowattHours = 0x00000000;
}

/// {@category Enum}
class EXECUTION_STATE {
  static const ES_AWAYMODE_REQUIRED = 0x00000040;
  static const ES_CONTINUOUS = 0x80000000;
  static const ES_DISPLAY_REQUIRED = 0x00000002;
  static const ES_SYSTEM_REQUIRED = 0x00000001;
  static const ES_USER_PRESENT = 0x00000004;
}

/// {@category Enum}
class LATENCY_TIME {
  static const LT_DONT_CARE = 0x00000000;
  static const LT_LOWEST_LATENCY = 0x00000001;
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
class POWER_ACTION_POLICY_EVENT_CODE {
  static const POWER_FORCE_TRIGGER_RESET = 0x80000000;
  static const POWER_LEVEL_USER_NOTIFY_EXEC = 0x00000004;
  static const POWER_LEVEL_USER_NOTIFY_SOUND = 0x00000002;
  static const POWER_LEVEL_USER_NOTIFY_TEXT = 0x00000001;
  static const POWER_USER_NOTIFY_BUTTON = 0x00000008;
  static const POWER_USER_NOTIFY_SHUTDOWN = 0x00000010;
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
  static const SendSuspendResumeNotification = 0x00000060;
  static const PowerInformationLevelMaximum = 0x00000061;
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
class POWER_PLATFORM_ROLE_VERSION {
  static const POWER_PLATFORM_ROLE_V1 = 0x00000001;
  static const POWER_PLATFORM_ROLE_V2 = 0x00000002;
}

/// {@category Enum}
class POWER_REQUEST_TYPE {
  static const PowerRequestDisplayRequired = 0x00000000;
  static const PowerRequestSystemRequired = 0x00000001;
  static const PowerRequestAwayModeRequired = 0x00000002;
  static const PowerRequestExecutionRequired = 0x00000003;
}

/// {@category Enum}
class POWER_SETTING_REGISTER_NOTIFICATION_FLAGS {
  static const DEVICE_NOTIFY_SERVICE_HANDLE = 0x00000001;
  static const DEVICE_NOTIFY_CALLBACK = 0x00000002;
  static const DEVICE_NOTIFY_WINDOW_HANDLE = 0x00000000;
}

/// {@category Enum}
class SYSTEM_POWER_CONDITION {
  static const PoAc = 0x00000000;
  static const PoDc = 0x00000001;
  static const PoHot = 0x00000002;
  static const PoConditionMaximum = 0x00000003;
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
class USB_CHARGER_PORT {
  static const UsbChargerPort_Legacy = 0x00000000;
  static const UsbChargerPort_TypeC = 0x00000001;
  static const UsbChargerPort_Max = 0x00000002;
}
