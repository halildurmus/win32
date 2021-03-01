/// {@category Enum}
class WSManDataType {
  static const WSMAN_DATA_NONE = 0x00000000;
  static const WSMAN_DATA_TYPE_TEXT = 0x00000001;
  static const WSMAN_DATA_TYPE_BINARY = 0x00000002;
  static const WSMAN_DATA_TYPE_DWORD = 0x00000004;
}

/// {@category Enum}
class WSManAuthenticationFlags {
  static const WSMAN_FLAG_DEFAULT_AUTHENTICATION = 0x00000000;
  static const WSMAN_FLAG_NO_AUTHENTICATION = 0x00000001;
  static const WSMAN_FLAG_AUTH_DIGEST = 0x00000002;
  static const WSMAN_FLAG_AUTH_NEGOTIATE = 0x00000004;
  static const WSMAN_FLAG_AUTH_BASIC = 0x00000008;
  static const WSMAN_FLAG_AUTH_KERBEROS = 0x00000010;
  static const WSMAN_FLAG_AUTH_CREDSSP = 0x00000080;
  static const WSMAN_FLAG_AUTH_CLIENT_CERTIFICATE = 0x00000020;
}

/// {@category Enum}
class WSManProxyAccessType {
  static const WSMAN_OPTION_PROXY_IE_PROXY_CONFIG = 0x00000001;
  static const WSMAN_OPTION_PROXY_WINHTTP_PROXY_CONFIG = 0x00000002;
  static const WSMAN_OPTION_PROXY_AUTO_DETECT = 0x00000004;
  static const WSMAN_OPTION_PROXY_NO_PROXY_SERVER = 0x00000008;
}

/// {@category Enum}
class WSManSessionOption {
  static const WSMAN_OPTION_DEFAULT_OPERATION_TIMEOUTMS = 0x00000001;
  static const WSMAN_OPTION_MAX_RETRY_TIME = 0x0000000b;
  static const WSMAN_OPTION_TIMEOUTMS_CREATE_SHELL = 0x0000000c;
  static const WSMAN_OPTION_TIMEOUTMS_RUN_SHELL_COMMAND = 0x0000000d;
  static const WSMAN_OPTION_TIMEOUTMS_RECEIVE_SHELL_OUTPUT = 0x0000000e;
  static const WSMAN_OPTION_TIMEOUTMS_SEND_SHELL_INPUT = 0x0000000f;
  static const WSMAN_OPTION_TIMEOUTMS_SIGNAL_SHELL = 0x00000010;
  static const WSMAN_OPTION_TIMEOUTMS_CLOSE_SHELL = 0x00000011;
  static const WSMAN_OPTION_SKIP_CA_CHECK = 0x00000012;
  static const WSMAN_OPTION_SKIP_CN_CHECK = 0x00000013;
  static const WSMAN_OPTION_UNENCRYPTED_MESSAGES = 0x00000014;
  static const WSMAN_OPTION_UTF16 = 0x00000015;
  static const WSMAN_OPTION_ENABLE_SPN_SERVER_PORT = 0x00000016;
  static const WSMAN_OPTION_MACHINE_ID = 0x00000017;
  static const WSMAN_OPTION_LOCALE = 0x00000019;
  static const WSMAN_OPTION_UI_LANGUAGE = 0x0000001a;
  static const WSMAN_OPTION_MAX_ENVELOPE_SIZE_KB = 0x0000001c;
  static const WSMAN_OPTION_SHELL_MAX_DATA_SIZE_PER_MESSAGE_KB = 0x0000001d;
  static const WSMAN_OPTION_REDIRECT_LOCATION = 0x0000001e;
  static const WSMAN_OPTION_SKIP_REVOCATION_CHECK = 0x0000001f;
  static const WSMAN_OPTION_ALLOW_NEGOTIATE_IMPLICIT_CREDENTIALS = 0x00000020;
  static const WSMAN_OPTION_USE_SSL = 0x00000021;
  static const WSMAN_OPTION_USE_INTEARACTIVE_TOKEN = 0x00000022;
}

