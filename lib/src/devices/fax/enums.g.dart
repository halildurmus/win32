/// {@category Enum}
class FAXROUTE_ENABLE {
  static const QUERY_STATUS = 0xffffffff;
  static const STATUS_DISABLE = 0x00000000;
  static const STATUS_ENABLE = 0x00000001;
}

/// {@category Enum}
class FAX_ACCESS_RIGHTS_ENUM {
  static const farSUBMIT_LOW = 0x00000001;
  static const farSUBMIT_NORMAL = 0x00000002;
  static const farSUBMIT_HIGH = 0x00000004;
  static const farQUERY_JOBS = 0x00000008;
  static const farMANAGE_JOBS = 0x00000010;
  static const farQUERY_CONFIG = 0x00000020;
  static const farMANAGE_CONFIG = 0x00000040;
  static const farQUERY_IN_ARCHIVE = 0x00000080;
  static const farMANAGE_IN_ARCHIVE = 0x00000100;
  static const farQUERY_OUT_ARCHIVE = 0x00000200;
  static const farMANAGE_OUT_ARCHIVE = 0x00000400;
}

/// {@category Enum}
class FAX_ACCESS_RIGHTS_ENUM_2 {
  static const far2SUBMIT_LOW = 0x00000001;
  static const far2SUBMIT_NORMAL = 0x00000002;
  static const far2SUBMIT_HIGH = 0x00000004;
  static const far2QUERY_OUT_JOBS = 0x00000008;
  static const far2MANAGE_OUT_JOBS = 0x00000010;
  static const far2QUERY_CONFIG = 0x00000020;
  static const far2MANAGE_CONFIG = 0x00000040;
  static const far2QUERY_ARCHIVES = 0x00000080;
  static const far2MANAGE_ARCHIVES = 0x00000100;
  static const far2MANAGE_RECEIVE_FOLDER = 0x00000200;
}

/// {@category Enum}
class FAX_ACCOUNT_EVENTS_TYPE_ENUM {
  static const faetNONE = 0x00000000;
  static const faetIN_QUEUE = 0x00000001;
  static const faetOUT_QUEUE = 0x00000002;
  static const faetIN_ARCHIVE = 0x00000004;
  static const faetOUT_ARCHIVE = 0x00000008;
  static const faetFXSSVC_ENDED = 0x00000010;
}

/// {@category Enum}
class FAX_COVERPAGE_TYPE_ENUM {
  static const fcptNONE = 0x00000000;
  static const fcptLOCAL = 0x00000001;
  static const fcptSERVER = 0x00000002;
}

/// {@category Enum}
class FAX_DEVICE_RECEIVE_MODE_ENUM {
  static const fdrmNO_ANSWER = 0x00000000;
  static const fdrmAUTO_ANSWER = 0x00000001;
  static const fdrmMANUAL_ANSWER = 0x00000002;
}

/// {@category Enum}
class FAX_ENUM_DELIVERY_REPORT_TYPES {
  static const DRT_NONE = 0x00000000;
  static const DRT_EMAIL = 0x00000001;
  static const DRT_INBOX = 0x00000002;
}

/// {@category Enum}
class FAX_ENUM_DEVICE_ID_SOURCE {
  static const DEV_ID_SRC_FAX = 0x00000000;
  static const DEV_ID_SRC_TAPI = 0x00000001;
}

/// {@category Enum}
class FAX_ENUM_JOB_COMMANDS {
  static const JC_UNKNOWN = 0x00000000;
  static const JC_DELETE = 0x00000001;
  static const JC_PAUSE = 0x00000002;
  static const JC_RESUME = 0x00000003;
}

/// {@category Enum}
class FAX_ENUM_JOB_SEND_ATTRIBUTES {
  static const JSA_NOW = 0x00000000;
  static const JSA_SPECIFIC_TIME = 0x00000001;
  static const JSA_DISCOUNT_PERIOD = 0x00000002;
}

