/// {@category Enum}
class DECODING_SOURCE {
  static const DecodingSourceXMLFile = 0x00000000;
  static const DecodingSourceWbem = 0x00000001;
  static const DecodingSourceWPP = 0x00000002;
  static const DecodingSourceTlg = 0x00000003;
  static const DecodingSourceMax = 0x00000004;
}

/// {@category Enum}
class ETW_COMPRESSION_RESUMPTION_MODE {
  static const EtwCompressionModeRestart = 0x00000000;
  static const EtwCompressionModeNoDisable = 0x00000001;
  static const EtwCompressionModeNoRestart = 0x00000002;
}

/// {@category Enum}
class ETW_PROCESS_HANDLE_INFO_TYPE {
  static const EtwQueryPartitionInformation = 0x00000001;
  static const EtwQueryPartitionInformationV2 = 0x00000002;
  static const EtwQueryLastDroppedTimes = 0x00000003;
  static const EtwQueryProcessHandleInfoMax = 0x00000004;
}

/// {@category Enum}
class ETW_PROVIDER_TRAIT_TYPE {
  static const EtwProviderTraitTypeGroup = 0x00000001;
  static const EtwProviderTraitDecodeGuid = 0x00000002;
  static const EtwProviderTraitTypeMax = 0x00000003;
}

/// {@category Enum}
class EVENTSECURITYOPERATION {
  static const EventSecuritySetDACL = 0x00000000;
  static const EventSecuritySetSACL = 0x00000001;
  static const EventSecurityAddDACL = 0x00000002;
  static const EventSecurityAddSACL = 0x00000003;
  static const EventSecurityMax = 0x00000004;
}

/// {@category Enum}
class EVENT_FIELD_TYPE {
  static const EventKeywordInformation = 0x00000000;
  static const EventLevelInformation = 0x00000001;
  static const EventChannelInformation = 0x00000002;
  static const EventTaskInformation = 0x00000003;
  static const EventOpcodeInformation = 0x00000004;
  static const EventInformationMax = 0x00000005;
}

/// {@category Enum}
class EVENT_INFO_CLASS {
  static const EventProviderBinaryTrackInfo = 0x00000000;
  static const EventProviderSetReserved1 = 0x00000001;
  static const EventProviderSetTraits = 0x00000002;
  static const EventProviderUseDescriptorType = 0x00000003;
  static const MaxEventInfo = 0x00000004;
}

/// {@category Enum}
class EVENT_TRACE_CONTROL {
  static const EVENT_TRACE_CONTROL_FLUSH = 0x00000003;
  static const EVENT_TRACE_CONTROL_QUERY = 0x00000000;
  static const EVENT_TRACE_CONTROL_STOP = 0x00000001;
  static const EVENT_TRACE_CONTROL_UPDATE = 0x00000002;
}

/// {@category Enum}
class EVENT_TRACE_FLAG {
  static const EVENT_TRACE_FLAG_ALPC = 0x00100000;
  static const EVENT_TRACE_FLAG_CSWITCH = 0x00000010;
  static const EVENT_TRACE_FLAG_DBGPRINT = 0x00040000;
  static const EVENT_TRACE_FLAG_DISK_FILE_IO = 0x00000200;
  static const EVENT_TRACE_FLAG_DISK_IO = 0x00000100;
  static const EVENT_TRACE_FLAG_DISK_IO_INIT = 0x00000400;
  static const EVENT_TRACE_FLAG_DISPATCHER = 0x00000800;
  static const EVENT_TRACE_FLAG_DPC = 0x00000020;
  static const EVENT_TRACE_FLAG_DRIVER = 0x00800000;
  static const EVENT_TRACE_FLAG_FILE_IO = 0x02000000;
  static const EVENT_TRACE_FLAG_FILE_IO_INIT = 0x04000000;
  static const EVENT_TRACE_FLAG_IMAGE_LOAD = 0x00000004;
  static const EVENT_TRACE_FLAG_INTERRUPT = 0x00000040;
  static const EVENT_TRACE_FLAG_JOB = 0x00080000;
  static const EVENT_TRACE_FLAG_MEMORY_HARD_FAULTS = 0x00002000;
  static const EVENT_TRACE_FLAG_MEMORY_PAGE_FAULTS = 0x00001000;
  static const EVENT_TRACE_FLAG_NETWORK_TCPIP = 0x00010000;
  static const EVENT_TRACE_FLAG_NO_SYSCONFIG = 0x10000000;
  static const EVENT_TRACE_FLAG_PROCESS = 0x00000001;
  static const EVENT_TRACE_FLAG_PROCESS_COUNTERS = 0x00000008;
  static const EVENT_TRACE_FLAG_PROFILE = 0x01000000;
  static const EVENT_TRACE_FLAG_REGISTRY = 0x00020000;
  static const EVENT_TRACE_FLAG_SPLIT_IO = 0x00200000;
  static const EVENT_TRACE_FLAG_SYSTEMCALL = 0x00000080;
  static const EVENT_TRACE_FLAG_THREAD = 0x00000002;
  static const EVENT_TRACE_FLAG_VAMAP = 0x00008000;
  static const EVENT_TRACE_FLAG_VIRTUAL_ALLOC = 0x00004000;
}

