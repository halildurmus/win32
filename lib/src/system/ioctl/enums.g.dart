/// {@category Enum}
class BIN_TYPES {
  static const RequestSize = 0x00000000;
  static const RequestLocation = 0x00000001;
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
class CHANGER_ELEMENT_STATUS_FLAGS {
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
class CHANGER_FEATURES {
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
class CSVFS_DISK_CONNECTIVITY {
  static const CsvFsDiskConnectivityNone = 0x00000000;
  static const CsvFsDiskConnectivityMdsNodeOnly = 0x00000001;
  static const CsvFsDiskConnectivitySubsetOfNodes = 0x00000002;
  static const CsvFsDiskConnectivityAllNodes = 0x00000003;
}

/// {@category Enum}
class CSV_CONTROL_OP {
  static const CsvControlStartRedirectFile = 0x00000002;
  static const CsvControlStopRedirectFile = 0x00000003;
  static const CsvControlQueryRedirectState = 0x00000004;
  static const CsvControlQueryFileRevision = 0x00000006;
  static const CsvControlQueryMdsPath = 0x00000008;
  static const CsvControlQueryFileRevisionFileId128 = 0x00000009;
  static const CsvControlQueryVolumeRedirectState = 0x0000000a;
  static const CsvControlEnableUSNRangeModificationTracking = 0x0000000d;
  static const CsvControlMarkHandleLocalVolumeMount = 0x0000000e;
  static const CsvControlUnmarkHandleLocalVolumeMount = 0x0000000f;
  static const CsvControlGetCsvFsMdsPathV2 = 0x00000012;
  static const CsvControlDisableCaching = 0x00000013;
  static const CsvControlEnableCaching = 0x00000014;
  static const CsvControlStartForceDFO = 0x00000015;
  static const CsvControlStopForceDFO = 0x00000016;
  static const CsvControlQueryMdsPathNoPause = 0x00000017;
  static const CsvControlSetVolumeId = 0x00000018;
  static const CsvControlQueryVolumeId = 0x00000019;
}

/// {@category Enum}
class DETECTION_TYPE {
  static const DetectNone = 0x00000000;
  static const DetectInt13 = 0x00000001;
  static const DetectExInt13 = 0x00000002;
}

/// {@category Enum}
class DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE {
  static const DeviceInternalStatusDataRequestTypeUndefined = 0x00000000;
  static const DeviceCurrentInternalStatusDataHeader = 0x00000001;
  static const DeviceCurrentInternalStatusData = 0x00000002;
  static const DeviceSavedInternalStatusDataHeader = 0x00000003;
  static const DeviceSavedInternalStatusData = 0x00000004;
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
class DISK_CACHE_RETENTION_PRIORITY {
  static const EqualPriority = 0x00000000;
  static const KeepPrefetchedData = 0x00000001;
  static const KeepReadData = 0x00000002;
}

/// {@category Enum}
class DUPLICATE_EXTENTS_STATE {
  static const FileSnapStateInactive = 0x00000000;
  static const FileSnapStateSource = 0x00000001;
  static const FileSnapStateTarget = 0x00000002;
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
class FILESYSTEM_STATISTICS_TYPE {
  static const FILESYSTEM_STATISTICS_TYPE_EXFAT = 0x10020003;
  static const FILESYSTEM_STATISTICS_TYPE_FAT = 0x04020002;
  static const FILESYSTEM_STATISTICS_TYPE_NTFS = 0x02020001;
}

/// {@category Enum}
class FILE_STORAGE_TIER_CLASS {
  static const FileStorageTierClassUnspecified = 0x00000000;
  static const FileStorageTierClassCapacity = 0x00000001;
  static const FileStorageTierClassPerformance = 0x00000002;
  static const FileStorageTierClassMax = 0x00000003;
}

/// {@category Enum}
class FILE_STORAGE_TIER_FLAGS {
  static const FILE_STORAGE_TIER_FLAG_NO_SEEK_PENALTY = 0x00020000;
}

/// {@category Enum}
class FILE_STORAGE_TIER_MEDIA_TYPE {
  static const FileStorageTierMediaTypeUnspecified = 0x00000000;
  static const FileStorageTierMediaTypeDisk = 0x00000001;
  static const FileStorageTierMediaTypeSsd = 0x00000002;
  static const FileStorageTierMediaTypeScm = 0x00000004;
  static const FileStorageTierMediaTypeMax = 0x00000005;
}

/// {@category Enum}
class FS_BPIO_INFLAGS {
  static const FSBPIO_INFL_None = 0x00000000;
  static const FSBPIO_INFL_SKIP_STORAGE_STACK_QUERY = 0x00000001;
}

/// {@category Enum}
class FS_BPIO_OPERATIONS {
  static const FS_BPIO_OP_ENABLE = 0x00000001;
  static const FS_BPIO_OP_DISABLE = 0x00000002;
  static const FS_BPIO_OP_QUERY = 0x00000003;
  static const FS_BPIO_OP_VOLUME_STACK_PAUSE = 0x00000004;
  static const FS_BPIO_OP_VOLUME_STACK_RESUME = 0x00000005;
  static const FS_BPIO_OP_STREAM_PAUSE = 0x00000006;
  static const FS_BPIO_OP_STREAM_RESUME = 0x00000007;
  static const FS_BPIO_OP_GET_INFO = 0x00000008;
  static const FS_BPIO_OP_MAX_OPERATION = 0x00000009;
}

/// {@category Enum}
class FS_BPIO_OUTFLAGS {
  static const FSBPIO_OUTFL_None = 0x00000000;
  static const FSBPIO_OUTFL_VOLUME_STACK_BYPASS_PAUSED = 0x00000001;
  static const FSBPIO_OUTFL_STREAM_BYPASS_PAUSED = 0x00000002;
  static const FSBPIO_OUTFL_FILTER_ATTACH_BLOCKED = 0x00000004;
  static const FSBPIO_OUTFL_COMPATIBLE_STORAGE_DRIVER = 0x00000008;
}

/// {@category Enum}
class GET_CHANGER_PARAMETERS_FEATURES1 {
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
class GPT_ATTRIBUTES {
  static const GPT_ATTRIBUTE_PLATFORM_REQUIRED = 0x00000001;
  static const GPT_BASIC_DATA_ATTRIBUTE_NO_DRIVE_LETTER = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_HIDDEN = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_SHADOW_COPY = 0x00000000;
  static const GPT_BASIC_DATA_ATTRIBUTE_READ_ONLY = 0x00000000;
}

/// {@category Enum}
class MEDIA_TYPE {
  static const Unknown = 0x00000000;
  static const F5_1Pt2_512 = 0x00000001;
  static const F3_1Pt44_512 = 0x00000002;
  static const F3_2Pt88_512 = 0x00000003;
  static const F3_20Pt8_512 = 0x00000004;
  static const F3_720_512 = 0x00000005;
  static const F5_360_512 = 0x00000006;
  static const F5_320_512 = 0x00000007;
  static const F5_320_1024 = 0x00000008;
  static const F5_180_512 = 0x00000009;
  static const F5_160_512 = 0x0000000a;
  static const RemovableMedia = 0x0000000b;
  static const FixedMedia = 0x0000000c;
  static const F3_120M_512 = 0x0000000d;
  static const F3_640_512 = 0x0000000e;
  static const F5_640_512 = 0x0000000f;
  static const F5_720_512 = 0x00000010;
  static const F3_1Pt2_512 = 0x00000011;
  static const F3_1Pt23_1024 = 0x00000012;
  static const F5_1Pt23_1024 = 0x00000013;
  static const F3_128Mb_512 = 0x00000014;
  static const F3_230Mb_512 = 0x00000015;
  static const F8_256_128 = 0x00000016;
  static const F3_200Mb_512 = 0x00000017;
  static const F3_240M_512 = 0x00000018;
  static const F3_32M_512 = 0x00000019;
}

/// {@category Enum}
class PARTITION_STYLE {
  static const PARTITION_STYLE_MBR = 0x00000000;
  static const PARTITION_STYLE_GPT = 0x00000001;
  static const PARTITION_STYLE_RAW = 0x00000002;
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
class REFS_SMR_VOLUME_GC_STATE {
  static const SmrGcStateInactive = 0x00000000;
  static const SmrGcStatePaused = 0x00000001;
  static const SmrGcStateActive = 0x00000002;
  static const SmrGcStateActiveFullSpeed = 0x00000003;
}

/// {@category Enum}
class SCM_BUS_FIRMWARE_ACTIVATION_STATE {
  static const ScmBusFirmwareActivationState_Idle = 0x00000000;
  static const ScmBusFirmwareActivationState_Armed = 0x00000001;
  static const ScmBusFirmwareActivationState_Busy = 0x00000002;
}

/// {@category Enum}
class SCM_BUS_PROPERTY_ID {
  static const ScmBusProperty_RuntimeFwActivationInfo = 0x00000000;
  static const ScmBusProperty_DedicatedMemoryInfo = 0x00000001;
  static const ScmBusProperty_DedicatedMemoryState = 0x00000002;
  static const ScmBusProperty_Max = 0x00000003;
}

/// {@category Enum}
class SCM_BUS_QUERY_TYPE {
  static const ScmBusQuery_Descriptor = 0x00000000;
  static const ScmBusQuery_IsSupported = 0x00000001;
  static const ScmBusQuery_Max = 0x00000002;
}

/// {@category Enum}
class SCM_BUS_SET_TYPE {
  static const ScmBusSet_Descriptor = 0x00000000;
  static const ScmBusSet_IsSupported = 0x00000001;
  static const ScmBusSet_Max = 0x00000002;
}

/// {@category Enum}
class SCM_PD_FIRMWARE_ACTIVATION_STATE {
  static const ScmPdFirmwareActivationState_Idle = 0x00000000;
  static const ScmPdFirmwareActivationState_Armed = 0x00000001;
  static const ScmPdFirmwareActivationState_Busy = 0x00000002;
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
class SCM_PD_LAST_FW_ACTIVATION_STATUS {
  static const ScmPdLastFwActivationStatus_None = 0x00000000;
  static const ScmPdLastFwActivationStatus_Success = 0x00000001;
  static const ScmPdLastFwActivationStatus_FwNotFound = 0x00000002;
  static const ScmPdLastFwActivationStatus_ColdRebootRequired = 0x00000003;
  static const ScmPdLastFwActivaitonStatus_ActivationInProgress = 0x00000004;
  static const ScmPdLastFwActivaitonStatus_Retry = 0x00000005;
  static const ScmPdLastFwActivaitonStatus_FwUnsupported = 0x00000006;
  static const ScmPdLastFwActivaitonStatus_UnknownError = 0x00000007;
}

/// {@category Enum}
class SCM_PD_MEDIA_REINITIALIZATION_STATUS {
  static const ScmPhysicalDeviceReinit_Success = 0x00000000;
  static const ScmPhysicalDeviceReinit_RebootNeeded = 0x00000001;
  static const ScmPhysicalDeviceReinit_ColdBootNeeded = 0x00000002;
  static const ScmPhysicalDeviceReinit_Max = 0x00000003;
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
  static const ScmPhysicalDeviceOpReason_DataPersistenceLossImminent =
      0x00000011;
  static const ScmPhysicalDeviceOpReason_WritePersistenceLossImminent =
      0x00000012;
  static const ScmPhysicalDeviceOpReason_MediaRemainingSpareBlock = 0x00000013;
  static const ScmPhysicalDeviceOpReason_PerformanceDegradation = 0x00000014;
  static const ScmPhysicalDeviceOpReason_ExcessiveTemperature = 0x00000015;
  static const ScmPhysicalDeviceOpReason_InternalFailure = 0x00000016;
  static const ScmPhysicalDeviceOpReason_Max = 0x00000017;
}

/// {@category Enum}
class SCM_PD_PROPERTY_ID {
  static const ScmPhysicalDeviceProperty_DeviceInfo = 0x00000000;
  static const ScmPhysicalDeviceProperty_ManagementStatus = 0x00000001;
  static const ScmPhysicalDeviceProperty_FirmwareInfo = 0x00000002;
  static const ScmPhysicalDeviceProperty_LocationString = 0x00000003;
  static const ScmPhysicalDeviceProperty_DeviceSpecificInfo = 0x00000004;
  static const ScmPhysicalDeviceProperty_DeviceHandle = 0x00000005;
  static const ScmPhysicalDeviceProperty_FruIdString = 0x00000006;
  static const ScmPhysicalDeviceProperty_RuntimeFwActivationInfo = 0x00000007;
  static const ScmPhysicalDeviceProperty_RuntimeFwActivationArmState =
      0x00000008;
  static const ScmPhysicalDeviceProperty_Max = 0x00000009;
}

/// {@category Enum}
class SCM_PD_QUERY_TYPE {
  static const ScmPhysicalDeviceQuery_Descriptor = 0x00000000;
  static const ScmPhysicalDeviceQuery_IsSupported = 0x00000001;
  static const ScmPhysicalDeviceQuery_Max = 0x00000002;
}

/// {@category Enum}
class SCM_PD_SET_TYPE {
  static const ScmPhysicalDeviceSet_Descriptor = 0x00000000;
  static const ScmPhysicalDeviceSet_IsSupported = 0x00000001;
  static const ScmPhysicalDeviceSet_Max = 0x00000002;
}

/// {@category Enum}
class SCM_REGION_FLAG {
  static const ScmRegionFlagNone = 0x00000000;
  static const ScmRegionFlagLabel = 0x00000001;
}

/// {@category Enum}
class SHRINK_VOLUME_REQUEST_TYPES {
  static const ShrinkPrepare = 0x00000001;
  static const ShrinkCommit = 0x00000002;
  static const ShrinkAbort = 0x00000003;
}

/// {@category Enum}
class STORAGE_ASSOCIATION_TYPE {
  static const StorageIdAssocDevice = 0x00000000;
  static const StorageIdAssocPort = 0x00000001;
  static const StorageIdAssocTarget = 0x00000002;
}

/// {@category Enum}
class STORAGE_ATTRIBUTE_MGMT_ACTION {
  static const StorAttributeMgmt_ClearAttribute = 0x00000000;
  static const StorAttributeMgmt_SetAttribute = 0x00000001;
  static const StorAttributeMgmt_ResetAttribute = 0x00000002;
}

/// {@category Enum}
class STORAGE_COMPONENT_HEALTH_STATUS {
  static const HealthStatusUnknown = 0x00000000;
  static const HealthStatusNormal = 0x00000001;
  static const HealthStatusThrottled = 0x00000002;
  static const HealthStatusWarning = 0x00000003;
  static const HealthStatusDisabled = 0x00000004;
  static const HealthStatusFailed = 0x00000005;
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
class STORAGE_DEVICE_FORM_FACTOR {
  static const FormFactorUnknown = 0x00000000;
  static const FormFactor3_5 = 0x00000001;
  static const FormFactor2_5 = 0x00000002;
  static const FormFactor1_8 = 0x00000003;
  static const FormFactor1_8Less = 0x00000004;
  static const FormFactorEmbedded = 0x00000005;
  static const FormFactorMemoryCard = 0x00000006;
  static const FormFactormSata = 0x00000007;
  static const FormFactorM_2 = 0x00000008;
  static const FormFactorPCIeBoard = 0x00000009;
  static const FormFactorDimm = 0x0000000a;
}

/// {@category Enum}
class STORAGE_DEVICE_POWER_CAP_UNITS {
  static const StorageDevicePowerCapUnitsPercent = 0x00000000;
  static const StorageDevicePowerCapUnitsMilliwatts = 0x00000001;
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
class STORAGE_PORT_CODE_SET {
  static const StoragePortCodeSetReserved = 0x00000000;
  static const StoragePortCodeSetStorport = 0x00000001;
  static const StoragePortCodeSetSCSIport = 0x00000002;
  static const StoragePortCodeSetSpaceport = 0x00000003;
  static const StoragePortCodeSetATAport = 0x00000004;
  static const StoragePortCodeSetUSBport = 0x00000005;
  static const StoragePortCodeSetSBP2port = 0x00000006;
  static const StoragePortCodeSetSDport = 0x00000007;
}

/// {@category Enum}
class STORAGE_POWERUP_REASON_TYPE {
  static const StoragePowerupUnknown = 0x00000000;
  static const StoragePowerupIO = 0x00000001;
  static const StoragePowerupDeviceAttention = 0x00000002;
}

/// {@category Enum}
class STORAGE_PROPERTY_ID {
  static const StorageDeviceProperty = 0x00000000;
  static const StorageAdapterProperty = 0x00000001;
  static const StorageDeviceIdProperty = 0x00000002;
  static const StorageDeviceUniqueIdProperty = 0x00000003;
  static const StorageDeviceWriteCacheProperty = 0x00000004;
  static const StorageMiniportProperty = 0x00000005;
  static const StorageAccessAlignmentProperty = 0x00000006;
  static const StorageDeviceSeekPenaltyProperty = 0x00000007;
  static const StorageDeviceTrimProperty = 0x00000008;
  static const StorageDeviceWriteAggregationProperty = 0x00000009;
  static const StorageDeviceDeviceTelemetryProperty = 0x0000000a;
  static const StorageDeviceLBProvisioningProperty = 0x0000000b;
  static const StorageDevicePowerProperty = 0x0000000c;
  static const StorageDeviceCopyOffloadProperty = 0x0000000d;
  static const StorageDeviceResiliencyProperty = 0x0000000e;
  static const StorageDeviceMediumProductType = 0x0000000f;
  static const StorageAdapterRpmbProperty = 0x00000010;
  static const StorageAdapterCryptoProperty = 0x00000011;
  static const StorageDeviceIoCapabilityProperty = 0x00000030;
  static const StorageAdapterProtocolSpecificProperty = 0x00000031;
  static const StorageDeviceProtocolSpecificProperty = 0x00000032;
  static const StorageAdapterTemperatureProperty = 0x00000033;
  static const StorageDeviceTemperatureProperty = 0x00000034;
  static const StorageAdapterPhysicalTopologyProperty = 0x00000035;
  static const StorageDevicePhysicalTopologyProperty = 0x00000036;
  static const StorageDeviceAttributesProperty = 0x00000037;
  static const StorageDeviceManagementStatus = 0x00000038;
  static const StorageAdapterSerialNumberProperty = 0x00000039;
  static const StorageDeviceLocationProperty = 0x0000003a;
  static const StorageDeviceNumaProperty = 0x0000003b;
  static const StorageDeviceZonedDeviceProperty = 0x0000003c;
  static const StorageDeviceUnsafeShutdownCount = 0x0000003d;
  static const StorageDeviceEnduranceProperty = 0x0000003e;
  static const StorageDeviceLedStateProperty = 0x0000003f;
  static const StorageDeviceSelfEncryptionProperty = 0x00000040;
  static const StorageFruIdProperty = 0x00000041;
}

/// {@category Enum}
class STORAGE_PROTOCOL_ATA_DATA_TYPE {
  static const AtaDataTypeUnknown = 0x00000000;
  static const AtaDataTypeIdentify = 0x00000001;
  static const AtaDataTypeLogPage = 0x00000002;
}

/// {@category Enum}
class STORAGE_PROTOCOL_NVME_DATA_TYPE {
  static const NVMeDataTypeUnknown = 0x00000000;
  static const NVMeDataTypeIdentify = 0x00000001;
  static const NVMeDataTypeLogPage = 0x00000002;
  static const NVMeDataTypeFeature = 0x00000003;
}

/// {@category Enum}
class STORAGE_PROTOCOL_TYPE {
  static const ProtocolTypeUnknown = 0x00000000;
  static const ProtocolTypeScsi = 0x00000001;
  static const ProtocolTypeAta = 0x00000002;
  static const ProtocolTypeNvme = 0x00000003;
  static const ProtocolTypeSd = 0x00000004;
  static const ProtocolTypeUfs = 0x00000005;
  static const ProtocolTypeProprietary = 0x0000007e;
  static const ProtocolTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class STORAGE_PROTOCOL_UFS_DATA_TYPE {
  static const UfsDataTypeUnknown = 0x00000000;
  static const UfsDataTypeQueryDescriptor = 0x00000001;
  static const UfsDataTypeQueryAttribute = 0x00000002;
  static const UfsDataTypeQueryFlag = 0x00000003;
  static const UfsDataTypeQueryDmeAttribute = 0x00000004;
  static const UfsDataTypeQueryDmePeerAttribute = 0x00000005;
  static const UfsDataTypeMax = 0x00000006;
}

/// {@category Enum}
class STORAGE_QUERY_TYPE {
  static const PropertyStandardQuery = 0x00000000;
  static const PropertyExistsQuery = 0x00000001;
  static const PropertyMaskQuery = 0x00000002;
  static const PropertyQueryMaxDefined = 0x00000003;
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
class STORAGE_RPMB_FRAME_TYPE {
  static const StorageRpmbFrameTypeUnknown = 0x00000000;
  static const StorageRpmbFrameTypeStandard = 0x00000001;
  static const StorageRpmbFrameTypeMax = 0x00000002;
}

/// {@category Enum}
class STORAGE_SANITIZE_METHOD {
  static const StorageSanitizeMethodDefault = 0x00000000;
  static const StorageSanitizeMethodBlockErase = 0x00000001;
  static const StorageSanitizeMethodCryptoErase = 0x00000002;
}

/// {@category Enum}
class STORAGE_SET_TYPE {
  static const PropertyStandardSet = 0x00000000;
  static const PropertyExistsSet = 0x00000001;
  static const PropertySetMaxDefined = 0x00000002;
}

/// {@category Enum}
class STORAGE_TIER_CLASS {
  static const StorageTierClassUnspecified = 0x00000000;
  static const StorageTierClassCapacity = 0x00000001;
  static const StorageTierClassPerformance = 0x00000002;
  static const StorageTierClassMax = 0x00000003;
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
class STORAGE_ZONED_DEVICE_TYPES {
  static const ZonedDeviceTypeUnknown = 0x00000000;
  static const ZonedDeviceTypeHostManaged = 0x00000001;
  static const ZonedDeviceTypeHostAware = 0x00000002;
  static const ZonedDeviceTypeDeviceManaged = 0x00000003;
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
class STORAGE_ZONE_TYPES {
  static const ZoneTypeUnknown = 0x00000000;
  static const ZoneTypeConventional = 0x00000001;
  static const ZoneTypeSequentialWriteRequired = 0x00000002;
  static const ZoneTypeSequentialWritePreferred = 0x00000003;
  static const ZoneTypeMax = 0x00000004;
}

/// {@category Enum}
class TXFS_RMF_LAGS {
  static const TXFS_RM_FLAG_LOGGING_MODE = 0x00000001;
  static const TXFS_RM_FLAG_RENAME_RM = 0x00000002;
  static const TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX = 0x00000004;
  static const TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN = 0x00000008;
  static const TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS = 0x00000010;
  static const TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT = 0x00000020;
  static const TXFS_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE = 0x00000040;
  static const TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX = 0x00000080;
  static const TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN = 0x00000100;
  static const TXFS_RM_FLAG_GROW_LOG = 0x00000400;
  static const TXFS_RM_FLAG_SHRINK_LOG = 0x00000800;
  static const TXFS_RM_FLAG_ENFORCE_MINIMUM_SIZE = 0x00001000;
  static const TXFS_RM_FLAG_PRESERVE_CHANGES = 0x00002000;
  static const TXFS_RM_FLAG_RESET_RM_AT_NEXT_START = 0x00004000;
  static const TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START = 0x00008000;
  static const TXFS_RM_FLAG_PREFER_CONSISTENCY = 0x00010000;
  static const TXFS_RM_FLAG_PREFER_AVAILABILITY = 0x00020000;
}

/// {@category Enum}
class USN_DELETE_FLAGS {
  static const USN_DELETE_FLAG_DELETE = 0x00000001;
  static const USN_DELETE_FLAG_NOTIFY = 0x00000002;
}

/// {@category Enum}
class USN_SOURCE_INFO_ID {
  static const USN_SOURCE_AUXILIARY_DATA = 0x00000002;
  static const USN_SOURCE_DATA_MANAGEMENT = 0x00000001;
  static const USN_SOURCE_REPLICATION_MANAGEMENT = 0x00000004;
  static const USN_SOURCE_CLIENT_REPLICATION_MANAGEMENT = 0x00000008;
}

/// {@category Enum}
class VIRTUAL_STORAGE_BEHAVIOR_CODE {
  static const VirtualStorageBehaviorUndefined = 0x00000000;
  static const VirtualStorageBehaviorCacheWriteThrough = 0x00000001;
  static const VirtualStorageBehaviorCacheWriteBack = 0x00000002;
  static const VirtualStorageBehaviorStopIoProcessing = 0x00000003;
  static const VirtualStorageBehaviorRestartIoProcessing = 0x00000004;
}

/// {@category Enum}
class WRITE_CACHE_CHANGE {
  static const WriteCacheChangeUnknown = 0x00000000;
  static const WriteCacheNotChangeable = 0x00000001;
  static const WriteCacheChangeable = 0x00000002;
}

/// {@category Enum}
class WRITE_CACHE_ENABLE {
  static const WriteCacheEnableUnknown = 0x00000000;
  static const WriteCacheDisabled = 0x00000001;
  static const WriteCacheEnabled = 0x00000002;
}

/// {@category Enum}
class WRITE_CACHE_TYPE {
  static const WriteCacheTypeUnknown = 0x00000000;
  static const WriteCacheTypeNone = 0x00000001;
  static const WriteCacheTypeWriteBack = 0x00000002;
  static const WriteCacheTypeWriteThrough = 0x00000003;
}

/// {@category Enum}
class WRITE_THROUGH {
  static const WriteThroughUnknown = 0x00000000;
  static const WriteThroughNotSupported = 0x00000001;
  static const WriteThroughSupported = 0x00000002;
}

/// {@category Enum}
class DEVICEDUMP_COLLECTION_TYPE {
  static const TCCollectionBugCheck = 0x00000001;
  static const TCCollectionApplicationRequested = 0x00000002;
  static const TCCollectionDeviceRequested = 0x00000003;
}
