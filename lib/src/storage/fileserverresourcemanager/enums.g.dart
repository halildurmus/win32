/// {@category Enum}
class AdrClientDisplayFlags {
  static const AdrClientDisplayFlags_AllowEmailRequests = 0x00000001;
  static const AdrClientDisplayFlags_ShowDeviceTroubleshooting = 0x00000002;
}

/// {@category Enum}
class AdrClientErrorType {
  static const AdrClientErrorType_Unknown = 0x00000000;
  static const AdrClientErrorType_AccessDenied = 0x00000001;
  static const AdrClientErrorType_FileNotFound = 0x00000002;
}

/// {@category Enum}
class AdrClientFlags {
  static const AdrClientFlags_None = 0x00000000;
  static const AdrClientFlags_FailForLocalPaths = 0x00000001;
  static const AdrClientFlags_FailIfNotSupportedByServer = 0x00000002;
  static const AdrClientFlags_FailIfNotDomainJoined = 0x00000004;
}

/// {@category Enum}
class AdrEmailFlags {
  static const AdrEmailFlags_PutDataOwnerOnToLine = 0x00000001;
  static const AdrEmailFlags_PutAdminOnToLine = 0x00000002;
  static const AdrEmailFlags_IncludeDeviceClaims = 0x00000004;
  static const AdrEmailFlags_IncludeUserInfo = 0x00000008;
  static const AdrEmailFlags_GenerateEventLog = 0x00000010;
}

/// {@category Enum}
class FsrmAccountType {
  static const FsrmAccountType_Unknown = 0x00000000;
  static const FsrmAccountType_NetworkService = 0x00000001;
  static const FsrmAccountType_LocalService = 0x00000002;
  static const FsrmAccountType_LocalSystem = 0x00000003;
  static const FsrmAccountType_InProc = 0x00000004;
  static const FsrmAccountType_External = 0x00000005;
  static const FsrmAccountType_Automatic = 0x000001f4;
}

/// {@category Enum}
class FsrmActionType {
  static const FsrmActionType_Unknown = 0x00000000;
  static const FsrmActionType_EventLog = 0x00000001;
  static const FsrmActionType_Email = 0x00000002;
  static const FsrmActionType_Command = 0x00000003;
  static const FsrmActionType_Report = 0x00000004;
}

/// {@category Enum}
class FsrmClassificationLoggingFlags {
  static const FsrmClassificationLoggingFlags_None = 0x00000000;
  static const FsrmClassificationLoggingFlags_ClassificationsInLogFile =
      0x00000001;
  static const FsrmClassificationLoggingFlags_ErrorsInLogFile = 0x00000002;
  static const FsrmClassificationLoggingFlags_ClassificationsInSystemLog =
      0x00000004;
  static const FsrmClassificationLoggingFlags_ErrorsInSystemLog = 0x00000008;
}

/// {@category Enum}
class FsrmCollectionState {
  static const FsrmCollectionState_Fetching = 0x00000001;
  static const FsrmCollectionState_Committing = 0x00000002;
  static const FsrmCollectionState_Complete = 0x00000003;
  static const FsrmCollectionState_Cancelled = 0x00000004;
}

/// {@category Enum}
class FsrmCommitOptions {
  static const FsrmCommitOptions_None = 0x00000000;
  static const FsrmCommitOptions_Asynchronous = 0x00000001;
}

/// {@category Enum}
class FsrmEnumOptions {
  static const FsrmEnumOptions_None = 0x00000000;
  static const FsrmEnumOptions_Asynchronous = 0x00000001;
  static const FsrmEnumOptions_CheckRecycleBin = 0x00000002;
  static const FsrmEnumOptions_IncludeClusterNodes = 0x00000004;
  static const FsrmEnumOptions_IncludeDeprecatedObjects = 0x00000008;
}

/// {@category Enum}
class FsrmEventType {
  static const FsrmEventType_Unknown = 0x00000000;
  static const FsrmEventType_Information = 0x00000001;
  static const FsrmEventType_Warning = 0x00000002;
  static const FsrmEventType_Error = 0x00000003;
}

/// {@category Enum}
class FsrmExecutionOption {
  static const FsrmExecutionOption_Unknown = 0x00000000;
  static const FsrmExecutionOption_EvaluateUnset = 0x00000001;
  static const FsrmExecutionOption_ReEvaluate_ConsiderExistingValue =
      0x00000002;
  static const FsrmExecutionOption_ReEvaluate_IgnoreExistingValue = 0x00000003;
}

/// {@category Enum}
class FsrmFileConditionType {
  static const FsrmFileConditionType_Unknown = 0x00000000;
  static const FsrmFileConditionType_Property = 0x00000001;
}