/// {@category Enum}
class MAP_FLAGS {
  static const EVENTMAP_INFO_FLAG_MANIFEST_VALUEMAP = 0x00000001;
  static const EVENTMAP_INFO_FLAG_MANIFEST_BITMAP = 0x00000002;
  static const EVENTMAP_INFO_FLAG_MANIFEST_PATTERNMAP = 0x00000004;
  static const EVENTMAP_INFO_FLAG_WBEM_VALUEMAP = 0x00000008;
  static const EVENTMAP_INFO_FLAG_WBEM_BITMAP = 0x00000010;
  static const EVENTMAP_INFO_FLAG_WBEM_FLAG = 0x00000020;
  static const EVENTMAP_INFO_FLAG_WBEM_NO_MAP = 0x00000040;
}

/// {@category Enum}
class MAP_VALUETYPE {
  static const EVENTMAP_ENTRY_VALUETYPE_ULONG = 0x00000000;
  static const EVENTMAP_ENTRY_VALUETYPE_STRING = 0x00000001;
}

/// {@category Enum}
class PAYLOAD_OPERATOR {
  static const PAYLOADFIELD_EQ = 0x00000000;
  static const PAYLOADFIELD_NE = 0x00000001;
  static const PAYLOADFIELD_LE = 0x00000002;
  static const PAYLOADFIELD_GT = 0x00000003;
  static const PAYLOADFIELD_LT = 0x00000004;
  static const PAYLOADFIELD_GE = 0x00000005;
  static const PAYLOADFIELD_BETWEEN = 0x00000006;
  static const PAYLOADFIELD_NOTBETWEEN = 0x00000007;
  static const PAYLOADFIELD_MODULO = 0x00000008;
  static const PAYLOADFIELD_CONTAINS = 0x00000014;
  static const PAYLOADFIELD_DOESNTCONTAIN = 0x00000015;
  static const PAYLOADFIELD_IS = 0x0000001e;
  static const PAYLOADFIELD_ISNOT = 0x0000001f;
  static const PAYLOADFIELD_INVALID = 0x00000020;
}

/// {@category Enum}
class PENABLECALLBACK_IsEnabledFlags {
  static const EVENT_CONTROL_CODE_DISABLE_PROVIDER = 0x00000000;
  static const EVENT_CONTROL_CODE_ENABLE_PROVIDER = 0x00000001;
  static const EVENT_CONTROL_CODE_CAPTURE_STATE = 0x00000002;
}

/// {@category Enum}
class PROPERTY_FLAGS {
  static const PropertyStruct = 0x00000001;
  static const PropertyParamLength = 0x00000002;
  static const PropertyParamCount = 0x00000004;
  static const PropertyWBEMXmlFragment = 0x00000008;
  static const PropertyParamFixedLength = 0x00000010;
  static const PropertyParamFixedCount = 0x00000020;
  static const PropertyHasTags = 0x00000040;
  static const PropertyHasCustomSchema = 0x00000080;
}

/// {@category Enum}
class TDH_CONTEXT_TYPE {
  static const TDH_CONTEXT_WPP_TMFFILE = 0x00000000;
  static const TDH_CONTEXT_WPP_TMFSEARCHPATH = 0x00000001;
  static const TDH_CONTEXT_WPP_GMT = 0x00000002;
  static const TDH_CONTEXT_POINTERSIZE = 0x00000003;
  static const TDH_CONTEXT_PDB_PATH = 0x00000004;
  static const TDH_CONTEXT_MAXIMUM = 0x00000005;
}

/// {@category Enum}
class TEMPLATE_FLAGS {
  static const TEMPLATE_EVENT_DATA = 0x00000001;
  static const TEMPLATE_USER_DATA = 0x00000002;
  static const TEMPLATE_CONTROL_GUID = 0x00000004;
}

