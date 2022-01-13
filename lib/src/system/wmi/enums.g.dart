/// {@category Enum}
class CIMTYPE_ENUMERATION {
  static const CIM_ILLEGAL = 0x00000fff;
  static const CIM_EMPTY = 0x00000000;
  static const CIM_SINT8 = 0x00000010;
  static const CIM_UINT8 = 0x00000011;
  static const CIM_SINT16 = 0x00000002;
  static const CIM_UINT16 = 0x00000012;
  static const CIM_SINT32 = 0x00000003;
  static const CIM_UINT32 = 0x00000013;
  static const CIM_SINT64 = 0x00000014;
  static const CIM_UINT64 = 0x00000015;
  static const CIM_REAL32 = 0x00000004;
  static const CIM_REAL64 = 0x00000005;
  static const CIM_BOOLEAN = 0x0000000b;
  static const CIM_STRING = 0x00000008;
  static const CIM_DATETIME = 0x00000065;
  static const CIM_REFERENCE = 0x00000066;
  static const CIM_CHAR16 = 0x00000067;
  static const CIM_OBJECT = 0x0000000d;
  static const CIM_FLAG_ARRAY = 0x00002000;
}

/// {@category Enum}
class MI_CallbackMode {
  static const MI_CALLBACKMODE_REPORT = 0x00000000;
  static const MI_CALLBACKMODE_INQUIRE = 0x00000001;
  static const MI_CALLBACKMODE_IGNORE = 0x00000002;
}

/// {@category Enum}
class MI_CancellationReason {
  static const MI_REASON_NONE = 0x00000000;
  static const MI_REASON_TIMEOUT = 0x00000001;
  static const MI_REASON_SHUTDOWN = 0x00000002;
  static const MI_REASON_SERVICESTOP = 0x00000003;
}

/// {@category Enum}
class MI_DestinationOptions_ImpersonationType {
  static const MI_DestinationOptions_ImpersonationType_Default = 0x00000000;
  static const MI_DestinationOptions_ImpersonationType_None = 0x00000001;
  static const MI_DestinationOptions_ImpersonationType_Identify = 0x00000002;
  static const MI_DestinationOptions_ImpersonationType_Impersonate = 0x00000003;
  static const MI_DestinationOptions_ImpersonationType_Delegate = 0x00000004;
}

/// {@category Enum}
class MI_ErrorCategory {
  static const MI_ERRORCATEGORY_NOT_SPECIFIED = 0x00000000;
  static const MI_ERRORCATEGORY_OPEN_ERROR = 0x00000001;
  static const MI_ERRORCATEGORY_CLOS_EERROR = 0x00000002;
  static const MI_ERRORCATEGORY_DEVICE_ERROR = 0x00000003;
  static const MI_ERRORCATEGORY_DEADLOCK_DETECTED = 0x00000004;
  static const MI_ERRORCATEGORY_INVALID_ARGUMENT = 0x00000005;
  static const MI_ERRORCATEGORY_INVALID_DATA = 0x00000006;
  static const MI_ERRORCATEGORY_INVALID_OPERATION = 0x00000007;
  static const MI_ERRORCATEGORY_INVALID_RESULT = 0x00000008;
  static const MI_ERRORCATEGORY_INVALID_TYPE = 0x00000009;
  static const MI_ERRORCATEGORY_METADATA_ERROR = 0x0000000a;
  static const MI_ERRORCATEGORY_NOT_IMPLEMENTED = 0x0000000b;
  static const MI_ERRORCATEGORY_NOT_INSTALLED = 0x0000000c;
  static const MI_ERRORCATEGORY_OBJECT_NOT_FOUND = 0x0000000d;
  static const MI_ERRORCATEGORY_OPERATION_STOPPED = 0x0000000e;
  static const MI_ERRORCATEGORY_OPERATION_TIMEOUT = 0x0000000f;
  static const MI_ERRORCATEGORY_SYNTAX_ERROR = 0x00000010;
  static const MI_ERRORCATEGORY_PARSER_ERROR = 0x00000011;
  static const MI_ERRORCATEGORY_ACCESS_DENIED = 0x00000012;
  static const MI_ERRORCATEGORY_RESOURCE_BUSY = 0x00000013;
  static const MI_ERRORCATEGORY_RESOURCE_EXISTS = 0x00000014;
  static const MI_ERRORCATEGORY_RESOURCE_UNAVAILABLE = 0x00000015;
  static const MI_ERRORCATEGORY_READ_ERROR = 0x00000016;
  static const MI_ERRORCATEGORY_WRITE_ERROR = 0x00000017;
  static const MI_ERRORCATEGORY_FROM_STDERR = 0x00000018;
  static const MI_ERRORCATEGORY_SECURITY_ERROR = 0x00000019;
  static const MI_ERRORCATEGORY_PROTOCOL_ERROR = 0x0000001a;
  static const MI_ERRORCATEGORY_CONNECTION_ERROR = 0x0000001b;
  static const MI_ERRORCATEGORY_AUTHENTICATION_ERROR = 0x0000001c;
  static const MI_ERRORCATEGORY_LIMITS_EXCEEDED = 0x0000001d;
  static const MI_ERRORCATEGORY_QUOTA_EXCEEDED = 0x0000001e;
  static const MI_ERRORCATEGORY_NOT_ENABLED = 0x0000001f;
}

/// {@category Enum}
class MI_LocaleType {
  static const MI_LOCALE_TYPE_REQUESTED_UI = 0x00000000;
  static const MI_LOCALE_TYPE_REQUESTED_DATA = 0x00000001;
  static const MI_LOCALE_TYPE_CLOSEST_UI = 0x00000002;
  static const MI_LOCALE_TYPE_CLOSEST_DATA = 0x00000003;
}

/// {@category Enum}
class MI_OperationCallback_ResponseType {
  static const MI_OperationCallback_ResponseType_No = 0x00000000;
  static const MI_OperationCallback_ResponseType_Yes = 0x00000001;
  static const MI_OperationCallback_ResponseType_NoToAll = 0x00000002;
  static const MI_OperationCallback_ResponseType_YesToAll = 0x00000003;
}

/// {@category Enum}
class MI_PromptType {
  static const MI_PROMPTTYPE_NORMAL = 0x00000000;
  static const MI_PROMPTTYPE_CRITICAL = 0x00000001;
}

/// {@category Enum}
class MI_ProviderArchitecture {
  static const MI_PROVIDER_ARCHITECTURE_32BIT = 0x00000000;
  static const MI_PROVIDER_ARCHITECTURE_64BIT = 0x00000001;
}

/// {@category Enum}
class MI_Result {
  static const MI_RESULT_OK = 0x00000000;
  static const MI_RESULT_FAILED = 0x00000001;
  static const MI_RESULT_ACCESS_DENIED = 0x00000002;
  static const MI_RESULT_INVALID_NAMESPACE = 0x00000003;
  static const MI_RESULT_INVALID_PARAMETER = 0x00000004;
  static const MI_RESULT_INVALID_CLASS = 0x00000005;
  static const MI_RESULT_NOT_FOUND = 0x00000006;
  static const MI_RESULT_NOT_SUPPORTED = 0x00000007;
  static const MI_RESULT_CLASS_HAS_CHILDREN = 0x00000008;
  static const MI_RESULT_CLASS_HAS_INSTANCES = 0x00000009;
  static const MI_RESULT_INVALID_SUPERCLASS = 0x0000000a;
  static const MI_RESULT_ALREADY_EXISTS = 0x0000000b;
  static const MI_RESULT_NO_SUCH_PROPERTY = 0x0000000c;
  static const MI_RESULT_TYPE_MISMATCH = 0x0000000d;
  static const MI_RESULT_QUERY_LANGUAGE_NOT_SUPPORTED = 0x0000000e;
  static const MI_RESULT_INVALID_QUERY = 0x0000000f;
  static const MI_RESULT_METHOD_NOT_AVAILABLE = 0x00000010;
  static const MI_RESULT_METHOD_NOT_FOUND = 0x00000011;
  static const MI_RESULT_NAMESPACE_NOT_EMPTY = 0x00000014;
  static const MI_RESULT_INVALID_ENUMERATION_CONTEXT = 0x00000015;
  static const MI_RESULT_INVALID_OPERATION_TIMEOUT = 0x00000016;
  static const MI_RESULT_PULL_HAS_BEEN_ABANDONED = 0x00000017;
  static const MI_RESULT_PULL_CANNOT_BE_ABANDONED = 0x00000018;
  static const MI_RESULT_FILTERED_ENUMERATION_NOT_SUPPORTED = 0x00000019;
  static const MI_RESULT_CONTINUATION_ON_ERROR_NOT_SUPPORTED = 0x0000001a;
  static const MI_RESULT_SERVER_LIMITS_EXCEEDED = 0x0000001b;
  static const MI_RESULT_SERVER_IS_SHUTTING_DOWN = 0x0000001c;
}