/// {@category Enum}
class FsrmFileManagementLoggingFlags {
  static const FsrmFileManagementLoggingFlags_None = 0x00000000;
  static const FsrmFileManagementLoggingFlags_Error = 0x00000001;
  static const FsrmFileManagementLoggingFlags_Information = 0x00000002;
  static const FsrmFileManagementLoggingFlags_Audit = 0x00000004;
}

/// {@category Enum}
class FsrmFileManagementType {
  static const FsrmFileManagementType_Unknown = 0x00000000;
  static const FsrmFileManagementType_Expiration = 0x00000001;
  static const FsrmFileManagementType_Custom = 0x00000002;
  static const FsrmFileManagementType_Rms = 0x00000003;
}

/// {@category Enum}
class FsrmFileScreenFlags {
  static const FsrmFileScreenFlags_Enforce = 0x00000001;
}

/// {@category Enum}
class FsrmFileStreamingInterfaceType {
  static const FsrmFileStreamingInterfaceType_Unknown = 0x00000000;
  static const FsrmFileStreamingInterfaceType_ILockBytes = 0x00000001;
  static const FsrmFileStreamingInterfaceType_IStream = 0x00000002;
}

/// {@category Enum}
class FsrmFileStreamingMode {
  static const FsrmFileStreamingMode_Unknown = 0x00000000;
  static const FsrmFileStreamingMode_Read = 0x00000001;
  static const FsrmFileStreamingMode_Write = 0x00000002;
}

/// {@category Enum}
class FsrmFileSystemPropertyId {
  static const FsrmFileSystemPropertyId_Undefined = 0x00000000;
  static const FsrmFileSystemPropertyId_FileName = 0x00000001;
  static const FsrmFileSystemPropertyId_DateCreated = 0x00000002;
  static const FsrmFileSystemPropertyId_DateLastAccessed = 0x00000003;
  static const FsrmFileSystemPropertyId_DateLastModified = 0x00000004;
  static const FsrmFileSystemPropertyId_DateNow = 0x00000005;
}

/// {@category Enum}
class FsrmGetFilePropertyOptions {
  static const FsrmGetFilePropertyOptions_None = 0x00000000;
  static const FsrmGetFilePropertyOptions_NoRuleEvaluation = 0x00000001;
  static const FsrmGetFilePropertyOptions_Persistent = 0x00000002;
  static const FsrmGetFilePropertyOptions_FailOnPersistErrors = 0x00000004;
  static const FsrmGetFilePropertyOptions_SkipOrphaned = 0x00000008;
}

/// {@category Enum}
class FsrmPipelineModuleType {
  static const FsrmPipelineModuleType_Unknown = 0x00000000;
  static const FsrmPipelineModuleType_Storage = 0x00000001;
  static const FsrmPipelineModuleType_Classifier = 0x00000002;
}

/// {@category Enum}
class FsrmPropertyBagField {
  static const FsrmPropertyBagField_AccessVolume = 0x00000000;
  static const FsrmPropertyBagField_VolumeGuidName = 0x00000001;
}

/// {@category Enum}
class FsrmPropertyBagFlags {
  static const FsrmPropertyBagFlags_UpdatedByClassifier = 0x00000001;
  static const FsrmPropertyBagFlags_FailedLoadingProperties = 0x00000002;
  static const FsrmPropertyBagFlags_FailedSavingProperties = 0x00000004;
  static const FsrmPropertyBagFlags_FailedClassifyingProperties = 0x00000008;
}

/// {@category Enum}
class FsrmPropertyConditionType {
  static const FsrmPropertyConditionType_Unknown = 0x00000000;
  static const FsrmPropertyConditionType_Equal = 0x00000001;
  static const FsrmPropertyConditionType_NotEqual = 0x00000002;
  static const FsrmPropertyConditionType_GreaterThan = 0x00000003;
  static const FsrmPropertyConditionType_LessThan = 0x00000004;
  static const FsrmPropertyConditionType_Contain = 0x00000005;
  static const FsrmPropertyConditionType_Exist = 0x00000006;
  static const FsrmPropertyConditionType_NotExist = 0x00000007;
  static const FsrmPropertyConditionType_StartWith = 0x00000008;
  static const FsrmPropertyConditionType_EndWith = 0x00000009;
  static const FsrmPropertyConditionType_ContainedIn = 0x0000000a;
  static const FsrmPropertyConditionType_PrefixOf = 0x0000000b;
  static const FsrmPropertyConditionType_SuffixOf = 0x0000000c;
  static const FsrmPropertyConditionType_MatchesPattern = 0x0000000d;
}