/// {@category Enum}
class FAX_ENUM_LOG_CATEGORIES {
  static const FAXLOG_CATEGORY_INIT = 0x00000001;
  static const FAXLOG_CATEGORY_OUTBOUND = 0x00000002;
  static const FAXLOG_CATEGORY_INBOUND = 0x00000003;
  static const FAXLOG_CATEGORY_UNKNOWN = 0x00000004;
}

/// {@category Enum}
class FAX_ENUM_LOG_LEVELS {
  static const FAXLOG_LEVEL_NONE = 0x00000000;
  static const FAXLOG_LEVEL_MIN = 0x00000001;
  static const FAXLOG_LEVEL_MED = 0x00000002;
  static const FAXLOG_LEVEL_MAX = 0x00000003;
}

/// {@category Enum}
class FAX_ENUM_PORT_OPEN_TYPE {
  static const PORT_OPEN_QUERY = 0x00000001;
  static const PORT_OPEN_MODIFY = 0x00000002;
}

/// {@category Enum}
class FAX_GROUP_STATUS_ENUM {
  static const fgsALL_DEV_VALID = 0x00000000;
  static const fgsEMPTY = 0x00000001;
  static const fgsALL_DEV_NOT_VALID = 0x00000002;
  static const fgsSOME_DEV_NOT_VALID = 0x00000003;
}

/// {@category Enum}
class FAX_JOB_EXTENDED_STATUS_ENUM {
  static const fjesNONE = 0x00000000;
  static const fjesDISCONNECTED = 0x00000001;
  static const fjesINITIALIZING = 0x00000002;
  static const fjesDIALING = 0x00000003;
  static const fjesTRANSMITTING = 0x00000004;
  static const fjesANSWERED = 0x00000005;
  static const fjesRECEIVING = 0x00000006;
  static const fjesLINE_UNAVAILABLE = 0x00000007;
  static const fjesBUSY = 0x00000008;
  static const fjesNO_ANSWER = 0x00000009;
  static const fjesBAD_ADDRESS = 0x0000000a;
  static const fjesNO_DIAL_TONE = 0x0000000b;
  static const fjesFATAL_ERROR = 0x0000000c;
  static const fjesCALL_DELAYED = 0x0000000d;
  static const fjesCALL_BLACKLISTED = 0x0000000e;
  static const fjesNOT_FAX_CALL = 0x0000000f;
  static const fjesPARTIALLY_RECEIVED = 0x00000010;
  static const fjesHANDLED = 0x00000011;
  static const fjesCALL_COMPLETED = 0x00000012;
  static const fjesCALL_ABORTED = 0x00000013;
  static const fjesPROPRIETARY = 0x01000000;
}

/// {@category Enum}
class FAX_JOB_OPERATIONS_ENUM {
  static const fjoVIEW = 0x00000001;
  static const fjoPAUSE = 0x00000002;
  static const fjoRESUME = 0x00000004;
  static const fjoRESTART = 0x00000008;
  static const fjoDELETE = 0x00000010;
  static const fjoRECIPIENT_INFO = 0x00000020;
  static const fjoSENDER_INFO = 0x00000040;
}

/// {@category Enum}
class FAX_JOB_STATUS_ENUM {
  static const fjsPENDING = 0x00000001;
  static const fjsINPROGRESS = 0x00000002;
  static const fjsFAILED = 0x00000008;
  static const fjsPAUSED = 0x00000010;
  static const fjsNOLINE = 0x00000020;
  static const fjsRETRYING = 0x00000040;
  static const fjsRETRIES_EXCEEDED = 0x00000080;
  static const fjsCOMPLETED = 0x00000100;
  static const fjsCANCELED = 0x00000200;
  static const fjsCANCELING = 0x00000400;
  static const fjsROUTING = 0x00000800;
}

/// {@category Enum}
class FAX_JOB_TYPE_ENUM {
  static const fjtSEND = 0x00000000;
  static const fjtRECEIVE = 0x00000001;
  static const fjtROUTING = 0x00000002;
}