/// {@category Enum}
class MI_SubscriptionDeliveryType {
  static const MI_SubscriptionDeliveryType_Pull = 0x00000001;
  static const MI_SubscriptionDeliveryType_Push = 0x00000002;
}

/// {@category Enum}
class MI_Type {
  static const MI_BOOLEAN = 0x00000000;
  static const MI_UINT8 = 0x00000001;
  static const MI_SINT8 = 0x00000002;
  static const MI_UINT16 = 0x00000003;
  static const MI_SINT16 = 0x00000004;
  static const MI_UINT32 = 0x00000005;
  static const MI_SINT32 = 0x00000006;
  static const MI_UINT64 = 0x00000007;
  static const MI_SINT64 = 0x00000008;
  static const MI_REAL32 = 0x00000009;
  static const MI_REAL64 = 0x0000000a;
  static const MI_CHAR16 = 0x0000000b;
  static const MI_DATETIME = 0x0000000c;
  static const MI_STRING = 0x0000000d;
  static const MI_REFERENCE = 0x0000000e;
  static const MI_INSTANCE = 0x0000000f;
  static const MI_BOOLEANA = 0x00000010;
  static const MI_UINT8A = 0x00000011;
  static const MI_SINT8A = 0x00000012;
  static const MI_UINT16A = 0x00000013;
  static const MI_SINT16A = 0x00000014;
  static const MI_UINT32A = 0x00000015;
  static const MI_SINT32A = 0x00000016;
  static const MI_UINT64A = 0x00000017;
  static const MI_SINT64A = 0x00000018;
  static const MI_REAL32A = 0x00000019;
  static const MI_REAL64A = 0x0000001a;
  static const MI_CHAR16A = 0x0000001b;
  static const MI_DATETIMEA = 0x0000001c;
  static const MI_STRINGA = 0x0000001d;
  static const MI_REFERENCEA = 0x0000001e;
  static const MI_INSTANCEA = 0x0000001f;
  static const MI_ARRAY = 0x00000010;
}

