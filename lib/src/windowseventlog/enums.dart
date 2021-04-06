/// {@category Enum}
class EVT_CHANNEL_CLOCK_TYPE {
  static const EvtChannelClockTypeSystemTime = 0x00000000;
  static const EvtChannelClockTypeQPC = 0x00000001;
}

/// {@category Enum}
class EVT_CHANNEL_CONFIG_PROPERTY_ID {
  static const EvtChannelConfigEnabled = 0x00000000;
  static const EvtChannelConfigIsolation = 0x00000001;
  static const EvtChannelConfigType = 0x00000002;
  static const EvtChannelConfigOwningPublisher = 0x00000003;
  static const EvtChannelConfigClassicEventlog = 0x00000004;
  static const EvtChannelConfigAccess = 0x00000005;
  static const EvtChannelLoggingConfigRetention = 0x00000006;
  static const EvtChannelLoggingConfigAutoBackup = 0x00000007;
  static const EvtChannelLoggingConfigMaxSize = 0x00000008;
  static const EvtChannelLoggingConfigLogFilePath = 0x00000009;
  static const EvtChannelPublishingConfigLevel = 0x0000000a;
  static const EvtChannelPublishingConfigKeywords = 0x0000000b;
  static const EvtChannelPublishingConfigControlGuid = 0x0000000c;
  static const EvtChannelPublishingConfigBufferSize = 0x0000000d;
  static const EvtChannelPublishingConfigMinBuffers = 0x0000000e;
  static const EvtChannelPublishingConfigMaxBuffers = 0x0000000f;
  static const EvtChannelPublishingConfigLatency = 0x00000010;
  static const EvtChannelPublishingConfigClockType = 0x00000011;
  static const EvtChannelPublishingConfigSidType = 0x00000012;
  static const EvtChannelPublisherList = 0x00000013;
  static const EvtChannelPublishingConfigFileMax = 0x00000014;
  static const EvtChannelConfigPropertyIdEND = 0x00000015;
}

/// {@category Enum}
class EVT_CHANNEL_ISOLATION_TYPE {
  static const EvtChannelIsolationTypeApplication = 0x00000000;
  static const EvtChannelIsolationTypeSystem = 0x00000001;
  static const EvtChannelIsolationTypeCustom = 0x00000002;
}

/// {@category Enum}
class EVT_CHANNEL_REFERENCE_FLAGS {
  static const EvtChannelReferenceImported = 0x00000001;
}

/// {@category Enum}
class EVT_CHANNEL_SID_TYPE {
  static const EvtChannelSidTypeNone = 0x00000000;
  static const EvtChannelSidTypePublishing = 0x00000001;
}

/// {@category Enum}
class EVT_CHANNEL_TYPE {
  static const EvtChannelTypeAdmin = 0x00000000;
  static const EvtChannelTypeOperational = 0x00000001;
  static const EvtChannelTypeAnalytic = 0x00000002;
  static const EvtChannelTypeDebug = 0x00000003;
}

/// {@category Enum}
class EVT_EVENT_METADATA_PROPERTY_ID {
  static const EventMetadataEventID = 0x00000000;
  static const EventMetadataEventVersion = 0x00000001;
  static const EventMetadataEventChannel = 0x00000002;
  static const EventMetadataEventLevel = 0x00000003;
  static const EventMetadataEventOpcode = 0x00000004;
  static const EventMetadataEventTask = 0x00000005;
  static const EventMetadataEventKeyword = 0x00000006;
  static const EventMetadataEventMessageID = 0x00000007;
  static const EventMetadataEventTemplate = 0x00000008;
  static const EvtEventMetadataPropertyIdEND = 0x00000009;
}

/// {@category Enum}
class EVT_EVENT_PROPERTY_ID {
  static const EvtEventQueryIDs = 0x00000000;
  static const EvtEventPath = 0x00000001;
  static const EvtEventPropertyIdEND = 0x00000002;
}

/// {@category Enum}
class EVT_EXPORTLOG_FLAGS {
  static const EvtExportLogChannelPath = 0x00000001;
  static const EvtExportLogFilePath = 0x00000002;
  static const EvtExportLogTolerateQueryErrors = 0x00001000;
  static const EvtExportLogOverwrite = 0x00002000;
}