/// {@category Enum}
class FsrmPropertyDefinitionAppliesTo {
  static const FsrmPropertyDefinitionAppliesTo_Files = 0x00000001;
  static const FsrmPropertyDefinitionAppliesTo_Folders = 0x00000002;
}

/// {@category Enum}
class FsrmPropertyDefinitionFlags {
  static const FsrmPropertyDefinitionFlags_Global = 0x00000001;
  static const FsrmPropertyDefinitionFlags_Deprecated = 0x00000002;
  static const FsrmPropertyDefinitionFlags_Secure = 0x00000004;
}

/// {@category Enum}
class FsrmPropertyDefinitionType {
  static const FsrmPropertyDefinitionType_Unknown = 0x00000000;
  static const FsrmPropertyDefinitionType_OrderedList = 0x00000001;
  static const FsrmPropertyDefinitionType_MultiChoiceList = 0x00000002;
  static const FsrmPropertyDefinitionType_SingleChoiceList = 0x00000003;
  static const FsrmPropertyDefinitionType_String = 0x00000004;
  static const FsrmPropertyDefinitionType_MultiString = 0x00000005;
  static const FsrmPropertyDefinitionType_Int = 0x00000006;
  static const FsrmPropertyDefinitionType_Bool = 0x00000007;
  static const FsrmPropertyDefinitionType_Date = 0x00000008;
}

/// {@category Enum}
class FsrmPropertyFlags {
  static const FsrmPropertyFlags_None = 0x00000000;
  static const FsrmPropertyFlags_Orphaned = 0x00000001;
  static const FsrmPropertyFlags_RetrievedFromCache = 0x00000002;
  static const FsrmPropertyFlags_RetrievedFromStorage = 0x00000004;
  static const FsrmPropertyFlags_SetByClassifier = 0x00000008;
  static const FsrmPropertyFlags_Deleted = 0x00000010;
  static const FsrmPropertyFlags_Reclassified = 0x00000020;
  static const FsrmPropertyFlags_AggregationFailed = 0x00000040;
  static const FsrmPropertyFlags_Existing = 0x00000080;
  static const FsrmPropertyFlags_FailedLoadingProperties = 0x00000100;
  static const FsrmPropertyFlags_FailedClassifyingProperties = 0x00000200;
  static const FsrmPropertyFlags_FailedSavingProperties = 0x00000400;
  static const FsrmPropertyFlags_Secure = 0x00000800;
  static const FsrmPropertyFlags_PolicyDerived = 0x00001000;
  static const FsrmPropertyFlags_Inherited = 0x00002000;
  static const FsrmPropertyFlags_Manual = 0x00004000;
  static const FsrmPropertyFlags_ExplicitValueDeleted = 0x00008000;
  static const FsrmPropertyFlags_PropertyDeletedFromClear = 0x00010000;
  static const FsrmPropertyFlags_PropertySourceMask = 0x0000000e;
  static const FsrmPropertyFlags_PersistentMask = 0x00005000;
}

/// {@category Enum}
class FsrmPropertyValueType {
  static const FsrmPropertyValueType_Undefined = 0x00000000;
  static const FsrmPropertyValueType_Literal = 0x00000001;
  static const FsrmPropertyValueType_DateOffset = 0x00000002;
}

/// {@category Enum}
class FsrmQuotaFlags {
  static const FsrmQuotaFlags_Enforce = 0x00000100;
  static const FsrmQuotaFlags_Disable = 0x00000200;
  static const FsrmQuotaFlags_StatusIncomplete = 0x00010000;
  static const FsrmQuotaFlags_StatusRebuilding = 0x00020000;
}

/// {@category Enum}
class FsrmReportFilter {
  static const FsrmReportFilter_MinSize = 0x00000001;
  static const FsrmReportFilter_MinAgeDays = 0x00000002;
  static const FsrmReportFilter_MaxAgeDays = 0x00000003;
  static const FsrmReportFilter_MinQuotaUsage = 0x00000004;
  static const FsrmReportFilter_FileGroups = 0x00000005;
  static const FsrmReportFilter_Owners = 0x00000006;
  static const FsrmReportFilter_NamePattern = 0x00000007;
  static const FsrmReportFilter_Property = 0x00000008;
}

/// {@category Enum}
class FsrmReportFormat {
  static const FsrmReportFormat_Unknown = 0x00000000;
  static const FsrmReportFormat_DHtml = 0x00000001;
  static const FsrmReportFormat_Html = 0x00000002;
  static const FsrmReportFormat_Txt = 0x00000003;
  static const FsrmReportFormat_Csv = 0x00000004;
  static const FsrmReportFormat_Xml = 0x00000005;
}