/// {@category Enum}
class TRACE_QUERY_INFO_CLASS {
  static const TraceGuidQueryList = 0x00000000;
  static const TraceGuidQueryInfo = 0x00000001;
  static const TraceGuidQueryProcess = 0x00000002;
  static const TraceStackTracingInfo = 0x00000003;
  static const TraceSystemTraceEnableFlagsInfo = 0x00000004;
  static const TraceSampledProfileIntervalInfo = 0x00000005;
  static const TraceProfileSourceConfigInfo = 0x00000006;
  static const TraceProfileSourceListInfo = 0x00000007;
  static const TracePmcEventListInfo = 0x00000008;
  static const TracePmcCounterListInfo = 0x00000009;
  static const TraceSetDisallowList = 0x0000000a;
  static const TraceVersionInfo = 0x0000000b;
  static const TraceGroupQueryList = 0x0000000c;
  static const TraceGroupQueryInfo = 0x0000000d;
  static const TraceDisallowListQuery = 0x0000000e;
  static const TraceInfoReserved15 = 0x0000000f;
  static const TracePeriodicCaptureStateListInfo = 0x00000010;
  static const TracePeriodicCaptureStateInfo = 0x00000011;
  static const TraceProviderBinaryTracking = 0x00000012;
  static const TraceMaxLoggersQuery = 0x00000013;
  static const TraceLbrConfigurationInfo = 0x00000014;
  static const TraceLbrEventListInfo = 0x00000015;
  static const TraceMaxPmcCounterQuery = 0x00000016;
  static const MaxTraceSetInfoClass = 0x00000017;
}

/// {@category Enum}
class TraceMessage_MessageFlags {
  static const TRACE_MESSAGE_COMPONENTID = 0x00000004;
  static const TRACE_MESSAGE_GUID = 0x00000002;
  static const TRACE_MESSAGE_SEQUENCE = 0x00000001;
  static const TRACE_MESSAGE_SYSTEMINFO = 0x00000020;
  static const TRACE_MESSAGE_TIMESTAMP = 0x00000008;
}

/// {@category Enum}
class WMIDPREQUESTCODE {
  static const WMI_GET_ALL_DATA = 0x00000000;
  static const WMI_GET_SINGLE_INSTANCE = 0x00000001;
  static const WMI_SET_SINGLE_INSTANCE = 0x00000002;
  static const WMI_SET_SINGLE_ITEM = 0x00000003;
  static const WMI_ENABLE_EVENTS = 0x00000004;
  static const WMI_DISABLE_EVENTS = 0x00000005;
  static const WMI_ENABLE_COLLECTION = 0x00000006;
  static const WMI_DISABLE_COLLECTION = 0x00000007;
  static const WMI_REGINFO = 0x00000008;
  static const WMI_EXECUTE_METHOD = 0x00000009;
  static const WMI_CAPTURE_STATE = 0x0000000a;
}

/// {@category Enum}
class TDH_IN_TYPE {
  static const TDH_INTYPE_NULL = 0x00000000;
  static const TDH_INTYPE_UNICODESTRING = 0x00000001;
  static const TDH_INTYPE_ANSISTRING = 0x00000002;
  static const TDH_INTYPE_INT8 = 0x00000003;
  static const TDH_INTYPE_UINT8 = 0x00000004;
  static const TDH_INTYPE_INT16 = 0x00000005;
  static const TDH_INTYPE_UINT16 = 0x00000006;
  static const TDH_INTYPE_INT32 = 0x00000007;
  static const TDH_INTYPE_UINT32 = 0x00000008;
  static const TDH_INTYPE_INT64 = 0x00000009;
  static const TDH_INTYPE_UINT64 = 0x0000000a;
  static const TDH_INTYPE_FLOAT = 0x0000000b;
  static const TDH_INTYPE_DOUBLE = 0x0000000c;
  static const TDH_INTYPE_BOOLEAN = 0x0000000d;
  static const TDH_INTYPE_BINARY = 0x0000000e;
  static const TDH_INTYPE_GUID = 0x0000000f;
  static const TDH_INTYPE_POINTER = 0x00000010;
  static const TDH_INTYPE_FILETIME = 0x00000011;
  static const TDH_INTYPE_SYSTEMTIME = 0x00000012;
  static const TDH_INTYPE_SID = 0x00000013;
  static const TDH_INTYPE_HEXINT32 = 0x00000014;
  static const TDH_INTYPE_HEXINT64 = 0x00000015;
  static const TDH_INTYPE_MANIFEST_COUNTEDSTRING = 0x00000016;
  static const TDH_INTYPE_MANIFEST_COUNTEDANSISTRING = 0x00000017;
  static const TDH_INTYPE_RESERVED24 = 0x00000018;
  static const TDH_INTYPE_MANIFEST_COUNTEDBINARY = 0x00000019;
  static const TDH_INTYPE_COUNTEDSTRING = 0x0000012c;
  static const TDH_INTYPE_COUNTEDANSISTRING = 0x0000012d;
  static const TDH_INTYPE_REVERSEDCOUNTEDSTRING = 0x0000012e;
  static const TDH_INTYPE_REVERSEDCOUNTEDANSISTRING = 0x0000012f;
  static const TDH_INTYPE_NONNULLTERMINATEDSTRING = 0x00000130;
  static const TDH_INTYPE_NONNULLTERMINATEDANSISTRING = 0x00000131;
  static const TDH_INTYPE_UNICODECHAR = 0x00000132;
  static const TDH_INTYPE_ANSICHAR = 0x00000133;
  static const TDH_INTYPE_SIZET = 0x00000134;
  static const TDH_INTYPE_HEXDUMP = 0x00000135;
  static const TDH_INTYPE_WBEMSID = 0x00000136;
}

