/// {@category Enum}
class EXPR_TOKEN {
  static const FC_EXPR_START = 0x00000000;
  static const FC_EXPR_ILLEGAL = 0x00000000;
  static const FC_EXPR_CONST32 = 0x00000001;
  static const FC_EXPR_CONST64 = 0x00000002;
  static const FC_EXPR_VAR = 0x00000003;
  static const FC_EXPR_OPER = 0x00000004;
  static const FC_EXPR_NOOP = 0x00000005;
  static const FC_EXPR_END = 0x00000006;
}

/// {@category Enum}
class ExtendedErrorParamTypes {
  static const eeptAnsiString = 0x00000001;
  static const eeptUnicodeString = 0x00000002;
  static const eeptLongVal = 0x00000003;
  static const eeptShortVal = 0x00000004;
  static const eeptPointerVal = 0x00000005;
  static const eeptNone = 0x00000006;
  static const eeptBinary = 0x00000007;
}

/// {@category Enum}
class GROUP_NAME_SYNTAX {
  static const RPC_C_NS_SYNTAX_DEFAULT = 0x00000000;
  static const RPC_C_NS_SYNTAX_DCE = 0x00000003;
}

/// {@category Enum}
class IDL_CS_CONVERT {
  static const IDL_CS_NO_CONVERT = 0x00000000;
  static const IDL_CS_IN_PLACE_CONVERT = 0x00000001;
  static const IDL_CS_NEW_BUFFER_CONVERT = 0x00000002;
}

/// {@category Enum}
class LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION {
  static const MarshalDirectionMarshal = 0x00000000;
  static const MarshalDirectionUnmarshal = 0x00000001;
}

/// {@category Enum}
class MIDL_ES_CODE {
  static const MES_ENCODE = 0x00000000;
  static const MES_DECODE = 0x00000001;
  static const MES_ENCODE_NDR64 = 0x00000002;
}

/// {@category Enum}
class MIDL_ES_HANDLE_STYLE {
  static const MES_INCREMENTAL_HANDLE = 0x00000000;
  static const MES_FIXED_BUFFER_HANDLE = 0x00000001;
  static const MES_DYNAMIC_BUFFER_HANDLE = 0x00000002;
}

/// {@category Enum}
class PROXY_PHASE {
  static const PROXY_CALCSIZE = 0x00000000;
  static const PROXY_GETBUFFER = 0x00000001;
  static const PROXY_MARSHAL = 0x00000002;
  static const PROXY_SENDRECEIVE = 0x00000003;
  static const PROXY_UNMARSHAL = 0x00000004;
}

/// {@category Enum}
class RPC_ADDRESS_CHANGE_TYPE {
  static const PROTOCOL_NOT_LOADED = 0x00000001;
  static const PROTOCOL_LOADED = 0x00000002;
  static const PROTOCOL_ADDRESS_CHANGE = 0x00000003;
}

/// {@category Enum}
class RPC_ASYNC_EVENT {
  static const RpcCallComplete = 0x00000000;
  static const RpcSendComplete = 0x00000001;
  static const RpcReceiveComplete = 0x00000002;
  static const RpcClientDisconnect = 0x00000003;
  static const RpcClientCancel = 0x00000004;
}

/// {@category Enum}
class RPC_BINDING_HANDLE_OPTIONS_FLAGS {
  static const RPC_BHO_NONCAUSAL = 0x00000001;
  static const RPC_BHO_DONTLINGER = 0x00000002;
}

/// {@category Enum}
class RPC_C_AUTHN_INFO_TYPE {
  static const RPC_C_AUTHN_INFO_NONE = 0x00000000;
  static const RPC_C_AUTHN_INFO_TYPE_HTTP = 0x00000001;
}

/// {@category Enum}
class RPC_C_HTTP_AUTHN_TARGET {
  static const RPC_C_HTTP_AUTHN_TARGET_SERVER = 0x00000001;
  static const RPC_C_HTTP_AUTHN_TARGET_PROXY = 0x00000002;
}

/// {@category Enum}
class RPC_C_HTTP_FLAGS {
  static const RPC_C_HTTP_FLAG_USE_SSL = 0x00000001;
  static const RPC_C_HTTP_FLAG_USE_FIRST_AUTH_SCHEME = 0x00000002;
  static const RPC_C_HTTP_FLAG_IGNORE_CERT_CN_INVALID = 0x00000008;
  static const RPC_C_HTTP_FLAG_ENABLE_CERT_REVOCATION_CHECK = 0x00000010;
}