/// {@category Enum}
class WBEMSTATUS {
  static const WBEM_NO_ERROR = 0x00000000;
  static const WBEM_S_NO_ERROR = 0x00000000;
  static const WBEM_S_SAME = 0x00000000;
  static const WBEM_S_FALSE = 0x00000001;
  static const WBEM_S_ALREADY_EXISTS = 0x00040001;
  static const WBEM_S_RESET_TO_DEFAULT = 0x00040002;
  static const WBEM_S_DIFFERENT = 0x00040003;
  static const WBEM_S_TIMEDOUT = 0x00040004;
  static const WBEM_S_NO_MORE_DATA = 0x00040005;
  static const WBEM_S_OPERATION_CANCELLED = 0x00040006;
  static const WBEM_S_PENDING = 0x00040007;
  static const WBEM_S_DUPLICATE_OBJECTS = 0x00040008;
  static const WBEM_S_ACCESS_DENIED = 0x00040009;
  static const WBEM_S_PARTIAL_RESULTS = 0x00040010;
  static const WBEM_S_SOURCE_NOT_AVAILABLE = 0x00040017;
  static const WBEM_E_FAILED = 0x80041001;
  static const WBEM_E_NOT_FOUND = 0x80041002;
  static const WBEM_E_ACCESS_DENIED = 0x80041003;
  static const WBEM_E_PROVIDER_FAILURE = 0x80041004;
  static const WBEM_E_TYPE_MISMATCH = 0x80041005;
  static const WBEM_E_OUT_OF_MEMORY = 0x80041006;
  static const WBEM_E_INVALID_CONTEXT = 0x80041007;
  static const WBEM_E_INVALID_PARAMETER = 0x80041008;
  static const WBEM_E_NOT_AVAILABLE = 0x80041009;
  static const WBEM_E_CRITICAL_ERROR = 0x8004100a;
  static const WBEM_E_INVALID_STREAM = 0x8004100b;
  static const WBEM_E_NOT_SUPPORTED = 0x8004100c;
  static const WBEM_E_INVALID_SUPERCLASS = 0x8004100d;
  static const WBEM_E_INVALID_NAMESPACE = 0x8004100e;
  static const WBEM_E_INVALID_OBJECT = 0x8004100f;
  static const WBEM_E_INVALID_CLASS = 0x80041010;
  static const WBEM_E_PROVIDER_NOT_FOUND = 0x80041011;
  static const WBEM_E_INVALID_PROVIDER_REGISTRATION = 0x80041012;
  static const WBEM_E_PROVIDER_LOAD_FAILURE = 0x80041013;
  static const WBEM_E_INITIALIZATION_FAILURE = 0x80041014;
  static const WBEM_E_TRANSPORT_FAILURE = 0x80041015;
  static const WBEM_E_INVALID_OPERATION = 0x80041016;
  static const WBEM_E_INVALID_QUERY = 0x80041017;
  static const WBEM_E_INVALID_QUERY_TYPE = 0x80041018;
  static const WBEM_E_ALREADY_EXISTS = 0x80041019;
  static const WBEM_E_OVERRIDE_NOT_ALLOWED = 0x8004101a;
  static const WBEM_E_PROPAGATED_QUALIFIER = 0x8004101b;
  static const WBEM_E_PROPAGATED_PROPERTY = 0x8004101c;
  static const WBEM_E_UNEXPECTED = 0x8004101d;
  static const WBEM_E_ILLEGAL_OPERATION = 0x8004101e;
  static const WBEM_E_CANNOT_BE_KEY = 0x8004101f;
  static const WBEM_E_INCOMPLETE_CLASS = 0x80041020;
  static const WBEM_E_INVALID_SYNTAX = 0x80041021;
  static const WBEM_E_NONDECORATED_OBJECT = 0x80041022;
  static const WBEM_E_READ_ONLY = 0x80041023;
  static const WBEM_E_PROVIDER_NOT_CAPABLE = 0x80041024;
  static const WBEM_E_CLASS_HAS_CHILDREN = 0x80041025;
  static const WBEM_E_CLASS_HAS_INSTANCES = 0x80041026;
  static const WBEM_E_QUERY_NOT_IMPLEMENTED = 0x80041027;
  static const WBEM_E_ILLEGAL_NULL = 0x80041028;
  static const WBEM_E_INVALID_QUALIFIER_TYPE = 0x80041029;
  static const WBEM_E_INVALID_PROPERTY_TYPE = 0x8004102a;
  static const WBEM_E_VALUE_OUT_OF_RANGE = 0x8004102b;
  static const WBEM_E_CANNOT_BE_SINGLETON = 0x8004102c;
  static const WBEM_E_INVALID_CIM_TYPE = 0x8004102d;
  static const WBEM_E_INVALID_METHOD = 0x8004102e;
  static const WBEM_E_INVALID_METHOD_PARAMETERS = 0x8004102f;
  static const WBEM_E_SYSTEM_PROPERTY = 0x80041030;
  static const WBEM_E_INVALID_PROPERTY = 0x80041031;
  static const WBEM_E_CALL_CANCELLED = 0x80041032;
  static const WBEM_E_SHUTTING_DOWN = 0x80041033;
  static const WBEM_E_PROPAGATED_METHOD = 0x80041034;
  static const WBEM_E_UNSUPPORTED_PARAMETER = 0x80041035;
  static const WBEM_E_MISSING_PARAMETER_ID = 0x80041036;
  static const WBEM_E_INVALID_PARAMETER_ID = 0x80041037;
  static const WBEM_E_NONCONSECUTIVE_PARAMETER_IDS = 0x80041038;
  static const WBEM_E_PARAMETER_ID_ON_RETVAL = 0x80041039;
  static const WBEM_E_INVALID_OBJECT_PATH = 0x8004103a;
  static const WBEM_E_OUT_OF_DISK_SPACE = 0x8004103b;
  static const WBEM_E_BUFFER_TOO_SMALL = 0x8004103c;
  static const WBEM_E_UNSUPPORTED_PUT_EXTENSION = 0x8004103d;
  static const WBEM_E_UNKNOWN_OBJECT_TYPE = 0x8004103e;
  static const WBEM_E_UNKNOWN_PACKET_TYPE = 0x8004103f;
  static const WBEM_E_MARSHAL_VERSION_MISMATCH = 0x80041040;
  static const WBEM_E_MARSHAL_INVALID_SIGNATURE = 0x80041041;
  static const WBEM_E_INVALID_QUALIFIER = 0x80041042;
  static const WBEM_E_INVALID_DUPLICATE_PARAMETER = 0x80041043;
  static const WBEM_E_TOO_MUCH_DATA = 0x80041044;
  static const WBEM_E_SERVER_TOO_BUSY = 0x80041045;
  static const WBEM_E_INVALID_FLAVOR = 0x80041046;
  static const WBEM_E_CIRCULAR_REFERENCE = 0x80041047;
  static const WBEM_E_UNSUPPORTED_CLASS_UPDATE = 0x80041048;
  static const WBEM_E_CANNOT_CHANGE_KEY_INHERITANCE = 0x80041049;
  static const WBEM_E_CANNOT_CHANGE_INDEX_INHERITANCE = 0x80041050;
  static const WBEM_E_TOO_MANY_PROPERTIES = 0x80041051;
  static const WBEM_E_UPDATE_TYPE_MISMATCH = 0x80041052;
  static const WBEM_E_UPDATE_OVERRIDE_NOT_ALLOWED = 0x80041053;
  static const WBEM_E_UPDATE_PROPAGATED_METHOD = 0x80041054;
  static const WBEM_E_METHOD_NOT_IMPLEMENTED = 0x80041055;
  static const WBEM_E_METHOD_DISABLED = 0x80041056;
  static const WBEM_E_REFRESHER_BUSY = 0x80041057;
  static const WBEM_E_UNPARSABLE_QUERY = 0x80041058;
  static const WBEM_E_NOT_EVENT_CLASS = 0x80041059;
  static const WBEM_E_MISSING_GROUP_WITHIN = 0x8004105a;
  static const WBEM_E_MISSING_AGGREGATION_LIST = 0x8004105b;
  static const WBEM_E_PROPERTY_NOT_AN_OBJECT = 0x8004105c;
  static const WBEM_E_AGGREGATING_BY_OBJECT = 0x8004105d;
  static const WBEM_E_UNINTERPRETABLE_PROVIDER_QUERY = 0x8004105f;
  static const WBEM_E_BACKUP_RESTORE_WINMGMT_RUNNING = 0x80041060;
  static const WBEM_E_QUEUE_OVERFLOW = 0x80041061;
  static const WBEM_E_PRIVILEGE_NOT_HELD = 0x80041062;
  static const WBEM_E_INVALID_OPERATOR = 0x80041063;
  static const WBEM_E_LOCAL_CREDENTIALS = 0x80041064;
  static const WBEM_E_CANNOT_BE_ABSTRACT = 0x80041065;
  static const WBEM_E_AMENDED_OBJECT = 0x80041066;
  static const WBEM_E_CLIENT_TOO_SLOW = 0x80041067;
  static const WBEM_E_NULL_SECURITY_DESCRIPTOR = 0x80041068;
  static const WBEM_E_TIMED_OUT = 0x80041069;
  static const WBEM_E_INVALID_ASSOCIATION = 0x8004106a;
  static const WBEM_E_AMBIGUOUS_OPERATION = 0x8004106b;
  static const WBEM_E_QUOTA_VIOLATION = 0x8004106c;
  static const WBEM_E_RESERVED_001 = 0x8004106d;
  static const WBEM_E_RESERVED_002 = 0x8004106e;
  static const WBEM_E_UNSUPPORTED_LOCALE = 0x8004106f;
  static const WBEM_E_HANDLE_OUT_OF_DATE = 0x80041070;
  static const WBEM_E_CONNECTION_FAILED = 0x80041071;
  static const WBEM_E_INVALID_HANDLE_REQUEST = 0x80041072;
  static const WBEM_E_PROPERTY_NAME_TOO_WIDE = 0x80041073;
  static const WBEM_E_CLASS_NAME_TOO_WIDE = 0x80041074;
  static const WBEM_E_METHOD_NAME_TOO_WIDE = 0x80041075;
  static const WBEM_E_QUALIFIER_NAME_TOO_WIDE = 0x80041076;
  static const WBEM_E_RERUN_COMMAND = 0x80041077;
  static const WBEM_E_DATABASE_VER_MISMATCH = 0x80041078;
  static const WBEM_E_VETO_DELETE = 0x80041079;
  static const WBEM_E_VETO_PUT = 0x8004107a;
  static const WBEM_E_INVALID_LOCALE = 0x80041080;
  static const WBEM_E_PROVIDER_SUSPENDED = 0x80041081;
  static const WBEM_E_SYNCHRONIZATION_REQUIRED = 0x80041082;
  static const WBEM_E_NO_SCHEMA = 0x80041083;
  static const WBEM_E_PROVIDER_ALREADY_REGISTERED = 0x80041084;
  static const WBEM_E_PROVIDER_NOT_REGISTERED = 0x80041085;
  static const WBEM_E_FATAL_TRANSPORT_ERROR = 0x80041086;
  static const WBEM_E_ENCRYPTED_CONNECTION_REQUIRED = 0x80041087;
  static const WBEM_E_PROVIDER_TIMED_OUT = 0x80041088;
  static const WBEM_E_NO_KEY = 0x80041089;
  static const WBEM_E_PROVIDER_DISABLED = 0x8004108a;
  static const WBEMESS_E_REGISTRATION_TOO_BROAD = 0x80042001;
  static const WBEMESS_E_REGISTRATION_TOO_PRECISE = 0x80042002;
  static const WBEMESS_E_AUTHZ_NOT_PRIVILEGED = 0x80042003;
  static const WBEMMOF_E_EXPECTED_QUALIFIER_NAME = 0x80044001;
  static const WBEMMOF_E_EXPECTED_SEMI = 0x80044002;
  static const WBEMMOF_E_EXPECTED_OPEN_BRACE = 0x80044003;
  static const WBEMMOF_E_EXPECTED_CLOSE_BRACE = 0x80044004;
  static const WBEMMOF_E_EXPECTED_CLOSE_BRACKET = 0x80044005;
  static const WBEMMOF_E_EXPECTED_CLOSE_PAREN = 0x80044006;
  static const WBEMMOF_E_ILLEGAL_CONSTANT_VALUE = 0x80044007;
  static const WBEMMOF_E_EXPECTED_TYPE_IDENTIFIER = 0x80044008;
  static const WBEMMOF_E_EXPECTED_OPEN_PAREN = 0x80044009;
  static const WBEMMOF_E_UNRECOGNIZED_TOKEN = 0x8004400a;
  static const WBEMMOF_E_UNRECOGNIZED_TYPE = 0x8004400b;
  static const WBEMMOF_E_EXPECTED_PROPERTY_NAME = 0x8004400c;
  static const WBEMMOF_E_TYPEDEF_NOT_SUPPORTED = 0x8004400d;
  static const WBEMMOF_E_UNEXPECTED_ALIAS = 0x8004400e;
  static const WBEMMOF_E_UNEXPECTED_ARRAY_INIT = 0x8004400f;
  static const WBEMMOF_E_INVALID_AMENDMENT_SYNTAX = 0x80044010;
  static const WBEMMOF_E_INVALID_DUPLICATE_AMENDMENT = 0x80044011;
  static const WBEMMOF_E_INVALID_PRAGMA = 0x80044012;
  static const WBEMMOF_E_INVALID_NAMESPACE_SYNTAX = 0x80044013;
  static const WBEMMOF_E_EXPECTED_CLASS_NAME = 0x80044014;
  static const WBEMMOF_E_TYPE_MISMATCH = 0x80044015;
  static const WBEMMOF_E_EXPECTED_ALIAS_NAME = 0x80044016;
  static const WBEMMOF_E_INVALID_CLASS_DECLARATION = 0x80044017;
  static const WBEMMOF_E_INVALID_INSTANCE_DECLARATION = 0x80044018;
  static const WBEMMOF_E_EXPECTED_DOLLAR = 0x80044019;
  static const WBEMMOF_E_CIMTYPE_QUALIFIER = 0x8004401a;
  static const WBEMMOF_E_DUPLICATE_PROPERTY = 0x8004401b;
  static const WBEMMOF_E_INVALID_NAMESPACE_SPECIFICATION = 0x8004401c;
  static const WBEMMOF_E_OUT_OF_RANGE = 0x8004401d;
  static const WBEMMOF_E_INVALID_FILE = 0x8004401e;
  static const WBEMMOF_E_ALIASES_IN_EMBEDDED = 0x8004401f;
  static const WBEMMOF_E_NULL_ARRAY_ELEM = 0x80044020;
  static const WBEMMOF_E_DUPLICATE_QUALIFIER = 0x80044021;
  static const WBEMMOF_E_EXPECTED_FLAVOR_TYPE = 0x80044022;
  static const WBEMMOF_E_INCOMPATIBLE_FLAVOR_TYPES = 0x80044023;
  static const WBEMMOF_E_MULTIPLE_ALIASES = 0x80044024;
  static const WBEMMOF_E_INCOMPATIBLE_FLAVOR_TYPES2 = 0x80044025;
  static const WBEMMOF_E_NO_ARRAYS_RETURNED = 0x80044026;
  static const WBEMMOF_E_MUST_BE_IN_OR_OUT = 0x80044027;
  static const WBEMMOF_E_INVALID_FLAGS_SYNTAX = 0x80044028;
  static const WBEMMOF_E_EXPECTED_BRACE_OR_BAD_TYPE = 0x80044029;
  static const WBEMMOF_E_UNSUPPORTED_CIMV22_QUAL_VALUE = 0x8004402a;
  static const WBEMMOF_E_UNSUPPORTED_CIMV22_DATA_TYPE = 0x8004402b;
  static const WBEMMOF_E_INVALID_DELETEINSTANCE_SYNTAX = 0x8004402c;
  static const WBEMMOF_E_INVALID_QUALIFIER_SYNTAX = 0x8004402d;
  static const WBEMMOF_E_QUALIFIER_USED_OUTSIDE_SCOPE = 0x8004402e;
  static const WBEMMOF_E_ERROR_CREATING_TEMP_FILE = 0x8004402f;
  static const WBEMMOF_E_ERROR_INVALID_INCLUDE_FILE = 0x80044030;
  static const WBEMMOF_E_INVALID_DELETECLASS_SYNTAX = 0x80044031;
}