/// {@category Enum}
class EVT_FORMAT_MESSAGE_FLAGS {
  static const EvtFormatMessageEvent = 0x00000001;
  static const EvtFormatMessageLevel = 0x00000002;
  static const EvtFormatMessageTask = 0x00000003;
  static const EvtFormatMessageOpcode = 0x00000004;
  static const EvtFormatMessageKeyword = 0x00000005;
  static const EvtFormatMessageChannel = 0x00000006;
  static const EvtFormatMessageProvider = 0x00000007;
  static const EvtFormatMessageId = 0x00000008;
  static const EvtFormatMessageXml = 0x00000009;
}

/// {@category Enum}
class EVT_LOGIN_CLASS {
  static const EvtRpcLogin = 0x00000001;
}

/// {@category Enum}
class EVT_LOG_PROPERTY_ID {
  static const EvtLogCreationTime = 0x00000000;
  static const EvtLogLastAccessTime = 0x00000001;
  static const EvtLogLastWriteTime = 0x00000002;
  static const EvtLogFileSize = 0x00000003;
  static const EvtLogAttributes = 0x00000004;
  static const EvtLogNumberOfLogRecords = 0x00000005;
  static const EvtLogOldestRecordNumber = 0x00000006;
  static const EvtLogFull = 0x00000007;
}

/// {@category Enum}
class EVT_OPEN_LOG_FLAGS {
  static const EvtOpenChannelPath = 0x00000001;
  static const EvtOpenFilePath = 0x00000002;
}

/// {@category Enum}
class EVT_PUBLISHER_METADATA_PROPERTY_ID {
  static const EvtPublisherMetadataPublisherGuid = 0x00000000;
  static const EvtPublisherMetadataResourceFilePath = 0x00000001;
  static const EvtPublisherMetadataParameterFilePath = 0x00000002;
  static const EvtPublisherMetadataMessageFilePath = 0x00000003;
  static const EvtPublisherMetadataHelpLink = 0x00000004;
  static const EvtPublisherMetadataPublisherMessageID = 0x00000005;
  static const EvtPublisherMetadataChannelReferences = 0x00000006;
  static const EvtPublisherMetadataChannelReferencePath = 0x00000007;
  static const EvtPublisherMetadataChannelReferenceIndex = 0x00000008;
  static const EvtPublisherMetadataChannelReferenceID = 0x00000009;
  static const EvtPublisherMetadataChannelReferenceFlags = 0x0000000a;
  static const EvtPublisherMetadataChannelReferenceMessageID = 0x0000000b;
  static const EvtPublisherMetadataLevels = 0x0000000c;
  static const EvtPublisherMetadataLevelName = 0x0000000d;
  static const EvtPublisherMetadataLevelValue = 0x0000000e;
  static const EvtPublisherMetadataLevelMessageID = 0x0000000f;
  static const EvtPublisherMetadataTasks = 0x00000010;
  static const EvtPublisherMetadataTaskName = 0x00000011;
  static const EvtPublisherMetadataTaskEventGuid = 0x00000012;
  static const EvtPublisherMetadataTaskValue = 0x00000013;
  static const EvtPublisherMetadataTaskMessageID = 0x00000014;
  static const EvtPublisherMetadataOpcodes = 0x00000015;
  static const EvtPublisherMetadataOpcodeName = 0x00000016;
  static const EvtPublisherMetadataOpcodeValue = 0x00000017;
  static const EvtPublisherMetadataOpcodeMessageID = 0x00000018;
  static const EvtPublisherMetadataKeywords = 0x00000019;
  static const EvtPublisherMetadataKeywordName = 0x0000001a;
  static const EvtPublisherMetadataKeywordValue = 0x0000001b;
  static const EvtPublisherMetadataKeywordMessageID = 0x0000001c;
  static const EvtPublisherMetadataPropertyIdEND = 0x0000001d;
}

/// {@category Enum}
class EVT_QUERY_FLAGS {
  static const EvtQueryChannelPath = 0x00000001;
  static const EvtQueryFilePath = 0x00000002;
  static const EvtQueryForwardDirection = 0x00000100;
  static const EvtQueryReverseDirection = 0x00000200;
  static const EvtQueryTolerateQueryErrors = 0x00001000;
}

/// {@category Enum}
class EVT_QUERY_PROPERTY_ID {
  static const EvtQueryNames = 0x00000000;
  static const EvtQueryStatuses = 0x00000001;
  static const EvtQueryPropertyIdEND = 0x00000002;
}

/// {@category Enum}
class EVT_RENDER_CONTEXT_FLAGS {
  static const EvtRenderContextValues = 0x00000000;
  static const EvtRenderContextSystem = 0x00000001;
  static const EvtRenderContextUser = 0x00000002;
}