/// {@category Enum}
class RPC_C_QOS_CAPABILITIES {
  static const RPC_C_QOS_CAPABILITIES_DEFAULT = 0x00000000;
  static const RPC_C_QOS_CAPABILITIES_MUTUAL_AUTH = 0x00000001;
  static const RPC_C_QOS_CAPABILITIES_MAKE_FULLSIC = 0x00000002;
  static const RPC_C_QOS_CAPABILITIES_ANY_AUTHORITY = 0x00000004;
  static const RPC_C_QOS_CAPABILITIES_IGNORE_DELEGATE_FAILURE = 0x00000008;
  static const RPC_C_QOS_CAPABILITIES_LOCAL_MA_HINT = 0x00000010;
  static const RPC_C_QOS_CAPABILITIES_SCHANNEL_FULL_AUTH_IDENTITY = 0x00000020;
}

/// {@category Enum}
class RPC_C_QOS_IDENTITY {
  static const RPC_C_QOS_IDENTITY_STATIC = 0x00000000;
  static const RPC_C_QOS_IDENTITY_DYNAMIC = 0x00000001;
}

/// {@category Enum}
class RPC_HTTP_REDIRECTOR_STAGE {
  static const RPCHTTP_RS_REDIRECT = 0x00000001;
  static const RPCHTTP_RS_ACCESS_1 = 0x00000002;
  static const RPCHTTP_RS_SESSION = 0x00000003;
  static const RPCHTTP_RS_ACCESS_2 = 0x00000004;
  static const RPCHTTP_RS_INTERFACE = 0x00000005;
}

/// {@category Enum}
class RPC_NOTIFICATIONS {
  static const RpcNotificationCallNone = 0x00000000;
  static const RpcNotificationClientDisconnect = 0x00000001;
  static const RpcNotificationCallCancel = 0x00000002;
}

/// {@category Enum}
class RPC_NOTIFICATION_TYPES {
  static const RpcNotificationTypeNone = 0x00000000;
  static const RpcNotificationTypeEvent = 0x00000001;
  static const RpcNotificationTypeApc = 0x00000002;
  static const RpcNotificationTypeIoc = 0x00000003;
  static const RpcNotificationTypeHwnd = 0x00000004;
  static const RpcNotificationTypeCallback = 0x00000005;
}