/// {@category Enum}
class WBEMSTATUS_FORMAT {
  static const WBEMSTATUS_FORMAT_NEWLINE = 0x00000000;
  static const WBEMSTATUS_FORMAT_NO_NEWLINE = 0x00000001;
}

/// {@category Enum}
class WBEM_BACKUP_RESTORE_FLAGS {
  static const WBEM_FLAG_BACKUP_RESTORE_DEFAULT = 0x00000000;
  static const WBEM_FLAG_BACKUP_RESTORE_FORCE_SHUTDOWN = 0x00000001;
}

/// {@category Enum}
class WBEM_BATCH_TYPE {
  static const WBEM_FLAG_BATCH_IF_NEEDED = 0x00000000;
  static const WBEM_FLAG_MUST_BATCH = 0x00000001;
  static const WBEM_FLAG_MUST_NOT_BATCH = 0x00000002;
}

/// {@category Enum}
class WBEM_CHANGE_FLAG_TYPE {
  static const WBEM_FLAG_CREATE_OR_UPDATE = 0x00000000;
  static const WBEM_FLAG_UPDATE_ONLY = 0x00000001;
  static const WBEM_FLAG_CREATE_ONLY = 0x00000002;
  static const WBEM_FLAG_UPDATE_COMPATIBLE = 0x00000000;
  static const WBEM_FLAG_UPDATE_SAFE_MODE = 0x00000020;
  static const WBEM_FLAG_UPDATE_FORCE_MODE = 0x00000040;
  static const WBEM_MASK_UPDATE_MODE = 0x00000060;
  static const WBEM_FLAG_ADVISORY = 0x00010000;
}

/// {@category Enum}
class WBEM_COMPARISON_FLAG {
  static const WBEM_COMPARISON_INCLUDE_ALL = 0x00000000;
  static const WBEM_FLAG_IGNORE_QUALIFIERS = 0x00000001;
  static const WBEM_FLAG_IGNORE_OBJECT_SOURCE = 0x00000002;
  static const WBEM_FLAG_IGNORE_DEFAULT_VALUES = 0x00000004;
  static const WBEM_FLAG_IGNORE_CLASS = 0x00000008;
  static const WBEM_FLAG_IGNORE_CASE = 0x00000010;
  static const WBEM_FLAG_IGNORE_FLAVOR = 0x00000020;
}

/// {@category Enum}
class WBEM_COMPILER_OPTIONS {
  static const WBEM_FLAG_CHECK_ONLY = 0x00000001;
  static const WBEM_FLAG_AUTORECOVER = 0x00000002;
  static const WBEM_FLAG_WMI_CHECK = 0x00000004;
  static const WBEM_FLAG_CONSOLE_PRINT = 0x00000008;
  static const WBEM_FLAG_DONT_ADD_TO_LIST = 0x00000010;
  static const WBEM_FLAG_SPLIT_FILES = 0x00000020;
  static const WBEM_FLAG_STORE_FILE = 0x00000100;
}

/// {@category Enum}
class WBEM_CONDITION_FLAG_TYPE {
  static const WBEM_FLAG_ALWAYS = 0x00000000;
  static const WBEM_FLAG_ONLY_IF_TRUE = 0x00000001;
  static const WBEM_FLAG_ONLY_IF_FALSE = 0x00000002;
  static const WBEM_FLAG_ONLY_IF_IDENTICAL = 0x00000003;
  static const WBEM_MASK_PRIMARY_CONDITION = 0x00000003;
  static const WBEM_FLAG_KEYS_ONLY = 0x00000004;
  static const WBEM_FLAG_REFS_ONLY = 0x00000008;
  static const WBEM_FLAG_LOCAL_ONLY = 0x00000010;
  static const WBEM_FLAG_PROPAGATED_ONLY = 0x00000020;
  static const WBEM_FLAG_SYSTEM_ONLY = 0x00000030;
  static const WBEM_FLAG_NONSYSTEM_ONLY = 0x00000040;
  static const WBEM_MASK_CONDITION_ORIGIN = 0x00000070;
  static const WBEM_FLAG_CLASS_OVERRIDES_ONLY = 0x00000100;
  static const WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES = 0x00000200;
  static const WBEM_MASK_CLASS_CONDITION = 0x00000300;
}

/// {@category Enum}
class WBEM_CONNECT_OPTIONS {
  static const WBEM_FLAG_CONNECT_REPOSITORY_ONLY = 0x00000040;
  static const WBEM_FLAG_CONNECT_USE_MAX_WAIT = 0x00000080;
  static const WBEM_FLAG_CONNECT_PROVIDERS = 0x00000100;
}

/// {@category Enum}
class WBEM_EXTRA_RETURN_CODES {
  static const WBEM_S_INITIALIZED = 0x00000000;
  static const WBEM_S_LIMITED_SERVICE = 0x00043001;
  static const WBEM_S_INDIRECTLY_UPDATED = 0x00043002;
  static const WBEM_S_SUBJECT_TO_SDS = 0x00043003;
  static const WBEM_E_RETRY_LATER = 0x80043001;
  static const WBEM_E_RESOURCE_CONTENTION = 0x80043002;
}

/// {@category Enum}
class WBEM_FLAVOR_TYPE {
  static const WBEM_FLAVOR_DONT_PROPAGATE = 0x00000000;
  static const WBEM_FLAVOR_FLAG_PROPAGATE_TO_INSTANCE = 0x00000001;
  static const WBEM_FLAVOR_FLAG_PROPAGATE_TO_DERIVED_CLASS = 0x00000002;
  static const WBEM_FLAVOR_MASK_PROPAGATION = 0x0000000f;
  static const WBEM_FLAVOR_OVERRIDABLE = 0x00000000;
  static const WBEM_FLAVOR_NOT_OVERRIDABLE = 0x00000010;
  static const WBEM_FLAVOR_MASK_PERMISSIONS = 0x00000010;
  static const WBEM_FLAVOR_ORIGIN_LOCAL = 0x00000000;
  static const WBEM_FLAVOR_ORIGIN_PROPAGATED = 0x00000020;
  static const WBEM_FLAVOR_ORIGIN_SYSTEM = 0x00000040;
  static const WBEM_FLAVOR_MASK_ORIGIN = 0x00000060;
  static const WBEM_FLAVOR_NOT_AMENDED = 0x00000000;
  static const WBEM_FLAVOR_AMENDED = 0x00000080;
  static const WBEM_FLAVOR_MASK_AMENDED = 0x00000080;
}

