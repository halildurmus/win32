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
class EATTRIBUTE_DATATYPE {
  static const kADT_UNKNOWN = 0x00000000;
  static const kADT_BOOL = 0x00000001;
  static const kADT_INT = 0x00000002;
  static const kADT_LONG = 0x00000003;
  static const kADT_DWORD = 0x00000004;
  static const kADT_ASCII = 0x00000005;
  static const kADT_UNICODE = 0x00000006;
  static const kADT_BINARY = 0x00000007;
  static const kADT_SIZE = 0x00000008;
  static const kADT_RECT = 0x00000009;
  static const kADT_CUSTOMSIZEPARAMS = 0x0000000a;
}

/// {@category Enum}
class EBranchOfficeJobEventType {
  static const kInvalidJobState = 0x00000000;
  static const kLogJobPrinted = 0x00000001;
  static const kLogJobRendered = 0x00000002;
  static const kLogJobError = 0x00000003;
  static const kLogJobPipelineError = 0x00000004;
  static const kLogOfflineFileFull = 0x00000005;
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
class EPrintXPSJobOperation {
  static const kJobProduction = 0x00000001;
  static const kJobConsumption = 0x00000002;
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
class EXpsCompressionOptions {
  static const Compression_NotCompressed = 0x00000000;
  static const Compression_Normal = 0x00000001;
  static const Compression_Small = 0x00000002;
  static const Compression_Fast = 0x00000003;
}

/// {@category Enum}
class EXpsFontOptions {
  static const Font_Normal = 0x00000000;
  static const Font_Obfusticate = 0x00000001;
}

/// {@category Enum}
class EXpsFontRestriction {
  static const Xps_Restricted_Font_Installable = 0x00000000;
  static const Xps_Restricted_Font_NoEmbedding = 0x00000002;
  static const Xps_Restricted_Font_PreviewPrint = 0x00000004;
  static const Xps_Restricted_Font_Editable = 0x00000008;
}

/// {@category Enum}
class EXpsJobConsumption {
  static const XpsJob_DocumentSequenceAdded = 0x00000000;
  static const XpsJob_FixedDocumentAdded = 0x00000001;
  static const XpsJob_FixedPageAdded = 0x00000002;
}

/// {@category Enum}
class MxdcImageTypeEnums {
  static const MXDC_IMAGETYPE_JPEGHIGH_COMPRESSION = 0x00000001;
  static const MXDC_IMAGETYPE_JPEGMEDIUM_COMPRESSION = 0x00000002;
  static const MXDC_IMAGETYPE_JPEGLOW_COMPRESSION = 0x00000003;
  static const MXDC_IMAGETYPE_PNG = 0x00000004;
}

/// {@category Enum}
class MxdcLandscapeRotationEnums {
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_90_DEGREES = 0x0000005a;
  static const MXDC_LANDSCAPE_ROTATE_NONE = 0x00000000;
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_270_DEGREES = 0xffffffa6;
}

/// {@category Enum}
class MxdcS0PageEnums {
  static const MXDC_RESOURCE_TTF = 0x00000000;
  static const MXDC_RESOURCE_JPEG = 0x00000001;
  static const MXDC_RESOURCE_PNG = 0x00000002;
  static const MXDC_RESOURCE_TIFF = 0x00000003;
  static const MXDC_RESOURCE_WDP = 0x00000004;
  static const MXDC_RESOURCE_DICTIONARY = 0x00000005;
  static const MXDC_RESOURCE_ICC_PROFILE = 0x00000006;
  static const MXDC_RESOURCE_JPEG_THUMBNAIL = 0x00000007;
  static const MXDC_RESOURCE_PNG_THUMBNAIL = 0x00000008;
  static const MXDC_RESOURCE_MAX = 0x00000009;
}

/// {@category Enum}
class NOTIFICATION_CALLBACK_COMMANDS {
  static const NOTIFICATION_COMMAND_NOTIFY = 0x00000000;
  static const NOTIFICATION_COMMAND_CONTEXT_ACQUIRE = 0x00000001;
  static const NOTIFICATION_COMMAND_CONTEXT_RELEASE = 0x00000002;
}

/// {@category Enum}
class NOTIFICATION_CONFIG_FLAGS {
  static const NOTIFICATION_CONFIG_CREATE_EVENT = 0x00000001;
  static const NOTIFICATION_CONFIG_REGISTER_CALLBACK = 0x00000002;
  static const NOTIFICATION_CONFIG_EVENT_TRIGGER = 0x00000004;
  static const NOTIFICATION_CONFIG_ASYNC_CHANNEL = 0x00000008;
}

/// {@category Enum}
class PRINTER_ACCESS_RIGHTS {
  static const PRINTER_ALL_ACCESS = 0x000f000c;
  static const PRINTER_READ = 0x00020008;
  static const PRINTER_WRITE = 0x00020008;
  static const PRINTER_EXECUTE = 0x00020008;
  static const SERVER_ALL_ACCESS = 0x000f0003;
  static const SERVER_READ = 0x00020002;
  static const SERVER_WRITE = 0x00020003;
  static const SERVER_EXECUTE = 0x00020002;
  static const PRINTER_DELETE = 0x00010000;
  static const PRINTER_READ_CONTROL = 0x00020000;
  static const PRINTER_WRITE_DAC = 0x00040000;
  static const PRINTER_WRITE_OWNER = 0x00080000;
  static const PRINTER_SYNCHRONIZE = 0x00100000;
  static const PRINTER_STANDARD_RIGHTS_REQUIRED = 0x000f0000;
  static const PRINTER_STANDARD_RIGHTS_READ = 0x00020000;
  static const PRINTER_STANDARD_RIGHTS_WRITE = 0x00020000;
  static const PRINTER_STANDARD_RIGHTS_EXECUTE = 0x00020000;
  static const SERVER_ACCESS_ADMINISTER = 0x00000001;
  static const SERVER_ACCESS_ENUMERATE = 0x00000002;
  static const PRINTER_ACCESS_ADMINISTER = 0x00000004;
  static const PRINTER_ACCESS_USE = 0x00000008;
  static const PRINTER_ACCESS_MANAGE_LIMITED = 0x00000040;
}

/// {@category Enum}
class PRINTER_OPTION_FLAGS {
  static const PRINTER_OPTION_NO_CACHE = 0x00000001;
  static const PRINTER_OPTION_CACHE = 0x00000002;
  static const PRINTER_OPTION_CLIENT_CHANGE = 0x00000004;
  static const PRINTER_OPTION_NO_CLIENT_DATA = 0x00000008;
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
class PageCountType {
  static const FinalPageCount = 0x00000000;
  static const IntermediatePageCount = 0x00000001;
}

/// {@category Enum}
class PrintAsyncNotifyConversationStyle {
  static const kBiDirectional = 0x00000000;
  static const kUniDirectional = 0x00000001;
}

/// {@category Enum}
class PrintAsyncNotifyError {
  static const CHANNEL_CLOSED_BY_SERVER = 0x00000001;
  static const CHANNEL_CLOSED_BY_ANOTHER_LISTENER = 0x00000002;
  static const CHANNEL_CLOSED_BY_SAME_LISTENER = 0x00000003;
  static const CHANNEL_RELEASED_BY_LISTENER = 0x00000004;
  static const UNIRECTIONAL_NOTIFICATION_LOST = 0x00000005;
  static const ASYNC_NOTIFICATION_FAILURE = 0x00000006;
  static const NO_LISTENERS = 0x00000007;
  static const CHANNEL_ALREADY_CLOSED = 0x00000008;
  static const CHANNEL_ALREADY_OPENED = 0x00000009;
  static const CHANNEL_WAITING_FOR_CLIENT_NOTIFICATION = 0x0000000a;
  static const CHANNEL_NOT_OPENED = 0x0000000b;
  static const ASYNC_CALL_ALREADY_PARKED = 0x0000000c;
  static const NOT_REGISTERED = 0x0000000d;
  static const ALREADY_UNREGISTERED = 0x0000000e;
  static const ALREADY_REGISTERED = 0x0000000f;
  static const CHANNEL_ACQUIRED = 0x00000010;
  static const ASYNC_CALL_IN_PROGRESS = 0x00000011;
  static const MAX_NOTIFICATION_SIZE_EXCEEDED = 0x00000012;
  static const INTERNAL_NOTIFICATION_QUEUE_IS_FULL = 0x00000013;
  static const INVALID_NOTIFICATION_TYPE = 0x00000014;
  static const MAX_REGISTRATION_COUNT_EXCEEDED = 0x00000015;
  static const MAX_CHANNEL_COUNT_EXCEEDED = 0x00000016;
  static const LOCAL_ONLY_REGISTRATION = 0x00000017;
  static const REMOTE_ONLY_REGISTRATION = 0x00000018;
}

/// {@category Enum}
class PrintAsyncNotifyUserFilter {
  static const kPerUser = 0x00000000;
  static const kAllUsers = 0x00000001;
}

/// {@category Enum}
class PrintJobStatus {
  static const PrintJobStatus_Paused = 0x00000001;
  static const PrintJobStatus_Error = 0x00000002;
  static const PrintJobStatus_Deleting = 0x00000004;
  static const PrintJobStatus_Spooling = 0x00000008;
  static const PrintJobStatus_Printing = 0x00000010;
  static const PrintJobStatus_Offline = 0x00000020;
  static const PrintJobStatus_PaperOut = 0x00000040;
  static const PrintJobStatus_Printed = 0x00000080;
  static const PrintJobStatus_Deleted = 0x00000100;
  static const PrintJobStatus_BlockedDeviceQueue = 0x00000200;
  static const PrintJobStatus_UserIntervention = 0x00000400;
  static const PrintJobStatus_Restarted = 0x00000800;
  static const PrintJobStatus_Complete = 0x00001000;
  static const PrintJobStatus_Retained = 0x00002000;
}

/// {@category Enum}
class PrintSchemaConstrainedSetting {
  static const PrintSchemaConstrainedSetting_None = 0x00000000;
  static const PrintSchemaConstrainedSetting_PrintTicket = 0x00000001;
  static const PrintSchemaConstrainedSetting_Admin = 0x00000002;
  static const PrintSchemaConstrainedSetting_Device = 0x00000003;
}

/// {@category Enum}
class PrintSchemaParameterDataType {
  static const PrintSchemaParameterDataType_Integer = 0x00000000;
  static const PrintSchemaParameterDataType_NumericString = 0x00000001;
  static const PrintSchemaParameterDataType_String = 0x00000002;
}

/// {@category Enum}
class PrintSchemaSelectionType {
  static const PrintSchemaSelectionType_PickOne = 0x00000000;
  static const PrintSchemaSelectionType_PickMany = 0x00000001;
}

/// {@category Enum}
class SHIMOPTS {
  static const PTSHIM_DEFAULT = 0x00000000;
  static const PTSHIM_NOSNAPSHOT = 0x00000001;
}

/// {@category Enum}
class UI_TYPE {
  static const kMessageBox = 0x00000000;
}

/// {@category Enum}
class XPSRAS_BACKGROUND_COLOR {
  static const XPSRAS_BACKGROUND_COLOR_TRANSPARENT = 0x00000000;
  static const XPSRAS_BACKGROUND_COLOR_OPAQUE = 0x00000001;
}

/// {@category Enum}
class XPSRAS_PIXEL_FORMAT {
  static const XPSRAS_PIXEL_FORMAT_32BPP_PBGRA_UINT_SRGB = 0x00000001;
  static const XPSRAS_PIXEL_FORMAT_64BPP_PRGBA_HALF_SCRGB = 0x00000002;
  static const XPSRAS_PIXEL_FORMAT_128BPP_PRGBA_FLOAT_SCRGB = 0x00000003;
}

/// {@category Enum}
class XPSRAS_RENDERING_MODE {
  static const XPSRAS_RENDERING_MODE_ANTIALIASED = 0x00000000;
  static const XPSRAS_RENDERING_MODE_ALIASED = 0x00000001;
}