/// {@category Enum}
class FsrmReportGenerationContext {
  static const FsrmReportGenerationContext_Undefined = 0x00000001;
  static const FsrmReportGenerationContext_ScheduledReport = 0x00000002;
  static const FsrmReportGenerationContext_InteractiveReport = 0x00000003;
  static const FsrmReportGenerationContext_IncidentReport = 0x00000004;
}

/// {@category Enum}
class FsrmReportLimit {
  static const FsrmReportLimit_MaxFiles = 0x00000001;
  static const FsrmReportLimit_MaxFileGroups = 0x00000002;
  static const FsrmReportLimit_MaxOwners = 0x00000003;
  static const FsrmReportLimit_MaxFilesPerFileGroup = 0x00000004;
  static const FsrmReportLimit_MaxFilesPerOwner = 0x00000005;
  static const FsrmReportLimit_MaxFilesPerDuplGroup = 0x00000006;
  static const FsrmReportLimit_MaxDuplicateGroups = 0x00000007;
  static const FsrmReportLimit_MaxQuotas = 0x00000008;
  static const FsrmReportLimit_MaxFileScreenEvents = 0x00000009;
  static const FsrmReportLimit_MaxPropertyValues = 0x0000000a;
  static const FsrmReportLimit_MaxFilesPerPropertyValue = 0x0000000b;
  static const FsrmReportLimit_MaxFolders = 0x0000000c;
}

/// {@category Enum}
class FsrmReportRunningStatus {
  static const FsrmReportRunningStatus_Unknown = 0x00000000;
  static const FsrmReportRunningStatus_NotRunning = 0x00000001;
  static const FsrmReportRunningStatus_Queued = 0x00000002;
  static const FsrmReportRunningStatus_Running = 0x00000003;
}

/// {@category Enum}
class FsrmReportType {
  static const FsrmReportType_Unknown = 0x00000000;
  static const FsrmReportType_LargeFiles = 0x00000001;
  static const FsrmReportType_FilesByType = 0x00000002;
  static const FsrmReportType_LeastRecentlyAccessed = 0x00000003;
  static const FsrmReportType_MostRecentlyAccessed = 0x00000004;
  static const FsrmReportType_QuotaUsage = 0x00000005;
  static const FsrmReportType_FilesByOwner = 0x00000006;
  static const FsrmReportType_ExportReport = 0x00000007;
  static const FsrmReportType_DuplicateFiles = 0x00000008;
  static const FsrmReportType_FileScreenAudit = 0x00000009;
  static const FsrmReportType_FilesByProperty = 0x0000000a;
  static const FsrmReportType_AutomaticClassification = 0x0000000b;
  static const FsrmReportType_Expiration = 0x0000000c;
  static const FsrmReportType_FoldersByProperty = 0x0000000d;
}

/// {@category Enum}
class FsrmRuleFlags {
  static const FsrmRuleFlags_Disabled = 0x00000100;
  static const FsrmRuleFlags_ClearAutomaticallyClassifiedProperty = 0x00000400;
  static const FsrmRuleFlags_ClearManuallyClassifiedProperty = 0x00000800;
  static const FsrmRuleFlags_Invalid = 0x00001000;
}

/// {@category Enum}
class FsrmRuleType {
  static const FsrmRuleType_Unknown = 0x00000000;
  static const FsrmRuleType_Classification = 0x00000001;
  static const FsrmRuleType_Generic = 0x00000002;
}

/// {@category Enum}
class FsrmStorageModuleCaps {
  static const FsrmStorageModuleCaps_Unknown = 0x00000000;
  static const FsrmStorageModuleCaps_CanGet = 0x00000001;
  static const FsrmStorageModuleCaps_CanSet = 0x00000002;
  static const FsrmStorageModuleCaps_CanHandleDirectories = 0x00000004;
  static const FsrmStorageModuleCaps_CanHandleFiles = 0x00000008;
}

/// {@category Enum}
class FsrmStorageModuleType {
  static const FsrmStorageModuleType_Unknown = 0x00000000;
  static const FsrmStorageModuleType_Cache = 0x00000001;
  static const FsrmStorageModuleType_InFile = 0x00000002;
  static const FsrmStorageModuleType_Database = 0x00000003;
  static const FsrmStorageModuleType_System = 0x00000064;
}

/// {@category Enum}
class FsrmTemplateApplyOptions {
  static const FsrmTemplateApplyOptions_ApplyToDerivedMatching = 0x00000001;
  static const FsrmTemplateApplyOptions_ApplyToDerivedAll = 0x00000002;
}