/// {@category Enum}
class WBEM_GENERIC_FLAG_TYPE {
  static const WBEM_FLAG_RETURN_IMMEDIATELY = 0x00000010;
  static const WBEM_FLAG_RETURN_WBEM_COMPLETE = 0x00000000;
  static const WBEM_FLAG_BIDIRECTIONAL = 0x00000000;
  static const WBEM_FLAG_FORWARD_ONLY = 0x00000020;
  static const WBEM_FLAG_NO_ERROR_OBJECT = 0x00000040;
  static const WBEM_FLAG_RETURN_ERROR_OBJECT = 0x00000000;
  static const WBEM_FLAG_SEND_STATUS = 0x00000080;
  static const WBEM_FLAG_DONT_SEND_STATUS = 0x00000000;
  static const WBEM_FLAG_ENSURE_LOCATABLE = 0x00000100;
  static const WBEM_FLAG_DIRECT_READ = 0x00000200;
  static const WBEM_FLAG_SEND_ONLY_SELECTED = 0x00000000;
  static const WBEM_RETURN_WHEN_COMPLETE = 0x00000000;
  static const WBEM_RETURN_IMMEDIATELY = 0x00000010;
  static const WBEM_MASK_RESERVED_FLAGS = 0x0001f000;
  static const WBEM_FLAG_USE_AMENDED_QUALIFIERS = 0x00020000;
  static const WBEM_FLAG_STRONG_VALIDATION = 0x00100000;
}

/// {@category Enum}
class WBEM_GENUS_TYPE {
  static const WBEM_GENUS_CLASS = 0x00000001;
  static const WBEM_GENUS_INSTANCE = 0x00000002;
}

/// {@category Enum}
class WBEM_GET_KEY_FLAGS {
  static const WBEMPATH_TEXT = 0x00000001;
  static const WBEMPATH_QUOTEDTEXT = 0x00000002;
}

/// {@category Enum}
class WBEM_GET_TEXT_FLAGS {
  static const WBEMPATH_COMPRESSED = 0x00000001;
  static const WBEMPATH_GET_RELATIVE_ONLY = 0x00000002;
  static const WBEMPATH_GET_SERVER_TOO = 0x00000004;
  static const WBEMPATH_GET_SERVER_AND_NAMESPACE_ONLY = 0x00000008;
  static const WBEMPATH_GET_NAMESPACE_ONLY = 0x00000010;
  static const WBEMPATH_GET_ORIGINAL = 0x00000020;
}

/// {@category Enum}
class WBEM_INFORMATION_FLAG_TYPE {
  static const WBEM_FLAG_SHORT_NAME = 0x00000001;
  static const WBEM_FLAG_LONG_NAME = 0x00000002;
}

/// {@category Enum}
class WBEM_LIMITATION_FLAG_TYPE {
  static const WBEM_FLAG_EXCLUDE_OBJECT_QUALIFIERS = 0x00000010;
  static const WBEM_FLAG_EXCLUDE_PROPERTY_QUALIFIERS = 0x00000020;
}

/// {@category Enum}
class WBEM_LIMITS {
  static const WBEM_MAX_IDENTIFIER = 0x00001000;
  static const WBEM_MAX_QUERY = 0x00004000;
  static const WBEM_MAX_PATH = 0x00002000;
  static const WBEM_MAX_OBJECT_NESTING = 0x00000040;
  static const WBEM_MAX_USER_PROPERTIES = 0x00000400;
}

/// {@category Enum}
class WBEM_LOCKING {
  static const WBEM_FLAG_ALLOW_READ = 0x00000001;
}

/// {@category Enum}
class WBEM_PATH_CREATE_FLAG {
  static const WBEMPATH_CREATE_ACCEPT_RELATIVE = 0x00000001;
  static const WBEMPATH_CREATE_ACCEPT_ABSOLUTE = 0x00000002;
  static const WBEMPATH_CREATE_ACCEPT_ALL = 0x00000004;
  static const WBEMPATH_TREAT_SINGLE_IDENT_AS_NS = 0x00000008;
}

/// {@category Enum}
class WBEM_PATH_STATUS_FLAG {
  static const WBEMPATH_INFO_ANON_LOCAL_MACHINE = 0x00000001;
  static const WBEMPATH_INFO_HAS_MACHINE_NAME = 0x00000002;
  static const WBEMPATH_INFO_IS_CLASS_REF = 0x00000004;
  static const WBEMPATH_INFO_IS_INST_REF = 0x00000008;
  static const WBEMPATH_INFO_HAS_SUBSCOPES = 0x00000010;
  static const WBEMPATH_INFO_IS_COMPOUND = 0x00000020;
  static const WBEMPATH_INFO_HAS_V2_REF_PATHS = 0x00000040;
  static const WBEMPATH_INFO_HAS_IMPLIED_KEY = 0x00000080;
  static const WBEMPATH_INFO_CONTAINS_SINGLETON = 0x00000100;
  static const WBEMPATH_INFO_V1_COMPLIANT = 0x00000200;
  static const WBEMPATH_INFO_V2_COMPLIANT = 0x00000400;
  static const WBEMPATH_INFO_CIM_COMPLIANT = 0x00000800;
  static const WBEMPATH_INFO_IS_SINGLETON = 0x00001000;
  static const WBEMPATH_INFO_IS_PARENT = 0x00002000;
  static const WBEMPATH_INFO_SERVER_NAMESPACE_ONLY = 0x00004000;
  static const WBEMPATH_INFO_NATIVE_PATH = 0x00008000;
  static const WBEMPATH_INFO_WMI_PATH = 0x00010000;
  static const WBEMPATH_INFO_PATH_HAD_SERVER = 0x00020000;
}

/// {@category Enum}
class WBEM_PROVIDER_FLAGS {
  static const WBEM_FLAG_OWNER_UPDATE = 0x00010000;
}

/// {@category Enum}
class WBEM_PROVIDER_REQUIREMENTS_TYPE {
  static const WBEM_REQUIREMENTS_START_POSTFILTER = 0x00000000;
  static const WBEM_REQUIREMENTS_STOP_POSTFILTER = 0x00000001;
  static const WBEM_REQUIREMENTS_RECHECK_SUBSCRIPTIONS = 0x00000002;
}

/// {@category Enum}
class WBEM_QUERY_FLAG_TYPE {
  static const WBEM_FLAG_DEEP = 0x00000000;
  static const WBEM_FLAG_SHALLOW = 0x00000001;
  static const WBEM_FLAG_PROTOTYPE = 0x00000002;
}

/// {@category Enum}
class WBEM_REFRESHER_FLAGS {
  static const WBEM_FLAG_REFRESH_AUTO_RECONNECT = 0x00000000;
  static const WBEM_FLAG_REFRESH_NO_AUTO_RECONNECT = 0x00000001;
}

/// {@category Enum}
class WBEM_SECURITY_FLAGS {
  static const WBEM_ENABLE = 0x00000001;
  static const WBEM_METHOD_EXECUTE = 0x00000002;
  static const WBEM_FULL_WRITE_REP = 0x00000004;
  static const WBEM_PARTIAL_WRITE_REP = 0x00000008;
  static const WBEM_WRITE_PROVIDER = 0x00000010;
  static const WBEM_REMOTE_ACCESS = 0x00000020;
  static const WBEM_RIGHT_SUBSCRIBE = 0x00000040;
  static const WBEM_RIGHT_PUBLISH = 0x00000080;
}

/// {@category Enum}
class WBEM_SHUTDOWN_FLAGS {
  static const WBEM_SHUTDOWN_UNLOAD_COMPONENT = 0x00000001;
  static const WBEM_SHUTDOWN_WMI = 0x00000002;
  static const WBEM_SHUTDOWN_OS = 0x00000003;
}

/// {@category Enum}
class WBEM_STATUS_TYPE {
  static const WBEM_STATUS_COMPLETE = 0x00000000;
  static const WBEM_STATUS_REQUIREMENTS = 0x00000001;
  static const WBEM_STATUS_PROGRESS = 0x00000002;
  static const WBEM_STATUS_LOGGING_INFORMATION = 0x00000100;
  static const WBEM_STATUS_LOGGING_INFORMATION_PROVIDER = 0x00000200;
  static const WBEM_STATUS_LOGGING_INFORMATION_HOST = 0x00000400;
  static const WBEM_STATUS_LOGGING_INFORMATION_REPOSITORY = 0x00000800;
  static const WBEM_STATUS_LOGGING_INFORMATION_ESS = 0x00001000;
}

/// {@category Enum}
class WBEM_TEXT_FLAG_TYPE {
  static const WBEM_FLAG_NO_FLAVORS = 0x00000001;
}

/// {@category Enum}
class WBEM_TIMEOUT_TYPE {
  static const WBEM_NO_WAIT = 0x00000000;
  static const WBEM_INFINITE = 0xffffffff;
}

/// {@category Enum}
class WBEM_UNSECAPP_FLAG_TYPE {
  static const WBEM_FLAG_UNSECAPP_DEFAULT_CHECK_ACCESS = 0x00000000;
  static const WBEM_FLAG_UNSECAPP_CHECK_ACCESS = 0x00000001;
  static const WBEM_FLAG_UNSECAPP_DONT_CHECK_ACCESS = 0x00000002;
}