/// {@category Enum}
class RPC_STATUS {
  static const RPC_S_INVALID_STRING_BINDING = 0x000006a4;
  static const RPC_S_WRONG_KIND_OF_BINDING = 0x000006a5;
  static const RPC_S_INVALID_BINDING = 0x000006a6;
  static const RPC_S_PROTSEQ_NOT_SUPPORTED = 0x000006a7;
  static const RPC_S_INVALID_RPC_PROTSEQ = 0x000006a8;
  static const RPC_S_INVALID_STRING_UUID = 0x000006a9;
  static const RPC_S_INVALID_ENDPOINT_FORMAT = 0x000006aa;
  static const RPC_S_INVALID_NET_ADDR = 0x000006ab;
  static const RPC_S_NO_ENDPOINT_FOUND = 0x000006ac;
  static const RPC_S_INVALID_TIMEOUT = 0x000006ad;
  static const RPC_S_OBJECT_NOT_FOUND = 0x000006ae;
  static const RPC_S_ALREADY_REGISTERED = 0x000006af;
  static const RPC_S_TYPE_ALREADY_REGISTERED = 0x000006b0;
  static const RPC_S_ALREADY_LISTENING = 0x000006b1;
  static const RPC_S_NO_PROTSEQS_REGISTERED = 0x000006b2;
  static const RPC_S_NOT_LISTENING = 0x000006b3;
  static const RPC_S_UNKNOWN_MGR_TYPE = 0x000006b4;
  static const RPC_S_UNKNOWN_IF = 0x000006b5;
  static const RPC_S_NO_BINDINGS = 0x000006b6;
  static const RPC_S_NO_PROTSEQS = 0x000006b7;
  static const RPC_S_CANT_CREATE_ENDPOINT = 0x000006b8;
  static const RPC_S_OUT_OF_RESOURCES = 0x000006b9;
  static const RPC_S_SERVER_UNAVAILABLE = 0x000006ba;
  static const RPC_S_SERVER_TOO_BUSY = 0x000006bb;
  static const RPC_S_INVALID_NETWORK_OPTIONS = 0x000006bc;
  static const RPC_S_NO_CALL_ACTIVE = 0x000006bd;
  static const RPC_S_CALL_FAILED = 0x000006be;
  static const RPC_S_CALL_FAILED_DNE = 0x000006bf;
  static const RPC_S_PROTOCOL_ERROR = 0x000006c0;
  static const RPC_S_PROXY_ACCESS_DENIED = 0x000006c1;
  static const RPC_S_UNSUPPORTED_TRANS_SYN = 0x000006c2;
  static const RPC_S_UNSUPPORTED_TYPE = 0x000006c4;
  static const RPC_S_INVALID_TAG = 0x000006c5;
  static const RPC_S_INVALID_BOUND = 0x000006c6;
  static const RPC_S_NO_ENTRY_NAME = 0x000006c7;
  static const RPC_S_INVALID_NAME_SYNTAX = 0x000006c8;
  static const RPC_S_UNSUPPORTED_NAME_SYNTAX = 0x000006c9;
  static const RPC_S_UUID_NO_ADDRESS = 0x000006cb;
  static const RPC_S_DUPLICATE_ENDPOINT = 0x000006cc;
  static const RPC_S_UNKNOWN_AUTHN_TYPE = 0x000006cd;
  static const RPC_S_MAX_CALLS_TOO_SMALL = 0x000006ce;
  static const RPC_S_STRING_TOO_LONG = 0x000006cf;
  static const RPC_S_PROTSEQ_NOT_FOUND = 0x000006d0;
  static const RPC_S_PROCNUM_OUT_OF_RANGE = 0x000006d1;
  static const RPC_S_BINDING_HAS_NO_AUTH = 0x000006d2;
  static const RPC_S_UNKNOWN_AUTHN_SERVICE = 0x000006d3;
  static const RPC_S_UNKNOWN_AUTHN_LEVEL = 0x000006d4;
  static const RPC_S_INVALID_AUTH_IDENTITY = 0x000006d5;
  static const RPC_S_UNKNOWN_AUTHZ_SERVICE = 0x000006d6;
  static const EPT_S_INVALID_ENTRY = 0x000006d7;
  static const EPT_S_CANT_PERFORM_OP = 0x000006d8;
  static const EPT_S_NOT_REGISTERED = 0x000006d9;
  static const RPC_S_NOTHING_TO_EXPORT = 0x000006da;
  static const RPC_S_INCOMPLETE_NAME = 0x000006db;
  static const RPC_S_INVALID_VERS_OPTION = 0x000006dc;
  static const RPC_S_NO_MORE_MEMBERS = 0x000006dd;
  static const RPC_S_NOT_ALL_OBJS_UNEXPORTED = 0x000006de;
  static const RPC_S_INTERFACE_NOT_FOUND = 0x000006df;
  static const RPC_S_ENTRY_ALREADY_EXISTS = 0x000006e0;
  static const RPC_S_ENTRY_NOT_FOUND = 0x000006e1;
  static const RPC_S_NAME_SERVICE_UNAVAILABLE = 0x000006e2;
  static const RPC_S_INVALID_NAF_ID = 0x000006e3;
  static const RPC_S_CANNOT_SUPPORT = 0x000006e4;
  static const RPC_S_NO_CONTEXT_AVAILABLE = 0x000006e5;
  static const RPC_S_INTERNAL_ERROR = 0x000006e6;
  static const RPC_S_ZERO_DIVIDE = 0x000006e7;
  static const RPC_S_ADDRESS_ERROR = 0x000006e8;
  static const RPC_S_FP_DIV_ZERO = 0x000006e9;
  static const RPC_S_FP_UNDERFLOW = 0x000006ea;
  static const RPC_S_FP_OVERFLOW = 0x000006eb;
  static const RPC_S_CALL_IN_PROGRESS = 0x000006ff;
  static const RPC_S_NO_MORE_BINDINGS = 0x0000070e;
  static const RPC_S_NO_INTERFACES = 0x00000719;
  static const RPC_S_CALL_CANCELLED = 0x0000071a;
  static const RPC_S_BINDING_INCOMPLETE = 0x0000071b;
  static const RPC_S_COMM_FAILURE = 0x0000071c;
  static const RPC_S_UNSUPPORTED_AUTHN_LEVEL = 0x0000071d;
  static const RPC_S_NO_PRINC_NAME = 0x0000071e;
  static const RPC_S_NOT_RPC_ERROR = 0x0000071f;
  static const RPC_S_UUID_LOCAL_ONLY = 0x00000720;
  static const RPC_S_SEC_PKG_ERROR = 0x00000721;
  static const RPC_S_NOT_CANCELLED = 0x00000722;
  static const RPC_S_COOKIE_AUTH_FAILED = 0x00000729;
  static const RPC_S_DO_NOT_DISTURB = 0x0000072a;
  static const RPC_S_SYSTEM_HANDLE_COUNT_EXCEEDED = 0x0000072b;
  static const RPC_S_SYSTEM_HANDLE_TYPE_MISMATCH = 0x0000072c;
  static const RPC_S_GROUP_MEMBER_NOT_FOUND = 0x0000076a;
  static const EPT_S_CANT_CREATE = 0x0000076b;
  static const RPC_S_INVALID_OBJECT = 0x0000076c;
  static const RPC_S_SEND_INCOMPLETE = 0x00000779;
  static const RPC_S_INVALID_ASYNC_HANDLE = 0x0000077a;
  static const RPC_S_INVALID_ASYNC_CALL = 0x0000077b;
  static const RPC_S_ENTRY_TYPE_MISMATCH = 0x00000782;
  static const RPC_S_NOT_ALL_OBJS_EXPORTED = 0x00000783;
  static const RPC_S_INTERFACE_NOT_EXPORTED = 0x00000784;
  static const RPC_S_PROFILE_NOT_ADDED = 0x00000785;
  static const RPC_S_PRF_ELT_NOT_ADDED = 0x00000786;
  static const RPC_S_PRF_ELT_NOT_REMOVED = 0x00000787;
  static const RPC_S_GRP_ELT_NOT_ADDED = 0x00000788;
  static const RPC_S_GRP_ELT_NOT_REMOVED = 0x00000789;
}