/// {@category Enum}
class WSManCallbackFlags {
  static const WSMAN_FLAG_CALLBACK_END_OF_OPERATION = 0x00000001;
  static const WSMAN_FLAG_CALLBACK_END_OF_STREAM = 0x00000008;
  static const WSMAN_FLAG_CALLBACK_SHELL_SUPPORTS_DISCONNECT = 0x00000020;
  static const WSMAN_FLAG_CALLBACK_SHELL_AUTODISCONNECTED = 0x00000040;
  static const WSMAN_FLAG_CALLBACK_NETWORK_FAILURE_DETECTED = 0x00000100;
  static const WSMAN_FLAG_CALLBACK_RETRYING_AFTER_NETWORK_FAILURE = 0x00000200;
  static const WSMAN_FLAG_CALLBACK_RECONNECTED_AFTER_NETWORK_FAILURE = 0x00000400;
  static const WSMAN_FLAG_CALLBACK_SHELL_AUTODISCONNECTING = 0x00000800;
  static const WSMAN_FLAG_CALLBACK_RETRY_ABORTED_DUE_TO_INTERNAL_ERROR = 0x00001000;
  static const WSMAN_FLAG_CALLBACK_RECEIVE_DELAY_STREAM_REQUEST_PROCESSED = 0x00002000;
}

/// {@category Enum}
class WSManShellFlag {
  static const WSMAN_FLAG_NO_COMPRESSION = 0x00000001;
  static const WSMAN_FLAG_DELETE_SERVER_SESSION = 0x00000002;
  static const WSMAN_FLAG_SERVER_BUFFERING_MODE_DROP = 0x00000004;
  static const WSMAN_FLAG_SERVER_BUFFERING_MODE_BLOCK = 0x00000008;
  static const WSMAN_FLAG_RECEIVE_DELAY_OUTPUT_STREAM = 0x00000010;
}

/// {@category Enum}
class WSManSessionFlags {
  static const WSManFlagUTF8 = 0x00000001;
  static const WSManFlagCredUsernamePassword = 0x00001000;
  static const WSManFlagSkipCACheck = 0x00002000;
  static const WSManFlagSkipCNCheck = 0x00004000;
  static const WSManFlagUseNoAuthentication = 0x00008000;
  static const WSManFlagUseDigest = 0x00010000;
  static const WSManFlagUseNegotiate = 0x00020000;
  static const WSManFlagUseBasic = 0x00040000;
  static const WSManFlagUseKerberos = 0x00080000;
  static const WSManFlagNoEncryption = 0x00100000;
  static const WSManFlagUseClientCertificate = 0x00200000;
  static const WSManFlagEnableSPNServerPort = 0x00400000;
  static const WSManFlagUTF16 = 0x00800000;
  static const WSManFlagUseCredSsp = 0x01000000;
  static const WSManFlagSkipRevocationCheck = 0x02000000;
  static const WSManFlagAllowNegotiateImplicitCredentials = 0x04000000;
  static const WSManFlagUseSsl = 0x08000000;
}

/// {@category Enum}
class WSManEnumFlags {
  static const WSManFlagNonXmlText = 0x00000001;
  static const WSManFlagReturnObject = 0x00000000;
  static const WSManFlagReturnEPR = 0x00000002;
  static const WSManFlagReturnObjectAndEPR = 0x00000004;
  static const WSManFlagHierarchyDeep = 0x00000000;
  static const WSManFlagHierarchyShallow = 0x00000020;
  static const WSManFlagHierarchyDeepBasePropsOnly = 0x00000040;
  static const WSManFlagAssociatedInstance = 0x00000000;
  static const WSManFlagAssociationInstance = 0x00000080;
}

/// {@category Enum}
class WSManProxyAccessTypeFlags {
  static const WSManProxyIEConfig = 0x00000001;
  static const WSManProxyWinHttpConfig = 0x00000002;
  static const WSManProxyAutoDetect = 0x00000004;
  static const WSManProxyNoProxyServer = 0x00000008;
}

/// {@category Enum}
class WSManProxyAuthenticationFlags {
  static const WSManFlagProxyAuthenticationUseNegotiate = 0x00000001;
  static const WSManFlagProxyAuthenticationUseBasic = 0x00000002;
  static const WSManFlagProxyAuthenticationUseDigest = 0x00000004;
}