/// {@category Enum}
class WMIQ_ANALYSIS_TYPE {
  static const WMIQ_ANALYSIS_RPN_SEQUENCE = 0x00000001;
  static const WMIQ_ANALYSIS_ASSOC_QUERY = 0x00000002;
  static const WMIQ_ANALYSIS_PROP_ANALYSIS_MATRIX = 0x00000003;
  static const WMIQ_ANALYSIS_QUERY_TEXT = 0x00000004;
  static const WMIQ_ANALYSIS_RESERVED = 0x08000000;
}

/// {@category Enum}
class WMIQ_ASSOCQ_FLAGS {
  static const WMIQ_ASSOCQ_ASSOCIATORS = 0x00000001;
  static const WMIQ_ASSOCQ_REFERENCES = 0x00000002;
  static const WMIQ_ASSOCQ_RESULTCLASS = 0x00000004;
  static const WMIQ_ASSOCQ_ASSOCCLASS = 0x00000008;
  static const WMIQ_ASSOCQ_ROLE = 0x00000010;
  static const WMIQ_ASSOCQ_RESULTROLE = 0x00000020;
  static const WMIQ_ASSOCQ_REQUIREDQUALIFIER = 0x00000040;
  static const WMIQ_ASSOCQ_REQUIREDASSOCQUALIFIER = 0x00000080;
  static const WMIQ_ASSOCQ_CLASSDEFSONLY = 0x00000100;
  static const WMIQ_ASSOCQ_KEYSONLY = 0x00000200;
  static const WMIQ_ASSOCQ_SCHEMAONLY = 0x00000400;
  static const WMIQ_ASSOCQ_CLASSREFSONLY = 0x00000800;
}

/// {@category Enum}
class WMIQ_LANGUAGE_FEATURES {
  static const WMIQ_LF1_BASIC_SELECT = 0x00000001;
  static const WMIQ_LF2_CLASS_NAME_IN_QUERY = 0x00000002;
  static const WMIQ_LF3_STRING_CASE_FUNCTIONS = 0x00000003;
  static const WMIQ_LF4_PROP_TO_PROP_TESTS = 0x00000004;
  static const WMIQ_LF5_COUNT_STAR = 0x00000005;
  static const WMIQ_LF6_ORDER_BY = 0x00000006;
  static const WMIQ_LF7_DISTINCT = 0x00000007;
  static const WMIQ_LF8_ISA = 0x00000008;
  static const WMIQ_LF9_THIS = 0x00000009;
  static const WMIQ_LF10_COMPEX_SUBEXPRESSIONS = 0x0000000a;
  static const WMIQ_LF11_ALIASING = 0x0000000b;
  static const WMIQ_LF12_GROUP_BY_HAVING = 0x0000000c;
  static const WMIQ_LF13_WMI_WITHIN = 0x0000000d;
  static const WMIQ_LF14_SQL_WRITE_OPERATIONS = 0x0000000e;
  static const WMIQ_LF15_GO = 0x0000000f;
  static const WMIQ_LF16_SINGLE_LEVEL_TRANSACTIONS = 0x00000010;
  static const WMIQ_LF17_QUALIFIED_NAMES = 0x00000011;
  static const WMIQ_LF18_ASSOCIATONS = 0x00000012;
  static const WMIQ_LF19_SYSTEM_PROPERTIES = 0x00000013;
  static const WMIQ_LF20_EXTENDED_SYSTEM_PROPERTIES = 0x00000014;
  static const WMIQ_LF21_SQL89_JOINS = 0x00000015;
  static const WMIQ_LF22_SQL92_JOINS = 0x00000016;
  static const WMIQ_LF23_SUBSELECTS = 0x00000017;
  static const WMIQ_LF24_UMI_EXTENSIONS = 0x00000018;
  static const WMIQ_LF25_DATEPART = 0x00000019;
  static const WMIQ_LF26_LIKE = 0x0000001a;
  static const WMIQ_LF27_CIM_TEMPORAL_CONSTRUCTS = 0x0000001b;
  static const WMIQ_LF28_STANDARD_AGGREGATES = 0x0000001c;
  static const WMIQ_LF29_MULTI_LEVEL_ORDER_BY = 0x0000001d;
  static const WMIQ_LF30_WMI_PRAGMAS = 0x0000001e;
  static const WMIQ_LF31_QUALIFIER_TESTS = 0x0000001f;
  static const WMIQ_LF32_SP_EXECUTE = 0x00000020;
  static const WMIQ_LF33_ARRAY_ACCESS = 0x00000021;
  static const WMIQ_LF34_UNION = 0x00000022;
  static const WMIQ_LF35_COMPLEX_SELECT_TARGET = 0x00000023;
  static const WMIQ_LF36_REFERENCE_TESTS = 0x00000024;
  static const WMIQ_LF37_SELECT_INTO = 0x00000025;
  static const WMIQ_LF38_BASIC_DATETIME_TESTS = 0x00000026;
  static const WMIQ_LF39_COUNT_COLUMN = 0x00000027;
  static const WMIQ_LF40_BETWEEN = 0x00000028;
  static const WMIQ_LF_LAST = 0x00000028;
}

/// {@category Enum}
class WMIQ_RPNQ_FEATURE {
  static const WMIQ_RPNF_WHERE_CLAUSE_PRESENT = 0x00000001;
  static const WMIQ_RPNF_QUERY_IS_CONJUNCTIVE = 0x00000002;
  static const WMIQ_RPNF_QUERY_IS_DISJUNCTIVE = 0x00000004;
  static const WMIQ_RPNF_PROJECTION = 0x00000008;
  static const WMIQ_RPNF_FEATURE_SELECT_STAR = 0x00000010;
  static const WMIQ_RPNF_EQUALITY_TESTS_ONLY = 0x00000020;
  static const WMIQ_RPNF_COUNT_STAR = 0x00000040;
  static const WMIQ_RPNF_QUALIFIED_NAMES_USED = 0x00000080;
  static const WMIQ_RPNF_SYSPROP_CLASS_USED = 0x00000100;
  static const WMIQ_RPNF_PROP_TO_PROP_TESTS = 0x00000200;
  static const WMIQ_RPNF_ORDER_BY = 0x00000400;
  static const WMIQ_RPNF_ISA_USED = 0x00000800;
  static const WMIQ_RPNF_GROUP_BY_HAVING = 0x00001000;
  static const WMIQ_RPNF_ARRAY_ACCESS_USED = 0x00002000;
}

/// {@category Enum}
class WMIQ_RPN_TOKEN_FLAGS {
  static const WMIQ_RPN_TOKEN_EXPRESSION = 0x00000001;
  static const WMIQ_RPN_TOKEN_AND = 0x00000002;
  static const WMIQ_RPN_TOKEN_OR = 0x00000003;
  static const WMIQ_RPN_TOKEN_NOT = 0x00000004;
  static const WMIQ_RPN_OP_UNDEFINED = 0x00000000;
  static const WMIQ_RPN_OP_EQ = 0x00000001;
  static const WMIQ_RPN_OP_NE = 0x00000002;
  static const WMIQ_RPN_OP_GE = 0x00000003;
  static const WMIQ_RPN_OP_LE = 0x00000004;
  static const WMIQ_RPN_OP_LT = 0x00000005;
  static const WMIQ_RPN_OP_GT = 0x00000006;
  static const WMIQ_RPN_OP_LIKE = 0x00000007;
  static const WMIQ_RPN_OP_ISA = 0x00000008;
  static const WMIQ_RPN_OP_ISNOTA = 0x00000009;
  static const WMIQ_RPN_OP_ISNULL = 0x0000000a;
  static const WMIQ_RPN_OP_ISNOTNULL = 0x0000000b;
  static const WMIQ_RPN_LEFT_PROPERTY_NAME = 0x00000001;
  static const WMIQ_RPN_RIGHT_PROPERTY_NAME = 0x00000002;
  static const WMIQ_RPN_CONST2 = 0x00000004;
  static const WMIQ_RPN_CONST = 0x00000008;
  static const WMIQ_RPN_RELOP = 0x00000010;
  static const WMIQ_RPN_LEFT_FUNCTION = 0x00000020;
  static const WMIQ_RPN_RIGHT_FUNCTION = 0x00000040;
  static const WMIQ_RPN_GET_TOKEN_TYPE = 0x00000001;
  static const WMIQ_RPN_GET_EXPR_SHAPE = 0x00000002;
  static const WMIQ_RPN_GET_LEFT_FUNCTION = 0x00000003;
  static const WMIQ_RPN_GET_RIGHT_FUNCTION = 0x00000004;
  static const WMIQ_RPN_GET_RELOP = 0x00000005;
  static const WMIQ_RPN_NEXT_TOKEN = 0x00000001;
  static const WMIQ_RPN_FROM_UNARY = 0x00000001;
  static const WMIQ_RPN_FROM_PATH = 0x00000002;
  static const WMIQ_RPN_FROM_CLASS_LIST = 0x00000004;
  static const WMIQ_RPN_FROM_MULTIPLE = 0x00000008;
}