/// {@category Enum}
class FAX_LOG_LEVEL_ENUM {
  static const fllNONE = 0x00000000;
  static const fllMIN = 0x00000001;
  static const fllMED = 0x00000002;
  static const fllMAX = 0x00000003;
}

/// {@category Enum}
class FAX_PRIORITY_TYPE_ENUM {
  static const fptLOW = 0x00000000;
  static const fptNORMAL = 0x00000001;
  static const fptHIGH = 0x00000002;
}

/// {@category Enum}
class FAX_PROVIDER_STATUS_ENUM {
  static const fpsSUCCESS = 0x00000000;
  static const fpsSERVER_ERROR = 0x00000001;
  static const fpsBAD_GUID = 0x00000002;
  static const fpsBAD_VERSION = 0x00000003;
  static const fpsCANT_LOAD = 0x00000004;
  static const fpsCANT_LINK = 0x00000005;
  static const fpsCANT_INIT = 0x00000006;
}

/// {@category Enum}
class FAX_RECEIPT_TYPE_ENUM {
  static const frtNONE = 0x00000000;
  static const frtMAIL = 0x00000001;
  static const frtMSGBOX = 0x00000004;
}

/// {@category Enum}
class FAX_ROUTING_RULE_CODE_ENUM {
  static const frrcANY_CODE = 0x00000000;
}

/// {@category Enum}
class FAX_RULE_STATUS_ENUM {
  static const frsVALID = 0x00000000;
  static const frsEMPTY_GROUP = 0x00000001;
  static const frsALL_GROUP_DEV_NOT_VALID = 0x00000002;
  static const frsSOME_GROUP_DEV_NOT_VALID = 0x00000003;
  static const frsBAD_DEVICE = 0x00000004;
}

/// {@category Enum}
class FAX_SCHEDULE_TYPE_ENUM {
  static const fstNOW = 0x00000000;
  static const fstSPECIFIC_TIME = 0x00000001;
  static const fstDISCOUNT_PERIOD = 0x00000002;
}

/// {@category Enum}
class FAX_SERVER_APIVERSION_ENUM {
  static const fsAPI_VERSION_0 = 0x00000000;
  static const fsAPI_VERSION_1 = 0x00010000;
  static const fsAPI_VERSION_2 = 0x00020000;
  static const fsAPI_VERSION_3 = 0x00030000;
}

/// {@category Enum}
class FAX_SERVER_EVENTS_TYPE_ENUM {
  static const fsetNONE = 0x00000000;
  static const fsetIN_QUEUE = 0x00000001;
  static const fsetOUT_QUEUE = 0x00000002;
  static const fsetCONFIG = 0x00000004;
  static const fsetACTIVITY = 0x00000008;
  static const fsetQUEUE_STATE = 0x00000010;
  static const fsetIN_ARCHIVE = 0x00000020;
  static const fsetOUT_ARCHIVE = 0x00000040;
  static const fsetFXSSVC_ENDED = 0x00000080;
  static const fsetDEVICE_STATUS = 0x00000100;
  static const fsetINCOMING_CALL = 0x00000200;
}

/// {@category Enum}
class FAX_SMTP_AUTHENTICATION_TYPE_ENUM {
  static const fsatANONYMOUS = 0x00000000;
  static const fsatBASIC = 0x00000001;
  static const fsatNTLM = 0x00000002;
}

/// {@category Enum}
class STI_DEVICE_MJ_TYPE {
  static const StiDeviceTypeDefault = 0x00000000;
  static const StiDeviceTypeScanner = 0x00000001;
  static const StiDeviceTypeDigitalCamera = 0x00000002;
  static const StiDeviceTypeStreamingVideo = 0x00000003;
}

/// {@category Enum}
class SendToMode {
  static const SEND_TO_FAX_RECIPIENT_ATTACHMENT = 0x00000000;
}