/// {@category Enum}
class RpcCallClientLocality {
  static const rcclInvalid = 0x00000000;
  static const rcclLocal = 0x00000001;
  static const rcclRemote = 0x00000002;
  static const rcclClientUnknownLocality = 0x00000003;
}

/// {@category Enum}
class RpcCallType {
  static const rctInvalid = 0x00000000;
  static const rctNormal = 0x00000001;
  static const rctTraining = 0x00000002;
  static const rctGuaranteed = 0x00000003;
}

/// {@category Enum}
class RpcLocalAddressFormat {
  static const rlafInvalid = 0x00000000;
  static const rlafIPv4 = 0x00000001;
  static const rlafIPv6 = 0x00000002;
}

/// {@category Enum}
class RpcProxyPerfCounters {
  static const RpcCurrentUniqueUser = 0x00000001;
  static const RpcBackEndConnectionAttempts = 0x00000002;
  static const RpcBackEndConnectionFailed = 0x00000003;
  static const RpcRequestsPerSecond = 0x00000004;
  static const RpcIncomingConnections = 0x00000005;
  static const RpcIncomingBandwidth = 0x00000006;
  static const RpcOutgoingBandwidth = 0x00000007;
  static const RpcAttemptedLbsDecisions = 0x00000008;
  static const RpcFailedLbsDecisions = 0x00000009;
  static const RpcAttemptedLbsMessages = 0x0000000a;
  static const RpcFailedLbsMessages = 0x0000000b;
  static const RpcLastCounter = 0x0000000c;
}

/// {@category Enum}
class SEC_WINNT_AUTH_IDENTITY {
  static const SEC_WINNT_AUTH_IDENTITY_ANSI = 0x00000001;
  static const SEC_WINNT_AUTH_IDENTITY_UNICODE = 0x00000002;
}

/// {@category Enum}
class STUB_PHASE {
  static const STUB_UNMARSHAL = 0x00000000;
  static const STUB_CALL_SERVER = 0x00000001;
  static const STUB_MARSHAL = 0x00000002;
  static const STUB_CALL_SERVER_NO_HRESULT = 0x00000003;
}

/// {@category Enum}
class USER_MARSHAL_CB_TYPE {
  static const USER_MARSHAL_CB_BUFFER_SIZE = 0x00000000;
  static const USER_MARSHAL_CB_MARSHALL = 0x00000001;
  static const USER_MARSHAL_CB_UNMARSHALL = 0x00000002;
  static const USER_MARSHAL_CB_FREE = 0x00000003;
}

/// {@category Enum}
class XLAT_SIDE {
  static const XLAT_SERVER = 0x00000001;
  static const XLAT_CLIENT = 0x00000002;
}

/// {@category Enum}
class system_handle_t {
  static const SYSTEM_HANDLE_FILE = 0x00000000;
  static const SYSTEM_HANDLE_SEMAPHORE = 0x00000001;
  static const SYSTEM_HANDLE_EVENT = 0x00000002;
  static const SYSTEM_HANDLE_MUTEX = 0x00000003;
  static const SYSTEM_HANDLE_PROCESS = 0x00000004;
  static const SYSTEM_HANDLE_TOKEN = 0x00000005;
  static const SYSTEM_HANDLE_SECTION = 0x00000006;
  static const SYSTEM_HANDLE_REG_KEY = 0x00000007;
  static const SYSTEM_HANDLE_THREAD = 0x00000008;
  static const SYSTEM_HANDLE_COMPOSITION_OBJECT = 0x00000009;
  static const SYSTEM_HANDLE_SOCKET = 0x0000000a;
  static const SYSTEM_HANDLE_JOB = 0x0000000b;
  static const SYSTEM_HANDLE_PIPE = 0x0000000c;
  static const SYSTEM_HANDLE_MAX = 0x0000000c;
  static const SYSTEM_HANDLE_INVALID = 0x000000ff;
}