/// {@category Enum}
class WMI_OBJ_TEXT {
  static const WMI_OBJ_TEXT_CIM_DTD_2_0 = 0x00000001;
  static const WMI_OBJ_TEXT_WMI_DTD_2_0 = 0x00000002;
  static const WMI_OBJ_TEXT_WMI_EXT1 = 0x00000003;
  static const WMI_OBJ_TEXT_WMI_EXT2 = 0x00000004;
  static const WMI_OBJ_TEXT_WMI_EXT3 = 0x00000005;
  static const WMI_OBJ_TEXT_WMI_EXT4 = 0x00000006;
  static const WMI_OBJ_TEXT_WMI_EXT5 = 0x00000007;
  static const WMI_OBJ_TEXT_WMI_EXT6 = 0x00000008;
  static const WMI_OBJ_TEXT_WMI_EXT7 = 0x00000009;
  static const WMI_OBJ_TEXT_WMI_EXT8 = 0x0000000a;
  static const WMI_OBJ_TEXT_WMI_EXT9 = 0x0000000b;
  static const WMI_OBJ_TEXT_WMI_EXT10 = 0x0000000c;
  static const WMI_OBJ_TEXT_LAST = 0x0000000d;
}

/// {@category Enum}
class WbemAuthenticationLevelEnum {
  static const wbemAuthenticationLevelDefault = 0x00000000;
  static const wbemAuthenticationLevelNone = 0x00000001;
  static const wbemAuthenticationLevelConnect = 0x00000002;
  static const wbemAuthenticationLevelCall = 0x00000003;
  static const wbemAuthenticationLevelPkt = 0x00000004;
  static const wbemAuthenticationLevelPktIntegrity = 0x00000005;
  static const wbemAuthenticationLevelPktPrivacy = 0x00000006;
}

/// {@category Enum}
class WbemChangeFlagEnum {
  static const wbemChangeFlagCreateOrUpdate = 0x00000000;
  static const wbemChangeFlagUpdateOnly = 0x00000001;
  static const wbemChangeFlagCreateOnly = 0x00000002;
  static const wbemChangeFlagUpdateCompatible = 0x00000000;
  static const wbemChangeFlagUpdateSafeMode = 0x00000020;
  static const wbemChangeFlagUpdateForceMode = 0x00000040;
  static const wbemChangeFlagStrongValidation = 0x00000080;
  static const wbemChangeFlagAdvisory = 0x00010000;
}

/// {@category Enum}
class WbemCimtypeEnum {
  static const wbemCimtypeSint8 = 0x00000010;
  static const wbemCimtypeUint8 = 0x00000011;
  static const wbemCimtypeSint16 = 0x00000002;
  static const wbemCimtypeUint16 = 0x00000012;
  static const wbemCimtypeSint32 = 0x00000003;
  static const wbemCimtypeUint32 = 0x00000013;
  static const wbemCimtypeSint64 = 0x00000014;
  static const wbemCimtypeUint64 = 0x00000015;
  static const wbemCimtypeReal32 = 0x00000004;
  static const wbemCimtypeReal64 = 0x00000005;
  static const wbemCimtypeBoolean = 0x0000000b;
  static const wbemCimtypeString = 0x00000008;
  static const wbemCimtypeDatetime = 0x00000065;
  static const wbemCimtypeReference = 0x00000066;
  static const wbemCimtypeChar16 = 0x00000067;
  static const wbemCimtypeObject = 0x0000000d;
}

/// {@category Enum}
class WbemComparisonFlagEnum {
  static const wbemComparisonFlagIncludeAll = 0x00000000;
  static const wbemComparisonFlagIgnoreQualifiers = 0x00000001;
  static const wbemComparisonFlagIgnoreObjectSource = 0x00000002;
  static const wbemComparisonFlagIgnoreDefaultValues = 0x00000004;
  static const wbemComparisonFlagIgnoreClass = 0x00000008;
  static const wbemComparisonFlagIgnoreCase = 0x00000010;
  static const wbemComparisonFlagIgnoreFlavor = 0x00000020;
}

/// {@category Enum}
class WbemConnectOptionsEnum {
  static const wbemConnectFlagUseMaxWait = 0x00000080;
}