/// {@category Enum}
class EVT_RENDER_FLAGS {
  static const EvtRenderEventValues = 0x00000000;
  static const EvtRenderEventXml = 0x00000001;
  static const EvtRenderBookmark = 0x00000002;
}

/// {@category Enum}
class EVT_RPC_LOGIN_FLAGS {
  static const EvtRpcLoginAuthDefault = 0x00000000;
  static const EvtRpcLoginAuthNegotiate = 0x00000001;
  static const EvtRpcLoginAuthKerberos = 0x00000002;
  static const EvtRpcLoginAuthNTLM = 0x00000003;
}

/// {@category Enum}
class EVT_SEEK_FLAGS {
  static const EvtSeekRelativeToFirst = 0x00000001;
  static const EvtSeekRelativeToLast = 0x00000002;
  static const EvtSeekRelativeToCurrent = 0x00000003;
  static const EvtSeekRelativeToBookmark = 0x00000004;
  static const EvtSeekOriginMask = 0x00000007;
  static const EvtSeekStrict = 0x00010000;
}

/// {@category Enum}
class EVT_SUBSCRIBE_FLAGS {
  static const EvtSubscribeToFutureEvents = 0x00000001;
  static const EvtSubscribeStartAtOldestRecord = 0x00000002;
  static const EvtSubscribeStartAfterBookmark = 0x00000003;
  static const EvtSubscribeOriginMask = 0x00000003;
  static const EvtSubscribeTolerateQueryErrors = 0x00001000;
  static const EvtSubscribeStrict = 0x00010000;
}

/// {@category Enum}
class EVT_SUBSCRIBE_NOTIFY_ACTION {
  static const EvtSubscribeActionError = 0x00000000;
  static const EvtSubscribeActionDeliver = 0x00000001;
}

/// {@category Enum}
class EVT_SYSTEM_PROPERTY_ID {
  static const EvtSystemProviderName = 0x00000000;
  static const EvtSystemProviderGuid = 0x00000001;
  static const EvtSystemEventID = 0x00000002;
  static const EvtSystemQualifiers = 0x00000003;
  static const EvtSystemLevel = 0x00000004;
  static const EvtSystemTask = 0x00000005;
  static const EvtSystemOpcode = 0x00000006;
  static const EvtSystemKeywords = 0x00000007;
  static const EvtSystemTimeCreated = 0x00000008;
  static const EvtSystemEventRecordId = 0x00000009;
  static const EvtSystemActivityID = 0x0000000a;
  static const EvtSystemRelatedActivityID = 0x0000000b;
  static const EvtSystemProcessID = 0x0000000c;
  static const EvtSystemThreadID = 0x0000000d;
  static const EvtSystemChannel = 0x0000000e;
  static const EvtSystemComputer = 0x0000000f;
  static const EvtSystemUserID = 0x00000010;
  static const EvtSystemVersion = 0x00000011;
  static const EvtSystemPropertyIdEND = 0x00000012;
}

/// {@category Enum}
class EVT_VARIANT_TYPE {
  static const EvtVarTypeNull = 0x00000000;
  static const EvtVarTypeString = 0x00000001;
  static const EvtVarTypeAnsiString = 0x00000002;
  static const EvtVarTypeSByte = 0x00000003;
  static const EvtVarTypeByte = 0x00000004;
  static const EvtVarTypeInt16 = 0x00000005;
  static const EvtVarTypeUInt16 = 0x00000006;
  static const EvtVarTypeInt32 = 0x00000007;
  static const EvtVarTypeUInt32 = 0x00000008;
  static const EvtVarTypeInt64 = 0x00000009;
  static const EvtVarTypeUInt64 = 0x0000000a;
  static const EvtVarTypeSingle = 0x0000000b;
  static const EvtVarTypeDouble = 0x0000000c;
  static const EvtVarTypeBoolean = 0x0000000d;
  static const EvtVarTypeBinary = 0x0000000e;
  static const EvtVarTypeGuid = 0x0000000f;
  static const EvtVarTypeSizeT = 0x00000010;
  static const EvtVarTypeFileTime = 0x00000011;
  static const EvtVarTypeSysTime = 0x00000012;
  static const EvtVarTypeSid = 0x00000013;
  static const EvtVarTypeHexInt32 = 0x00000014;
  static const EvtVarTypeHexInt64 = 0x00000015;
  static const EvtVarTypeEvtHandle = 0x00000020;
  static const EvtVarTypeEvtXml = 0x00000023;
}