/// {@category Enum}
class TDH_OUT_TYPE {
  static const TDH_OUTTYPE_NULL = 0x00000000;
  static const TDH_OUTTYPE_STRING = 0x00000001;
  static const TDH_OUTTYPE_DATETIME = 0x00000002;
  static const TDH_OUTTYPE_BYTE = 0x00000003;
  static const TDH_OUTTYPE_UNSIGNEDBYTE = 0x00000004;
  static const TDH_OUTTYPE_SHORT = 0x00000005;
  static const TDH_OUTTYPE_UNSIGNEDSHORT = 0x00000006;
  static const TDH_OUTTYPE_INT = 0x00000007;
  static const TDH_OUTTYPE_UNSIGNEDINT = 0x00000008;
  static const TDH_OUTTYPE_LONG = 0x00000009;
  static const TDH_OUTTYPE_UNSIGNEDLONG = 0x0000000a;
  static const TDH_OUTTYPE_FLOAT = 0x0000000b;
  static const TDH_OUTTYPE_DOUBLE = 0x0000000c;
  static const TDH_OUTTYPE_BOOLEAN = 0x0000000d;
  static const TDH_OUTTYPE_GUID = 0x0000000e;
  static const TDH_OUTTYPE_HEXBINARY = 0x0000000f;
  static const TDH_OUTTYPE_HEXINT8 = 0x00000010;
  static const TDH_OUTTYPE_HEXINT16 = 0x00000011;
  static const TDH_OUTTYPE_HEXINT32 = 0x00000012;
  static const TDH_OUTTYPE_HEXINT64 = 0x00000013;
  static const TDH_OUTTYPE_PID = 0x00000014;
  static const TDH_OUTTYPE_TID = 0x00000015;
  static const TDH_OUTTYPE_PORT = 0x00000016;
  static const TDH_OUTTYPE_IPV4 = 0x00000017;
  static const TDH_OUTTYPE_IPV6 = 0x00000018;
  static const TDH_OUTTYPE_SOCKETADDRESS = 0x00000019;
  static const TDH_OUTTYPE_CIMDATETIME = 0x0000001a;
  static const TDH_OUTTYPE_ETWTIME = 0x0000001b;
  static const TDH_OUTTYPE_XML = 0x0000001c;
  static const TDH_OUTTYPE_ERRORCODE = 0x0000001d;
  static const TDH_OUTTYPE_WIN32ERROR = 0x0000001e;
  static const TDH_OUTTYPE_NTSTATUS = 0x0000001f;
  static const TDH_OUTTYPE_HRESULT = 0x00000020;
  static const TDH_OUTTYPE_CULTURE_INSENSITIVE_DATETIME = 0x00000021;
  static const TDH_OUTTYPE_JSON = 0x00000022;
  static const TDH_OUTTYPE_UTF8 = 0x00000023;
  static const TDH_OUTTYPE_PKCS7_WITH_TYPE_INFO = 0x00000024;
  static const TDH_OUTTYPE_CODE_POINTER = 0x00000025;
  static const TDH_OUTTYPE_DATETIME_UTC = 0x00000026;
  static const TDH_OUTTYPE_REDUCEDSTRING = 0x0000012c;
  static const TDH_OUTTYPE_NOPRINT = 0x0000012d;
}