/// {@category Enum}
class WbemErrorEnum {
  static const wbemNoErr = 0x00000000;
  static const wbemErrFailed = 0x80041001;
  static const wbemErrNotFound = 0x80041002;
  static const wbemErrAccessDenied = 0x80041003;
  static const wbemErrProviderFailure = 0x80041004;
  static const wbemErrTypeMismatch = 0x80041005;
  static const wbemErrOutOfMemory = 0x80041006;
  static const wbemErrInvalidContext = 0x80041007;
  static const wbemErrInvalidParameter = 0x80041008;
  static const wbemErrNotAvailable = 0x80041009;
  static const wbemErrCriticalError = 0x8004100a;
  static const wbemErrInvalidStream = 0x8004100b;
  static const wbemErrNotSupported = 0x8004100c;
  static const wbemErrInvalidSuperclass = 0x8004100d;
  static const wbemErrInvalidNamespace = 0x8004100e;
  static const wbemErrInvalidObject = 0x8004100f;
  static const wbemErrInvalidClass = 0x80041010;
  static const wbemErrProviderNotFound = 0x80041011;
  static const wbemErrInvalidProviderRegistration = 0x80041012;
  static const wbemErrProviderLoadFailure = 0x80041013;
  static const wbemErrInitializationFailure = 0x80041014;
  static const wbemErrTransportFailure = 0x80041015;
  static const wbemErrInvalidOperation = 0x80041016;
  static const wbemErrInvalidQuery = 0x80041017;
  static const wbemErrInvalidQueryType = 0x80041018;
  static const wbemErrAlreadyExists = 0x80041019;
  static const wbemErrOverrideNotAllowed = 0x8004101a;
  static const wbemErrPropagatedQualifier = 0x8004101b;
  static const wbemErrPropagatedProperty = 0x8004101c;
  static const wbemErrUnexpected = 0x8004101d;
  static const wbemErrIllegalOperation = 0x8004101e;
  static const wbemErrCannotBeKey = 0x8004101f;
  static const wbemErrIncompleteClass = 0x80041020;
  static const wbemErrInvalidSyntax = 0x80041021;
  static const wbemErrNondecoratedObject = 0x80041022;
  static const wbemErrReadOnly = 0x80041023;
  static const wbemErrProviderNotCapable = 0x80041024;
  static const wbemErrClassHasChildren = 0x80041025;
  static const wbemErrClassHasInstances = 0x80041026;
  static const wbemErrQueryNotImplemented = 0x80041027;
  static const wbemErrIllegalNull = 0x80041028;
  static const wbemErrInvalidQualifierType = 0x80041029;
  static const wbemErrInvalidPropertyType = 0x8004102a;
  static const wbemErrValueOutOfRange = 0x8004102b;
  static const wbemErrCannotBeSingleton = 0x8004102c;
  static const wbemErrInvalidCimType = 0x8004102d;
  static const wbemErrInvalidMethod = 0x8004102e;
  static const wbemErrInvalidMethodParameters = 0x8004102f;
  static const wbemErrSystemProperty = 0x80041030;
  static const wbemErrInvalidProperty = 0x80041031;
  static const wbemErrCallCancelled = 0x80041032;
  static const wbemErrShuttingDown = 0x80041033;
  static const wbemErrPropagatedMethod = 0x80041034;
  static const wbemErrUnsupportedParameter = 0x80041035;
  static const wbemErrMissingParameter = 0x80041036;
  static const wbemErrInvalidParameterId = 0x80041037;
  static const wbemErrNonConsecutiveParameterIds = 0x80041038;
  static const wbemErrParameterIdOnRetval = 0x80041039;
  static const wbemErrInvalidObjectPath = 0x8004103a;
  static const wbemErrOutOfDiskSpace = 0x8004103b;
  static const wbemErrBufferTooSmall = 0x8004103c;
  static const wbemErrUnsupportedPutExtension = 0x8004103d;
  static const wbemErrUnknownObjectType = 0x8004103e;
  static const wbemErrUnknownPacketType = 0x8004103f;
  static const wbemErrMarshalVersionMismatch = 0x80041040;
  static const wbemErrMarshalInvalidSignature = 0x80041041;
  static const wbemErrInvalidQualifier = 0x80041042;
  static const wbemErrInvalidDuplicateParameter = 0x80041043;
  static const wbemErrTooMuchData = 0x80041044;
  static const wbemErrServerTooBusy = 0x80041045;
  static const wbemErrInvalidFlavor = 0x80041046;
  static const wbemErrCircularReference = 0x80041047;
  static const wbemErrUnsupportedClassUpdate = 0x80041048;
  static const wbemErrCannotChangeKeyInheritance = 0x80041049;
  static const wbemErrCannotChangeIndexInheritance = 0x80041050;
  static const wbemErrTooManyProperties = 0x80041051;
  static const wbemErrUpdateTypeMismatch = 0x80041052;
  static const wbemErrUpdateOverrideNotAllowed = 0x80041053;
  static const wbemErrUpdatePropagatedMethod = 0x80041054;
  static const wbemErrMethodNotImplemented = 0x80041055;
  static const wbemErrMethodDisabled = 0x80041056;
  static const wbemErrRefresherBusy = 0x80041057;
  static const wbemErrUnparsableQuery = 0x80041058;
  static const wbemErrNotEventClass = 0x80041059;
  static const wbemErrMissingGroupWithin = 0x8004105a;
  static const wbemErrMissingAggregationList = 0x8004105b;
  static const wbemErrPropertyNotAnObject = 0x8004105c;
  static const wbemErrAggregatingByObject = 0x8004105d;
  static const wbemErrUninterpretableProviderQuery = 0x8004105f;
  static const wbemErrBackupRestoreWinmgmtRunning = 0x80041060;
  static const wbemErrQueueOverflow = 0x80041061;
  static const wbemErrPrivilegeNotHeld = 0x80041062;
  static const wbemErrInvalidOperator = 0x80041063;
  static const wbemErrLocalCredentials = 0x80041064;
  static const wbemErrCannotBeAbstract = 0x80041065;
  static const wbemErrAmendedObject = 0x80041066;
  static const wbemErrClientTooSlow = 0x80041067;
  static const wbemErrNullSecurityDescriptor = 0x80041068;
  static const wbemErrTimeout = 0x80041069;
  static const wbemErrInvalidAssociation = 0x8004106a;
  static const wbemErrAmbiguousOperation = 0x8004106b;
  static const wbemErrQuotaViolation = 0x8004106c;
  static const wbemErrTransactionConflict = 0x8004106d;
  static const wbemErrForcedRollback = 0x8004106e;
  static const wbemErrUnsupportedLocale = 0x8004106f;
  static const wbemErrHandleOutOfDate = 0x80041070;
  static const wbemErrConnectionFailed = 0x80041071;
  static const wbemErrInvalidHandleRequest = 0x80041072;
  static const wbemErrPropertyNameTooWide = 0x80041073;
  static const wbemErrClassNameTooWide = 0x80041074;
  static const wbemErrMethodNameTooWide = 0x80041075;
  static const wbemErrQualifierNameTooWide = 0x80041076;
  static const wbemErrRerunCommand = 0x80041077;
  static const wbemErrDatabaseVerMismatch = 0x80041078;
  static const wbemErrVetoPut = 0x80041079;
  static const wbemErrVetoDelete = 0x8004107a;
  static const wbemErrInvalidLocale = 0x80041080;
  static const wbemErrProviderSuspended = 0x80041081;
  static const wbemErrSynchronizationRequired = 0x80041082;
  static const wbemErrNoSchema = 0x80041083;
  static const wbemErrProviderAlreadyRegistered = 0x80041084;
  static const wbemErrProviderNotRegistered = 0x80041085;
  static const wbemErrFatalTransportError = 0x80041086;
  static const wbemErrEncryptedConnectionRequired = 0x80041087;
  static const wbemErrRegistrationTooBroad = 0x80042001;
  static const wbemErrRegistrationTooPrecise = 0x80042002;
  static const wbemErrTimedout = 0x80043001;
  static const wbemErrResetToDefault = 0x80043002;
}

/// {@category Enum}
class WbemFlagEnum {
  static const wbemFlagReturnImmediately = 0x00000010;
  static const wbemFlagReturnWhenComplete = 0x00000000;
  static const wbemFlagBidirectional = 0x00000000;
  static const wbemFlagForwardOnly = 0x00000020;
  static const wbemFlagNoErrorObject = 0x00000040;
  static const wbemFlagReturnErrorObject = 0x00000000;
  static const wbemFlagSendStatus = 0x00000080;
  static const wbemFlagDontSendStatus = 0x00000000;
  static const wbemFlagEnsureLocatable = 0x00000100;
  static const wbemFlagDirectRead = 0x00000200;
  static const wbemFlagSendOnlySelected = 0x00000000;
  static const wbemFlagUseAmendedQualifiers = 0x00020000;
  static const wbemFlagGetDefault = 0x00000000;
  static const wbemFlagSpawnInstance = 0x00000001;
  static const wbemFlagUseCurrentTime = 0x00000001;
}

/// {@category Enum}
class WbemImpersonationLevelEnum {
  static const wbemImpersonationLevelAnonymous = 0x00000001;
  static const wbemImpersonationLevelIdentify = 0x00000002;
  static const wbemImpersonationLevelImpersonate = 0x00000003;
  static const wbemImpersonationLevelDelegate = 0x00000004;
}

/// {@category Enum}
class WbemObjectTextFormatEnum {
  static const wbemObjectTextFormatCIMDTD20 = 0x00000001;
  static const wbemObjectTextFormatWMIDTD20 = 0x00000002;
}

/// {@category Enum}
class WbemPrivilegeEnum {
  static const wbemPrivilegeCreateToken = 0x00000001;
  static const wbemPrivilegePrimaryToken = 0x00000002;
  static const wbemPrivilegeLockMemory = 0x00000003;
  static const wbemPrivilegeIncreaseQuota = 0x00000004;
  static const wbemPrivilegeMachineAccount = 0x00000005;
  static const wbemPrivilegeTcb = 0x00000006;
  static const wbemPrivilegeSecurity = 0x00000007;
  static const wbemPrivilegeTakeOwnership = 0x00000008;
  static const wbemPrivilegeLoadDriver = 0x00000009;
  static const wbemPrivilegeSystemProfile = 0x0000000a;
  static const wbemPrivilegeSystemtime = 0x0000000b;
  static const wbemPrivilegeProfileSingleProcess = 0x0000000c;
  static const wbemPrivilegeIncreaseBasePriority = 0x0000000d;
  static const wbemPrivilegeCreatePagefile = 0x0000000e;
  static const wbemPrivilegeCreatePermanent = 0x0000000f;
  static const wbemPrivilegeBackup = 0x00000010;
  static const wbemPrivilegeRestore = 0x00000011;
  static const wbemPrivilegeShutdown = 0x00000012;
  static const wbemPrivilegeDebug = 0x00000013;
  static const wbemPrivilegeAudit = 0x00000014;
  static const wbemPrivilegeSystemEnvironment = 0x00000015;
  static const wbemPrivilegeChangeNotify = 0x00000016;
  static const wbemPrivilegeRemoteShutdown = 0x00000017;
  static const wbemPrivilegeUndock = 0x00000018;
  static const wbemPrivilegeSyncAgent = 0x00000019;
  static const wbemPrivilegeEnableDelegation = 0x0000001a;
  static const wbemPrivilegeManageVolume = 0x0000001b;
}

/// {@category Enum}
class WbemQueryFlagEnum {
  static const wbemQueryFlagDeep = 0x00000000;
  static const wbemQueryFlagShallow = 0x00000001;
  static const wbemQueryFlagPrototype = 0x00000002;
}

/// {@category Enum}
class WbemTextFlagEnum {
  static const wbemTextFlagNoFlavors = 0x00000001;
}

/// {@category Enum}
class WbemTimeout {
  static const wbemTimeoutInfinite = 0xffffffff;
}

/// {@category Enum}
class tag_WBEM_LOGIN_TYPE {
  static const WBEM_FLAG_INPROC_LOGIN = 0x00000000;
  static const WBEM_FLAG_LOCAL_LOGIN = 0x00000001;
  static const WBEM_FLAG_REMOTE_LOGIN = 0x00000002;
  static const WBEM_AUTHENTICATION_METHOD_MASK = 0x0000000f;
  static const WBEM_FLAG_USE_MULTIPLE_CHALLENGES = 0x00000010;
}
