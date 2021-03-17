/// {@category Enum}
class RPC_HTTP_REDIRECTOR_STAGE {
  static const RPCHTTP_RS_REDIRECT = 0x00000001;
  static const RPCHTTP_RS_ACCESS_1 = 0x00000002;
  static const RPCHTTP_RS_SESSION = 0x00000003;
  static const RPCHTTP_RS_ACCESS_2 = 0x00000004;
  static const RPCHTTP_RS_INTERFACE = 0x00000005;
}

/// {@category Enum}
class RPC_ADDRESS_CHANGE_TYPE {
  static const PROTOCOL_NOT_LOADED = 0x00000001;
  static const PROTOCOL_LOADED = 0x00000002;
  static const PROTOCOL_ADDRESS_CHANGE = 0x00000003;
}

/// {@category Enum}
class LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION {
  static const MarshalDirectionMarshal = 0x00000000;
  static const MarshalDirectionUnmarshal = 0x00000001;
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
class RPC_NOTIFICATION_TYPES {
  static const RpcNotificationTypeNone = 0x00000000;
  static const RpcNotificationTypeEvent = 0x00000001;
  static const RpcNotificationTypeApc = 0x00000002;
  static const RpcNotificationTypeIoc = 0x00000003;
  static const RpcNotificationTypeHwnd = 0x00000004;
  static const RpcNotificationTypeCallback = 0x00000005;
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
class RpcLocalAddressFormat {
  static const rlafInvalid = 0x00000000;
  static const rlafIPv4 = 0x00000001;
  static const rlafIPv6 = 0x00000002;
}

/// {@category Enum}
class RpcCallType {
  static const rctInvalid = 0x00000000;
  static const rctNormal = 0x00000001;
  static const rctTraining = 0x00000002;
  static const rctGuaranteed = 0x00000003;
}

/// {@category Enum}
class RpcCallClientLocality {
  static const rcclInvalid = 0x00000000;
  static const rcclLocal = 0x00000001;
  static const rcclRemote = 0x00000002;
  static const rcclClientUnknownLocality = 0x00000003;
}

/// {@category Enum}
class RPC_NOTIFICATIONS {
  static const RpcNotificationCallNone = 0x00000000;
  static const RpcNotificationClientDisconnect = 0x00000001;
  static const RpcNotificationCallCancel = 0x00000002;
}

/// {@category Enum}
class USER_MARSHAL_CB_TYPE {
  static const USER_MARSHAL_CB_BUFFER_SIZE = 0x00000000;
  static const USER_MARSHAL_CB_MARSHALL = 0x00000001;
  static const USER_MARSHAL_CB_UNMARSHALL = 0x00000002;
  static const USER_MARSHAL_CB_FREE = 0x00000003;
}

/// {@category Enum}
class IDL_CS_CONVERT {
  static const IDL_CS_NO_CONVERT = 0x00000000;
  static const IDL_CS_IN_PLACE_CONVERT = 0x00000001;
  static const IDL_CS_NEW_BUFFER_CONVERT = 0x00000002;
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

/// {@category Enum}
class STUB_PHASE {
  static const STUB_UNMARSHAL = 0x00000000;
  static const STUB_CALL_SERVER = 0x00000001;
  static const STUB_MARSHAL = 0x00000002;
  static const STUB_CALL_SERVER_NO_HRESULT = 0x00000003;
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
class RpcNsGroupDelete_GroupNameSyntax {
  static const RPC_C_NS_SYNTAX_DEFAULT = 0x00000000;
  static const RPC_C_NS_SYNTAX_DCE = 0x00000003;
}

/// {@category Enum}
class RPC_C_HTTP_AUTHN_TARGET {
  static const RPC_C_HTTP_AUTHN_TARGET_SERVER = 0x00000001;
  static const RPC_C_HTTP_AUTHN_TARGET_PROXY = 0x00000002;
}

/// {@category Enum}
class RPC_C_QOS_IDENTITY {
  static const RPC_C_QOS_IDENTITY_STATIC = 0x00000000;
  static const RPC_C_QOS_IDENTITY_DYNAMIC = 0x00000001;
}

/// {@category Enum}
class RPC_BINDING_HANDLE_OPTIONS_V1Flags {
  static const RPC_BHO_NONCAUSAL = 0x00000001;
  static const RPC_BHO_DONTLINGER = 0x00000002;
}

